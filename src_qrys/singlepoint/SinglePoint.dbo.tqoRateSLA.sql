select
	 [SLATermID] = isNull(cast([tqoRateSLA].[SLATermID] as varchar(36)), '\N'),
	 [RateMultiplier] = isNull(cast([tqoRateSLA].[RateMultiplier] as varchar(36)), '\N'),
	 [ChangedByID] = isNull(cast([tqoRateSLA].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [tqoRateSLA].[LastChanged], 21), '\N'),
	 [WrtyFlag] = isNull(cast([tqoRateSLA].[WrtyFlag] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [tqoRateSLA].[CreateDate], 21), '\N'),
	 [LaborRequired] = isNull(cast([tqoRateSLA].[LaborRequired] as varchar(36)), '\N'),
	 [PartsRequired] = isNull(cast([tqoRateSLA].[PartsRequired] as varchar(36)), '\N'),
	 [SameDay] = isNull(cast([tqoRateSLA].[SameDay] as varchar(36)), '\N'),
	 [NextDay] = isNull(cast([tqoRateSLA].[NextDay] as varchar(36)), '\N')
from SinglePoint.dbo.tqoRateSLA