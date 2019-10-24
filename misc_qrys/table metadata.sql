use SAP_Production

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
--         where exists(select 1 from view_columns vc where tc.schema_name = vc.schema_name and concat('V_', tc.table_name) = vc.view_name and tc.column_name = vc.column_name)
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
-- 		where part_of_pk = 1
	) a
    where 1=1-- min_pk_col_id != 1
        and table_name in (
	'AFIH',
	'AFKO',
	'AFPO',
	'AUFK',
	'AUFM',
	'AUSP',
	'BKPF',
	'BSAD',
	'BSAK',
	'BSEG_LC',
	'BSID',
	'BSIK',
	'BSIS_BSAS_LC',
	'CABN',
	'CABNT',
	'CATSDB',
	'COAS',
	'COBK',
	'COEP_LC',
	'COST',
	'CSKS',
	'CSKT',
	'EBAN',
	'EKBE',
	'EKET',
	'EKKN',
	'EKKO',
	'EKPO',
	'EQBS',
	'EQKT',
	'EQUI',
	'EQUZ',
	'FPLA',
	'FPLT',
	'HRP1000',
	'HRP1001',
	'IHPA',
	'KLAH',
	'KNA1',
	'KNB1',
	'KNVP',
	'KNVV',
	'KONDD',
	'KONDDP',
	'KOTD001',
	'KSML',
	'LFA1',
	'LFB1',
	'LFM1',
	'LIKP',
	'LIPS',
	'MAKT',
	'MARA',
	'MARC',
	'MARD',
	'MBEW_LC',
	'MCH1',
	'MCHB',
	'MKPF',
	'MSEG',
	'MSKA',
	'OBJK',
	'PA0001',
	'PA0041',
	'PA0105',
	'PMSDO',
	'PTRV_SCOS',
	'PTRV_SHDR',
	'PTRV_SREC',
	'PURGTX_T',
	'RBKP',
	'RSEG',
	'SER01',
	'SER02',
	'SER03',
	'SKAT',
	'T001',
	'T001L',
	'T001W',
	'T002T',
	'T003',
	'T003O',
	'T003T',
	'T024',
	'T151',
	'T151T',
	'T156',
	'T156T',
	'T158W',
	'T161T',
	'T179T',
	'T527X',
	'T528B',
	'T528T',
	'TCURX',
	'TVAK',
	'TVAKT',
	'TVAPT',
	'TVLVT',
	'VBAK',
	'VBAP',
	'VBFA',
	'VBKD',
	'VBPA',
	'VBREVE',
	'VBRK',
	'VBRP_LC',
	'VEDA',
	'WYT3',
	'ZSMSCONTA',
	'ZTT_ZONE'
	    )
	order by table_name, column_id



