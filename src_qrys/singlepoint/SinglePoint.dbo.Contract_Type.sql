select
	 [ContractTypeID] = isNull(quotename([ContractTypeID], char(34)), '\N'),
	 [ContractType] = isNull(quotename([ContractType], char(34)), '\N'),
	 [DESCRIPTION] = isNull(quotename([DESCRIPTION], char(34)), '\N'),
	 [createdate] = isNull(convert(varchar(50), [createdate], 21), '\N'),
	 [isAssetRequired] = isNull(quotename([isAssetRequired], char(34)), '\N'),
	 [Oracle_Contract_Type] = isNull(quotename([Oracle_Contract_Type], char(34)), '\N')
from SinglePoint.dbo.Contract_Type