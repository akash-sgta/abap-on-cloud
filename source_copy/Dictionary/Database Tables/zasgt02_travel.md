[HOME](/README.md)
___
```abap
@EndUserText.label : 'Database Table - Travel'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zasgt02_travel {

  key client     : abap.clnt not null;
  key travel_id  : /dmo/travel_id not null;
  agency_id      : /dmo/agency_id;
  customer_id    : /dmo/customer_id;
  begin_date     : /dmo/begin_date;
  end_date       : /dmo/end_date;
  @Semantics.amount.currencyCode : 'zasgt02_travel.currency_code'
  booking_fee    : /dmo/booking_fee;
  @Semantics.amount.currencyCode : 'zasgt02_travel.currency_code'
  total_price    : /dmo/total_price;
  currency_code  : /dmo/currency_code;
  description    : /dmo/description;
  overall_status : /dmo/overall_status;
  include zasgt02_st_change_log;

}
```