select
	 [MANDT] = quotename([EQUI].[MANDT], char(34)),
	 [EQUNR] = quotename([EQUI].[EQUNR], char(34)),
	 [ERDAT] = convert(varchar(50), [EQUI].[ERDAT], 21),
	 [ERNAM] = quotename([EQUI].[ERNAM], char(34)),
	 [EQASP] = quotename([EQUI].[EQASP], char(34)),
	 [AEDAT] = convert(varchar(50), [EQUI].[AEDAT], 21),
	 [AENAM] = quotename([EQUI].[AENAM], char(34)),
	 [BEGRU] = quotename([EQUI].[BEGRU], char(34)),
	 [EQTYP] = quotename([EQUI].[EQTYP], char(34)),
	 [EQART] = quotename([EQUI].[EQART], char(34)),
	 [LVORM] = quotename([EQUI].[LVORM], char(34)),
	 [INVNR] = quotename([EQUI].[INVNR], char(34)),
	 [GROES] = quotename([EQUI].[GROES], char(34)),
	 [BRGEW] = quotename([EQUI].[BRGEW], char(34)),
	 [GEWEI] = quotename([EQUI].[GEWEI], char(34)),
	 [ANSDT] = convert(varchar(50), [EQUI].[ANSDT], 21),
	 [ANSWT] = quotename([EQUI].[ANSWT], char(34)),
	 [WAERS] = quotename([EQUI].[WAERS], char(34)),
	 [ELIEF] = quotename([EQUI].[ELIEF], char(34)),
	 [GWLEN] = convert(varchar(50), [EQUI].[GWLEN], 21),
	 [GWLDT] = convert(varchar(50), [EQUI].[GWLDT], 21),
	 [WDBWT] = quotename([EQUI].[WDBWT], char(34)),
	 [HERST] = quotename([EQUI].[HERST], char(34)),
	 [HERLD] = quotename([EQUI].[HERLD], char(34)),
	 [HZEIN] = quotename([EQUI].[HZEIN], char(34)),
	 [SERGE] = quotename([EQUI].[SERGE], char(34)),
	 [TYPBZ] = quotename([EQUI].[TYPBZ], char(34)),
	 [BAUJJ] = quotename([EQUI].[BAUJJ], char(34)),
	 [BAUMM] = quotename([EQUI].[BAUMM], char(34)),
	 [APLKZ] = quotename([EQUI].[APLKZ], char(34)),
	 [AULDT] = convert(varchar(50), [EQUI].[AULDT], 21),
	 [INBDT] = convert(varchar(50), [EQUI].[INBDT], 21),
	 [GERNR] = quotename([EQUI].[GERNR], char(34)),
	 [EQLFN] = quotename([EQUI].[EQLFN], char(34)),
	 [GWLDV] = convert(varchar(50), [EQUI].[GWLDV], 21),
	 [EQDAT] = convert(varchar(50), [EQUI].[EQDAT], 21),
	 [EQBER] = quotename([EQUI].[EQBER], char(34)),
	 [EQNUM] = quotename([EQUI].[EQNUM], char(34)),
	 [OBJNR] = quotename([EQUI].[OBJNR], char(34)),
	 [EQSNR] = quotename([EQUI].[EQSNR], char(34)),
	 [CUOBJ] = quotename([EQUI].[CUOBJ], char(34)),
	 [KRFKZ] = quotename([EQUI].[KRFKZ], char(34)),
	 [KMATN] = quotename([EQUI].[KMATN], char(34)),
	 [MATNR] = quotename([EQUI].[MATNR], char(34)),
	 [SERNR] = quotename([EQUI].[SERNR], char(34)),
	 [WERK] = quotename([EQUI].[WERK], char(34)),
	 [LAGER] = quotename([EQUI].[LAGER], char(34)),
	 [CHARGE] = quotename([EQUI].[CHARGE], char(34)),
	 [KUNDE] = quotename([EQUI].[KUNDE], char(34)),
	 [WARPL] = quotename([EQUI].[WARPL], char(34)),
	 [IMRC_POINT] = quotename([EQUI].[IMRC_POINT], char(34)),
	 [REVLV] = quotename([EQUI].[REVLV], char(34)),
	 [MGANR] = quotename([EQUI].[MGANR], char(34)),
	 [BEGRUI] = quotename([EQUI].[BEGRUI], char(34)),
	 [S_EQUI] = quotename([EQUI].[S_EQUI], char(34)),
	 [S_SERIAL] = quotename([EQUI].[S_SERIAL], char(34)),
	 [S_KONFI] = quotename([EQUI].[S_KONFI], char(34)),
	 [S_SALE] = quotename([EQUI].[S_SALE], char(34)),
	 [S_FHM] = quotename([EQUI].[S_FHM], char(34)),
	 [S_ELSE] = quotename([EQUI].[S_ELSE], char(34)),
	 [S_ISU] = quotename([EQUI].[S_ISU], char(34)),
	 [S_EQBS] = quotename([EQUI].[S_EQBS], char(34)),
	 [S_FLEET] = quotename([EQUI].[S_FLEET], char(34)),
	 [BSTVP] = quotename([EQUI].[BSTVP], char(34)),
	 [SPARTE] = quotename([EQUI].[SPARTE], char(34)),
	 [HANDLE] = quotename([EQUI].[HANDLE], char(34)),
	 [TSEGTP] = quotename([EQUI].[TSEGTP], char(34)),
	 [EMATN] = quotename([EQUI].[EMATN], char(34)),
	 [ACT_CHANGE_AA] = quotename([EQUI].[ACT_CHANGE_AA], char(34)),
	 [S_CC] = quotename([EQUI].[S_CC], char(34)),
	 [DATLWB] = convert(varchar(50), [EQUI].[DATLWB], 21),
	 [UII] = quotename([EQUI].[UII], char(34)),
	 [IUID_TYPE] = quotename([EQUI].[IUID_TYPE], char(34)),
	 [UII_PLANT] = quotename([EQUI].[UII_PLANT], char(34)),
	 [EQEXT_ACTIVE] = quotename([EQUI].[EQEXT_ACTIVE], char(34)),
	 [EQUI_SRTYPE] = quotename([EQUI].[EQUI_SRTYPE], char(34)),
	 [EQUI_SNTYPE] = quotename([EQUI].[EQUI_SNTYPE], char(34)),
	 [EQLB_DUTY] = quotename([EQUI].[EQLB_DUTY], char(34)),
	 [EQKTX] = quotename([EQUI].[EQKTX], char(34)),
	 [EQLB_HIDE] = quotename([EQUI].[EQLB_HIDE], char(34)),
	 [ETL_DATA_SOURCE] = quotename([EQUI].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([EQUI].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [EQUI].[ETL_LOAD_DATE], 21)
from SAP_Production.dbo.EQUI