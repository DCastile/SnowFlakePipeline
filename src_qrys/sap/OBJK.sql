select
	 [MANDT] = quotename([MANDT], char(34)),
	 [OBKNR] = quotename([OBKNR], char(34)),
	 [OBZAE] = quotename([OBZAE], char(34)),
	 [EQUNR] = quotename([EQUNR], char(34)),
	 [IHNUM] = quotename([IHNUM], char(34)),
	 [BAUTL] = quotename([BAUTL], char(34)),
	 [ILOAN] = quotename([ILOAN], char(34)),
	 [SORTF] = quotename([SORTF], char(34)),
	 [BEARB] = quotename([BEARB], char(34)),
	 [OBJVW] = quotename([OBJVW], char(34)),
	 [SERNR] = quotename([SERNR], char(34)),
	 [MATNR] = quotename([MATNR], char(34)),
	 [DATUM] = convert(varchar(50), [DATUM], 21),
	 [EQSNR] = quotename([EQSNR], char(34)),
	 [TASER] = quotename([TASER], char(34)),
	 [UII] = quotename([UII], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.OBJK