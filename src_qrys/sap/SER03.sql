select
	 [MANDT] = quotename([SER03].[MANDT], char(34)),
	 [OBKNR] = quotename([SER03].[OBKNR], char(34)),
	 [MBLNR] = quotename([SER03].[MBLNR], char(34)),
	 [MJAHR] = quotename([SER03].[MJAHR], char(34)),
	 [ZEILE] = quotename([SER03].[ZEILE], char(34)),
	 [BLART] = quotename([SER03].[BLART], char(34)),
	 [BWART] = quotename([SER03].[BWART], char(34)),
	 [SHKZG] = quotename([SER03].[SHKZG], char(34)),
	 [DATUM] = convert(varchar(50), [SER03].[DATUM], 21),
	 [UZEIT] = quotename([SER03].[UZEIT], char(34)),
	 [LETZNR] = quotename([SER03].[LETZNR], char(34)),
	 [ANZSN] = quotename([SER03].[ANZSN], char(34)),
	 [VORGANG] = quotename([SER03].[VORGANG], char(34)),
	 [LIEFERANT] = quotename([SER03].[LIEFERANT], char(34)),
	 [KUNDE] = quotename([SER03].[KUNDE], char(34)),
	 [WERK] = quotename([SER03].[WERK], char(34)),
	 [LAGERORT] = quotename([SER03].[LAGERORT], char(34)),
	 [CHARGE] = quotename([SER03].[CHARGE], char(34)),
	 [ETL_DATA_SOURCE] = quotename([SER03].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([SER03].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [SER03].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.SER03