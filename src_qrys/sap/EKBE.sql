select
	 [MANDT] = concat(char(34), replace(cast([EKBE].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [EBELN] = concat(char(34), replace(cast([EKBE].[EBELN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [EBELP] = concat(char(34), replace(cast([EKBE].[EBELP] as nvarchar(5)), char(34), char(0)), char(34)),
	 [ZEKKN] = concat(char(34), replace(cast([EKBE].[ZEKKN] as nvarchar(2)), char(34), char(0)), char(34)),
	 [VGABE] = concat(char(34), replace(cast([EKBE].[VGABE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [GJAHR] = concat(char(34), replace(cast([EKBE].[GJAHR] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BELNR] = concat(char(34), replace(cast([EKBE].[BELNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BUZEI] = concat(char(34), replace(cast([EKBE].[BUZEI] as nvarchar(4)), char(34), char(0)), char(34)),
	 [BEWTP] = concat(char(34), replace(cast([EKBE].[BEWTP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BWART] = concat(char(34), replace(cast([EKBE].[BWART] as nvarchar(3)), char(34), char(0)), char(34)),
	 [BUDAT] = concat(char(34), replace(cast([EKBE].[BUDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [MENGE] = cast([EKBE].[MENGE] as varchar(36)),
	 [BPMNG] = cast([EKBE].[BPMNG] as varchar(36)),
	 [DMBTR] = cast([EKBE].[DMBTR] as varchar(36)),
	 [WRBTR] = cast([EKBE].[WRBTR] as varchar(36)),
	 [WAERS] = concat(char(34), replace(cast([EKBE].[WAERS] as nvarchar(5)), char(34), char(0)), char(34)),
	 [AREWR] = cast([EKBE].[AREWR] as varchar(36)),
	 [WESBS] = cast([EKBE].[WESBS] as varchar(36)),
	 [BPWES] = cast([EKBE].[BPWES] as varchar(36)),
	 [SHKZG] = concat(char(34), replace(cast([EKBE].[SHKZG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [BWTAR] = concat(char(34), replace(cast([EKBE].[BWTAR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [ELIKZ] = concat(char(34), replace(cast([EKBE].[ELIKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XBLNR] = concat(char(34), replace(cast([EKBE].[XBLNR] as nvarchar(16)), char(34), char(0)), char(34)),
	 [LFGJA] = concat(char(34), replace(cast([EKBE].[LFGJA] as nvarchar(4)), char(34), char(0)), char(34)),
	 [LFBNR] = concat(char(34), replace(cast([EKBE].[LFBNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [LFPOS] = concat(char(34), replace(cast([EKBE].[LFPOS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [GRUND] = concat(char(34), replace(cast([EKBE].[GRUND] as nvarchar(4)), char(34), char(0)), char(34)),
	 [CPUDT] = concat(char(34), replace(cast([EKBE].[CPUDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [CPUTM] = concat(char(34), replace(cast([EKBE].[CPUTM] as nvarchar(6)), char(34), char(0)), char(34)),
	 [REEWR] = cast([EKBE].[REEWR] as varchar(36)),
	 [EVERE] = concat(char(34), replace(cast([EKBE].[EVERE] as nvarchar(2)), char(34), char(0)), char(34)),
	 [REFWR] = cast([EKBE].[REFWR] as varchar(36)),
	 [MATNR] = concat(char(34), replace(cast([EKBE].[MATNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [WERKS] = concat(char(34), replace(cast([EKBE].[WERKS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [XWSBR] = concat(char(34), replace(cast([EKBE].[XWSBR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ETENS] = concat(char(34), replace(cast([EKBE].[ETENS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [KNUMV] = concat(char(34), replace(cast([EKBE].[KNUMV] as nvarchar(10)), char(34), char(0)), char(34)),
	 [MWSKZ] = concat(char(34), replace(cast([EKBE].[MWSKZ] as nvarchar(2)), char(34), char(0)), char(34)),
	 [LSMNG] = cast([EKBE].[LSMNG] as varchar(36)),
	 [LSMEH] = concat(char(34), replace(cast([EKBE].[LSMEH] as nvarchar(3)), char(34), char(0)), char(34)),
	 [EMATN] = concat(char(34), replace(cast([EKBE].[EMATN] as nvarchar(18)), char(34), char(0)), char(34)),
	 [AREWW] = cast([EKBE].[AREWW] as varchar(36)),
	 [HSWAE] = concat(char(34), replace(cast([EKBE].[HSWAE] as nvarchar(5)), char(34), char(0)), char(34)),
	 [BAMNG] = cast([EKBE].[BAMNG] as varchar(36)),
	 [CHARG] = concat(char(34), replace(cast([EKBE].[CHARG] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BLDAT] = concat(char(34), replace(cast([EKBE].[BLDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [XWOFF] = concat(char(34), replace(cast([EKBE].[XWOFF] as nvarchar(1)), char(34), char(0)), char(34)),
	 [XUNPL] = concat(char(34), replace(cast([EKBE].[XUNPL] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ERNAM] = concat(char(34), replace(cast([EKBE].[ERNAM] as nvarchar(12)), char(34), char(0)), char(34)),
	 [SRVPOS] = concat(char(34), replace(cast([EKBE].[SRVPOS] as nvarchar(18)), char(34), char(0)), char(34)),
	 [PACKNO] = concat(char(34), replace(cast([EKBE].[PACKNO] as nvarchar(10)), char(34), char(0)), char(34)),
	 [INTROW] = concat(char(34), replace(cast([EKBE].[INTROW] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BEKKN] = concat(char(34), replace(cast([EKBE].[BEKKN] as nvarchar(2)), char(34), char(0)), char(34)),
	 [LEMIN] = concat(char(34), replace(cast([EKBE].[LEMIN] as nvarchar(1)), char(34), char(0)), char(34)),
	 [AREWB] = cast([EKBE].[AREWB] as varchar(36)),
	 [REWRB] = cast([EKBE].[REWRB] as varchar(36)),
	 [SAPRL] = concat(char(34), replace(cast([EKBE].[SAPRL] as nvarchar(4)), char(34), char(0)), char(34)),
	 [MENGE_POP] = cast([EKBE].[MENGE_POP] as varchar(36)),
	 [BPMNG_POP] = cast([EKBE].[BPMNG_POP] as varchar(36)),
	 [DMBTR_POP] = cast([EKBE].[DMBTR_POP] as varchar(36)),
	 [WRBTR_POP] = cast([EKBE].[WRBTR_POP] as varchar(36)),
	 [WESBB] = cast([EKBE].[WESBB] as varchar(36)),
	 [BPWEB] = cast([EKBE].[BPWEB] as varchar(36)),
	 [WEORA] = concat(char(34), replace(cast([EKBE].[WEORA] as nvarchar(1)), char(34), char(0)), char(34)),
	 [AREWR_POP] = cast([EKBE].[AREWR_POP] as varchar(36)),
	 [KUDIF] = cast([EKBE].[KUDIF] as varchar(36)),
	 [RETAMT_FC] = cast([EKBE].[RETAMT_FC] as varchar(36)),
	 [RETAMT_LC] = cast([EKBE].[RETAMT_LC] as varchar(36)),
	 [RETAMTP_FC] = cast([EKBE].[RETAMTP_FC] as varchar(36)),
	 [RETAMTP_LC] = cast([EKBE].[RETAMTP_LC] as varchar(36)),
	 [XMACC] = concat(char(34), replace(cast([EKBE].[XMACC] as nvarchar(1)), char(34), char(0)), char(34)),
	 [WKURS] = cast([EKBE].[WKURS] as varchar(36)),
	 [INV_ITEM_ORIGIN] = concat(char(34), replace(cast([EKBE].[INV_ITEM_ORIGIN] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VBELN_ST] = concat(char(34), replace(cast([EKBE].[VBELN_ST] as nvarchar(10)), char(34), char(0)), char(34)),
	 [VBELP_ST] = concat(char(34), replace(cast([EKBE].[VBELP_ST] as nvarchar(6)), char(34), char(0)), char(34)),
	 [ET_UPD] = concat(char(34), replace(cast([EKBE].[ET_UPD] as nvarchar(1)), char(34), char(0)), char(34)),
	 [J_SC_DIE_COMP_F] = concat(char(34), replace(cast([EKBE].[J_SC_DIE_COMP_F] as nvarchar(1)), char(34), char(0)), char(34))
from SAP_REPO.dbo.EKBE