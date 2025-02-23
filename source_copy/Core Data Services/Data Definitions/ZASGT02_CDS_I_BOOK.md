[HOME](/README.md)
___
```cds
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View - Booking'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZASGT02_CDS_I_BOOK
  as select from zasgt02_book
  association        to parent ZASGT02_CDS_I_TRAVEL as _p_travel   on(
      $projection.TravelId = _p_travel.TravelId
    )
  composition [1..*] of ZASGT02_CDS_I_BOOKSUP       as _c_book_sup
  association [0..1] to /DMO/I_Carrier              as _carrier    on(
       $projection.CarrierId = _carrier.AirlineID
     )
  association [0..1] to /DMO/I_Customer             as _customer   on(
      $projection.CustomerId = _customer.CustomerID
    )
  association [0..*] to /DMO/I_Connection           as _connection on(
    $projection.ConnectionId = _connection.ConnectionID
  )
  association [0..1] to /DMO/I_Booking_Status_VH    as _status     on(
        $projection.BookingStatus = _status.BookingStatus
      )
{
  key travel_id             as TravelId,
  key booking_id            as BookingId,

      booking_date          as BookingDate,
      customer_id           as CustomerId,
      carrier_id            as CarrierId,
      connection_id         as ConnectionId,
      flight_date           as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price          as FlightPrice,
      booking_status        as BookingStatus,
      currency_code         as CurrencyCode,

      -- CHANGE LOG --
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      changed_by            as ChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at            as ChangedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      -- PARENT --
      _p_travel,

      -- CHILD --
      _c_book_sup,

      -- ASSOCIATION --
      _carrier,
      _customer,
      _connection,
      _status
}
```