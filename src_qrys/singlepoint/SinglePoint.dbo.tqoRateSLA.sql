select
	 [SLATermID] = quotename([tqoRateSLA].[SLATermID], char(34)),
	 [RateMultiplier] = quotename([tqoRateSLA].[RateMultiplier], char(34)),
	 [ChangedByID] = quotename([tqoRateSLA].[ChangedByID], char(34)),
	 [LastChanged] = convert(varchar(50), [tqoRateSLA].[LastChanged], 21),
	 [WrtyFlag] = quotename([tqoRateSLA].[WrtyFlag], char(34)),
	 [CreateDate] = convert(varchar(50), [tqoRateSLA].[CreateDate], 21),
	 [LaborRequired] = quotename([tqoRateSLA].[LaborRequired], char(34)),
	 [PartsRequired] = quotename([tqoRateSLA].[PartsRequired], char(34)),
	 [SameDay] = quotename([tqoRateSLA].[SameDay], char(34)),
	 [NextDay] = quotename([tqoRateSLA].[NextDay], char(34))
from SinglePoint.dbo.tqoRateSLA