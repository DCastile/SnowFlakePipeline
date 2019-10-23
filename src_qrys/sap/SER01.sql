select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [OBKNR] = isNull(quotename([OBKNR], char(34)), '\N'),
	 [LIEF_NR] = isNull(quotename([LIEF_NR], char(34)), '\N'),
	 [POSNR] = isNull(quotename([POSNR], char(34)), '\N'),
	 [DATUM] = isNull(quotename([DATUM], char(34)), '\N'),
	 [LETZNR] = isNull(quotename([LETZNR], char(34)), '\N'),
	 [KUNDE] = isNull(quotename([KUNDE], char(34)), '\N'),
	 [ANZSN] = isNull(quotename([ANZSN], char(34)), '\N'),
	 [VORGANG] = isNull(quotename([VORGANG], char(34)), '\N'),
	 [UZEIT] = isNull(quotename([UZEIT], char(34)), '\N'),
	 [VBTYP] = isNull(quotename([VBTYP], char(34)), '\N'),
	 [BWART] = isNull(quotename([BWART], char(34)), '\N'),
	 [VKORG] = isNull(quotename([VKORG], char(34)), '\N'),
	 [VTWEG] = isNull(quotename([VTWEG], char(34)), '\N'),
	 [SPART] = isNull(quotename([SPART], char(34)), '\N'),
	 [LTSPS] = isNull(quotename([LTSPS], char(34)), '\N')
from SAP_Production.dbo.SER01