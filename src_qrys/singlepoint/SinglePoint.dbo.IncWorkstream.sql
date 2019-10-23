select
	 [WorkstreamID] = isNull(quotename([WorkstreamID], char(34)), '\N'),
	 [Display] = isNull(quotename([Display], char(34)), '\N'),
	 [Description] = isNull(quotename([Description], char(34)), '\N')
from SinglePoint.dbo.IncWorkstream