select
	 [BOMGuid] = isNull(cast([tqoBOM].[BOMGuid] as varchar(36)), '\N'),
	 [ItemGuid] = isNull(cast([tqoBOM].[ItemGuid] as varchar(36)), '\N'),
	 [ParentID] = isNull(cast([tqoBOM].[ParentID] as varchar(36)), '\N'),
	 [EvenCountFlag] = isNull(cast([tqoBOM].[EvenCountFlag] as varchar(36)), '\N'),
	 [MinQty] = isNull(cast([tqoBOM].[MinQty] as varchar(36)), '\N'),
	 [MaxQty] = isNull(cast([tqoBOM].[MaxQty] as varchar(36)), '\N'),
	 [StandardQty] = isNull(cast([tqoBOM].[StandardQty] as varchar(36)), '\N'),
	 [StandardFlag] = isNull(cast([tqoBOM].[StandardFlag] as varchar(36)), '\N'),
	 [RootItemGuid] = isNull(cast([tqoBOM].[RootItemGuid] as varchar(36)), '\N'),
	 [MASCompKey] = isNull(cast([tqoBOM].[MASCompKey] as varchar(36)), '\N'),
	 [MASParentKey] = isNull(cast([tqoBOM].[MASParentKey] as varchar(36)), '\N'),
	 [ChangedByID] = isNull(cast([tqoBOM].[ChangedByID] as varchar(36)), '\N'),
	 [LastChanged] = isNull(convert(varchar(50), [tqoBOM].[LastChanged], 21), '\N'),
	 [CreateByID] = isNull(cast([tqoBOM].[CreateByID] as varchar(36)), '\N'),
	 [CreateDate] = isNull(convert(varchar(50), [tqoBOM].[CreateDate], 21), '\N'),
	 [Source] = concat(char(34), isNull(replace(cast([tqoBOM].[Source] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [SourceFKID] = isNull(cast([tqoBOM].[SourceFKID] as varchar(36)), '\N'),
	 [SparesKit] = isNull(cast([tqoBOM].[SparesKit] as varchar(36)), '\N'),
	 [SourceProc] = concat(char(34), isNull(replace(cast([tqoBOM].[SourceProc] as nvarchar(50)), char(34), char(0)), '\N'), char(34)),
	 [FromSiteAudit] = isNull(cast([tqoBOM].[FromSiteAudit] as varchar(36)), '\N')
from SinglePoint.dbo.tqoBOM