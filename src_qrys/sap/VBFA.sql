select
	 [MANDT] = quotename([MANDT], char(34)),
	 [VBELV] = quotename([VBELV], char(34)),
	 [POSNV] = quotename([POSNV], char(34)),
	 [VBELN] = quotename([VBELN], char(34)),
	 [POSNN] = quotename([POSNN], char(34)),
	 [VBTYP_N] = quotename([VBTYP_N], char(34)),
	 [RFMNG] = quotename([RFMNG], char(34)),
	 [MEINS] = quotename([MEINS], char(34)),
	 [RFWRT] = quotename([RFWRT], char(34)),
	 [WAERS] = quotename([WAERS], char(34)),
	 [VBTYP_V] = quotename([VBTYP_V], char(34)),
	 [PLMIN] = quotename([PLMIN], char(34)),
	 [TAQUI] = quotename([TAQUI], char(34)),
	 [ERDAT] = quotename([ERDAT], char(34)),
	 [ERZET] = quotename([ERZET], char(34)),
	 [MATNR] = quotename([MATNR], char(34)),
	 [BWART] = quotename([BWART], char(34)),
	 [BDART] = quotename([BDART], char(34)),
	 [PLART] = quotename([PLART], char(34)),
	 [STUFE] = quotename([STUFE], char(34)),
	 [LGNUM] = quotename([LGNUM], char(34)),
	 [AEDAT] = quotename([AEDAT], char(34)),
	 [FKTYP] = quotename([FKTYP], char(34)),
	 [BRGEW] = quotename([BRGEW], char(34)),
	 [GEWEI] = quotename([GEWEI], char(34)),
	 [VOLUM] = quotename([VOLUM], char(34)),
	 [VOLEH] = quotename([VOLEH], char(34)),
	 [FPLNR] = quotename([FPLNR], char(34)),
	 [FPLTR] = quotename([FPLTR], char(34)),
	 [RFMNG_FLO] = quotename([RFMNG_FLO], char(34)),
	 [RFMNG_FLT] = quotename([RFMNG_FLT], char(34)),
	 [VRKME] = quotename([VRKME], char(34)),
	 [ABGES] = quotename([ABGES], char(34)),
	 [SOBKZ] = quotename([SOBKZ], char(34)),
	 [SONUM] = quotename([SONUM], char(34)),
	 [KZBEF] = quotename([KZBEF], char(34)),
	 [NTGEW] = quotename([NTGEW], char(34)),
	 [LOGSYS] = quotename([LOGSYS], char(34)),
	 [WBSTA] = quotename([WBSTA], char(34)),
	 [CMETH] = quotename([CMETH], char(34)),
	 [MJAHR] = quotename([MJAHR], char(34)),
	 [VBTYPEXT_V] = quotename([VBTYPEXT_V], char(34)),
	 [VBTYPEXT_N] = quotename([VBTYPEXT_N], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.VBFA