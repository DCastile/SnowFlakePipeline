select
	 [udfAnswerID] = isNull(cast([udfAnswers].[udfAnswerID] as varchar(36)), '\N'),
	 [udfResponseID] = isNull(cast([udfAnswers].[udfResponseID] as varchar(36)), '\N'),
	 [udfFieldID] = isNull(cast([udfAnswers].[udfFieldID] as varchar(36)), '\N'),
	 [AnswerValue] = concat(char(34), isNull(replace(cast([udfAnswers].[AnswerValue] as nvarchar(1000)), char(34), char(0)), '\N'), char(34)),
	 [ChangedByID] = isNull(cast([udfAnswers].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [udfAnswers].[LastChanged], 21), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [udfAnswers].[CreateDate], 21), '\N'),
	 [HiddenValue] = concat(char(34), isNull(replace(cast([udfAnswers].[HiddenValue] as nvarchar(1000)), char(34), char(0)), '\N'), char(34)),
	 [Visible] = isNull(cast([udfAnswers].[Visible] as varchar(36)), '\N'),
	 [VisibleReason] = concat(char(34), isNull(replace(cast([udfAnswers].[VisibleReason] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [DefaultVisible] = isNull(cast([udfAnswers].[DefaultVisible] as varchar(36)), '\N')
from Surveys.dbo.udfAnswers with(nolock)