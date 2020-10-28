select
	 [ContractTypeID] = isNull(cast([Contract_Type].[ContractTypeID] as varchar(36)), '\N'),
	 [ContractType] = concat(char(34), isNull(replace(cast([Contract_Type].[ContractType] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [DESCRIPTION] = concat(char(34), isNull(replace(cast([Contract_Type].[DESCRIPTION] as nvarchar(255)), char(34), char(0)), '\N'), char(34)),
	 [createdate] = isNull(convert(varchar(50), [Contract_Type].[createdate], 21), '\N'),
	 [isAssetRequired] = isNull(cast([Contract_Type].[isAssetRequired] as varchar(36)), '\N'),
	 [Oracle_Contract_Type] = concat(char(34), isNull(replace(cast([Contract_Type].[Oracle_Contract_Type] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [showOnNewQuoteDialog] = isNull(cast([Contract_Type].[showOnNewQuoteDialog] as varchar(36)), '\N'),
	 [restrictSLAs] = isNull(cast([Contract_Type].[restrictSLAs] as varchar(36)), '\N'),
	 [restrictItems] = isNull(cast([Contract_Type].[restrictItems] as varchar(36)), '\N')
from SinglePoint.dbo.Contract_Type with(nolock)