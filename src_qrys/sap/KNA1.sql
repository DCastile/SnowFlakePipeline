select
	 [MANDT] = isNull(quotename([MANDT], char(34)), '\N'),
	 [KUNNR] = isNull(quotename([KUNNR], char(34)), '\N'),
	 [LAND1] = isNull(quotename([LAND1], char(34)), '\N'),
	 [NAME1] = isNull(quotename([NAME1], char(34)), '\N'),
	 [NAME2] = isNull(quotename([NAME2], char(34)), '\N'),
	 [ORT01] = isNull(quotename([ORT01], char(34)), '\N'),
	 [PSTLZ] = isNull(quotename([PSTLZ], char(34)), '\N'),
	 [REGIO] = isNull(quotename([REGIO], char(34)), '\N'),
	 [SORTL] = isNull(quotename([SORTL], char(34)), '\N'),
	 [STRAS] = isNull(quotename([STRAS], char(34)), '\N'),
	 [TELF1] = isNull(quotename([TELF1], char(34)), '\N'),
	 [TELFX] = isNull(quotename([TELFX], char(34)), '\N'),
	 [XCPDK] = isNull(quotename([XCPDK], char(34)), '\N'),
	 [ADRNR] = isNull(quotename([ADRNR], char(34)), '\N'),
	 [MCOD1] = isNull(quotename([MCOD1], char(34)), '\N'),
	 [MCOD2] = isNull(quotename([MCOD2], char(34)), '\N'),
	 [MCOD3] = isNull(quotename([MCOD3], char(34)), '\N'),
	 [ANRED] = isNull(quotename([ANRED], char(34)), '\N'),
	 [AUFSD] = isNull(quotename([AUFSD], char(34)), '\N'),
	 [BAHNE] = isNull(quotename([BAHNE], char(34)), '\N'),
	 [BAHNS] = isNull(quotename([BAHNS], char(34)), '\N'),
	 [BBBNR] = isNull(quotename([BBBNR], char(34)), '\N'),
	 [BBSNR] = isNull(quotename([BBSNR], char(34)), '\N'),
	 [BEGRU] = isNull(quotename([BEGRU], char(34)), '\N'),
	 [BRSCH] = isNull(quotename([BRSCH], char(34)), '\N'),
	 [BUBKZ] = isNull(quotename([BUBKZ], char(34)), '\N'),
	 [DATLT] = isNull(quotename([DATLT], char(34)), '\N'),
	 [ERDAT] = isNull(convert(varchar(50), [ERDAT], 21), '\N'),
	 [ERNAM] = isNull(quotename([ERNAM], char(34)), '\N'),
	 [EXABL] = isNull(quotename([EXABL], char(34)), '\N'),
	 [FAKSD] = isNull(quotename([FAKSD], char(34)), '\N'),
	 [FISKN] = isNull(quotename([FISKN], char(34)), '\N'),
	 [KNAZK] = isNull(quotename([KNAZK], char(34)), '\N'),
	 [KNRZA] = isNull(quotename([KNRZA], char(34)), '\N'),
	 [KONZS] = isNull(quotename([KONZS], char(34)), '\N'),
	 [KTOKD] = isNull(quotename([KTOKD], char(34)), '\N'),
	 [KUKLA] = isNull(quotename([KUKLA], char(34)), '\N'),
	 [LIFNR] = isNull(quotename([LIFNR], char(34)), '\N'),
	 [LIFSD] = isNull(quotename([LIFSD], char(34)), '\N'),
	 [LOCCO] = isNull(quotename([LOCCO], char(34)), '\N'),
	 [LOEVM] = isNull(quotename([LOEVM], char(34)), '\N'),
	 [NAME3] = isNull(quotename([NAME3], char(34)), '\N'),
	 [NAME4] = isNull(quotename([NAME4], char(34)), '\N'),
	 [NIELS] = isNull(quotename([NIELS], char(34)), '\N'),
	 [ORT02] = isNull(quotename([ORT02], char(34)), '\N'),
	 [PFACH] = isNull(quotename([PFACH], char(34)), '\N'),
	 [PSTL2] = isNull(quotename([PSTL2], char(34)), '\N'),
	 [COUNC] = isNull(quotename([COUNC], char(34)), '\N'),
	 [CITYC] = isNull(quotename([CITYC], char(34)), '\N'),
	 [RPMKR] = isNull(quotename([RPMKR], char(34)), '\N'),
	 [SPERR] = isNull(quotename([SPERR], char(34)), '\N'),
	 [SPRAS] = isNull(quotename([SPRAS], char(34)), '\N'),
	 [STCD1] = isNull(quotename([STCD1], char(34)), '\N'),
	 [STCD2] = isNull(quotename([STCD2], char(34)), '\N'),
	 [STKZA] = isNull(quotename([STKZA], char(34)), '\N'),
	 [STKZU] = isNull(quotename([STKZU], char(34)), '\N'),
	 [TELBX] = isNull(quotename([TELBX], char(34)), '\N'),
	 [TELF2] = isNull(quotename([TELF2], char(34)), '\N'),
	 [TELTX] = isNull(quotename([TELTX], char(34)), '\N'),
	 [TELX1] = isNull(quotename([TELX1], char(34)), '\N'),
	 [LZONE] = isNull(quotename([LZONE], char(34)), '\N'),
	 [XZEMP] = isNull(quotename([XZEMP], char(34)), '\N'),
	 [VBUND] = isNull(quotename([VBUND], char(34)), '\N'),
	 [STCEG] = isNull(quotename([STCEG], char(34)), '\N'),
	 [DEAR1] = isNull(quotename([DEAR1], char(34)), '\N'),
	 [DEAR2] = isNull(quotename([DEAR2], char(34)), '\N'),
	 [DEAR3] = isNull(quotename([DEAR3], char(34)), '\N'),
	 [DEAR4] = isNull(quotename([DEAR4], char(34)), '\N'),
	 [DEAR5] = isNull(quotename([DEAR5], char(34)), '\N'),
	 [GFORM] = isNull(quotename([GFORM], char(34)), '\N'),
	 [BRAN1] = isNull(quotename([BRAN1], char(34)), '\N'),
	 [BRAN2] = isNull(quotename([BRAN2], char(34)), '\N'),
	 [BRAN3] = isNull(quotename([BRAN3], char(34)), '\N'),
	 [BRAN4] = isNull(quotename([BRAN4], char(34)), '\N'),
	 [BRAN5] = isNull(quotename([BRAN5], char(34)), '\N'),
	 [EKONT] = isNull(quotename([EKONT], char(34)), '\N'),
	 [UMSAT] = isNull(quotename([UMSAT], char(34)), '\N'),
	 [UMJAH] = isNull(quotename([UMJAH], char(34)), '\N'),
	 [UWAER] = isNull(quotename([UWAER], char(34)), '\N'),
	 [JMZAH] = isNull(quotename([JMZAH], char(34)), '\N'),
	 [JMJAH] = isNull(quotename([JMJAH], char(34)), '\N'),
	 [KATR1] = isNull(quotename([KATR1], char(34)), '\N'),
	 [KATR2] = isNull(quotename([KATR2], char(34)), '\N'),
	 [KATR3] = isNull(quotename([KATR3], char(34)), '\N'),
	 [KATR4] = isNull(quotename([KATR4], char(34)), '\N'),
	 [KATR5] = isNull(quotename([KATR5], char(34)), '\N'),
	 [KATR6] = isNull(quotename([KATR6], char(34)), '\N'),
	 [KATR7] = isNull(quotename([KATR7], char(34)), '\N'),
	 [KATR8] = isNull(quotename([KATR8], char(34)), '\N'),
	 [KATR9] = isNull(quotename([KATR9], char(34)), '\N'),
	 [KATR10] = isNull(quotename([KATR10], char(34)), '\N'),
	 [STKZN] = isNull(quotename([STKZN], char(34)), '\N'),
	 [UMSA1] = isNull(quotename([UMSA1], char(34)), '\N'),
	 [TXJCD] = isNull(quotename([TXJCD], char(34)), '\N'),
	 [PERIV] = isNull(quotename([PERIV], char(34)), '\N'),
	 [ABRVW] = isNull(quotename([ABRVW], char(34)), '\N'),
	 [INSPBYDEBI] = isNull(quotename([INSPBYDEBI], char(34)), '\N'),
	 [INSPATDEBI] = isNull(quotename([INSPATDEBI], char(34)), '\N'),
	 [KTOCD] = isNull(quotename([KTOCD], char(34)), '\N'),
	 [PFORT] = isNull(quotename([PFORT], char(34)), '\N'),
	 [WERKS] = isNull(quotename([WERKS], char(34)), '\N'),
	 [DTAMS] = isNull(quotename([DTAMS], char(34)), '\N'),
	 [DTAWS] = isNull(quotename([DTAWS], char(34)), '\N'),
	 [DUEFL] = isNull(quotename([DUEFL], char(34)), '\N'),
	 [HZUOR] = isNull(quotename([HZUOR], char(34)), '\N'),
	 [SPERZ] = isNull(quotename([SPERZ], char(34)), '\N'),
	 [ETIKG] = isNull(quotename([ETIKG], char(34)), '\N'),
	 [CIVVE] = isNull(quotename([CIVVE], char(34)), '\N'),
	 [MILVE] = isNull(quotename([MILVE], char(34)), '\N'),
	 [KDKG1] = isNull(quotename([KDKG1], char(34)), '\N'),
	 [KDKG2] = isNull(quotename([KDKG2], char(34)), '\N'),
	 [KDKG3] = isNull(quotename([KDKG3], char(34)), '\N'),
	 [KDKG4] = isNull(quotename([KDKG4], char(34)), '\N'),
	 [KDKG5] = isNull(quotename([KDKG5], char(34)), '\N'),
	 [XKNZA] = isNull(quotename([XKNZA], char(34)), '\N'),
	 [FITYP] = isNull(quotename([FITYP], char(34)), '\N'),
	 [STCDT] = isNull(quotename([STCDT], char(34)), '\N'),
	 [STCD3] = isNull(quotename([STCD3], char(34)), '\N'),
	 [STCD4] = isNull(quotename([STCD4], char(34)), '\N'),
	 [STCD5] = isNull(quotename([STCD5], char(34)), '\N'),
	 [XICMS] = isNull(quotename([XICMS], char(34)), '\N'),
	 [XXIPI] = isNull(quotename([XXIPI], char(34)), '\N'),
	 [XSUBT] = isNull(quotename([XSUBT], char(34)), '\N'),
	 [CFOPC] = isNull(quotename([CFOPC], char(34)), '\N'),
	 [TXLW1] = isNull(quotename([TXLW1], char(34)), '\N'),
	 [TXLW2] = isNull(quotename([TXLW2], char(34)), '\N'),
	 [CCC01] = isNull(quotename([CCC01], char(34)), '\N'),
	 [CCC02] = isNull(quotename([CCC02], char(34)), '\N'),
	 [CCC03] = isNull(quotename([CCC03], char(34)), '\N'),
	 [CCC04] = isNull(quotename([CCC04], char(34)), '\N'),
	 [CASSD] = isNull(quotename([CASSD], char(34)), '\N'),
	 [KNURL] = isNull(quotename([KNURL], char(34)), '\N'),
	 [J_1KFREPRE] = isNull(quotename([J_1KFREPRE], char(34)), '\N'),
	 [J_1KFTBUS] = isNull(quotename([J_1KFTBUS], char(34)), '\N'),
	 [J_1KFTIND] = isNull(quotename([J_1KFTIND], char(34)), '\N'),
	 [CONFS] = isNull(quotename([CONFS], char(34)), '\N'),
	 [UPDAT] = isNull(convert(varchar(50), [UPDAT], 21), '\N'),
	 [UPTIM] = isNull(quotename([UPTIM], char(34)), '\N'),
	 [NODEL] = isNull(quotename([NODEL], char(34)), '\N'),
	 [DEAR6] = isNull(quotename([DEAR6], char(34)), '\N'),
	 [SUFRAMA] = isNull(quotename([SUFRAMA], char(34)), '\N'),
	 [RG] = isNull(quotename([RG], char(34)), '\N'),
	 [EXP] = isNull(quotename([EXP], char(34)), '\N'),
	 [UF] = isNull(quotename([UF], char(34)), '\N'),
	 [RGDATE] = isNull(convert(varchar(50), [RGDATE], 21), '\N'),
	 [RIC] = isNull(quotename([RIC], char(34)), '\N'),
	 [RNE] = isNull(quotename([RNE], char(34)), '\N'),
	 [RNEDATE] = isNull(convert(varchar(50), [RNEDATE], 21), '\N'),
	 [CNAE] = isNull(quotename([CNAE], char(34)), '\N'),
	 [LEGALNAT] = isNull(quotename([LEGALNAT], char(34)), '\N'),
	 [CRTN] = isNull(quotename([CRTN], char(34)), '\N'),
	 [ICMSTAXPAY] = isNull(quotename([ICMSTAXPAY], char(34)), '\N'),
	 [INDTYP] = isNull(quotename([INDTYP], char(34)), '\N'),
	 [TDT] = isNull(quotename([TDT], char(34)), '\N'),
	 [COMSIZE] = isNull(quotename([COMSIZE], char(34)), '\N'),
	 [DECREGPC] = isNull(quotename([DECREGPC], char(34)), '\N'),
	 [/VSO/R_PALHGT] = isNull(quotename([/VSO/R_PALHGT], char(34)), '\N'),
	 [/VSO/R_PAL_UL] = isNull(quotename([/VSO/R_PAL_UL], char(34)), '\N'),
	 [/VSO/R_PK_MAT] = isNull(quotename([/VSO/R_PK_MAT], char(34)), '\N'),
	 [/VSO/R_MATPAL] = isNull(quotename([/VSO/R_MATPAL], char(34)), '\N'),
	 [/VSO/R_I_NO_LYR] = isNull(quotename([/VSO/R_I_NO_LYR], char(34)), '\N'),
	 [/VSO/R_ONE_MAT] = isNull(quotename([/VSO/R_ONE_MAT], char(34)), '\N'),
	 [/VSO/R_ONE_SORT] = isNull(quotename([/VSO/R_ONE_SORT], char(34)), '\N'),
	 [/VSO/R_ULD_SIDE] = isNull(quotename([/VSO/R_ULD_SIDE], char(34)), '\N'),
	 [/VSO/R_LOAD_PREF] = isNull(quotename([/VSO/R_LOAD_PREF], char(34)), '\N'),
	 [/VSO/R_DPOINT] = isNull(quotename([/VSO/R_DPOINT], char(34)), '\N'),
	 [ALC] = isNull(quotename([ALC], char(34)), '\N'),
	 [PMT_OFFICE] = isNull(quotename([PMT_OFFICE], char(34)), '\N'),
	 [PSOFG] = isNull(quotename([PSOFG], char(34)), '\N'),
	 [PSOIS] = isNull(quotename([PSOIS], char(34)), '\N'),
	 [PSON1] = isNull(quotename([PSON1], char(34)), '\N'),
	 [PSON2] = isNull(quotename([PSON2], char(34)), '\N'),
	 [PSON3] = isNull(quotename([PSON3], char(34)), '\N'),
	 [PSOVN] = isNull(quotename([PSOVN], char(34)), '\N'),
	 [PSOTL] = isNull(quotename([PSOTL], char(34)), '\N'),
	 [PSOHS] = isNull(quotename([PSOHS], char(34)), '\N'),
	 [PSOST] = isNull(quotename([PSOST], char(34)), '\N'),
	 [PSOO1] = isNull(quotename([PSOO1], char(34)), '\N'),
	 [PSOO2] = isNull(quotename([PSOO2], char(34)), '\N'),
	 [PSOO3] = isNull(quotename([PSOO3], char(34)), '\N'),
	 [PSOO4] = isNull(quotename([PSOO4], char(34)), '\N'),
	 [PSOO5] = isNull(quotename([PSOO5], char(34)), '\N'),
	 [ETL_DATA_SOURCE] = isNull(quotename([ETL_DATA_SOURCE], char(34)), '\N'),
	 [ETL_PROCESS_ID] = isNull(quotename([ETL_PROCESS_ID], char(34)), '\N'),
	 [ETL_LOAD_DATE] = isNull(convert(varchar(50), [ETL_LOAD_DATE], 21), '\N')
from SMSCLTSQLRPTPROD.dbo.KNA1