select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [KUNNR] = isNull(quotename([KUNNR], char(34)), '\N'),
	 [BUKRS] = isNull(quotename([BUKRS], char(34)), '\N'),
	 [PERNR] = isNull(quotename([PERNR], char(34)), '\N'),
	 [ERDAT] = isNull(convert(varchar(50), [ERDAT], 21), '\N'),
	 [ERNAM] = isNull(quotename([ERNAM], char(34)), '\N'),
	 [SPERR] = isNull(quotename([SPERR], char(34)), '\N'),
	 [LOEVM] = isNull(quotename([LOEVM], char(34)), '\N'),
	 [ZUAWA] = isNull(quotename([ZUAWA], char(34)), '\N'),
	 [BUSAB] = isNull(quotename([BUSAB], char(34)), '\N'),
	 [AKONT] = isNull(quotename([AKONT], char(34)), '\N'),
	 [BEGRU] = isNull(quotename([BEGRU], char(34)), '\N'),
	 [KNRZE] = isNull(quotename([KNRZE], char(34)), '\N'),
	 [KNRZB] = isNull(quotename([KNRZB], char(34)), '\N'),
	 [ZAMIM] = isNull(quotename([ZAMIM], char(34)), '\N'),
	 [ZAMIV] = isNull(quotename([ZAMIV], char(34)), '\N'),
	 [ZAMIR] = isNull(quotename([ZAMIR], char(34)), '\N'),
	 [ZAMIB] = isNull(quotename([ZAMIB], char(34)), '\N'),
	 [ZAMIO] = isNull(quotename([ZAMIO], char(34)), '\N'),
	 [ZWELS] = isNull(quotename([ZWELS], char(34)), '\N'),
	 [XVERR] = isNull(quotename([XVERR], char(34)), '\N'),
	 [ZAHLS] = isNull(quotename([ZAHLS], char(34)), '\N'),
	 [ZTERM] = isNull(quotename([ZTERM], char(34)), '\N'),
	 [WAKON] = isNull(quotename([WAKON], char(34)), '\N'),
	 [VZSKZ] = isNull(quotename([VZSKZ], char(34)), '\N'),
	 [ZINDT] = isNull(convert(varchar(50), [ZINDT], 21), '\N'),
	 [ZINRT] = isNull(quotename([ZINRT], char(34)), '\N'),
	 [EIKTO] = isNull(quotename([EIKTO], char(34)), '\N'),
	 [ZSABE] = isNull(quotename([ZSABE], char(34)), '\N'),
	 [KVERM] = isNull(quotename([KVERM], char(34)), '\N'),
	 [FDGRV] = isNull(quotename([FDGRV], char(34)), '\N'),
	 [VRBKZ] = isNull(quotename([VRBKZ], char(34)), '\N'),
	 [VLIBB] = isNull(quotename([VLIBB], char(34)), '\N'),
	 [VRSZL] = isNull(quotename([VRSZL], char(34)), '\N'),
	 [VRSPR] = isNull(quotename([VRSPR], char(34)), '\N'),
	 [VRSNR] = isNull(quotename([VRSNR], char(34)), '\N'),
	 [VERDT] = isNull(convert(varchar(50), [VERDT], 21), '\N'),
	 [PERKZ] = isNull(quotename([PERKZ], char(34)), '\N'),
	 [XDEZV] = isNull(quotename([XDEZV], char(34)), '\N'),
	 [XAUSZ] = isNull(quotename([XAUSZ], char(34)), '\N'),
	 [WEBTR] = isNull(quotename([WEBTR], char(34)), '\N'),
	 [REMIT] = isNull(quotename([REMIT], char(34)), '\N'),
	 [DATLZ] = isNull(convert(varchar(50), [DATLZ], 21), '\N'),
	 [XZVER] = isNull(quotename([XZVER], char(34)), '\N'),
	 [TOGRU] = isNull(quotename([TOGRU], char(34)), '\N'),
	 [KULTG] = isNull(quotename([KULTG], char(34)), '\N'),
	 [HBKID] = isNull(quotename([HBKID], char(34)), '\N'),
	 [XPORE] = isNull(quotename([XPORE], char(34)), '\N'),
	 [BLNKZ] = isNull(quotename([BLNKZ], char(34)), '\N'),
	 [ALTKN] = isNull(quotename([ALTKN], char(34)), '\N'),
	 [ZGRUP] = isNull(quotename([ZGRUP], char(34)), '\N'),
	 [URLID] = isNull(quotename([URLID], char(34)), '\N'),
	 [MGRUP] = isNull(quotename([MGRUP], char(34)), '\N'),
	 [LOCKB] = isNull(quotename([LOCKB], char(34)), '\N'),
	 [UZAWE] = isNull(quotename([UZAWE], char(34)), '\N'),
	 [EKVBD] = isNull(quotename([EKVBD], char(34)), '\N'),
	 [SREGL] = isNull(quotename([SREGL], char(34)), '\N'),
	 [XEDIP] = isNull(quotename([XEDIP], char(34)), '\N'),
	 [FRGRP] = isNull(quotename([FRGRP], char(34)), '\N'),
	 [VRSDG] = isNull(quotename([VRSDG], char(34)), '\N'),
	 [TLFXS] = isNull(quotename([TLFXS], char(34)), '\N'),
	 [INTAD] = isNull(quotename([INTAD], char(34)), '\N'),
	 [XKNZB] = isNull(quotename([XKNZB], char(34)), '\N'),
	 [GUZTE] = isNull(quotename([GUZTE], char(34)), '\N'),
	 [GRICD] = isNull(quotename([GRICD], char(34)), '\N'),
	 [GRIDT] = isNull(quotename([GRIDT], char(34)), '\N'),
	 [WBRSL] = isNull(quotename([WBRSL], char(34)), '\N'),
	 [CONFS] = isNull(quotename([CONFS], char(34)), '\N'),
	 [UPDAT] = isNull(convert(varchar(50), [UPDAT], 21), '\N'),
	 [UPTIM] = isNull(quotename([UPTIM], char(34)), '\N'),
	 [NODEL] = isNull(quotename([NODEL], char(34)), '\N'),
	 [TLFNS] = isNull(quotename([TLFNS], char(34)), '\N'),
	 [CESSION_KZ] = isNull(quotename([CESSION_KZ], char(34)), '\N'),
	 [AVSND] = isNull(quotename([AVSND], char(34)), '\N'),
	 [AD_HASH] = isNull(quotename([AD_HASH], char(34)), '\N'),
	 [QLAND] = isNull(quotename([QLAND], char(34)), '\N'),
	 [GMVKZD] = isNull(quotename([GMVKZD], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SAP_Production.dbo.KNB1