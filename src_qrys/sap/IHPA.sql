select
	 [MANDT] = concat(char(34), replace(cast([IHPA].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [OBJNR] = concat(char(34), replace(cast([IHPA].[OBJNR] as nvarchar(22)), char(34), char(0)), char(34)),
	 [PARVW] = concat(char(34), replace(cast([IHPA].[PARVW] as nvarchar(2)), char(34), char(0)), char(34)),
	 [COUNTER] = concat(char(34), replace(cast([IHPA].[COUNTER] as nvarchar(6)), char(34), char(0)), char(34)),
	 [OBTYP] = concat(char(34), replace(cast([IHPA].[OBTYP] as nvarchar(3)), char(34), char(0)), char(34)),
	 [PARNR] = concat(char(34), replace(cast([IHPA].[PARNR] as nvarchar(12)), char(34), char(0)), char(34)),
	 [INHER] = concat(char(34), replace(cast([IHPA].[INHER] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ERDAT] = concat(char(34), replace(cast([IHPA].[ERDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [ERZEIT] = concat(char(34), replace(cast([IHPA].[ERZEIT] as nvarchar(6)), char(34), char(0)), char(34)),
	 [ERNAM] = concat(char(34), replace(cast([IHPA].[ERNAM] as nvarchar(12)), char(34), char(0)), char(34)),
	 [AEDAT] = concat(char(34), replace(cast([IHPA].[AEDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [AEZEIT] = concat(char(34), replace(cast([IHPA].[AEZEIT] as nvarchar(6)), char(34), char(0)), char(34)),
	 [AENAM] = concat(char(34), replace(cast([IHPA].[AENAM] as nvarchar(12)), char(34), char(0)), char(34)),
	 [KZLOESCH] = concat(char(34), replace(cast([IHPA].[KZLOESCH] as nvarchar(1)), char(34), char(0)), char(34)),
	 [ADRNR] = concat(char(34), replace(cast([IHPA].[ADRNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [TZONSP] = concat(char(34), replace(cast([IHPA].[TZONSP] as nvarchar(6)), char(34), char(0)), char(34))
from SAP_REPO.dbo.IHPA with(nolock)