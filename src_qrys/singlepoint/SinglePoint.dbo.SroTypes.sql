select
	 [SroTypeID] = isNull(cast([SroTypes].[SroTypeID] as varchar(36)), '\N'),
	 [SroTypeKey] = isNull(cast([SroTypes].[SroTypeKey] as varchar(36)), '\N'),
	 [Code] = concat(char(34), isNull(replace(cast([SroTypes].[Code] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([SroTypes].[Description] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [InactiveFlag] = isNull(cast([SroTypes].[InactiveFlag] as varchar(36)), '\N'),
	 [SroTemplateID] = isNull(cast([SroTypes].[SroTemplateID] as varchar(36)), '\N'),
	 [Billable] = isNull(cast([SroTypes].[Billable] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [SroTypes].[CreateDate], 21), '\N')
from SinglePoint.dbo.SroTypes with(nolock)