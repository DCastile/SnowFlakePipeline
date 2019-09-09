

        with table_columns as (
            select
                schema_name(tab.schema_id) schema_name,
                tab.name                   table_name,
                col.column_id              column_id,
                col.name                   column_name,
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
            where schema_name(tab.schema_id) = 'dbo'
        ), view_columns as (
            select
              schema_name(v.schema_id) schema_name,
              object_name(c.object_id) view_name,
              c.name                   column_name
            from sys.columns c
               join sys.views v
                    on v.object_id = c.object_id
            where schema_name(v.schema_id) = 'dbo'
        ),
        data as (
        select table_name, column_id, column_name, part_of_pk
        from table_columns tc
        where exists(select 1 from view_columns vc where tc.schema_name = vc.schema_name and concat('V_', tc.table_name) = vc.view_name and tc.column_name = vc.column_name)
--         and table_name = 'TCURX'
--         order by schema_name, table_name, column_id
		)
-- 		select distinct table_name from data



--         select
--             schema_name(schema_id) schema_name,
--             so.name        table_name,
--             ddps.row_count row_count
--         from .sys.objects so
--              join .sys.indexes si
--                   on si.OBJECT_ID = so.OBJECT_ID
--              join .sys.dm_db_partition_stats as ddps
--                   on si.OBJECT_ID = ddps.OBJECT_ID and si.index_id = ddps.index_id
--         where si.index_id < 2 and so.is_ms_shipped = 0 and schema_name(schema_id) = 'dbo' and so.name in (select distinct table_name from data)
	select *
	from (
		select
			table_name,
			column_id,
			column_name,
			part_of_pk,
		    min(column_id) over(partition by table_name) min_pk_col_id
	    from data
		where part_of_pk = 1
	) a
--     where min_pk_col_id != 1
	order by table_name, column_id



