[HOME](/README.md)
___
```cds
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View - Travel'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZASGT02_CDS_I_TRAVEL
  as select from zasgt02_travel
  composition [1..*] of ZASGT02_CDS_I_BOOK       as _c_book
  association [0..1] to /DMO/I_Agency            as _agency   on(
      $projection.AgencyId = _agency.AgencyID
    )
  association [0..1] to /DMO/I_Customer          as _customer on(
    $projection.CustomerId = _customer.CustomerID
  )
  association [1..1] to I_Currency               as _currency on(
    $projection.CurrencyCode = _currency.Currency
  )
  association [0..1] to /DMO/I_Overall_Status_VH as _status   on(
      $projection.OverallStatus = _status.OverallStatus
    )
{
  key travel_id             as TravelId,
      agency_id             as AgencyId,

      customer_id           as CustomerId,
      begin_date            as BeginDate,
      end_date              as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee           as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price           as TotalPrice,
      description           as Description,
      overall_status        as OverallStatus,
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

      -- CHILD --
      _c_book,

      -- ASSOCIATION --
      _agency,
      _customer,
      _currency,
      _status
}
```