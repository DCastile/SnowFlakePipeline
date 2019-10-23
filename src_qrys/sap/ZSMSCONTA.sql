select
	 [RCLNT] = isNull(quotename([RCLNT], char(34)), '\N'),
	 [GL_SIRID] = isNull(quotename([GL_SIRID], char(34)), '\N'),
	 [RLDNR] = isNull(quotename([RLDNR], char(34)), '\N'),
	 [RRCTY] = isNull(quotename([RRCTY], char(34)), '\N'),
	 [RVERS] = isNull(quotename([RVERS], char(34)), '\N'),
	 [RYEAR] = isNull(quotename([RYEAR], char(34)), '\N'),
	 [RTCUR] = isNull(quotename([RTCUR], char(34)), '\N'),
	 [RUNIT] = isNull(quotename([RUNIT], char(34)), '\N'),
	 [DRCRK] = isNull(quotename([DRCRK], char(34)), '\N'),
	 [POPER] = isNull(quotename([POPER], char(34)), '\N'),
	 [DOCCT] = isNull(quotename([DOCCT], char(34)), '\N'),
	 [DOCNR] = isNull(quotename([DOCNR], char(34)), '\N'),
	 [DOCLN] = isNull(quotename([DOCLN], char(34)), '\N'),
	 [RBUKRS] = isNull(quotename([RBUKRS], char(34)), '\N'),
	 [RACCT] = isNull(quotename([RACCT], char(34)), '\N'),
	 [RBUSA] = isNull(quotename([RBUSA], char(34)), '\N'),
	 [RCNTR] = isNull(quotename([RCNTR], char(34)), '\N'),
	 [RFAREA] = isNull(quotename([RFAREA], char(34)), '\N'),
	 [RZZMAT_KDA] = isNull(quotename([RZZMAT_KDA], char(34)), '\N'),
	 [RZZEBELN] = isNull(quotename([RZZEBELN], char(34)), '\N'),
	 [LOGSYS] = isNull(quotename([LOGSYS], char(34)), '\N'),
	 [SBUKRS] = isNull(quotename([SBUKRS], char(34)), '\N'),
	 [SACCT] = isNull(quotename([SACCT], char(34)), '\N'),
	 [SBUSA] = isNull(quotename([SBUSA], char(34)), '\N'),
	 [SCNTR] = isNull(quotename([SCNTR], char(34)), '\N'),
	 [SFAREA] = isNull(quotename([SFAREA], char(34)), '\N'),
	 [TSL] = isNull(quotename([TSL], char(34)), '\N'),
	 [HSL] = isNull(quotename([HSL], char(34)), '\N'),
	 [KSL] = isNull(quotename([KSL], char(34)), '\N'),
	 [MSL] = isNull(quotename([MSL], char(34)), '\N'),
	 [SGTXT] = isNull(quotename([SGTXT], char(34)), '\N'),
	 [DOCTY] = isNull(quotename([DOCTY], char(34)), '\N'),
	 [ACTIV] = isNull(quotename([ACTIV], char(34)), '\N'),
	 [BUDAT] = isNull(quotename([BUDAT], char(34)), '\N'),
	 [WSDAT] = isNull(quotename([WSDAT], char(34)), '\N'),
	 [REFDOCNR] = isNull(quotename([REFDOCNR], char(34)), '\N'),
	 [REFRYEAR] = isNull(quotename([REFRYEAR], char(34)), '\N'),
	 [REFDOCLN] = isNull(quotename([REFDOCLN], char(34)), '\N'),
	 [REFDOCCT] = isNull(quotename([REFDOCCT], char(34)), '\N'),
	 [REFACTIV] = isNull(quotename([REFACTIV], char(34)), '\N'),
	 [CPUDT] = isNull(quotename([CPUDT], char(34)), '\N'),
	 [CPUTM] = isNull(quotename([CPUTM], char(34)), '\N'),
	 [USNAM] = isNull(quotename([USNAM], char(34)), '\N'),
	 [AWTYP] = isNull(quotename([AWTYP], char(34)), '\N'),
	 [AWORG] = isNull(quotename([AWORG], char(34)), '\N')
from SAP_Production.dbo.ZSMSCONTA