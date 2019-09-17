from typing import List, Dict
from collections import defaultdict
from math import ceil
import pyodbc


class Source:
    source: str = None
    server: str = None
    database: str = None
    schema: str = None
    user: str = None
    password: str = None

    def __init__(self, source, server, database, schema, user=None, password=None):
        self.source = source
        self.server = server
        self.database = database
        self.schema = schema
        self.user = user
        self.password = password

    def __repr__(self):
        return '<Source - {{Source:{source}|Server:{server}|Db:{database}|Schema:{schema}}}>'.format(source=self.source,
                                                                                                     server=self.server,
                                                                                                     database=self.database,
                                                                                                     schema=self.schema)

    def dict(self):
        return {
            'source': self.source,
            'server': self.server,
            'database': self.database,
            'schema': self.schema,
            'user': self.user
        }


class SourceTable:
    source: Source = None
    table: str = None
    row_count: int = None
    total_batches: int = None
    primary_keys: List[str] = None
    columns: List[str] = None

    def __init__(self, source: Source, table: str, row_count: int, primary_keys: List[str], columns: List[str]):
        self.source = source
        self.table = table
        self.row_count = row_count
        self.primary_keys = primary_keys
        self.columns = columns
        self.get_number_of_batches(row_count)

    def __repr__(self):
        return '<SourceTable - {{Source:{source}|Server:{server}|{database}.{schema}.{table}|Rows:{row_count}}}>'.format(
            source=self.source.source,
            server=self.source.server,
            database=self.source.database,
            schema=self.source.schema,
            table=self.table,
            row_count=self.row_count
        )

    def dict(self):
        tmp = {
            'table': self.table,
            'table_row_count': self.row_count,
            'total_batches': self.total_batches,
            'primary_keys': self.primary_keys,
            'columns': self.columns
        }
        tmp.update(self.source.dict())
        return tmp

    def get_number_of_batches(self, row_count: int):
        rows_in_batch: float = 3e6
        self.total_batches = ceil(row_count / rows_in_batch)


class SourceTableBatch:
    source_table: SourceTable = None
    source: Source = None
    batch_number: int = None
    row_count: int = None

    def __init__(self, source_table: SourceTable, batch_number: int):
        self.source_table = source_table
        self.source = source_table.source  # Just for easy access
        self.batch_number = batch_number

    def __repr__(self):
        return '<SourceTableBatch - {{Source:{source}|Server:{server}|{database}.{schema}.{table}|Batch#:{batch_number}}}>'.format(
            source=self.source_table.source.source,
            server=self.source_table.source.server,
            database=self.source_table.source.database,
            schema=self.source_table.source.schema,
            table=self.source_table.table,
            batch_number=self.batch_number
        )

    def dict(self):
        tmp = {
            'batch_number': self.batch_number,
            'row_count': self.row_count
        }
        tmp.update(self.source_table.dict())
        return tmp


#
#
#
##### Helper functions to get source/table metadata

if __name__ == '__main__':
    source = Source('sap', '10.4.1.100', 'SMSCLTSQLRPTPROD', 'dbo')
    (row_counts, columns) = get_table_metadata(source)
