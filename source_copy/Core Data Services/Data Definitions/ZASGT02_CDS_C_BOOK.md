[HOME](/README.md)
___
```cds
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Booking'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZASGT02_CDS_C_BOOK
  as projection on ZASGT02_CDS_I_BOOK
{
  key TravelId,
  key BookingId,

      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      FlightPrice,
      BookingStatus,
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
      _p_travel   : redirected to parent ZASGT02_CDS_C_TRAVEL,

      -- CHILD --
      _c_book_sup : redirected to composition child ZASGT02_CDS_C_BOOKSUP,

      -- ASSOCIATION --
      _carrier,
      _connection,
      _customer,
      _status
}

```