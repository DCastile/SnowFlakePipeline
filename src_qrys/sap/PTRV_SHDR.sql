select
	 [MANDT] = quotename([PTRV_SHDR].[MANDT], char(34)),
	 [PERNR] = quotename([PTRV_SHDR].[PERNR], char(34)),
	 [REINR] = quotename([PTRV_SHDR].[REINR], char(34)),
	 [PERIO] = quotename([PTRV_SHDR].[PERIO], char(34)),
	 [SEQNO] = quotename([PTRV_SHDR].[SEQNO], char(34)),
	 [ADDIT_AMNT] = quotename([PTRV_SHDR].[ADDIT_AMNT], char(34)),
	 [SUM_REIMBU] = quotename([PTRV_SHDR].[SUM_REIMBU], char(34)),
	 [SUM_ADVANC] = quotename([PTRV_SHDR].[SUM_ADVANC], char(34)),
	 [SUM_PAYOUT] = quotename([PTRV_SHDR].[SUM_PAYOUT], char(34)),
	 [SUM_PAIDCO] = quotename([PTRV_SHDR].[SUM_PAIDCO], char(34)),
	 [TRIP_TOTAL] = quotename([PTRV_SHDR].[TRIP_TOTAL], char(34)),
	 [PD_FOOD] = quotename([PTRV_SHDR].[PD_FOOD], char(34)),
	 [PD_HOUSING] = quotename([PTRV_SHDR].[PD_HOUSING], char(34)),
	 [PD_MILEAGE] = quotename([PTRV_SHDR].[PD_MILEAGE], char(34)),
	 [CURRENCY] = quotename([PTRV_SHDR].[CURRENCY], char(34)),
	 [M_TOTAL] = quotename([PTRV_SHDR].[M_TOTAL], char(34)),
	 [TRIPDUR] = quotename([PTRV_SHDR].[TRIPDUR], char(34)),
	 [CHNGDATE] = quotename([PTRV_SHDR].[CHNGDATE], char(34)),
	 [CHNGTIME] = quotename([PTRV_SHDR].[CHNGTIME], char(34)),
	 [TXF_FOOD] = quotename([PTRV_SHDR].[TXF_FOOD], char(34)),
	 [PD_POCKET_MON] = quotename([PTRV_SHDR].[PD_POCKET_MON], char(34)),
	 [PD_PUB_TRANS] = quotename([PTRV_SHDR].[PD_PUB_TRANS], char(34)),
	 [PD_LOC_TRANS] = quotename([PTRV_SHDR].[PD_LOC_TRANS], char(34)),
	 [ETL_DATA_SOURCE] = quotename([PTRV_SHDR].[ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([PTRV_SHDR].[ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([PTRV_SHDR].[ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.PTRV_SHDR