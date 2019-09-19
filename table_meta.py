from source_table import Source, SourceTable, SourceTableBatch

import pyodbc

from typing import Dict, List
from collections import defaultdict


class TableMeta:
    source : Source = None
    source_table_batches: List[SourceTableBatch] = []

    def __init__(self, source: Source):
        self.source = source
        self.generate_source_table_batches()

    def generate_source_table_batches(self):
        for table, metadata in self.get_table_metadata().items():
            source_table = SourceTable(self.source, table, metadata['row_count'], metadata['primary_keys'], metadata['columns'])
            for batch_number in range(0, source_table.total_batches):
                source_table_batch = SourceTableBatch(source_table, batch_number)
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

    def get_table_columns(self, conn: pyodbc.Connection) -> Dict:
        qry = self.get_table_meta_qry(self.source)
        with conn.cursor() as cursor:
            data = cursor.execute(qry).fetchall()
        columns = [key[0] for key in cursor.description]
        data = rows_to_json(data, columns)
        return self.process_table_columns(data)

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

    def get_table_meta_qry(self, source: Source):
        return '''
            with table_columns as (
                select
                    schema_name(tab.schema_id) schema_name,
                    tab.name                   table_name,
                    col.column_id              column_id,
                    col.name                   column_name,
                    cast(IIF(ic.object_id is null, 0, 1) as bit) part_of_pk
                from {database}.sys.tables tab
                 inner join {database}.sys.columns col
                            on tab.object_id = col.object_id
                 inner join {database}.sys.indexes pk
                            on tab.object_id = pk.object_id
                                and pk.is_primary_key = 1
                left join {database}.sys.index_columns ic
                            on ic.object_id = pk.object_id
                                and ic.index_id = pk.index_id
                                and ic.column_id = col.column_id
                where schema_name(tab.schema_id) = '{schema}'
            ), view_columns as (
                select
                  schema_name(v.schema_id) schema_name,
                  object_name(c.object_id) view_name,
                  c.name                   column_name
                from {database}.sys.columns c
                   join {database}.sys.views v
                        on v.object_id = c.object_id
                where schema_name(v.schema_id) = '{schema}'
            )
            select table_name, column_id, column_name, part_of_pk
            from table_columns tc
            where exists(select 1 from view_columns vc where tc.schema_name = vc.schema_name and concat('V_', tc.table_name) = vc.view_name and tc.column_name = vc.column_name)
            order by schema_name, table_name, column_id -- TODO make it so this doesnt have to be ordered
        '''.format(database=source.database, schema=source.schema)

    def get_table_row_counts_qry(self, source: Source):
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


def rows_to_json(rows: List[pyodbc.Row], columns) -> List[Dict]:
    dict_rows = []
    for row in rows:
        dict_rows.append(dict(zip(columns, row)))
    return dict_rows
