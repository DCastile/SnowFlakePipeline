from worker import Worker, source_table_task
from source_table import Source, SourceTable, SourceTableBatch, get_table_metadata

from snowflake_table_syncher import SnowFlakeTableSyncher

import time
from queue import Queue
# from multiprocessing import Queue
from typing import List

import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

if __name__ == '__main__':
    start_time = time.time()
    source = Source('sap', '10.4.1.100', 'SMSCLTSQLRPTPROD', 'dbo')
    table_metadata = get_table_metadata(source)
    source_table_batches: List[SourceTableBatch] = []

    row_count = 0
    for table, metadata in table_metadata.items():
        source_table = SourceTable(source, table, metadata['row_count'], metadata['primary_keys'], metadata['columns'])
        row_count += metadata['row_count']
        for batch_number in range(0, source_table.total_batches):
            source_table_batch = SourceTableBatch(source_table, batch_number)
            source_table_batches.append(source_table_batch)

    logger.info(
        'Finished collecting source/table metadata - Duration:{duration}'.format(duration=time.time() - start_time))

    source_table_batches = list(filter(lambda x: x.source_table.table == 'TCURX', source_table_batches))


    for source_table_batch in source_table_batches:
        print(source_table_batch)

    max_processes = min(4, len(source_table_batches))

    sf_tasks = Queue()
    bcp_tasks = Queue()
    for source_table_batch in source_table_batches:
        bcp_tasks.put((source_table_task, source_table_batch))

    bcp_workers = []
    for i in range(max_processes):
        bcp_workers.append(Worker(bcp_tasks, sf_tasks, 'bcp'))

    sf_workers = []
    for i in range(max_processes):
        sf_workers.append(Worker(bcp_tasks, sf_tasks, 'snowflake'))

    for worker in bcp_workers:
        worker.join()

    time.sleep(1)
    # snowflake workers need to be shut down last so they process everything
    for worker in sf_workers:
        worker.join()

    logger.info('Processing complete - Duration:{duration} - Total Row Count:{row_count}'.format(
        duration=time.time() - start_time, row_count=row_count))
