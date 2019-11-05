select
	 [MANDT] = quotename(SER02.[MANDT], char(34)),
	 [OBKNR] = quotename(SER02.[OBKNR], char(34)),
	 [SDAUFNR] = quotename(SER02.[SDAUFNR], char(34)),
	 [POSNR] = quotename(SER02.[POSNR], char(34)),
	 [DATUM] = convert(varchar(50), SER02.[DATUM], 21),
	 [LETZNR] = quotename(SER02.[LETZNR], char(34)),
	 [KUNDE] = quotename(SER02.[KUNDE], char(34)),
	 [ANZSN] = quotename(SER02.[ANZSN], char(34)),
	 [VORGANG] = quotename(SER02.[VORGANG], char(34)),
	 [VBTYP] = quotename(SER02.[VBTYP], char(34)),
	 [SD_AUART] = quotename(SER02.[SD_AUART], char(34)),
	 [SD_POSTYP] = quotename(SER02.[SD_POSTYP], char(34)),
	 [VKORG] = quotename(SER02.[VKORG], char(34)),
	 [VTWEG] = quotename(SER02.[VTWEG], char(34)),
	 [SPART] = quotename(SER02.[SPART], char(34)),
	 [LTSPS] = quotename(SER02.[LTSPS], char(34)),
	 [UII] = quotename(SER02.[UII], char(34)),
	 [ETL_DATA_SOURCE] = quotename(SER02.[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename(SER02.[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), SER02.[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.SER02