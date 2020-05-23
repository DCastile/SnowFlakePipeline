select
	 [MANDT] = concat(char(34), replace(cast([RSEG].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [BELNR] = concat(char(34), replace(cast([RSEG].[BELNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [GJAHR] = concat(char(34), replace(cast([RSEG].[GJAHR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BUZEI] = concat(char(34), replace(cast([RSEG].[BUZEI] as nvarchar(6)), char(34), char(0)), char(34)),
	 [EBELN] = concat(char(34), replace(cast([RSEG].[EBELN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [EBELP] = concat(char(34), replace(cast([RSEG].[EBELP] as nvarchar(5)), char(34), char(0)), char(34)),
	 [ZEKKN] = concat(char(34), replace(cast([RSEG].[ZEKKN] as nvarchar(2)), char(34), char(0)), char(34)),
	 [MATNR] = concat(char(34), replace(cast([RSEG].[MATNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [BWKEY] = concat(char(34), replace(cast([RSEG].[BWKEY] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BWTAR] = concat(char(34), replace(cast([RSEG].[BWTAR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BUKRS] = concat(char(34), replace(cast([RSEG].[BUKRS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [WERKS] = concat(char(34), replace(cast([RSEG].[WERKS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [WRBTR] = cast([RSEG].[WRBTR] as varchar(36)),
	 [SHKZG] = concat(char(34), replace(cast([RSEG].[SHKZG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MWSKZ] = concat(char(34), replace(cast([RSEG].[MWSKZ] as nvarchar(2)), char(34), char(0)), char(34)),
	 [TXJCD] = concat(char(34), replace(cast([RSEG].[TXJCD] as nvarchar(15)), char(34), char(0)), char(34)),
	 [MENGE] = cast([RSEG].[MENGE] as varchar(36)),
	 [BSTME] = concat(char(34), replace(cast([RSEG].[BSTME] as nvarchar(3)), char(34), char(0)), char(34)),
	 [BPMNG] = cast([RSEG].[BPMNG] as varchar(36)),
	 [BPRME] = concat(char(34), replace(cast([RSEG].[BPRME] as nvarchar(3)), char(34), char(0)), char(34)),
	 [LBKUM] = cast([RSEG].[LBKUM] as varchar(36)),
	 [VRKUM] = cast([RSEG].[VRKUM] as varchar(36)),
	 [MEINS] = concat(char(34), replace(cast([RSEG].[MEINS] as nvarchar(3)), char(34), char(0)), char(34)),
	 [PSTYP] = concat(char(34), replace(cast([RSEG].[PSTYP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KNTTP] = concat(char(34), replace(cast([RSEG].[KNTTP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BKLAS] = concat(char(34), replace(cast([RSEG].[BKLAS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [EREKZ] = concat(char(34), replace(cast([RSEG].[EREKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [EXKBE] = concat(char(34), replace(cast([RSEG].[EXKBE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XEKBZ] = concat(char(34), replace(cast([RSEG].[XEKBZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TBTKZ] = concat(char(34), replace(cast([RSEG].[TBTKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPGRP] = concat(char(34), replace(cast([RSEG].[SPGRP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPGRM] = concat(char(34), replace(cast([RSEG].[SPGRM] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPGRT] = concat(char(34), replace(cast([RSEG].[SPGRT] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPGRG] = concat(char(34), replace(cast([RSEG].[SPGRG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPGRV] = concat(char(34), replace(cast([RSEG].[SPGRV] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPGRQ] = concat(char(34), replace(cast([RSEG].[SPGRQ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPGRS] = concat(char(34), replace(cast([RSEG].[SPGRS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPGRC] = concat(char(34), replace(cast([RSEG].[SPGRC] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SPGREXT] = concat(char(34), replace(cast([RSEG].[SPGREXT] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BUSTW] = concat(char(34), replace(cast([RSEG].[BUSTW] as nvarchar(4)), char(34), char(0)), char(34)),
	 [XBLNR] = concat(char(34), replace(cast([RSEG].[XBLNR] as nvarchar(16)), char(34), char(0)), char(34)),
	 [XRUEB] = concat(char(34), replace(cast([RSEG].[XRUEB] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BNKAN] = cast([RSEG].[BNKAN] as varchar(36)),
	 [KSCHL] = concat(char(34), replace(cast([RSEG].[KSCHL] as nvarchar(4)), char(34), char(0)), char(34)),
	 [SALK3] = cast([RSEG].[SALK3] as varchar(36)),
	 [VMSAL] = cast([RSEG].[VMSAL] as varchar(36)),
	 [XLIFO] = concat(char(34), replace(cast([RSEG].[XLIFO] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LFBNR] = concat(char(34), replace(cast([RSEG].[LFBNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [LFGJA] = concat(char(34), replace(cast([RSEG].[LFGJA] as nvarchar(4)), char(34), char(0)), char(34)),
	 [LFPOS] = concat(char(34), replace(cast([RSEG].[LFPOS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [MATBF] = concat(char(34), replace(cast([RSEG].[MATBF] as nvarchar(18)), char(34), char(0)), char(34)),
	 [RBMNG] = cast([RSEG].[RBMNG] as varchar(36)),
	 [BPRBM] = cast([RSEG].[BPRBM] as varchar(36)),
	 [RBWWR] = cast([RSEG].[RBWWR] as varchar(36)),
	 [LFEHL] = concat(char(34), replace(cast([RSEG].[LFEHL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [GRICD] = concat(char(34), replace(cast([RSEG].[GRICD] as nvarchar(2)), char(34), char(0)), char(34)),
	 [GRIRG] = concat(char(34), replace(cast([RSEG].[GRIRG] as nvarchar(3)), char(34), char(0)), char(34)),
	 [GITYP] = concat(char(34), replace(cast([RSEG].[GITYP] as nvarchar(2)), char(34), char(0)), char(34)),
	 [PACKNO] = concat(char(34), replace(cast([RSEG].[PACKNO] as nvarchar(10)), char(34), char(0)), char(34)),
	 [INTROW] = concat(char(34), replace(cast([RSEG].[INTROW] as nvarchar(10)), char(34), char(0)), char(34)),
	 [SGTXT] = concat(char(34), replace(cast([RSEG].[SGTXT] as nvarchar(50)), char(34), char(0)), char(34)),
	 [XSKRL] = concat(char(34), replace(cast([RSEG].[XSKRL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KZMEK] = concat(char(34), replace(cast([RSEG].[KZMEK] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MRMOK] = concat(char(34), replace(cast([RSEG].[MRMOK] as nvarchar(1)), char(34), char(0)), char(34)),
	 [STUNR] = concat(char(34), replace(cast([RSEG].[STUNR] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ZAEHK] = concat(char(34), replace(cast([RSEG].[ZAEHK] as nvarchar(2)), char(34), char(0)), char(34)),
	 [STOCK_POSTING] = cast([RSEG].[STOCK_POSTING] as varchar(36)),
	 [STOCK_POSTING_PP] = cast([RSEG].[STOCK_POSTING_PP] as varchar(36)),
	 [STOCK_POSTING_PY] = cast([RSEG].[STOCK_POSTING_PY] as varchar(36)),
	 [WEREC] = concat(char(34), replace(cast([RSEG].[WEREC] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LIFNR] = concat(char(34), replace(cast([RSEG].[LIFNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [FRBNR] = concat(char(34), replace(cast([RSEG].[FRBNR] as nvarchar(16)), char(34), char(0)), char(34)),
	 [XHISTMA] = concat(char(34), replace(cast([RSEG].[XHISTMA] as nvarchar(1)), char(34), char(0)), char(34)),
	 [COMPLAINT_REASON] = concat(char(34), replace(cast([RSEG].[COMPLAINT_REASON] as nvarchar(2)), char(34), char(0)), char(34)),
	 [RETAMT_FC] = cast([RSEG].[RETAMT_FC] as varchar(36)),
	 [RETPC] = cast([RSEG].[RETPC] as varchar(36)),
	 [RETDUEDT] = concat(char(34), replace(cast([RSEG].[RETDUEDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [XRETTAXNET] = concat(char(34), replace(cast([RSEG].[XRETTAXNET] as nvarchar(1)), char(34), char(0)), char(34)),
	 [RE_ACCOUNT] = concat(char(34), replace(cast([RSEG].[RE_ACCOUNT] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ERP_CONTRACT_ID] = concat(char(34), replace(cast([RSEG].[ERP_CONTRACT_ID] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ERP_CONTRACT_ITM] = concat(char(34), replace(cast([RSEG].[ERP_CONTRACT_ITM] as nvarchar(5)), char(34), char(0)), char(34)),
	 [SRM_CONTRACT_ID] = concat(char(34), replace(cast([RSEG].[SRM_CONTRACT_ID] as nvarchar(10)), char(34), char(0)), char(34)),
	 [SRM_CONTRACT_ITM] = concat(char(34), replace(cast([RSEG].[SRM_CONTRACT_ITM] as nvarchar(10)), char(34), char(0)), char(34)),
	 [CONT_PSTYP] = concat(char(34), replace(cast([RSEG].[CONT_PSTYP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SRVMAPKEY] = concat(char(34), replace(cast([RSEG].[SRVMAPKEY] as nvarchar(10)), char(34), char(0)), char(34)),
	 [CHARG] = concat(char(34), replace(cast([RSEG].[CHARG] as nvarchar(10)), char(34), char(0)), char(34)),
	 [INV_ITM_ORIGIN] = concat(char(34), replace(cast([RSEG].[INV_ITM_ORIGIN] as nvarchar(1)), char(34), char(0)), char(34)),
	 [INVREL] = concat(char(34), replace(cast([RSEG].[INVREL] as nvarchar(6)), char(34), char(0)), char(34)),
	 [XDINV] = concat(char(34), replace(cast([RSEG].[XDINV] as nvarchar(1)), char(34), char(0)), char(34)),
	 [DIFF_AMOUNT] = cast([RSEG].[DIFF_AMOUNT] as varchar(36)),
	 [XCPRF] = concat(char(34), replace(cast([RSEG].[XCPRF] as nvarchar(1)), char(34), char(0)), char(34)),
	 [LICNO] = concat(char(34), replace(cast([RSEG].[LICNO] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ZEILE] = concat(char(34), replace(cast([RSEG].[ZEILE] as nvarchar(4)), char(34), char(0)), char(34))
from SAP_REPO.dbo.RSEG