select
	 [VBELN] = quotename(VBRP_LC.[VBELN], char(34)),
	 [POSNR] = quotename(VBRP_LC.[POSNR], char(34)),
	 [MEINS] = quotename(VBRP_LC.[MEINS], char(34)),
	 [POSNV] = quotename(VBRP_LC.[POSNV], char(34)),
	 [VGBEL] = quotename(VBRP_LC.[VGBEL], char(34)),
	 [VBELV] = quotename(VBRP_LC.[VBELV], char(34)),
	 [VGPOS] = quotename(VBRP_LC.[VGPOS], char(34)),
	 [NETWR] = quotename(VBRP_LC.[NETWR], char(34)),
	 [FKLMG] = quotename(VBRP_LC.[FKLMG], char(34)),
	 [KURSK] = quotename(VBRP_LC.[KURSK], char(34)),
	 [FBUDA] = quotename(VBRP_LC.[FBUDA], char(34)),
	 [AUBEL] = quotename(VBRP_LC.[AUBEL], char(34)),
	 [AUPOS] = quotename(VBRP_LC.[AUPOS], char(34)),
	 [MATNR] = quotename(VBRP_LC.[MATNR], char(34)),
	 [ERNAM] = quotename(VBRP_LC.[ERNAM], char(34)),
	 [SHKZG] = quotename(VBRP_LC.[SHKZG], char(34)),
	 [ERDAT] = quotename(VBRP_LC.[ERDAT], char(34)),
	 [AUFNR] = quotename(VBRP_LC.[AUFNR], char(34)),
	 [FPLNR] = quotename(VBRP_LC.[FPLNR], char(34)),
	 [FPLTR] = quotename(VBRP_LC.[FPLTR], char(34)),
	 [PRSDT] = quotename(VBRP_LC.[PRSDT], char(34)),
	 [WAVWR] = quotename(VBRP_LC.[WAVWR], char(34)),
	 [MWSBP] = quotename(VBRP_LC.[MWSBP], char(34)),
	 [PRCTR] = quotename(VBRP_LC.[PRCTR], char(34)),
	 [KZWI3] = quotename(VBRP_LC.[KZWI3], char(34)),
	 [PLTYP_AUFT] = quotename(VBRP_LC.[PLTYP_AUFT], char(34)),
	 [POSAR] = quotename(VBRP_LC.[POSAR], char(34)),
	 [VERTT] = quotename(VBRP_LC.[VERTT], char(34)),
	 [VERTN] = quotename(VBRP_LC.[VERTN], char(34)),
	 [VGTYP_EXT] = quotename(VBRP_LC.[VGTYP_EXT], char(34)),
	 [WERKS] = quotename(VBRP_LC.[WERKS], char(34)),
	 [ETL_LOAD_DATE] = quotename(VBRP_LC.[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.VBRP_LC