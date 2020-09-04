select
	 [udfFieldCategoryID] = isNull(cast([udfFieldCategories].[udfFieldCategoryID] as varchar(36)), '\N'),
	 [Category] = concat(char(34), isNull(replace(cast([udfFieldCategories].[Category] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [ParentID] = isNull(cast([udfFieldCategories].[ParentID] as varchar(36)), '\N'),
	 [DataReqdFlag] = isNull(cast([udfFieldCategories].[DataReqdFlag] as varchar(36)), '\N'),
	 [seq] = isNull(cast([udfFieldCategories].[seq] as varchar(36)), '\N')
from Surveys.dbo.udfFieldCategories with(nolock)