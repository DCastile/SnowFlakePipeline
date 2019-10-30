import connection_manager
from collections import defaultdict

qry = '''
select
	TABLE_NAME, COLUMN_NAME
from SAP_Production.INFORMATION_SCHEMA.COLUMNS col
where
    col.TABLE_SCHEMA = 'change'
	and COLUMN_NAME not in ('update_date', 'hash')
order by TABLE_NAME, ORDINAL_POSITION
'''

server = '10.61.95.22'
db = 'SAP_Production'
data = connection_manager.execute_query(qry, None, server, db, user= 'datapipeline', password='datareader99$')

tables = defaultdict(list)

for row in data:
    table = row['TABLE_NAME']
    column = row['COLUMN_NAME']
    tables[table].append(column)


for table, pk_columns in tables.items():
    pk_text = 'alter table change.{table}\n'.format(table=table)
    pk_text += 'add constraint {table}_pk\n'.format(table=table)
    pk_text += 'primary key clustered ({columns})'.format(columns = ', '.join(pk_columns))
    print(pk_text)
    print('\n')

# -- alter table change.AFIH_changes
# -- 	add constraint AFIH_changes_MANDT_AUFNR_pk
# -- 		primary key nonclustered (MANDT, AUFNR)
# -- go