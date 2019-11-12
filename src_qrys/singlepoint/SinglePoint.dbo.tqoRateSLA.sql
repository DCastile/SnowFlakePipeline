select
	 [SLATermID] = concat('"', [tqoRateSLA].[SLATermID], '"'),
	 [RateMultiplier] = concat('"', [tqoRateSLA].[RateMultiplier], '"'),
	 [ChangedByID] = concat('"', [tqoRateSLA].[ChangedByID], '"'),
	 [LastChanged] = convert(varchar(50), [tqoRateSLA].[LastChanged], 21),
	 [WrtyFlag] = concat('"', [tqoRateSLA].[WrtyFlag], '"'),
	 [CreateDate] = convert(varchar(50), [tqoRateSLA].[CreateDate], 21),
	 [LaborRequired] = concat('"', [tqoRateSLA].[LaborRequired], '"'),
	 [PartsRequired] = concat('"', [tqoRateSLA].[PartsRequired], '"'),
	 [SameDay] = concat('"', [tqoRateSLA].[SameDay], '"'),
	 [NextDay] = concat('"', [tqoRateSLA].[NextDay], '"')
from SinglePoint.dbo.tqoRateSLA