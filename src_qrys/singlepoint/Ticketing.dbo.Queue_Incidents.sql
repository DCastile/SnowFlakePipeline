select
	 [ParentItemKey] = isNull(quotename([ParentItemKey], char(34)), '\N'),
	 [ParentItemID] = isNull(quotename([ParentItemID], char(34)), '\N'),
	 [FRUKey] = isNull(quotename([FRUKey], char(34)), '\N'),
	 [ItemClassID] = isNull(quotename([ItemClassID], char(34)), '\N'),
	 [QtyOrdered] = isNull(quotename([QtyOrdered], char(34)), '\N'),
	 [ChildItemID] = isNull(quotename([ChildItemID], char(34)), '\N'),
	 [ChildDesc] = isNull(quotename([ChildDesc], char(34)), '\N'),
	 [ParentItemGuid] = isNull(quotename([ParentItemGuid], char(34)), '\N'),
	 [ParentBomGuid] = isNull(quotename([ParentBomGuid], char(34)), '\N'),
	 [ChildItemGuid] = isNull(quotename([ChildItemGuid], char(34)), '\N'),
	 [ChildBomGuid] = isNull(quotename([ChildBomGuid], char(34)), '\N')
from SinglePoint.dbo.tqoBOM_SpareRange_Import