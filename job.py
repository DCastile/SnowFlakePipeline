from source_table import Source, SourceTable, SourceTableBatch
from worker import Worker, source_table_task
import config
from easter_eggs import magic

import snowflake.connector

#std lib
from collections import Counter
from datetime import datetime
import json
import uuid
import socket
import getpass
from random import shuffle
from typing import List
from queue import Queue
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


class Job:

    def __init__(self, source_table_batches: List[SourceTableBatch], num_workers: int):
        self.start_time = datetime.now()

        self.easter_egg = magic()
        self.job_uuid = uuid.uuid4()
        self.run_from_hostname = socket.gethostname()
        self.run_from_ip = socket.gethostbyname(self.run_from_hostname)
        self.run_from_fqdn = socket.getfqdn()
        self.run_from_user = getpass.getuser()

        self.source_table_batches = source_table_batches
        shuffle(self.source_table_batches) # shuffles in place
        self.batch_count = len(self.source_table_batches)
        self.task_counter = Counter()

        self.num_workers = min(num_workers, self.batch_count)

        self.bcp_tasks = Queue()
        self.sf_tasks = Queue()
        self.logging_tasks = []

        self.run()

    def run(self):
        for batch in self.source_table_batches:
            self.bcp_tasks.put((source_table_task, batch))

        for source_table_batch in self.source_table_batches:
            self.bcp_tasks.put((source_table_task, source_table_batch))

        bcp_workers = []
        for i in range(self.num_workers):
            bcp_workers.append(
                Worker(self.bcp_tasks, self.sf_tasks, self.logging_tasks, 'bcp', self.task_counter, self.batch_count))

        sf_workers = []
        for i in range(self.num_workers):
            sf_workers.append(
                Worker(self.bcp_tasks, self.sf_tasks, self.logging_tasks, 'bcp', self.task_counter, self.batch_count))

        for worker in bcp_workers:
            worker.join()

        self.send_logs_to_snowflake()
        self.end_time = datetime.now()



    def send_logs_to_snowflake(self):
        # TODO Make this code better
        # TODO need to merge the staged files into somewhere reportable
        logger.info('Sending results from this run to snowflake for further analysis')
        now = datetime.now()
        for log_task in self.logging_tasks:
            log_task.update({'job_instance_uuid': self.job_uuid, 'job_instance_timestamp': now})
        file_name = '{datetime}.json'.format(datetime=now.strftime('%Y-%m-%d-%H-%M-%S'))
        file_path = './logs/{file_name}'.format(file_name=file_name)
        with open(file_path, 'w') as file:
            file.write(json.dumps(self.logging_tasks, default=str))
        with snowflake.connector.connect(**config.snowflake_connection_properties) as conn:
            conn.execute_string('use schema logs; put file://{file_path} @logs_stage'.format(file_path=file_path))

        logger.info('Finished sending results from this run to snowflake for further analysis')
