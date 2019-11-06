select
	 [MANDT] = quotename([EKBE].[MANDT], char(34)),
	 [EBELN] = quotename([EKBE].[EBELN], char(34)),
	 [EBELP] = quotename([EKBE].[EBELP], char(34)),
	 [ZEKKN] = quotename([EKBE].[ZEKKN], char(34)),
	 [VGABE] = quotename([EKBE].[VGABE], char(34)),
	 [GJAHR] = quotename([EKBE].[GJAHR], char(34)),
	 [BELNR] = quotename([EKBE].[BELNR], char(34)),
	 [BUZEI] = quotename([EKBE].[BUZEI], char(34)),
	 [BEWTP] = quotename([EKBE].[BEWTP], char(34)),
	 [BWART] = quotename([EKBE].[BWART], char(34)),
	 [BUDAT] = convert(varchar(50), [EKBE].[BUDAT], 21),
	 [MENGE] = quotename([EKBE].[MENGE], char(34)),
	 [BPMNG] = quotename([EKBE].[BPMNG], char(34)),
	 [DMBTR] = quotename([EKBE].[DMBTR], char(34)),
	 [WRBTR] = quotename([EKBE].[WRBTR], char(34)),
	 [WAERS] = quotename([EKBE].[WAERS], char(34)),
	 [AREWR] = quotename([EKBE].[AREWR], char(34)),
	 [WESBS] = quotename([EKBE].[WESBS], char(34)),
	 [BPWES] = quotename([EKBE].[BPWES], char(34)),
	 [SHKZG] = quotename([EKBE].[SHKZG], char(34)),
	 [BWTAR] = quotename([EKBE].[BWTAR], char(34)),
	 [ELIKZ] = quotename([EKBE].[ELIKZ], char(34)),
	 [XBLNR] = quotename([EKBE].[XBLNR], char(34)),
	 [LFGJA] = quotename([EKBE].[LFGJA], char(34)),
	 [LFBNR] = quotename([EKBE].[LFBNR], char(34)),
	 [LFPOS] = quotename([EKBE].[LFPOS], char(34)),
	 [GRUND] = quotename([EKBE].[GRUND], char(34)),
	 [CPUDT] = convert(varchar(50), [EKBE].[CPUDT], 21),
	 [CPUTM] = quotename([EKBE].[CPUTM], char(34)),
	 [REEWR] = quotename([EKBE].[REEWR], char(34)),
	 [EVERE] = quotename([EKBE].[EVERE], char(34)),
	 [REFWR] = quotename([EKBE].[REFWR], char(34)),
	 [MATNR] = quotename([EKBE].[MATNR], char(34)),
	 [WERKS] = quotename([EKBE].[WERKS], char(34)),
	 [XWSBR] = quotename([EKBE].[XWSBR], char(34)),
	 [ETENS] = quotename([EKBE].[ETENS], char(34)),
	 [KNUMV] = quotename([EKBE].[KNUMV], char(34)),
	 [MWSKZ] = quotename([EKBE].[MWSKZ], char(34)),
	 [LSMNG] = quotename([EKBE].[LSMNG], char(34)),
	 [LSMEH] = quotename([EKBE].[LSMEH], char(34)),
	 [EMATN] = quotename([EKBE].[EMATN], char(34)),
	 [AREWW] = quotename([EKBE].[AREWW], char(34)),
	 [HSWAE] = quotename([EKBE].[HSWAE], char(34)),
	 [BAMNG] = quotename([EKBE].[BAMNG], char(34)),
	 [CHARG] = quotename([EKBE].[CHARG], char(34)),
	 [BLDAT] = convert(varchar(50), [EKBE].[BLDAT], 21),
	 [XWOFF] = quotename([EKBE].[XWOFF], char(34)),
	 [XUNPL] = quotename([EKBE].[XUNPL], char(34)),
	 [ERNAM] = quotename([EKBE].[ERNAM], char(34)),
	 [SRVPOS] = quotename([EKBE].[SRVPOS], char(34)),
	 [PACKNO] = quotename([EKBE].[PACKNO], char(34)),
	 [INTROW] = quotename([EKBE].[INTROW], char(34)),
	 [BEKKN] = quotename([EKBE].[BEKKN], char(34)),
	 [LEMIN] = quotename([EKBE].[LEMIN], char(34)),
	 [AREWB] = quotename([EKBE].[AREWB], char(34)),
	 [REWRB] = quotename([EKBE].[REWRB], char(34)),
	 [SAPRL] = quotename([EKBE].[SAPRL], char(34)),
	 [MENGE_POP] = quotename([EKBE].[MENGE_POP], char(34)),
	 [BPMNG_POP] = quotename([EKBE].[BPMNG_POP], char(34)),
	 [DMBTR_POP] = quotename([EKBE].[DMBTR_POP], char(34)),
	 [WRBTR_POP] = quotename([EKBE].[WRBTR_POP], char(34)),
	 [WESBB] = quotename([EKBE].[WESBB], char(34)),
	 [BPWEB] = quotename([EKBE].[BPWEB], char(34)),
	 [WEORA] = quotename([EKBE].[WEORA], char(34)),
	 [AREWR_POP] = quotename([EKBE].[AREWR_POP], char(34)),
	 [KUDIF] = quotename([EKBE].[KUDIF], char(34)),
	 [RETAMT_FC] = quotename([EKBE].[RETAMT_FC], char(34)),
	 [RETAMT_LC] = quotename([EKBE].[RETAMT_LC], char(34)),
	 [RETAMTP_FC] = quotename([EKBE].[RETAMTP_FC], char(34)),
	 [RETAMTP_LC] = quotename([EKBE].[RETAMTP_LC], char(34)),
	 [XMACC] = quotename([EKBE].[XMACC], char(34)),
	 [WKURS] = quotename([EKBE].[WKURS], char(34)),
	 [INV_ITEM_ORIGIN] = quotename([EKBE].[INV_ITEM_ORIGIN], char(34)),
	 [VBELN_ST] = quotename([EKBE].[VBELN_ST], char(34)),
	 [VBELP_ST] = quotename([EKBE].[VBELP_ST], char(34)),
	 [ET_UPD] = quotename([EKBE].[ET_UPD], char(34)),
	 [J_SC_DIE_COMP_F] = quotename([EKBE].[J_SC_DIE_COMP_F], char(34)),
	 [ETL_DATA_SOURCE] = quotename([EKBE].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([EKBE].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [EKBE].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.EKBE