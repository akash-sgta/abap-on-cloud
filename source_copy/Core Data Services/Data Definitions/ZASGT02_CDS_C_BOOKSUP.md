[HOME](/README.md)
___
```cds
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Booking Supplement'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZASGT02_CDS_C_BOOKSUP
  as projection on ZASGT02_CDS_I_BOOKSUP
{
  key TravelId,
  key BookingId,
  key BookingSupplementId,

      SupplementId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Price,
      @UI.hidden: true
      CurrencyCode,

      -- CHANGE LOG --
      @UI.hidden: true
      CreatedBy,
      @UI.hidden: true
      CreatedAt,
      @UI.hidden: true
      ChangedBy,
      @UI.hidden: true
      ChangedAt,
      @UI.hidden: true
      LocalLastChangedBy,
      @UI.hidden: true
      LocalLastChangedAt,

      -- PARENT --
      _p_book: redirected to parent ZASGT02_CDS_C_BOOK,

      -- ASSOCIATION --
      _supplement,
      _travel
}
```