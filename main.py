from source_table import Source, SourceTable, SourceTableBatch
from job import Job
from table_meta import TableMeta

import time
from typing import List

import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

if __name__ == '__main__':

    start_time = time.time()
    # source = Source('sap', '10.61.95.22', 'SAP_Production', 'dbo')
    source = Source('sap', '10.4.1.100', 'SMSCLTSQLRPTPROD', 'dbo')
    # source = Source('sap_hist', '10.4.1.100', 'Archive', 'sap')
    table_meta = TableMeta(source)

    # source_table_batches = table_meta.source_table_batches
    source_table_batches = table_meta.get_source_table_batches(['TCURX'])


    job = Job(source_table_batches, incremental=False)

