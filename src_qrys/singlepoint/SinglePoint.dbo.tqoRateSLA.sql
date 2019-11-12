select
	 [SLATermID] = concat(char(34), [tqoRateSLA].[SLATermID], char(34)),
	 [RateMultiplier] = concat(char(34), [tqoRateSLA].[RateMultiplier], char(34)),
	 [ChangedByID] = concat(char(34), [tqoRateSLA].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [tqoRateSLA].[LastChanged], 21),
	 [WrtyFlag] = concat(char(34), [tqoRateSLA].[WrtyFlag], char(34)),
	 [CreateDate] = convert(varchar(50), [tqoRateSLA].[CreateDate], 21),
	 [LaborRequired] = concat(char(34), [tqoRateSLA].[LaborRequired], char(34)),
	 [PartsRequired] = concat(char(34), [tqoRateSLA].[PartsRequired], char(34)),
	 [SameDay] = concat(char(34), [tqoRateSLA].[SameDay], char(34)),
	 [NextDay] = concat(char(34), [tqoRateSLA].[NextDay], char(34))
from SinglePoint.dbo.tqoRateSLA