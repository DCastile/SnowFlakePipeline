select
	 [udfControlID] = isNull(cast([udfControls].[udfControlID] as varchar(36)), '\N'),
	 [Control] = concat(char(34), isNull(replace(cast([udfControls].[Control] as nvarchar(50)), char(34), char(0)), '\N'), char(34))
from Surveys.dbo.udfControls with(nolock)