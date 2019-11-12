select
	 [NoteID] = concat('"', [NotesGeneric].[NoteID], '"'),
	 [FKID] = concat('"', [NotesGeneric].[FKID], '"'),
	 [ObjectType] = concat('"', [NotesGeneric].[ObjectType], '"'),
	 [Title] = concat('"', [NotesGeneric].[Title], '"'),
	 [Body] = concat('"', [NotesGeneric].[Body], '"'),
	 [Audiance] = concat('"', [NotesGeneric].[Audiance], '"'),
	 [EffectiveDate] = convert(varchar(50), [NotesGeneric].[EffectiveDate], 21),
	 [ExpirationDate] = convert(varchar(50), [NotesGeneric].[ExpirationDate], 21),
	 [Priority] = concat('"', [NotesGeneric].[Priority], '"'),
	 [CreatedByUserID] = concat('"', [NotesGeneric].[CreatedByUserID], '"'),
	 [CreatedDateUTC] = convert(varchar(50), [NotesGeneric].[CreatedDateUTC], 21),
	 [LastUpdatedByUserID] = concat('"', [NotesGeneric].[LastUpdatedByUserID], '"'),
	 [LastUpdatedDateUTC] = convert(varchar(50), [NotesGeneric].[LastUpdatedDateUTC], 21),
	 [AudianceCode] = concat('"', [NotesGeneric].[AudianceCode], '"'),
	 [Status] = concat('"', [NotesGeneric].[Status], '"'),
	 [CategoryID] = concat('"', [NotesGeneric].[CategoryID], '"'),
	 [Category] = concat('"', [NotesGeneric].[Category], '"'),
	 [ReferenceType] = concat('"', [NotesGeneric].[ReferenceType], '"'),
	 [ReferenceIdentifier] = concat('"', [NotesGeneric].[ReferenceIdentifier], '"')
from SinglePoint.dbo.NotesGeneric