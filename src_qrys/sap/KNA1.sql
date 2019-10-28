select
	 [MANDT] = quotename([MANDT], char(34)),
	 [KUNNR] = quotename([KUNNR], char(34)),
	 [LAND1] = quotename([LAND1], char(34)),
	 [NAME1] = quotename([NAME1], char(34)),
	 [NAME2] = quotename([NAME2], char(34)),
	 [ORT01] = quotename([ORT01], char(34)),
	 [PSTLZ] = quotename([PSTLZ], char(34)),
	 [REGIO] = quotename([REGIO], char(34)),
	 [SORTL] = quotename([SORTL], char(34)),
	 [STRAS] = quotename([STRAS], char(34)),
	 [TELF1] = quotename([TELF1], char(34)),
	 [TELFX] = quotename([TELFX], char(34)),
	 [XCPDK] = quotename([XCPDK], char(34)),
	 [ADRNR] = quotename([ADRNR], char(34)),
	 [MCOD1] = quotename([MCOD1], char(34)),
	 [MCOD2] = quotename([MCOD2], char(34)),
	 [MCOD3] = quotename([MCOD3], char(34)),
	 [ANRED] = quotename([ANRED], char(34)),
	 [AUFSD] = quotename([AUFSD], char(34)),
	 [BAHNE] = quotename([BAHNE], char(34)),
	 [BAHNS] = quotename([BAHNS], char(34)),
	 [BBBNR] = quotename([BBBNR], char(34)),
	 [BBSNR] = quotename([BBSNR], char(34)),
	 [BEGRU] = quotename([BEGRU], char(34)),
	 [BRSCH] = quotename([BRSCH], char(34)),
	 [BUBKZ] = quotename([BUBKZ], char(34)),
	 [DATLT] = quotename([DATLT], char(34)),
	 [ERDAT] = convert(varchar(50), [ERDAT], 21),
	 [ERNAM] = quotename([ERNAM], char(34)),
	 [EXABL] = quotename([EXABL], char(34)),
	 [FAKSD] = quotename([FAKSD], char(34)),
	 [FISKN] = quotename([FISKN], char(34)),
	 [KNAZK] = quotename([KNAZK], char(34)),
	 [KNRZA] = quotename([KNRZA], char(34)),
	 [KONZS] = quotename([KONZS], char(34)),
	 [KTOKD] = quotename([KTOKD], char(34)),
	 [KUKLA] = quotename([KUKLA], char(34)),
	 [LIFNR] = quotename([LIFNR], char(34)),
	 [LIFSD] = quotename([LIFSD], char(34)),
	 [LOCCO] = quotename([LOCCO], char(34)),
	 [LOEVM] = quotename([LOEVM], char(34)),
	 [NAME3] = quotename([NAME3], char(34)),
	 [NAME4] = quotename([NAME4], char(34)),
	 [NIELS] = quotename([NIELS], char(34)),
	 [ORT02] = quotename([ORT02], char(34)),
	 [PFACH] = quotename([PFACH], char(34)),
	 [PSTL2] = quotename([PSTL2], char(34)),
	 [COUNC] = quotename([COUNC], char(34)),
	 [CITYC] = quotename([CITYC], char(34)),
	 [RPMKR] = quotename([RPMKR], char(34)),
	 [SPERR] = quotename([SPERR], char(34)),
	 [SPRAS] = quotename([SPRAS], char(34)),
	 [STCD1] = quotename([STCD1], char(34)),
	 [STCD2] = quotename([STCD2], char(34)),
	 [STKZA] = quotename([STKZA], char(34)),
	 [STKZU] = quotename([STKZU], char(34)),
	 [TELBX] = quotename([TELBX], char(34)),
	 [TELF2] = quotename([TELF2], char(34)),
	 [TELTX] = quotename([TELTX], char(34)),
	 [TELX1] = quotename([TELX1], char(34)),
	 [LZONE] = quotename([LZONE], char(34)),
	 [XZEMP] = quotename([XZEMP], char(34)),
	 [VBUND] = quotename([VBUND], char(34)),
	 [STCEG] = quotename([STCEG], char(34)),
	 [DEAR1] = quotename([DEAR1], char(34)),
	 [DEAR2] = quotename([DEAR2], char(34)),
	 [DEAR3] = quotename([DEAR3], char(34)),
	 [DEAR4] = quotename([DEAR4], char(34)),
	 [DEAR5] = quotename([DEAR5], char(34)),
	 [GFORM] = quotename([GFORM], char(34)),
	 [BRAN1] = quotename([BRAN1], char(34)),
	 [BRAN2] = quotename([BRAN2], char(34)),
	 [BRAN3] = quotename([BRAN3], char(34)),
	 [BRAN4] = quotename([BRAN4], char(34)),
	 [BRAN5] = quotename([BRAN5], char(34)),
	 [EKONT] = quotename([EKONT], char(34)),
	 [UMSAT] = quotename([UMSAT], char(34)),
	 [UMJAH] = quotename([UMJAH], char(34)),
	 [UWAER] = quotename([UWAER], char(34)),
	 [JMZAH] = quotename([JMZAH], char(34)),
	 [JMJAH] = quotename([JMJAH], char(34)),
	 [KATR1] = quotename([KATR1], char(34)),
	 [KATR2] = quotename([KATR2], char(34)),
	 [KATR3] = quotename([KATR3], char(34)),
	 [KATR4] = quotename([KATR4], char(34)),
	 [KATR5] = quotename([KATR5], char(34)),
	 [KATR6] = quotename([KATR6], char(34)),
	 [KATR7] = quotename([KATR7], char(34)),
	 [KATR8] = quotename([KATR8], char(34)),
	 [KATR9] = quotename([KATR9], char(34)),
	 [KATR10] = quotename([KATR10], char(34)),
	 [STKZN] = quotename([STKZN], char(34)),
	 [UMSA1] = quotename([UMSA1], char(34)),
	 [TXJCD] = quotename([TXJCD], char(34)),
	 [PERIV] = quotename([PERIV], char(34)),
	 [ABRVW] = quotename([ABRVW], char(34)),
	 [INSPBYDEBI] = quotename([INSPBYDEBI], char(34)),
	 [INSPATDEBI] = quotename([INSPATDEBI], char(34)),
	 [KTOCD] = quotename([KTOCD], char(34)),
	 [PFORT] = quotename([PFORT], char(34)),
	 [WERKS] = quotename([WERKS], char(34)),
	 [DTAMS] = quotename([DTAMS], char(34)),
	 [DTAWS] = quotename([DTAWS], char(34)),
	 [DUEFL] = quotename([DUEFL], char(34)),
	 [HZUOR] = quotename([HZUOR], char(34)),
	 [SPERZ] = quotename([SPERZ], char(34)),
	 [ETIKG] = quotename([ETIKG], char(34)),
	 [CIVVE] = quotename([CIVVE], char(34)),
	 [MILVE] = quotename([MILVE], char(34)),
	 [KDKG1] = quotename([KDKG1], char(34)),
	 [KDKG2] = quotename([KDKG2], char(34)),
	 [KDKG3] = quotename([KDKG3], char(34)),
	 [KDKG4] = quotename([KDKG4], char(34)),
	 [KDKG5] = quotename([KDKG5], char(34)),
	 [XKNZA] = quotename([XKNZA], char(34)),
	 [FITYP] = quotename([FITYP], char(34)),
	 [STCDT] = quotename([STCDT], char(34)),
	 [STCD3] = quotename([STCD3], char(34)),
	 [STCD4] = quotename([STCD4], char(34)),
	 [STCD5] = quotename([STCD5], char(34)),
	 [XICMS] = quotename([XICMS], char(34)),
	 [XXIPI] = quotename([XXIPI], char(34)),
	 [XSUBT] = quotename([XSUBT], char(34)),
	 [CFOPC] = quotename([CFOPC], char(34)),
	 [TXLW1] = quotename([TXLW1], char(34)),
	 [TXLW2] = quotename([TXLW2], char(34)),
	 [CCC01] = quotename([CCC01], char(34)),
	 [CCC02] = quotename([CCC02], char(34)),
	 [CCC03] = quotename([CCC03], char(34)),
	 [CCC04] = quotename([CCC04], char(34)),
	 [CASSD] = quotename([CASSD], char(34)),
	 [KNURL] = quotename([KNURL], char(34)),
	 [J_1KFREPRE] = quotename([J_1KFREPRE], char(34)),
	 [J_1KFTBUS] = quotename([J_1KFTBUS], char(34)),
	 [J_1KFTIND] = quotename([J_1KFTIND], char(34)),
	 [CONFS] = quotename([CONFS], char(34)),
	 [UPDAT] = convert(varchar(50), [UPDAT], 21),
	 [UPTIM] = quotename([UPTIM], char(34)),
	 [NODEL] = quotename([NODEL], char(34)),
	 [DEAR6] = quotename([DEAR6], char(34)),
	 [SUFRAMA] = quotename([SUFRAMA], char(34)),
	 [RG] = quotename([RG], char(34)),
	 [EXP] = quotename([EXP], char(34)),
	 [UF] = quotename([UF], char(34)),
	 [RGDATE] = convert(varchar(50), [RGDATE], 21),
	 [RIC] = quotename([RIC], char(34)),
	 [RNE] = quotename([RNE], char(34)),
	 [RNEDATE] = convert(varchar(50), [RNEDATE], 21),
	 [CNAE] = quotename([CNAE], char(34)),
	 [LEGALNAT] = quotename([LEGALNAT], char(34)),
	 [CRTN] = quotename([CRTN], char(34)),
	 [ICMSTAXPAY] = quotename([ICMSTAXPAY], char(34)),
	 [INDTYP] = quotename([INDTYP], char(34)),
	 [TDT] = quotename([TDT], char(34)),
	 [COMSIZE] = quotename([COMSIZE], char(34)),
	 [DECREGPC] = quotename([DECREGPC], char(34)),
	 [/VSO/R_PALHGT] = quotename([/VSO/R_PALHGT], char(34)),
	 [/VSO/R_PAL_UL] = quotename([/VSO/R_PAL_UL], char(34)),
	 [/VSO/R_PK_MAT] = quotename([/VSO/R_PK_MAT], char(34)),
	 [/VSO/R_MATPAL] = quotename([/VSO/R_MATPAL], char(34)),
	 [/VSO/R_I_NO_LYR] = quotename([/VSO/R_I_NO_LYR], char(34)),
	 [/VSO/R_ONE_MAT] = quotename([/VSO/R_ONE_MAT], char(34)),
	 [/VSO/R_ONE_SORT] = quotename([/VSO/R_ONE_SORT], char(34)),
	 [/VSO/R_ULD_SIDE] = quotename([/VSO/R_ULD_SIDE], char(34)),
	 [/VSO/R_LOAD_PREF] = quotename([/VSO/R_LOAD_PREF], char(34)),
	 [/VSO/R_DPOINT] = quotename([/VSO/R_DPOINT], char(34)),
	 [ALC] = quotename([ALC], char(34)),
	 [PMT_OFFICE] = quotename([PMT_OFFICE], char(34)),
	 [PSOFG] = quotename([PSOFG], char(34)),
	 [PSOIS] = quotename([PSOIS], char(34)),
	 [PSON1] = quotename([PSON1], char(34)),
	 [PSON2] = quotename([PSON2], char(34)),
	 [PSON3] = quotename([PSON3], char(34)),
	 [PSOVN] = quotename([PSOVN], char(34)),
	 [PSOTL] = quotename([PSOTL], char(34)),
	 [PSOHS] = quotename([PSOHS], char(34)),
	 [PSOST] = quotename([PSOST], char(34)),
	 [PSOO1] = quotename([PSOO1], char(34)),
	 [PSOO2] = quotename([PSOO2], char(34)),
	 [PSOO3] = quotename([PSOO3], char(34)),
	 [PSOO4] = quotename([PSOO4], char(34)),
	 [PSOO5] = quotename([PSOO5], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = convert(varchar(50), [ETL_LOAD_DATE], 21)
from SAP_Production.dbo.KNA1