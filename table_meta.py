from source_table import Source, SourceTable, SourceTableBatch

import pyodbc

from typing import Dict, List
from collections import defaultdict
import os
import re

class TableMeta:
    source: Source = None
    source_table_batches: List[SourceTableBatch] = []
    tables: List[str] = None
    columns: Dict[str, List[str]] = {}

    def __init__(self, source: Source, load_type: str):
        self.source = source
        self.load_type = load_type
        self.generate_source_table_batches()

    def get_metadata_from_queries(self):
        path = 'src_qrys/{source}'.format(source=self.source.source)
        self.tables = [file_name.replace('.sql', '') for file_name in os.listdir(path) if '.sql' in file_name]
        for table in self.tables:
            with open(path + '/{table}.sql'.format(table=table), 'r') as f:
                query = f.read()
            self.columns[table] = self.parse_column_names_from_query(query)




    def generate_source_table_batches(self):
        self.get_metadata_from_queries()

        for table, metadata in self.get_table_metadata().items():
            sql_path = 'src_qrys/{source}/{table}.sql'.format(source=self.source.source, table=table)
            with open(sql_path, 'r') as f:
                base_qry = f.read()
            source_table = SourceTable(self.source, table, metadata['row_count'], metadata['primary_keys'], metadata['columns'])
            for batch_number in range(0, source_table.total_batches):
                source_table_batch = SourceTableBatch(source_table, batch_number, qry=base_qry)
                self.source_table_batches.append(source_table_batch)

    def get_source_table_batches(self, tables : List[str] = None):
        if tables:
            tables = set(tables)
            func = lambda x: x.source_table.table in tables
            return filter(func, self.source_table_batches)
        else:
            return self.source_table_batches


    def get_table_metadata(self) -> Dict:
        source = self.source
        if source.user:
            conn_str = 'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};UID={user};PWD={password}'.format(
                server=source.server, database=source.database, user=source.user, password=source.password)
        else:
            conn_str = 'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};Trusted_Connection=yes'.format(
                server=source.server, database=source.database)
        with pyodbc.connect(conn_str) as conn:
            row_counts = self.get_table_row_counts(conn)
            columns = self.get_table_columns(conn)

        for table, info in columns.items():
            info['row_count'] = row_counts[table]
        return columns

    def get_table_row_counts(self, conn: pyodbc.Connection) -> Dict:
        qry = self.get_table_row_counts_qry(self.source)
        with conn.cursor() as cursor:
            data = cursor.execute(qry).fetchall()
        columns = [key[0] for key in cursor.description]
        data = rows_to_json(data, columns)
        return {row['table_name']: row['row_count'] for row in data}



    def process_table_columns(self, columns: List[Dict]) -> Dict:
        data = defaultdict(lambda: defaultdict(list))
        for row in columns:
            table_name = row['table_name']
            column_name = row['column_name']
            column_id = row['column_id']
            part_of_pk = row['part_of_pk']
            data[table_name]['columns'].append(column_name)
            if part_of_pk:
                data[table_name]['primary_keys'].append(column_name)
        return data


    def get_table_row_counts_qry(self, source: Source):
        # TODO change strategy for incremental vs full
        return '''
            select
                schema_name(schema_id) schema_name,
                so.name        table_name,
                ddps.row_count row_count
            from {database}.sys.objects so
                 join {database}.sys.indexes si
                      on si.OBJECT_ID = so.OBJECT_ID
                 join {database}.sys.dm_db_partition_stats as ddps
                      on si.OBJECT_ID = ddps.OBJECT_ID and si.index_id = ddps.index_id
            where si.index_id < 2 and so.is_ms_shipped = 0 and schema_name(schema_id) = '{schema}'
        '''.format(database=source.database, schema=source.schema)


    def build_sql(self, source_table_batch: SourceTableBatch):
        where_clause = self.generate_where_clause(source_table_batch.source_table.primary_keys, source_table_batch.batch_number,
                                  source_table_batch.source_table.total_batches)
        return '\n'.join([ source_table_batch.qry, where_clause])


    def generate_where_clause(self, primary_keys: List[str], batch_number, total_batches):
        if self.load_type == 'incremental':
            pass
        else:
            if total_batches == 1:
                return ''
            else:
                return 'where abs(checksum({primary_keys})) % {total_batches} = {batch_number}'.format(
                    primary_keys=','.join(primary_keys),
                    batch_number=batch_number,
                    total_batches=total_batches
                )

