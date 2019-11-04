select
	 [RCLNT] = quotename([RCLNT], char(34)),
	 [GL_SIRID] = quotename([GL_SIRID], char(34)),
	 [RLDNR] = quotename([RLDNR], char(34)),
	 [RRCTY] = quotename([RRCTY], char(34)),
	 [RVERS] = quotename([RVERS], char(34)),
	 [RYEAR] = quotename([RYEAR], char(34)),
	 [RTCUR] = quotename([RTCUR], char(34)),
	 [RUNIT] = quotename([RUNIT], char(34)),
	 [DRCRK] = quotename([DRCRK], char(34)),
	 [POPER] = quotename([POPER], char(34)),
	 [DOCCT] = quotename([DOCCT], char(34)),
	 [DOCNR] = quotename([DOCNR], char(34)),
	 [DOCLN] = quotename([DOCLN], char(34)),
	 [RBUKRS] = quotename([RBUKRS], char(34)),
	 [RACCT] = quotename([RACCT], char(34)),
	 [RBUSA] = quotename([RBUSA], char(34)),
	 [RCNTR] = quotename([RCNTR], char(34)),
	 [RFAREA] = quotename([RFAREA], char(34)),
	 [RZZMAT_KDA] = quotename([RZZMAT_KDA], char(34)),
	 [RZZEBELN] = quotename([RZZEBELN], char(34)),
	 [LOGSYS] = quotename([LOGSYS], char(34)),
	 [SBUKRS] = quotename([SBUKRS], char(34)),
	 [SACCT] = quotename([SACCT], char(34)),
	 [SBUSA] = quotename([SBUSA], char(34)),
	 [SCNTR] = quotename([SCNTR], char(34)),
	 [SFAREA] = quotename([SFAREA], char(34)),
	 [TSL] = quotename([TSL], char(34)),
	 [HSL] = quotename([HSL], char(34)),
	 [KSL] = quotename([KSL], char(34)),
	 [MSL] = quotename([MSL], char(34)),
	 [SGTXT] = quotename([SGTXT], char(34)),
	 [DOCTY] = quotename([DOCTY], char(34)),
	 [ACTIV] = quotename([ACTIV], char(34)),
	 [BUDAT] = quotename([BUDAT], char(34)),
	 [WSDAT] = quotename([WSDAT], char(34)),
	 [REFDOCNR] = quotename([REFDOCNR], char(34)),
	 [REFRYEAR] = quotename([REFRYEAR], char(34)),
	 [REFDOCLN] = quotename([REFDOCLN], char(34)),
	 [REFDOCCT] = quotename([REFDOCCT], char(34)),
	 [REFACTIV] = quotename([REFACTIV], char(34)),
	 [CPUDT] = quotename([CPUDT], char(34)),
	 [CPUTM] = quotename([CPUTM], char(34)),
	 [USNAM] = quotename([USNAM], char(34)),
	 [AWTYP] = quotename([AWTYP], char(34)),
	 [AWORG] = quotename([AWORG], char(34))
from SAP_Production.dbo.ZSMSCONTA