from collections import defaultdict

import config
import connection_manager

pk_qry = '''
    with table_columns as (
        select
            schema_name(tab.schema_id) schema_name,
            tab.name                   table_name,
            col.column_id              column_id,
            col.name                   column_name,
            CONCAT(
                DATA_TYPE,
                case
                    when data_type like '%date%' or data_type like '%int%' then null
                    else concat('(', COALESCE(CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, DATETIME_PRECISION, ''), IIF(NUMERIC_SCALE <> 0, CONCAT(', ', NUMERIC_SCALE), ''), ')')
                end,
                IIF(info_col.IS_NULLABLE = 'YES', ' null', ' not null')
            ) data_type,
            cast(IIF(ic.object_id is null, 0, 1) as bit) part_of_pk
        from sys.tables tab
         inner join sys.columns col
                    on tab.object_id = col.object_id
         inner join sys.indexes pk
                    on tab.object_id = pk.object_id
                        and pk.is_primary_key = 1
        left join sys.index_columns ic
                    on ic.object_id = pk.object_id
                        and ic.index_id = pk.index_id
                        and ic.column_id = col.column_id
        left join INFORMATION_SCHEMA.COLUMNS info_col
            on schema_name(tab.schema_id) = info_col.TABLE_SCHEMA
               and tab.name = info_col.TABLE_NAME
                and col.name = info_col.COLUMN_NAME
        where schema_name(tab.schema_id) = 'dbo' and not exists(select 1 from sys.tables inn where schema_name(inn.schema_id) = 'ct' and inn.name = tab.name)
    )
    select schema_name, table_name, column_id, column_name, data_type, part_of_pk
    from table_columns
    order by table_name, column_id
'''

server = '10.61.95.22'
db = 'SAP_REPO'
user, password = config.sql_server_login_map[server]

data = connection_manager.execute_query(pk_qry, None, server, db, user=user, password=password)

table_data = defaultdict(list)

for row in data:
    table_name = row['table_name']
    column_name = row['column_name']
    data_type = row['data_type']
    part_of_pk = row['part_of_pk']
    meta = (column_name, data_type, part_of_pk)
    table_data[table_name].append(meta)

scripts = {}

# out_file = open('generate_ct_environment.sql', 'w')
for table_name, table_meta in table_data.items():
    pk_text = ''
    pk_columns = []
    hash_columns = []
    for column_name, column_meta, part_of_pk in table_meta:
        if part_of_pk:
            pk_text += '\t{column_name} {column_meta},\n'.format(column_name=column_name, column_meta=column_meta)
            pk_columns.append(column_name)
        else:
            hash_columns.append(column_name)

    create_table_script = '''
drop table if exists {db}.ct.{table};

create table {db}.ct.{table} (
{pk_text}
    touchstamp datetime not null default getdate(),
    deleted bit not null default 0
);
;
    '''.format(db=db, table=table_name, pk_text=pk_text, primary_keys=','.join(pk_columns))

    initialize_table_script = '''
insert into ct.{table} ({primary_keys})
select {primary_keys}
from dbo.{table}
order by {primary_keys};
'''.format(db=db, table=table_name, pk_text=pk_text, primary_keys=','.join(pk_columns))

    add_pk_script = '''    
alter table ct.{table}
     	add constraint {table}_pk
     		primary key clustered ({primary_keys})
;
    '''.format(db=db, table=table_name, pk_text=pk_text, primary_keys=','.join(pk_columns))

    pk_join_condition = '\n\tand'.join(['\tsrc.{col} = tgt.{col}'.format(col=col) for col in pk_columns])
    inner_pk_join_condition = '\n\tand'.join(['\tins.{col} = del.{col}'.format(col=col) for col in pk_columns])
    pk_column_text = ', '.join(['{column}'.format(column=col) for col in pk_columns])
    hash_columns = ', '.join(['"{col}"'.format(col=col) for col in hash_columns])
    create_triggers_script = '''
create or alter trigger dbo.log_touchstamp_trigger_{table} on dbo.{table}
after insert, update, delete as
begin
    
    merge into {db}.ct.{table} as tgt
    using inserted as src
        on {pk_join_condition}
    
        when matched then update
            set tgt.touchstamp = getdate()
        when not matched then insert
          ({pk_list_text})
          values ({pk_list_text});
    
    with src as (
      select *
      from deleted del
      where not exists(select 1 from inserted ins where {inner_pk_join_condition})
    )
    merge into ct.{table} as tgt
    using src as src
       on {pk_join_condition}
    when matched then update
        set tgt.deleted = 1,
            tgt.touchstamp = getdate();
end
;
    '''.format(db=db, table=table_name, pk_join_condition= pk_join_condition, inner_pk_join_condition=inner_pk_join_condition, pk_list_text=pk_column_text, hash_columns= hash_columns)

    print('################################################################')

    # print(create_table_script)
    print('Creating {table}'.format(table=table_name))
    connection_manager.execute_query(create_table_script, None, server, db, user='datapipeline', password='datareader99$', results=False)

    # print(initialize_table_script)
    print('Populating data for {table}'.format(table=table_name))
    connection_manager.execute_query(initialize_table_script, None, server, db, user='datapipeline', password='datareader99$', results=False)

    # print(add_pk_script)
    print('Adding pk for {table}'.format(table=table_name))
    connection_manager.execute_query(add_pk_script, None, server, db, user='datapipeline', password='datareader99$', results=False)

    # print(create_triggers_script)
    print('Creating triggers on {table}'.format(table=table_name))
    connection_manager.execute_query(create_triggers_script, None, server, db, user='datapipeline', password='datareader99$', results=False)
    # print('Table {table} completed.'.format(table=table_name))
    print('\n\n\n')
    # out_file.write('------------------------------------------------------------------------------')
    # out_file.write('-------------- {table}'.format(table=table_name))
    # out_file.write(create_table_script)
    # out_file.write(initialize_table_script)
    # out_file.write(add_pk_script)
    # out_file.write(create_triggers_script)
    # out_file.write('\n\n')

# out_file.close()
### sample
'''
merge into SAP_Production.change.T024_changes change
using (select *, checksum(EKNAM, EKTEL, LDEST, TELFX, TEL_NUMBER, TEL_EXTENS, SMTP_ADDR) prod_hash from SAP_Production.dbo.T024) prod
on
	change.MANDT = prod.MANDT
	and	change.EKGRP = prod.EKGRP
when not matched by target then insert values (prod.MANDT, prod.EKGRP, GetDate(), prod.prod_hash)
when not matched by source then update
    set
        update_date = GetDate(),
        change.hash = null
when matched and change.hash != prod.prod_hash then update
    set
        change.update_date = GetDate(),
        change.hash = prod.prod_hash
;
'''