select
	 [udfDataTypeID] = isNull(cast([udfDataTypes].[udfDataTypeID] as varchar(36)), '\N'),
	 [DataType] = concat(char(34), isNull(replace(cast([udfDataTypes].[DataType] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [TableLibFormat] = isNull(cast([udfDataTypes].[TableLibFormat] as varchar(36)), '\N')
from Surveys.dbo.udfDataTypes with(nolock)