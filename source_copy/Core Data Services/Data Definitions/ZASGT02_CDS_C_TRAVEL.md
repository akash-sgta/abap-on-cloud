[HOME](/README.md)
___
```cds
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Travel'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZASGT02_CDS_C_TRAVEL
  provider contract transactional_query
  as projection on ZASGT02_CDS_I_TRAVEL
{
  key TravelId,
  
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      Description,
      OverallStatus,
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

      -- CHILD --
      _c_book : redirected to composition child ZASGT02_CDS_C_BOOK,

      -- ASSOCIATION --
      _agency,
      _currency,
      _customer,
      _status
}

```