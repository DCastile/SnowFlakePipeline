select
	 [SLATermID] = isNull(cast([SLATerms].[SLATermID] as varchar(36)), '\N'),
	 [CustomerID] = isNull(cast([SLATerms].[CustomerID] as varchar(36)), '\N'),
	 [SLATermName] = concat(char(34), isNull(replace(cast([SLATerms].[SLATermName] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([SLATerms].[Description] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SMSServiceTypeKey] = isNull(cast([SLATerms].[SMSServiceTypeKey] as varchar(36)), '\N'),
	 [SMSServiceTypeID] = concat(char(34), isNull(replace(cast([SLATerms].[SMSServiceTypeID] as nvarchar(5)), char(34), char(0)), '\N'), char(34)),
	 [Cover_247Flag] = isNull(cast([SLATerms].[Cover_247Flag] as varchar(36)), '\N'),
	 [MonFlag] = isNull(cast([SLATerms].[MonFlag] as varchar(36)), '\N'),
	 [TueFlag] = isNull(cast([SLATerms].[TueFlag] as varchar(36)), '\N'),
	 [WedFlag] = isNull(cast([SLATerms].[WedFlag] as varchar(36)), '\N'),
	 [ThuFlag] = isNull(cast([SLATerms].[ThuFlag] as varchar(36)), '\N'),
	 [FriFlag] = isNull(cast([SLATerms].[FriFlag] as varchar(36)), '\N'),
	 [SatFlag] = isNull(cast([SLATerms].[SatFlag] as varchar(36)), '\N'),
	 [SunFlag] = isNull(cast([SLATerms].[SunFlag] as varchar(36)), '\N'),
	 [HoursStart] = isNull(convert(varchar(50), [SLATerms].[HoursStart], 21), '\N'),
	 [HoursEnd] = isNull(convert(varchar(50), [SLATerms].[HoursEnd], 21), '\N'),
	 [ReturnCallTime] = isNull(cast([SLATerms].[ReturnCallTime] as varchar(36)), '\N'),
	 [OnSiteResponse] = isNull(cast([SLATerms].[OnSiteResponse] as varchar(36)), '\N'),
	 [NextBizDayFlag] = isNull(cast([SLATerms].[NextBizDayFlag] as varchar(36)), '\N'),
	 [EscalationTime] = isNull(cast([SLATerms].[EscalationTime] as varchar(36)), '\N'),
	 [ChangeByID] = isNull(cast([SLATerms].[ChangeByID] as varchar(36)), '\N'),
	 [LastModified] = isNull(convert(varchar(50), [SLATerms].[LastModified], 21), '\N'),
	 [DefaultFlag] = isNull(cast([SLATerms].[DefaultFlag] as varchar(36)), '\N'),
	 [Verbose] = concat(char(34), isNull(replace(cast([SLATerms].[Verbose] as nvarchar(300)), char(34), char(0)), '\N'), char(34)),
	 [WeekDayList] = concat(char(34), isNull(replace(cast([SLATerms].[WeekDayList] as nvarchar(14)), char(34), char(0)), '\N'), char(34)),
	 [SLADisplay] = concat(char(34), isNull(replace(cast([SLATerms].[SLADisplay] as nvarchar(103)), char(34), char(0)), '\N'), char(34)),
	 [QuoteShortListFlag] = isNull(cast([SLATerms].[QuoteShortListFlag] as varchar(36)), '\N'),
	 [BusinessUnitFlag] = isNull(cast([SLATerms].[BusinessUnitFlag] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [SLATerms].[CreateDate], 21), '\N'),
	 [SourceSystem] = concat(char(34), isNull(replace(cast([SLATerms].[SourceSystem] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SourceCompany] = concat(char(34), isNull(replace(cast([SLATerms].[SourceCompany] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SourceProc] = concat(char(34), isNull(replace(cast([SLATerms].[SourceProc] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [SAP_Material_Key] = concat(char(34), isNull(replace(cast([SLATerms].[SAP_Material_Key] as nvarchar(18)), char(34), char(0)), '\N'), char(34)),
	 [Oracle_Material_Key] = isNull(cast([SLATerms].[Oracle_Material_Key] as varchar(36)), '\N'),
	 [Active] = isNull(cast([SLATerms].[Active] as varchar(36)), '\N'),
	 [QuotingReview] = isNull(cast([SLATerms].[QuotingReview] as varchar(36)), '\N')
from SinglePoint.dbo.SLATerms with(nolock)