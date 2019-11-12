select
	 [SroTypeID] = concat(char(34), isNull(cast([SroTypes].[SroTypeID] as nvarchar(max)), '\N'), char(34)),
	 [SroTypeKey] = concat(char(34), isNull(cast([SroTypes].[SroTypeKey] as nvarchar(max)), '\N'), char(34)),
	 [Code] = concat(char(34), isNull(cast([SroTypes].[Code] as nvarchar(max)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(cast([SroTypes].[Description] as nvarchar(max)), '\N'), char(34)),
	 [InactiveFlag] = concat(char(34), isNull(cast([SroTypes].[InactiveFlag] as nvarchar(max)), '\N'), char(34)),
	 [SroTemplateID] = concat(char(34), isNull(cast([SroTypes].[SroTemplateID] as nvarchar(max)), '\N'), char(34)),
	 [Billable] = concat(char(34), isNull(cast([SroTypes].[Billable] as nvarchar(max)), '\N'), char(34)),
	 [CreateDate] = isNull(convert(varchar(50), [SroTypes].[CreateDate], 21), '\N')
from SinglePoint.dbo.SroTypes