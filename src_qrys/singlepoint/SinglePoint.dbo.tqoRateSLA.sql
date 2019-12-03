select
	 [SLATermID] = concat(char(34), isNull(replace(cast([tqoRateSLA].[SLATermID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [RateMultiplier] = concat(char(34), isNull(replace(cast([tqoRateSLA].[RateMultiplier] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [ChangedByID] = concat(char(34), isNull(replace(cast([tqoRateSLA].[ChangedByID] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [LastChanged] = isNull(convert(varchar(50), [tqoRateSLA].[LastChanged], 21), '\N'),
	 [WrtyFlag] = concat(char(34), isNull(replace(cast([tqoRateSLA].[WrtyFlag] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [tqoRateSLA].[CreateDate], 21), '\N'),
	 [LaborRequired] = concat(char(34), isNull(replace(cast([tqoRateSLA].[LaborRequired] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [PartsRequired] = concat(char(34), isNull(replace(cast([tqoRateSLA].[PartsRequired] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [SameDay] = concat(char(34), isNull(replace(cast([tqoRateSLA].[SameDay] as nvarchar(max)), char(34), char(0)), '\N'), char(34)),
	 [NextDay] = concat(char(34), isNull(replace(cast([tqoRateSLA].[NextDay] as nvarchar(max)), char(34), char(0)), '\N'), char(34))
from SinglePoint.dbo.tqoRateSLA with(nolock)