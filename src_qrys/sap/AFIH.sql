select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [AUFNR] = isNull(quotename([AUFNR], char(34)), '\N'),
	 [ARTPR] = isNull(quotename([ARTPR], char(34)), '\N'),
	 [PRIOK] = isNull(quotename([PRIOK], char(34)), '\N'),
	 [EQUNR] = isNull(quotename([EQUNR], char(34)), '\N'),
	 [BAUTL] = isNull(quotename([BAUTL], char(34)), '\N'),
	 [ILOAN] = isNull(quotename([ILOAN], char(34)), '\N'),
	 [ILOAI] = isNull(quotename([ILOAI], char(34)), '\N'),
	 [ANLZU] = isNull(quotename([ANLZU], char(34)), '\N'),
	 [IWERK] = isNull(quotename([IWERK], char(34)), '\N'),
	 [INGPR] = isNull(quotename([INGPR], char(34)), '\N'),
	 [APGRP] = isNull(quotename([APGRP], char(34)), '\N'),
	 [PM_OBJTY] = isNull(quotename([PM_OBJTY], char(34)), '\N'),
	 [GEWRK] = isNull(quotename([GEWRK], char(34)), '\N'),
	 [KUNUM] = isNull(quotename([KUNUM], char(34)), '\N'),
	 [ANING] = isNull(quotename([ANING], char(34)), '\N'),
	 [GAUZT] = isNull(quotename([GAUZT], char(34)), '\N'),
	 [GAUEH] = isNull(quotename([GAUEH], char(34)), '\N'),
	 [ANLBD] = isNull(convert(varchar(50), [ANLBD], 21), '\N'),
	 [ANLVD] = isNull(convert(varchar(50), [ANLVD], 21), '\N'),
	 [ANLBZ] = isNull(convert(varchar(50), [ANLBZ], 21), '\N'),
	 [ANLVZ] = isNull(convert(varchar(50), [ANLVZ], 21), '\N'),
	 [INSPK] = isNull(quotename([INSPK], char(34)), '\N'),
	 [DATAN] = isNull(convert(varchar(50), [DATAN], 21), '\N'),
	 [WARPL] = isNull(quotename([WARPL], char(34)), '\N'),
	 [ABNUM] = isNull(quotename([ABNUM], char(34)), '\N'),
	 [WAPOS] = isNull(quotename([WAPOS], char(34)), '\N'),
	 [LAUFN] = isNull(quotename([LAUFN], char(34)), '\N'),
	 [OBKNR] = isNull(quotename([OBKNR], char(34)), '\N'),
	 [REVNR] = isNull(quotename([REVNR], char(34)), '\N'),
	 [ADDAT] = isNull(convert(varchar(50), [ADDAT], 21), '\N'),
	 [ADUHR] = isNull(convert(varchar(50), [ADUHR], 21), '\N'),
	 [IPHAS] = isNull(quotename([IPHAS], char(34)), '\N'),
	 [ILART] = isNull(quotename([ILART], char(34)), '\N'),
	 [QMNUM] = isNull(quotename([QMNUM], char(34)), '\N'),
	 [HISDA] = isNull(convert(varchar(50), [HISDA], 21), '\N'),
	 [AKKNZ] = isNull(quotename([AKKNZ], char(34)), '\N'),
	 [PLKNZ] = isNull(quotename([PLKNZ], char(34)), '\N'),
	 [SERIALNR] = isNull(quotename([SERIALNR], char(34)), '\N'),
	 [SERMAT] = isNull(quotename([SERMAT], char(34)), '\N'),
	 [DEVICEID] = isNull(quotename([DEVICEID], char(34)), '\N'),
	 [SCREENTY] = isNull(quotename([SCREENTY], char(34)), '\N'),
	 [ADPSP] = isNull(quotename([ADPSP], char(34)), '\N'),
	 [RSUPG] = isNull(quotename([RSUPG], char(34)), '\N'),
	 [/ISDFPS/OBJNR] = isNull(quotename([/ISDFPS/OBJNR], char(34)), '\N'),
	 [/ISDFPS/MEQUI] = isNull(quotename([/ISDFPS/MEQUI], char(34)), '\N'),
	 [UII] = isNull(quotename([UII], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ELT_PROCESS_ID] = isNull(quotename([ELT_PROCESS_ID], char(34)), '\N'),
	 [ELT_LOAD_DATE] = isNull(convert(varchar(50), [ELT_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.AFIH