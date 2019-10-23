select
	 [PlatformID] = isNull(quotename([PlatformID], char(34)), '\N'),
	 [Platform] = isNull(quotename([Platform], char(34)), '\N'),
	 [FamilyID] = isNull(quotename([FamilyID], char(34)), '\N')
from SinglePoint.dbo.tqoItem_Platform