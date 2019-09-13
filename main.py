from worker import Worker, source_table_task
from source_table import Source, SourceTable, SourceTableBatch, get_table_metadata
import config

from snowflake_table_syncher import SnowFlakeTableSyncher

import time
import json
from queue import Queue
# from multiprocessing import Queue
from typing import List
from random import shuffle
import uuid
from datetime import datetime
import snowflake.connector
import socket
from collections import Counter

import logging
import getpass

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

if __name__ == '__main__':
    job_uuid = uuid.uuid4()
    run_from_hostname = socket.gethostname()
    run_from_ip = socket.gethostbyname(run_from_hostname)
    run_from_fqdn = socket.getfqdn()
    run_from_user = getpass.getuser()


    start_time = time.time()
    source = Source('sap', '10.61.95.22', 'SAP_Production', 'dbo')
    # source = Source('sap', '10.4.1.100', 'SMSCLTSQLRPTPROD', 'dbo')
    table_metadata = get_table_metadata(source)
    source_table_batches: List[SourceTableBatch] = []

    row_count = 0
    for table, metadata in table_metadata.items():
        source_table = SourceTable(source, table, metadata['row_count'], metadata['primary_keys'], metadata['columns'])
        row_count += metadata['row_count']
        for batch_number in range(0, source_table.total_batches):
            source_table_batch = SourceTableBatch(source_table, batch_number)
            source_table_batches.append(source_table_batch)
    shuffle(source_table_batches)
    logger.info(
        'Finished collecting source/table metadata - Duration:{duration}'.format(duration=time.time() - start_time))

    source_table_batches = list(filter(lambda x: x.source_table.table in ('TCURX', 'KNA1'), source_table_batches))
    task_count = len(source_table_batches)
    task_counter = Counter()

    for source_table_batch in source_table_batches:
        print(source_table_batch)

    max_processes = min(4, len(source_table_batches))

    sf_tasks = Queue()
    bcp_tasks = Queue()
    logging_tasks : List[dict] = []

    for source_table_batch in source_table_batches:
        bcp_tasks.put((source_table_task, source_table_batch))

    bcp_workers = []
    for i in range(max_processes):
        bcp_workers.append(Worker(bcp_tasks, sf_tasks, logging_tasks, 'bcp', task_counter, task_count))

    sf_workers = []
    for i in range(max_processes):
        sf_workers.append(Worker(bcp_tasks, sf_tasks, logging_tasks, 'snowflake', task_counter, task_count))

    for worker in bcp_workers:
        worker.join()

    time.sleep(1)
    # snowflake workers need to be shut down last so they process everything
    for worker in sf_workers:
        worker.join()


    logger.info('Processing complete - Duration:{duration} - Total Row Count:{row_count}'.format(
        duration=time.time() - start_time, row_count=row_count))


    logger.info('Sending results from this run to snowflake for further analysis')
    now = datetime.now()
    for log_task in logging_tasks:
        log_task.update({'job_instance_uuid' : job_uuid, 'job_instance_timestamp': now})
    file_name = '{datetime}.json'.format(datetime=now.strftime('%Y-%m-%d-%H-%M-%S'))
    file_path = './logs/{file_name}'.format(file_name=file_name)
    with open(file_path, 'w') as file:
        file.write(json.dumps(logging_tasks, default=str))
    with snowflake.connector.connect(**config.snowflake_connection_properties) as conn:
        conn.execute_string('use schema logs; put file://{file_path} @logs_stage'.format(file_path=file_path))

    logger.info('Finished sending results from this run to snowflake for further analysis')
