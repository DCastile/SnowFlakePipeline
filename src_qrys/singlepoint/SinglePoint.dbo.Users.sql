select
	 [SroTypeID] = quotename([SroTypes].[SroTypeID], char(34)),
	 [SroTypeKey] = quotename([SroTypes].[SroTypeKey], char(34)),
	 [Code] = quotename([SroTypes].[Code], char(34)),
	 [Description] = quotename([SroTypes].[Description], char(34)),
	 [InactiveFlag] = quotename([SroTypes].[InactiveFlag], char(34)),
	 [SroTemplateID] = quotename([SroTypes].[SroTemplateID], char(34)),
	 [Billable] = quotename([SroTypes].[Billable], char(34)),
	 [CreateDate] = convert(varchar(50), [SroTypes].[CreateDate], 21)
from SinglePoint.dbo.SroTypes