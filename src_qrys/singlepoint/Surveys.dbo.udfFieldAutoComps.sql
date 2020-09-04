select
	 [AutoCompID] = isNull(cast([udfFieldAutoComps].[AutoCompID] as varchar(36)), '\N'),
	 [Caption] = concat(char(34), isNull(replace(cast([udfFieldAutoComps].[Caption] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Description] = concat(char(34), isNull(replace(cast([udfFieldAutoComps].[Description] as nvarchar(100)), char(34), char(0)), '\N'), char(34)),
	 [Mode] = concat(char(34), isNull(replace(cast([udfFieldAutoComps].[Mode] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SqlType] = concat(char(34), isNull(replace(cast([udfFieldAutoComps].[SqlType] as nvarchar(3)), char(34), char(0)), '\N'), char(34)),
	 [SqlStmt] = concat(char(34), isNull(replace(cast([udfFieldAutoComps].[SqlStmt] as nvarchar(1000)), char(34), char(0)), '\N'), char(34)),
	 [ValueField] = concat(char(34), isNull(replace(cast([udfFieldAutoComps].[ValueField] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [DisplayField] = concat(char(34), isNull(replace(cast([udfFieldAutoComps].[DisplayField] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [NumRecs] = isNull(cast([udfFieldAutoComps].[NumRecs] as varchar(36)), '\N'),
	 [CreateByID] = isNull(cast([udfFieldAutoComps].[CreateByID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [udfFieldAutoComps].[CreateDate], 21), '\N'),
	 [DisplayFieldDelimiter] = concat(char(34), isNull(replace(cast([udfFieldAutoComps].[DisplayFieldDelimiter] as nvarchar(1)), char(34), char(0)), '\N'), char(34))
from Surveys.dbo.udfFieldAutoComps with(nolock)