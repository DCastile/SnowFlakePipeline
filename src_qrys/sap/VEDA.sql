select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [VBELN] = isNull(quotename([VBELN], char(34)), '\N'),
	 [VPOSN] = isNull(quotename([VPOSN], char(34)), '\N'),
	 [VLAUFZ] = isNull(quotename([VLAUFZ], char(34)), '\N'),
	 [VLAUEZ] = isNull(quotename([VLAUEZ], char(34)), '\N'),
	 [VLAUFK] = isNull(quotename([VLAUFK], char(34)), '\N'),
	 [VINSDAT] = isNull(convert(varchar(50), [VINSDAT], 21), '\N'),
	 [VABNDAT] = isNull(convert(varchar(50), [VABNDAT], 21), '\N'),
	 [VBEGDAT] = isNull(convert(varchar(50), [VBEGDAT], 21), '\N'),
	 [VUNTDAT] = isNull(convert(varchar(50), [VUNTDAT], 21), '\N'),
	 [VKUESCH] = isNull(quotename([VKUESCH], char(34)), '\N'),
	 [VAKTSCH] = isNull(quotename([VAKTSCH], char(34)), '\N'),
	 [VEINDAT] = isNull(convert(varchar(50), [VEINDAT], 21), '\N'),
	 [VWUNDAT] = isNull(convert(varchar(50), [VWUNDAT], 21), '\N'),
	 [VKUEPAR] = isNull(quotename([VKUEPAR], char(34)), '\N'),
	 [VKUEGRU] = isNull(quotename([VKUEGRU], char(34)), '\N'),
	 [VENDDAT] = isNull(convert(varchar(50), [VENDDAT], 21), '\N'),
	 [VBELKUE] = isNull(quotename([VBELKUE], char(34)), '\N'),
	 [VBEDKUE] = isNull(convert(varchar(50), [VBEDKUE], 21), '\N'),
	 [VBEGREG] = isNull(quotename([VBEGREG], char(34)), '\N'),
	 [VVORZEIT] = isNull(quotename([VVORZEIT], char(34)), '\N'),
	 [VVOREIN] = isNull(quotename([VVOREIN], char(34)), '\N'),
	 [VDEMDAT] = isNull(convert(varchar(50), [VDEMDAT], 21), '\N'),
	 [VASDA] = isNull(convert(varchar(50), [VASDA], 21), '\N'),
	 [WIMID] = isNull(quotename([WIMID], char(34)), '\N'),
	 [VASDR] = isNull(quotename([VASDR], char(34)), '\N'),
	 [VENDREG] = isNull(quotename([VENDREG], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.VEDA