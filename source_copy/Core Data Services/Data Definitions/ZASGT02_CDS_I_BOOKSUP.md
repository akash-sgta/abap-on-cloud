[HOME](/README.md)
___
```cds
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View - Booking Supplement'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZASGT02_CDS_I_BOOKSUP
  as select from zasgt02_book_sup
  association        to parent ZASGT02_CDS_I_BOOK as _p_book     on(
        $projection.BookingId    = _p_book.BookingId
        and $projection.TravelId = _p_book.TravelId
      )
  association [0..1] to ZASGT02_CDS_I_TRAVEL      as _travel     on(
        $projection.TravelId = _travel.TravelId
      )
  association [0..1] to /DMO/I_Supplement_StdVH   as _supplement on(
    $projection.SupplementId = _supplement.SupplementID
  )
{
  key travel_id             as TravelId,
  key booking_id            as BookingId,
  key booking_supplement_id as BookingSupplementId,
      
      supplement_id         as SupplementId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                 as Price,
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
      _p_book,

      -- ASSOCIATION --
      _travel,
      _supplement
}
```