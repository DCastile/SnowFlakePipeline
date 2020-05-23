select
	 [MANDT] = concat(char(34), replace(cast([KNB1].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KUNNR] = concat(char(34), replace(cast([KNB1].[KUNNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BUKRS] = concat(char(34), replace(cast([KNB1].[BUKRS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [PERNR] = concat(char(34), replace(cast([KNB1].[PERNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ERDAT] = concat(char(34), replace(cast([KNB1].[ERDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ERNAM] = concat(char(34), replace(cast([KNB1].[ERNAM] as nvarchar(12)), char(34), char(0)), char(34)),
	 [SPERR] = concat(char(34), replace(cast([KNB1].[SPERR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LOEVM] = concat(char(34), replace(cast([KNB1].[LOEVM] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZUAWA] = concat(char(34), replace(cast([KNB1].[ZUAWA] as nvarchar(3)), char(34), char(0)), char(34)),
	 [BUSAB] = concat(char(34), replace(cast([KNB1].[BUSAB] as nvarchar(2)), char(34), char(0)), char(34)),
	 [AKONT] = concat(char(34), replace(cast([KNB1].[AKONT] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BEGRU] = concat(char(34), replace(cast([KNB1].[BEGRU] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KNRZE] = concat(char(34), replace(cast([KNB1].[KNRZE] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KNRZB] = concat(char(34), replace(cast([KNB1].[KNRZB] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ZAMIM] = concat(char(34), replace(cast([KNB1].[ZAMIM] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZAMIV] = concat(char(34), replace(cast([KNB1].[ZAMIV] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZAMIR] = concat(char(34), replace(cast([KNB1].[ZAMIR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZAMIB] = concat(char(34), replace(cast([KNB1].[ZAMIB] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZAMIO] = concat(char(34), replace(cast([KNB1].[ZAMIO] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZWELS] = concat(char(34), replace(cast([KNB1].[ZWELS] as nvarchar(10)), char(34), char(0)), char(34)),
	 [XVERR] = concat(char(34), replace(cast([KNB1].[XVERR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZAHLS] = concat(char(34), replace(cast([KNB1].[ZAHLS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ZTERM] = concat(char(34), replace(cast([KNB1].[ZTERM] as nvarchar(4)), char(34), char(0)), char(34)),
	 [WAKON] = concat(char(34), replace(cast([KNB1].[WAKON] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VZSKZ] = concat(char(34), replace(cast([KNB1].[VZSKZ] as nvarchar(2)), char(34), char(0)), char(34)),
	 [ZINDT] = concat(char(34), replace(cast([KNB1].[ZINDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ZINRT] = concat(char(34), replace(cast([KNB1].[ZINRT] as nvarchar(2)), char(34), char(0)), char(34)),
	 [EIKTO] = concat(char(34), replace(cast([KNB1].[EIKTO] as nvarchar(12)), char(34), char(0)), char(34)),
	 [ZSABE] = concat(char(34), replace(cast([KNB1].[ZSABE] as nvarchar(15)), char(34), char(0)), char(34)),
	 [KVERM] = concat(char(34), replace(cast([KNB1].[KVERM] as nvarchar(30)), char(34), char(0)), char(34)),
	 [FDGRV] = concat(char(34), replace(cast([KNB1].[FDGRV] as nvarchar(10)), char(34), char(0)), char(34)),
	 [VRBKZ] = concat(char(34), replace(cast([KNB1].[VRBKZ] as nvarchar(2)), char(34), char(0)), char(34)),
	 [VLIBB] = cast([KNB1].[VLIBB] as varchar(36)),
	 [VRSZL] = cast([KNB1].[VRSZL] as varchar(36)),
	 [VRSPR] = cast([KNB1].[VRSPR] as varchar(36)),
	 [VRSNR] = concat(char(34), replace(cast([KNB1].[VRSNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [VERDT] = concat(char(34), replace(cast([KNB1].[VERDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [PERKZ] = concat(char(34), replace(cast([KNB1].[PERKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XDEZV] = concat(char(34), replace(cast([KNB1].[XDEZV] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XAUSZ] = concat(char(34), replace(cast([KNB1].[XAUSZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [WEBTR] = cast([KNB1].[WEBTR] as varchar(36)),
	 [REMIT] = concat(char(34), replace(cast([KNB1].[REMIT] as nvarchar(10)), char(34), char(0)), char(34)),
	 [DATLZ] = concat(char(34), replace(cast([KNB1].[DATLZ] as nvarchar(8)), char(34), char(0)), char(34)),
	 [XZVER] = concat(char(34), replace(cast([KNB1].[XZVER] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TOGRU] = concat(char(34), replace(cast([KNB1].[TOGRU] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KULTG] = cast([KNB1].[KULTG] as varchar(36)),
	 [HBKID] = concat(char(34), replace(cast([KNB1].[HBKID] as nvarchar(5)), char(34), char(0)), char(34)),
	 [XPORE] = concat(char(34), replace(cast([KNB1].[XPORE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BLNKZ] = concat(char(34), replace(cast([KNB1].[BLNKZ] as nvarchar(2)), char(34), char(0)), char(34)),
	 [ALTKN] = concat(char(34), replace(cast([KNB1].[ALTKN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ZGRUP] = concat(char(34), replace(cast([KNB1].[ZGRUP] as nvarchar(2)), char(34), char(0)), char(34)),
	 [URLID] = concat(char(34), replace(cast([KNB1].[URLID] as nvarchar(4)), char(34), char(0)), char(34)),
	 [MGRUP] = concat(char(34), replace(cast([KNB1].[MGRUP] as nvarchar(2)), char(34), char(0)), char(34)),
	 [LOCKB] = concat(char(34), replace(cast([KNB1].[LOCKB] as nvarchar(7)), char(34), char(0)), char(34)),
	 [UZAWE] = concat(char(34), replace(cast([KNB1].[UZAWE] as nvarchar(2)), char(34), char(0)), char(34)),
	 [EKVBD] = concat(char(34), replace(cast([KNB1].[EKVBD] as nvarchar(10)), char(34), char(0)), char(34)),
	 [SREGL] = concat(char(34), replace(cast([KNB1].[SREGL] as nvarchar(3)), char(34), char(0)), char(34)),
	 [XEDIP] = concat(char(34), replace(cast([KNB1].[XEDIP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [FRGRP] = concat(char(34), replace(cast([KNB1].[FRGRP] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VRSDG] = concat(char(34), replace(cast([KNB1].[VRSDG] as nvarchar(3)), char(34), char(0)), char(34)),
	 [TLFXS] = concat(char(34), replace(cast([KNB1].[TLFXS] as nvarchar(31)), char(34), char(0)), char(34)),
	 [INTAD] = concat(char(34), replace(cast([KNB1].[INTAD] as nvarchar(130)), char(34), char(0)), char(34)),
	 [XKNZB] = concat(char(34), replace(cast([KNB1].[XKNZB] as nvarchar(1)), char(34), char(0)), char(34)),
	 [GUZTE] = concat(char(34), replace(cast([KNB1].[GUZTE] as nvarchar(4)), char(34), char(0)), char(34)),
	 [GRICD] = concat(char(34), replace(cast([KNB1].[GRICD] as nvarchar(2)), char(34), char(0)), char(34)),
	 [GRIDT] = concat(char(34), replace(cast([KNB1].[GRIDT] as nvarchar(2)), char(34), char(0)), char(34)),
	 [WBRSL] = concat(char(34), replace(cast([KNB1].[WBRSL] as nvarchar(2)), char(34), char(0)), char(34)),
	 [CONFS] = concat(char(34), replace(cast([KNB1].[CONFS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [UPDAT] = concat(char(34), replace(cast([KNB1].[UPDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [UPTIM] = concat(char(34), replace(cast([KNB1].[UPTIM] as nvarchar(6)), char(34), char(0)), char(34)),
	 [NODEL] = concat(char(34), replace(cast([KNB1].[NODEL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TLFNS] = concat(char(34), replace(cast([KNB1].[TLFNS] as nvarchar(30)), char(34), char(0)), char(34)),
	 [CESSION_KZ] = concat(char(34), replace(cast([KNB1].[CESSION_KZ] as nvarchar(2)), char(34), char(0)), char(34)),
	 [AVSND] = concat(char(34), replace(cast([KNB1].[AVSND] as nvarchar(1)), char(34), char(0)), char(34)),
	 [AD_HASH] = concat(char(34), replace(cast([KNB1].[AD_HASH] as nvarchar(10)), char(34), char(0)), char(34)),
	 [QLAND] = concat(char(34), replace(cast([KNB1].[QLAND] as nvarchar(3)), char(34), char(0)), char(34)),
	 [GMVKZD] = concat(char(34), replace(cast([KNB1].[GMVKZD] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.KNB1 with(nolock)