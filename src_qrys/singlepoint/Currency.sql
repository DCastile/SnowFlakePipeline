select
	[CurrencyCode] = isNull(quotename([CurrencyCode], char(34)), '\N'),
	[Description] = isNull(quotename([Description], char(34)), '\N'),
	[CurrencySymbol] = isNull(quotename([CurrencySymbol], char(34)), '\N'),
	[CurrencySymbolPosition] = isNull(quotename([CurrencySymbolPosition], char(34)), '\N'),
	[DecimalSymbol] = isNull(quotename([DecimalSymbol], char(34)), '\N'),
	[DigitGroupSymbol] = isNull(quotename([DigitGroupSymbol], char(34)), '\N'),
	[DigitsAfterDecimal] = isNull(quotename([DigitsAfterDecimal], char(34)), '\N'),
	[DigitsInGroup] = isNull(quotename([DigitsInGroup], char(34)), '\N'),
	[InactiveFlag] = isNull(quotename([InactiveFlag], char(34)), '\N'),
	[CultureName] = isNull(quotename([CultureName], char(34)), '\N'),
	[Transactable] = isNull(quotename([Transactable], char(34)), '\N')
from SinglePoint.dbo.Currency