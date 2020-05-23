select
	 [MANDT] = concat(char(34), replace(cast([PTRV_SHDR].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [PERNR] = concat(char(34), replace(cast([PTRV_SHDR].[PERNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [REINR] = concat(char(34), replace(cast([PTRV_SHDR].[REINR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PERIO] = concat(char(34), replace(cast([PTRV_SHDR].[PERIO] as nvarchar(3)), char(34), char(0)), char(34)),
	 [SEQNO] = concat(char(34), replace(cast([PTRV_SHDR].[SEQNO] as nvarchar(2)), char(34), char(0)), char(34)),
	 [ADDIT_AMNT] = cast([PTRV_SHDR].[ADDIT_AMNT] as varchar(36)),
	 [SUM_REIMBU] = cast([PTRV_SHDR].[SUM_REIMBU] as varchar(36)),
	 [SUM_ADVANC] = cast([PTRV_SHDR].[SUM_ADVANC] as varchar(36)),
	 [SUM_PAYOUT] = cast([PTRV_SHDR].[SUM_PAYOUT] as varchar(36)),
	 [SUM_PAIDCO] = cast([PTRV_SHDR].[SUM_PAIDCO] as varchar(36)),
	 [TRIP_TOTAL] = cast([PTRV_SHDR].[TRIP_TOTAL] as varchar(36)),
	 [PD_FOOD] = cast([PTRV_SHDR].[PD_FOOD] as varchar(36)),
	 [PD_HOUSING] = cast([PTRV_SHDR].[PD_HOUSING] as varchar(36)),
	 [PD_MILEAGE] = cast([PTRV_SHDR].[PD_MILEAGE] as varchar(36)),
	 [CURRENCY] = concat(char(34), replace(cast([PTRV_SHDR].[CURRENCY] as nvarchar(5)), char(34), char(0)), char(34)),
	 [M_TOTAL] = cast([PTRV_SHDR].[M_TOTAL] as varchar(36)),
	 [TRIPDUR] = cast([PTRV_SHDR].[TRIPDUR] as varchar(36)),
	 [CHNGDATE] = concat(char(34), replace(cast([PTRV_SHDR].[CHNGDATE] as nvarchar(8)), char(34), char(0)), char(34)),
	 [CHNGTIME] = concat(char(34), replace(cast([PTRV_SHDR].[CHNGTIME] as nvarchar(6)), char(34), char(0)), char(34)),
	 [TXF_FOOD] = cast([PTRV_SHDR].[TXF_FOOD] as varchar(36)),
	 [PD_POCKET_MON] = cast([PTRV_SHDR].[PD_POCKET_MON] as varchar(36)),
	 [PD_PUB_TRANS] = cast([PTRV_SHDR].[PD_PUB_TRANS] as varchar(36)),
	 [PD_LOC_TRANS] = cast([PTRV_SHDR].[PD_LOC_TRANS] as varchar(36))
from SAP_REPO.dbo.PTRV_SHDR