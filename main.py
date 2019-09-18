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
    # source = Source('sap', '10.4.1.100', 'SMSCLTSQLRPTPROD', 'dbo')
    source = Source('sap_hist', '10.4.1.100', 'Archive', 'sap')
    table_meta = TableMeta()
    table_metadata = table_meta.get_table_metadata(source)
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

    source_table_batches = list(filter(lambda x: x.source_table.table in ('VBPA'), source_table_batches))

    job = Job(source_table_batches, 4)

