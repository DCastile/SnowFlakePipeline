import util
from source_table import Source, SourceTable, SourceTableBatch

from typing import List, Dict, Tuple
from datetime import datetime
from subprocess import run, CompletedProcess
from os import getpid
import logging
from threading import current_thread

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


class SourceTableExtractor:
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

    def run(self):
        logger.info('Starting bcp <PID:{pid} | Thread:{thread} | Source:{source} | Table:{table} | Batch:{batch}>'.format(pid=getpid(), thread=current_thread().getName(),
                                                                                                        source=self.source.source,
                                                                                                        table=self.source_table.table,
                                                                                                        batch=self.source_table_batch.batch_number))
        self.start_time = datetime.now()

        self.command = self.build_bcp_command()
        completed: CompletedProcess = run(self.command)
        completed_message: Dict = {}

        self.end_time = datetime.now()
        logger.info('Finished bcp <PID:{pid} | Thread:{thread} | Source:{source} | Table:{table} | Batch:{batch} | Duration:{duration}>'.format(pid=getpid(), thread=current_thread().getName(),
                                                                                                        source=self.source,
                                                                                                        table=self.source_table.table,
                                                                                                        batch=self.source_table_batch.batch_number,duration=self.end_time-self.start_time))
        # TODO dont add the snowflake task unless bcp completed successfully
        if completed.returncode == 0:
            return True
        else:
            return False

    def build_bcp_command(self):
        qry = self.build_sql()
        out_file = util.get_file_path(self.source_table_batch)
        log_file = util.get_log_path(self.source_table_batch)
        # bcp "SELECT * from SAP_Production.dbo.TCURX" queryout .\tcurx.csv -t, -c -T -S 10.61.95.22
        return 'bcp.exe "{qry}" queryout {out_file} -t "|" -c -C 65001 -T -S {server} -o {log_file}'.format(
            qry=qry, out_file=out_file, server=self.source.server, log_file=log_file
        )

    def build_sql(self):
        return ' '.join([
            'select *',
            'from {db}.{schema}.V_{table}'.format(db=self.source.database, schema=self.source.schema,
                                                  table=self.source_table.table),
            generate_where_clause(self.source_table.primary_keys, self.source_table_batch.batch_number,
                                  self.source_table.total_batches)
        ])


def generate_where_clause(primary_keys: List[str], batch_number, total_batches):
    if total_batches == 1:
        return ''
    else:
        return 'where abs(checksum({primary_keys})) % {total_batches} = {batch_number}'.format(
            primary_keys=','.join(primary_keys),
            batch_number=batch_number,
            total_batches=total_batches
        )


if __name__ == '__main__':
    args = {
        'source': 'sap',
        'server': '10.4.1.100',
        'database': 'SMSCLTSQLRPTPROD',
        'schema': 'dbo',
        'table': 'tcurx',
        'primary_keys': ['CURRKEY'],
        'batch_number': 1,
        'total_batches': 1
    }
    # args = {
    #     'source': 'sap',
    #     'server': '10.651.95.22',
    #     'database': 'SAP_Production',
    #     'schema': 'dbo',
    #     'table': 'tcurx',
    #     'primary_keys': ['CURRKEY'],
    #     'batch_number': 1,
    #     'total_batches': 1
    # }
    ste = SourceTableExtractor(**args).run()
