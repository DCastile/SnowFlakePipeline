select
	 [SroTypeID] = concat(char(34), [SroTypes].[SroTypeID], char(34)),
	 [SroTypeKey] = concat(char(34), [SroTypes].[SroTypeKey], char(34)),
	 [Code] = concat(char(34), [SroTypes].[Code], char(34)),
	 [Description] = concat(char(34), [SroTypes].[Description], char(34)),
	 [InactiveFlag] = concat(char(34), [SroTypes].[InactiveFlag], char(34)),
	 [SroTemplateID] = concat(char(34), [SroTypes].[SroTemplateID], char(34)),
	 [Billable] = concat(char(34), [SroTypes].[Billable], char(34)),
	 [CreateDate] = convert(varchar(50), [SroTypes].[CreateDate], 21)
from SinglePoint.dbo.SroTypes