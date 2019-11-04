from typing import List, Dict
from math import ceil
import os
from collections import defaultdict
import re
import datetime
import connection_manager


sql_date_format = "%Y-%m-%d %H:%M:%S"

class Source:
    source: str = None
    server: str = None
    database: str = None
    schema: str = None
    user: str = None
    password: str = None
    incremental_start_time = None
    incremental_end_time = None

    def __init__(self, source, server, database, schema, user=None, password=None, load_type='full', incremental_start_time=None):
        self.source = source
        self.server = server
        self.database = database
        self.schema = schema
        self.user = user
        self.password = password
        self.load_type = load_type
        if self.load_type != 'full':
            self.incremental_end_time = datetime.datetime.now()
            if incremental_start_time:
                self.incremental_start_time = incremental_start_time
            else: # default to like 3 days?????
                self.incremental_start_time = self.incremental_end_time - datetime.timedelta(days=3)


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
            'user': self.user,
            'load_type' : self.load_type
        }



    def get_source_tables(self):
        row_counts = self.get_table_row_counts()
        all_pk_columns = self.get_table_pks()
        source_tables: List[SourceTable] = []
        src_folder = 'src_qrys/{source}/'.format(source=self.source)
        src_qry_paths = [file_name for file_name in os.listdir(src_folder) if '.sql' in file_name]
        for src_qry_path in src_qry_paths:
            table_name = src_qry_path.replace('.sql', '')
            with open(src_folder + src_qry_path, 'r') as f:
                base_qry = f.read()
            if table_name not in row_counts: # hacky
                continue
            row_count = row_counts[table_name]
            columns = parse_column_names_from_query(base_qry)
            pk_columns = all_pk_columns[table_name]
            source_tables.append(SourceTable(self, table_name, row_count, pk_columns, columns, base_qry))  # TODO fill in the blanks
        return source_tables


    def get_table_pks(self) -> Dict[str, List]:
        qry = '''
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
            )
            select table_name, column_id, column_name, part_of_pk
            from table_columns tc
            where part_of_pk = 1
            order by schema_name, table_name, column_id -- TODO make it so this doesnt have to be ordered
        '''.format(database=self.database, schema=self.schema)
        params = None
        data = connection_manager.execute_query(qry, params, self.server, self.database, self.user, self.password)
        pks = defaultdict(list)
        for row in data:
            table_name = row['table_name']
            column_name = row['column_name']
            key = get_key(self.source, self.database, self.schema, table_name)
            pks[key].append(column_name)
        return pks


    def get_table_row_counts(self):
        # TODO change strategy for incremental vs full
        qry = '''
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
        '''.format(database=self.database, schema=self.schema)
        params = None
        data = connection_manager.execute_query(qry, params, self.server, self.database, self.user, self.password)
        counts = {}
        for row in data:
            table_name = row['table_name']
            row_count = row['row_count']
            key = get_key(self.source, self.database, self.schema, table_name)
            counts[key] = row_count
        return counts



class SourceTable:
    source: Source = None
    table: str = None
    row_count: int = None
    total_batches: int = None
    primary_keys: List[str] = None
    columns: List[str] = None
    base_qry: str = None

    def __init__(self, source: Source, table: str, row_count: int, primary_keys: List[str], columns: List[str], base_qry: str):
        self.source = source
        self.table = table
        self.row_count = row_count
        self.primary_keys = primary_keys
        self.columns = columns
        self.base_qry = base_qry
        self.get_number_of_batches()

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
            'columns': self.columns,
            'base_qry': self.base_qry
        }
        tmp.update(self.source.dict())
        return tmp

    def get_number_of_batches(self):
        if self.source.load_type == 'incremental_cdc':
            self.total_batches = 1
        elif self.source.load_type == 'incremental_bods':
            self.total_batches = 1
        else:
            rows_in_batch: float = 20e6
            self.total_batches = ceil(self.row_count / rows_in_batch)

    def get_source_table_batches(self):
        source_table_batches = []
        for batch_number in range(0, self.total_batches):
            source_table_batch = SourceTableBatch(self, batch_number)
            source_table_batches.append(source_table_batch)
        return source_table_batches


class SourceTableBatch:
    source_table: SourceTable = None
    source: Source = None
    batch_number: int = None
    row_count: int = None
    qry: str = None

    def __init__(self, source_table: SourceTable, batch_number: int):
        self.source_table = source_table
        self.source = source_table.source  # Just for easy access
        self.batch_number = batch_number
        self.set_qry()

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
            'row_count': self.row_count,
            'qry': self.qry
        }
        tmp.update(self.source_table.dict())
        return tmp

    def set_qry(self):
        if self.source.load_type == 'incremental_cdc':
            self.set_qry_incremental_cdc()
        elif self.source.load_type == 'incremental_bods':
            self.set_qry_incremental_bods()
        else:
            self.set_qry_full()

    def set_qry_incremental_cdc(self):

        params = {'db': self.source.database, 'schema': self.source.schema, 'table': self.source_table.table}
        fq_table_name = '{db}.{schema}.{table}'.format(**params)
        format_dates = lambda x: x.strftime(sql_date_format)
        start, end = map(format_dates, [self.source.incremental_start_time, self.source.incremental_end_time])

        cdc_params = "(sys.fn_cdc_map_time_to_lsn('smallest greater than', '{}'), sys.fn_cdc_map_time_to_lsn('largest less than or equal', '{}'), 'all')".format(start, end)
        params.update({'cdc_params': cdc_params})
        cdc_fq_object = "{db}.cdc.fn_cdc_get_net_changes_{schema}_{table}{cdc_params}".format(**params)
        self.qry = self.source_table.base_qry.replace(fq_table_name, cdc_fq_object)
        self.qry = self.qry.replace('select', 'select IIF( __$operation = 1, 1, 0) deleted,')

    def set_qry_incremental_bods(self):
        join_lines = ['{table_name}.{column} = changes.{column}\n'.format(table_name=self.source_table.table, column=col) for col in self.source_table.primary_keys]
        join_condition = 'and '.join(join_lines)
        where_clause = '''
        join SAP_Production.change.{table_name}_changes changes
            on {join_condition}
        where
            changes.update_date >= '{start_date}'
        '''.format(table_name= self.source_table.table, join_condition=join_condition, start_date=self.source.incremental_start_time)
        self.qry = self.source_table.base_qry + where_clause



    def set_qry_full(self):
        where_clause = None
        if self.source_table.total_batches == 1:
            where_clause = ''
        else:
            where_clause = 'where abs(checksum({primary_keys})) % {total_batches} = {batch_number}'.format(
                primary_keys=','.join(self.source_table.primary_keys),
                batch_number=self.batch_number,
                total_batches=self.source_table.total_batches
            )
        self.qry = '\n'.join([self.source_table.base_qry, where_clause])
        self.qry = self.qry.replace('select', 'select 0 deleted,')


def parse_column_names_from_query(query):
    pattern = re.compile(r'\[[\w\/]*\]')
    aliases = ['DELETED']
    for line in query.split('\n'):
        if '=' in line:
            tmp = line.split('=')[0]
            matches = re.findall(pattern, tmp)
            column = matches[0]  # they should be the same...
            column = column.replace('[', '').replace(']', '')
            aliases.append(column)
    return aliases


def get_key(source, database, schema, table):
    if source == 'singlepoint':
        key = '{db}.{schema}.{table}'.format(db=database, schema=schema, table=table)
    else:
        key = table
    return key

if __name__ == '__main__':
    source = Source('singlepoint', 'c18n3588.c18n.c.vtscloud.io', 'SinglePoint', 'dbo', load_type='incremental_cdc')

    source_tables = source.get_source_tables()

    source_table_batches = []
    for source_table in source_tables:
        tmp = source_table.get_source_table_batches()
        source_table_batches.extend(tmp)

    for source_table_batch in source_table_batches:
        print(source_table_batch)
