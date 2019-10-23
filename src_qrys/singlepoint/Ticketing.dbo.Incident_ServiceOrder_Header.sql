select
	 [ProblemGuid] = isNull(quotename([ProblemGuid], char(34)), '\N'),
	 [StatusCodeID] = isNull(quotename([StatusCodeID], char(34)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [CreateDate], 21), '\N')
from SinglePoint.dbo.tqoProblems_StatusCodes_Xref