select
	 [MANDT] = concat(char(34), replace(cast([EQBS].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [EQUNR] = concat(char(34), replace(cast([EQBS].[EQUNR] as nvarchar(18)), char(34), char(0)), char(34)),
	 [LBBSA] = concat(char(34), replace(cast([EQBS].[LBBSA] as nvarchar(2)), char(34), char(0)), char(34)),
	 [B_WERK] = concat(char(34), replace(cast([EQBS].[B_WERK] as nvarchar(4)), char(34), char(0)), char(34)),
	 [B_LAGER] = concat(char(34), replace(cast([EQBS].[B_LAGER] as nvarchar(4)), char(34), char(0)), char(34)),
	 [B_CHARGE] = concat(char(34), replace(cast([EQBS].[B_CHARGE] as nvarchar(10)), char(34), char(0)), char(34)),
	 [SOBKZ] = concat(char(34), replace(cast([EQBS].[SOBKZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [KUNNR] = concat(char(34), replace(cast([EQBS].[KUNNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [LIFNR] = concat(char(34), replace(cast([EQBS].[LIFNR] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KDAUF] = concat(char(34), replace(cast([EQBS].[KDAUF] as nvarchar(10)), char(34), char(0)), char(34)),
	 [KDPOS] = concat(char(34), replace(cast([EQBS].[KDPOS] as nvarchar(6)), char(34), char(0)), char(34)),
	 [PS_PSP_PNR] = concat(char(34), replace(cast([EQBS].[PS_PSP_PNR] as nvarchar(8)), char(34), char(0)), char(34)),
	 [DISUB_OWNER] = concat(char(34), replace(cast([EQBS].[DISUB_OWNER] as nvarchar(10)), char(34), char(0)), char(34))
from SAP_REPO.dbo.EQBS with(nolock)