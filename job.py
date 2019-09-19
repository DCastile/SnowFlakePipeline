from source_table import Source, SourceTable, SourceTableBatch
from worker import Worker, source_table_task
import config
from easter_eggs import magic

import snowflake.connector

# std lib
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
import os
import math

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


class Job:

    def __init__(self, source_table_batches: List[SourceTableBatch], incremental: bool = True):
        self.start_time = datetime.now()

        self.easter_egg = magic()
        self.job_uuid = uuid.uuid4()
        self.run_from_hostname = socket.gethostname()
        self.run_from_ip = socket.gethostbyname(self.run_from_hostname)
        self.run_from_fqdn = socket.getfqdn()
        self.run_from_user = getpass.getuser()

        self.source_table_batches = source_table_batches
        shuffle(self.source_table_batches)  # shuffles in place
        self.batch_count = len(self.source_table_batches)
        self.task_counter = Counter()

        logical_cores = os.cpu_count()
        num_workers = min(logical_cores, self.batch_count)
        snowflake_to_bcp_worker_ratio = 2.0
        self.bcp_worker_count = math.floor(num_workers / snowflake_to_bcp_worker_ratio)
        self.snowflake_worker_count = num_workers

        self.bcp_tasks = Queue()
        self.sf_tasks = Queue()
        self.logging_tasks = []

        self.incremental: bool = incremental

        self.run()

    def run(self):
        for batch in self.source_table_batches:
            self.bcp_tasks.put((source_table_task, batch))

        bcp_workers = []
        for i in range(self.snowflake_worker_count):
            bcp_workers.append(
                Worker(self.bcp_tasks, self.sf_tasks, self.logging_tasks, 'bcp', self.task_counter, self.batch_count,
                       thread_name='Thread-BCP-{}'.format(i)))

        sf_workers = []
        for i in range(self.snowflake_worker_count):
            sf_workers.append(
                Worker(self.bcp_tasks, self.sf_tasks, self.logging_tasks, 'snowflake', self.task_counter,
                       self.batch_count, thread_name='Thread-SF-{}'.format(i)))

        for worker in bcp_workers:
            worker.join()

        for worker in sf_workers:
            worker.join()

        self.end_time = datetime.now()
        self.send_logs_to_snowflake()

    def dict(self):
        return {
            'easter_egg': self.easter_egg,
            'job_uuid': self.job_uuid,
            'job_start': self.start_time,
            'job_end': self.end_time,
            'run_from_hostname': self.run_from_hostname,
            'run_from_ip': self.run_from_ip,
            'run_from_fqdn': self.run_from_fqdn,
            'run_from_user': self.run_from_user,
            'total_batches': self.batch_count,
            'bcp_worker_count' : self.bcp_worker_count,
            'snowflake_worker_count' : self.snowflake_worker_count
        }

    def send_logs_to_snowflake(self):
        # TODO Make this code better
        # TODO need to merge the staged files into somewhere reportable
        logger.info('Sending results from this run to snowflake for further analysis')
        now = datetime.now()
        for log_task in self.logging_tasks:
            log_task.update(self.dict())

        file_name = '{datetime}.json'.format(datetime=now.strftime('%Y-%m-%d-%H-%M-%S'))
        file_path = './logs/{file_name}'.format(file_name=file_name)
        with open(file_path, 'w') as file:
            file.write(json.dumps(self.logging_tasks, default=str))
        with snowflake.connector.connect(**config.snowflake_connection_properties) as conn:
            conn.execute_string('use schema logs; put file://{file_path} @logs_stage'.format(file_path=file_path))

        logger.info('Finished sending results from this run to snowflake for further analysis')

