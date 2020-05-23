select
	 [MANDT] = concat(char(34), replace(cast([VEDA].[MANDT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [VBELN] = concat(char(34), replace(cast([VEDA].[VBELN] as nvarchar(10)), char(34), char(0)), char(34)),
	 [VPOSN] = concat(char(34), replace(cast([VEDA].[VPOSN] as nvarchar(6)), char(34), char(0)), char(34)),
	 [VLAUFZ] = concat(char(34), replace(cast([VEDA].[VLAUFZ] as nvarchar(3)), char(34), char(0)), char(34)),
	 [VLAUEZ] = concat(char(34), replace(cast([VEDA].[VLAUEZ] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VLAUFK] = concat(char(34), replace(cast([VEDA].[VLAUFK] as nvarchar(2)), char(34), char(0)), char(34)),
	 [VINSDAT] = concat(char(34), replace(cast([VEDA].[VINSDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VABNDAT] = concat(char(34), replace(cast([VEDA].[VABNDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VBEGDAT] = concat(char(34), replace(cast([VEDA].[VBEGDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VUNTDAT] = concat(char(34), replace(cast([VEDA].[VUNTDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VKUESCH] = concat(char(34), replace(cast([VEDA].[VKUESCH] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VAKTSCH] = concat(char(34), replace(cast([VEDA].[VAKTSCH] as nvarchar(4)), char(34), char(0)), char(34)),
	 [VEINDAT] = concat(char(34), replace(cast([VEDA].[VEINDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VWUNDAT] = concat(char(34), replace(cast([VEDA].[VWUNDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VKUEPAR] = concat(char(34), replace(cast([VEDA].[VKUEPAR] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VKUEGRU] = concat(char(34), replace(cast([VEDA].[VKUEGRU] as nvarchar(2)), char(34), char(0)), char(34)),
	 [VENDDAT] = concat(char(34), replace(cast([VEDA].[VENDDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VBELKUE] = concat(char(34), replace(cast([VEDA].[VBELKUE] as nvarchar(20)), char(34), char(0)), char(34)),
	 [VBEDKUE] = concat(char(34), replace(cast([VEDA].[VBEDKUE] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VBEGREG] = concat(char(34), replace(cast([VEDA].[VBEGREG] as nvarchar(2)), char(34), char(0)), char(34)),
	 [VVORZEIT] = concat(char(34), replace(cast([VEDA].[VVORZEIT] as nvarchar(3)), char(34), char(0)), char(34)),
	 [VVOREIN] = concat(char(34), replace(cast([VEDA].[VVOREIN] as nvarchar(1)), char(34), char(0)), char(34)),
	 [VDEMDAT] = concat(char(34), replace(cast([VEDA].[VDEMDAT] as nvarchar(8)), char(34), char(0)), char(34)),
	 [VASDA] = concat(char(34), replace(cast([VEDA].[VASDA] as nvarchar(8)), char(34), char(0)), char(34)),
	 [WIMID] = concat(char(34), replace(cast([VEDA].[WIMID] as nvarchar(12)), char(34), char(0)), char(34)),
	 [VASDR] = concat(char(34), replace(cast([VEDA].[VASDR] as nvarchar(2)), char(34), char(0)), char(34)),
	 [VENDREG] = concat(char(34), replace(cast([VEDA].[VENDREG] as nvarchar(2)), char(34), char(0)), char(34))
from SAP_REPO.dbo.VEDA with(nolock)