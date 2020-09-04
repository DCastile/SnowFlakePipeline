select
	 [udfID] = isNull(cast([udfs].[udfID] as varchar(36)), '\N'),
	 [udfName] = concat(char(34), isNull(replace(cast([udfs].[udfName] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [Version] = isNull(cast([udfs].[Version] as varchar(36)), '\N'),
	 [Comment] = concat(char(34), isNull(replace(cast([udfs].[Comment] as nvarchar(3998)), char(34), char(0)), '\N'), char(34)),
	 [ChangedByID] = isNull(cast([udfs].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [udfs].[LastChanged], 21), '\N'),
	 [CrosstabFlag] = isNull(cast([udfs].[CrosstabFlag] as varchar(36)), '\N'),
	 [RepeatFlag] = isNull(cast([udfs].[RepeatFlag] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [udfs].[CreateDate], 21), '\N'),
	 [InactiveFlag] = isNull(cast([udfs].[InactiveFlag] as varchar(36)), '\N'),
	 [StartDate] = isNull(convert(varchar(50), [udfs].[StartDate], 21), '\N'),
	 [EndDate] = isNull(convert(varchar(50), [udfs].[EndDate], 21), '\N'),
	 [AllowDeletes] = isNull(cast([udfs].[AllowDeletes] as varchar(36)), '\N'),
	 [UseDataPaging] = isNull(cast([udfs].[UseDataPaging] as varchar(36)), '\N')
from Surveys.dbo.udfs with(nolock)