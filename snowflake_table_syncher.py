from util import get_file_path
import config
from source_table import Source, SourceTable, SourceTableBatch

from typing import List, Dict
from datetime import datetime
import snowflake.connector
import os
from os import getpid
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Set snowflake logging lever to warning
logging.getLogger('snowflake.connector').setLevel(logging.WARNING)
logging.getLogger('botocore').setLevel(logging.WARNING)

class SnowFlakeTableSyncher:
    source_table_batch: SourceTableBatch = None
    source_table: SourceTable = None
    source: Source = None

    # logging
    start_time: datetime = None
    end_time: datetime = None
    row_count: int = None
    command = None

    def __init__(self, source_table_batch: SourceTableBatch):
        self.source_table_batch = source_table_batch
        self.source_table = source_table_batch.source_table
        self.source = source_table_batch.source_table.source

        self.file_location = get_file_path(self.source_table_batch)

    def run(self):
        logger.info(
            'Starting snowflake put <PID:{pid} | Source:{source} | Table:{table} | Batch:{batch}>'.format(pid=getpid(),
                                                                                                          source=self.source.source,
                                                                                                          table=self.source_table.table,
                                                                                                          batch=self.source_table_batch.batch_number))
        self.start_time = datetime.now()

        self.command = self.build_snowflake_command()
        with self.get_snowflake_connection() as conn:
            conn.execute_string(self.command)
        completed: Dict = {}

        # remove the temp file
        if os.path.exists(self.file_location):
            os.remove(self.file_location)

        self.end_time = datetime.now()
        logger.info(
            'Finished snowflake put <PID:{pid} | Source:{source} | Table:{table} | Batch:{batch} | Duration:{duration}>'.format(pid=getpid(),
                                                                                                          source=self.source.source,
                                                                                                          table=self.source_table.table,
                                                                                                          batch=self.source_table_batch.batch_number,duration=self.end_time-self.start_time))

    def build_snowflake_command(self):
        stage_name = config.snowflake_stage_name[self.source.source]
        return 'put file://{file_location} {stage_name};'.format(file_location=self.file_location,
                                                                 stage_name=stage_name)

    def get_snowflake_connection(self) -> snowflake.connector.connection:
        # eventually need to use environment variables or passkey
        return snowflake.connector.connect(**config.snowflake_connection_properties)


if __name__ == '__main__':
    args = {
        'source': 'sap',
        'server': '10.4.1.100',
        'database': 'SMSCLTSQLRPTPROD',
        'schema': 'dbo',
        'table': 'tcurx',
        'primary_keys': ['CURRKEY'],
        'batch_number': 1
    }
    # args = {
    #     'source': 'sap',
    #     'server': '10.651.95.22',
    #     'database': 'SAP_Production',
    #     'schema': 'dbo',
    #     'table': 'tcurx',
    #     'primary_keys': ['CURRKEY'],
    #     'batch_number': 1
    # }
    ste = SnowFlakeTableSyncher(**args).run()
