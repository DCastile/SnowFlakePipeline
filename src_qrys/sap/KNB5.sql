select
	 [MANDT] = concat(char(34), replace(cast([KNB5].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [KUNNR] = concat(char(34), replace(cast([KNB5].[KUNNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [BUKRS] = concat(char(34), replace(cast([KNB5].[BUKRS] as nvarchar(4)), char(34), char(0)), char(34)),
	 [MABER] = concat(char(34), replace(cast([KNB5].[MABER] as nvarchar(2)), char(34), char(0)), char(34)),
	 [MAHNA] = concat(char(34), replace(cast([KNB5].[MAHNA] as nvarchar(4)), char(34), char(0)), char(34)),
	 [MANSP] = concat(char(34), replace(cast([KNB5].[MANSP] as nvarchar(1)), char(34), char(0)), char(34)),
	 [MADAT] = concat(char(34), replace(cast([KNB5].[MADAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [MAHNS] = concat(char(34), replace(cast([KNB5].[MAHNS] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KNRMA] = concat(char(34), replace(cast([KNB5].[KNRMA] as nvarchar(10)), char(34), char(0)), char(34)),
	 [GMVDT] = concat(char(34), replace(cast([KNB5].[GMVDT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [BUSAB] = concat(char(34), replace(cast([KNB5].[BUSAB] as nvarchar(2)), char(34), char(0)), char(34))
from SAP_REPO.dbo.KNB5 with(nolock)