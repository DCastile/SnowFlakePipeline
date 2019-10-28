select
	 [MANDT] = quotename([MANDT], char(34)),
	 [PERNR] = quotename([PERNR], char(34)),
	 [REINR] = quotename([REINR], char(34)),
	 [PERIO] = quotename([PERIO], char(34)),
	 [SEQNO] = quotename([SEQNO], char(34)),
	 [ADDIT_AMNT] = quotename([ADDIT_AMNT], char(34)),
	 [SUM_REIMBU] = quotename([SUM_REIMBU], char(34)),
	 [SUM_ADVANC] = quotename([SUM_ADVANC], char(34)),
	 [SUM_PAYOUT] = quotename([SUM_PAYOUT], char(34)),
	 [SUM_PAIDCO] = quotename([SUM_PAIDCO], char(34)),
	 [TRIP_TOTAL] = quotename([TRIP_TOTAL], char(34)),
	 [PD_FOOD] = quotename([PD_FOOD], char(34)),
	 [PD_HOUSING] = quotename([PD_HOUSING], char(34)),
	 [PD_MILEAGE] = quotename([PD_MILEAGE], char(34)),
	 [CURRENCY] = quotename([CURRENCY], char(34)),
	 [M_TOTAL] = quotename([M_TOTAL], char(34)),
	 [TRIPDUR] = quotename([TRIPDUR], char(34)),
	 [CHNGDATE] = quotename([CHNGDATE], char(34)),
	 [CHNGTIME] = quotename([CHNGTIME], char(34)),
	 [TXF_FOOD] = quotename([TXF_FOOD], char(34)),
	 [PD_POCKET_MON] = quotename([PD_POCKET_MON], char(34)),
	 [PD_PUB_TRANS] = quotename([PD_PUB_TRANS], char(34)),
	 [PD_LOC_TRANS] = quotename([PD_LOC_TRANS], char(34)),
	 [ETL_DATA_SOURCE] = quotename([ETL_DATA_SOURCE], char(34)),
	 [ETL_PROCESS_ID] = quotename([ETL_PROCESS_ID], char(34)),
	 [ETL_LOAD_DATE] = quotename([ETL_LOAD_DATE], char(34))
from SAP_Production.dbo.PTRV_SHDR