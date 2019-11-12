select
	 [SroTypeID] = concat('"', [SroTypes].[SroTypeID], '"'),
	 [SroTypeKey] = concat('"', [SroTypes].[SroTypeKey], '"'),
	 [Code] = concat('"', [SroTypes].[Code], '"'),
	 [Description] = concat('"', [SroTypes].[Description], '"'),
	 [InactiveFlag] = concat('"', [SroTypes].[InactiveFlag], '"'),
	 [SroTemplateID] = concat('"', [SroTypes].[SroTemplateID], '"'),
	 [Billable] = concat('"', [SroTypes].[Billable], '"'),
	 [CreateDate] = convert(varchar(50), [SroTypes].[CreateDate], 21)
from SinglePoint.dbo.SroTypes