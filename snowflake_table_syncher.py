from util import get_file_path, get_file_name
import config
from source_table import Source, SourceTable, SourceTableBatch

from typing import List, Dict
from datetime import datetime
import snowflake.connector
import os
from os import getpid
import logging
from threading import current_thread

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
    put_command = None
    merge_command = None
    stage_name = None

    def __init__(self, source_table_batch: SourceTableBatch):
        self.source_table_batch = source_table_batch
        self.source_table = source_table_batch.source_table
        self.source = source_table_batch.source_table.source
        self.file_name = get_file_name(self.source_table_batch)
        self.file_location = get_file_path(self.source_table_batch)
        self.stage_name = config.snowflake_stage_name[self.source.source]

    def dict(self):
        tmp = {
            'start_time': self.start_time,
            'end_time': self.end_time,
            'put_command': self.put_command,
            'merge_command': self.merge_command,
            'stage_name': self.stage_name
        }
        tmp.update(self.source_table_batch.dict())
        return tmp

    def run(self):
        self.start_time = datetime.now()
        with self.get_snowflake_connection() as conn:
            self.run_put(conn)
            self.run_merge(conn)
        self.end_time = datetime.now()

    def run_put(self, conn: snowflake.connector.SnowflakeConnection):
        # logger.info(
        #     'Starting snowflake put <PID:{pid} | Thread:{thread} | Source:{source} | Table:{table} | Batch:{batch}>'.format(
        #         pid=getpid(), thread=current_thread().getName(),
        #         source=self.source.source,
        #         table=self.source_table.table,
        #         batch=self.source_table_batch.batch_number))

        self.put_command = self.build_snowflake_put_command()
        self.put_command = self.build_snowflake_put_command()

        conn.execute_string(self.put_command)
        completed: Dict = {}

        # remove the temp file
        if os.path.exists(self.file_location):
            os.remove(self.file_location)

        logger.info(
            'Finished snowflake put <PID:{pid} | Thread:{thread} | Source:{source} | Table:{table} | Batch:{batch} | Duration:{duration}>'.format(
                pid=getpid(),
                thread=current_thread().getName(),
                source=self.source.source,
                table=self.source_table.table,
                batch=self.source_table_batch.batch_number, duration=datetime.now() - self.start_time))

    def run_merge(self, conn: snowflake.connector.SnowflakeConnection):
        # logger.info(
        #     'Starting snowflake merge <PID:{pid} | Thread:{thread} | Source:{source} | Table:{table} | Batch:{batch}>'.format(
        #         pid=getpid(),
        #         thread=current_thread().getName(),
        #         source=self.source.source,
        #         table=self.source_table.table,
        #         batch=self.source_table_batch.batch_number))

        self.merge_command = self.build_snowflake_merge_command()
        conn.execute_string(self.merge_command)
        completed: Dict = {}

        logger.info(
            'Finished snowflake merge <PID:{pid} | Thread:{thread} | Source:{source} | Table:{table} | Batch:{batch} | Duration:{duration}>'.format(
                pid=getpid(),
                thread=current_thread().getName(),
                source=self.source.source,
                table=self.source_table.table,
                batch=self.source_table_batch.batch_number, duration=datetime.now() - self.start_time))

    def build_snowflake_put_command(self):
        return 'put file://{file_location} {stage_name};'.format(file_location=self.file_location,
                                                                 stage_name=self.stage_name)

    def build_snowflake_merge_command(self):
        staged_file = '{stage_name}/{file_name}.gz'.format(stage_name=self.stage_name, file_name=self.file_name)
        join_columns_str: str = self._build_join_columns_str()
        update_columns_str: str = self._build_update_columns_str()
        columns_str: str = ','.join(map(lambda x: '"{col}"'.format(col=x), self.source_table.columns))

        insert_values: str = ','.join(
            map(lambda x: '${numb}'.format(numb=x), range(1, 1 + len(self.source_table.columns))))
        return '''
            merge into {table} target
            using {staged_file} source
                on {join_columns_str}
            when matched then update set
                {update_columns_str}
            when not matched then
                insert ({col_names})
                values ({insert_values})
        '''.format(table=self.source_table.table, staged_file=staged_file, join_columns_str=join_columns_str,
                   update_columns_str=update_columns_str, col_names=columns_str, insert_values=insert_values)

    def _build_join_columns_str(self):
        qry_items = []
        for col_idx, col_name in enumerate(self.source_table.primary_keys, 1):
            qry_items.append(
                'target."{target_column}" = source.${col_idx}'.format(target_column=col_name, col_idx=col_idx))
        return '\n\t\t\t\tand '.join(qry_items)

    def _build_update_columns_str(self):
        pk_set = set(self.source_table.primary_keys)
        columns_not_pk = [col for col in self.source_table.columns if col not in pk_set]
        qry_items = []
        for col_idx, col_name in enumerate(columns_not_pk, 1 + len(self.source_table.primary_keys)):
            qry_items.append(
                'target."{target_column}" = source.${col_idx}'.format(target_column=col_name, col_idx=col_idx))
        return ',\n\t\t\t\t'.join(qry_items)

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
