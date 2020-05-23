select
	 [CLIENT] = concat(char(34), replace(cast([ADR6].[CLIENT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [ADDRNUMBER] = concat(char(34), replace(cast([ADR6].[ADDRNUMBER] as nvarchar(10)), char(34), char(0)), char(34)),
	 [PERSNUMBER] = concat(char(34), replace(cast([ADR6].[PERSNUMBER] as nvarchar(10)), char(34), char(0)), char(34)),
	 [DATE_FROM] = concat(char(34), replace(cast([ADR6].[DATE_FROM] as nvarchar(8)), char(34), char(0)), char(34)),
	 [CONSNUMBER] = concat(char(34), replace(cast([ADR6].[CONSNUMBER] as nvarchar(3)), char(34), char(0)), char(34)),
	 [FLGDEFAULT] = concat(char(34), replace(cast([ADR6].[FLGDEFAULT] as nvarchar(1)), char(34), char(0)), char(34)),
	 [FLG_NOUSE] = concat(char(34), replace(cast([ADR6].[FLG_NOUSE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [HOME_FLAG] = concat(char(34), replace(cast([ADR6].[HOME_FLAG] as nvarchar(1)), char(34), char(0)), char(34)),
	 [SMTP_ADDR] = concat(char(34), replace(cast([ADR6].[SMTP_ADDR] as nvarchar(241)), char(34), char(0)), char(34)),
	 [SMTP_SRCH] = concat(char(34), replace(cast([ADR6].[SMTP_SRCH] as nvarchar(20)), char(34), char(0)), char(34)),
	 [DFT_RECEIV] = concat(char(34), replace(cast([ADR6].[DFT_RECEIV] as nvarchar(1)), char(34), char(0)), char(34)),
	 [R3_USER] = concat(char(34), replace(cast([ADR6].[R3_USER] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ENCODE] = concat(char(34), replace(cast([ADR6].[ENCODE] as nvarchar(1)), char(34), char(0)), char(34)),
	 [TNEF] = concat(char(34), replace(cast([ADR6].[TNEF] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VALID_FROM] = concat(char(34), replace(cast([ADR6].[VALID_FROM] as nvarchar(14)), char(34), char(0)), char(34)),
	 [VALID_TO] = concat(char(34), replace(cast([ADR6].[VALID_TO] as nvarchar(14)), char(34), char(0)), char(34))
from SAP_REPO.dbo.ADR6 with(nolock)