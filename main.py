from worker import Worker, source_table_task
from source_table import Source, SourceTable, SourceTableBatch, get_table_metadata
from job import Job
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
    logger.info(
        'Finished collecting source/table metadata - Duration:{duration}'.format(duration=time.time() - start_time))

    source_table_batches = list(filter(lambda x: x.source_table.table in ('TCURX', 'KNA1'), source_table_batches))

    job = Job(source_table_batches, 4)
