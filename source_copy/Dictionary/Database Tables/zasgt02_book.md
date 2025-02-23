[HOME](/README.md)
___
```abap
@EndUserText.label : 'Database Table - Booking'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zasgt02_book {

  key client     : abap.clnt not null;
  @AbapCatalog.foreignKey.label : 'Travel'
  @AbapCatalog.foreignKey.screenCheck : false
  key travel_id  : /dmo/travel_id not null
    with foreign key [0..*,1] zasgt02_travel
      where client = zasgt02_book.client
        and travel_id = zasgt02_book.travel_id;
  key booking_id : /dmo/booking_id not null;
  booking_date   : /dmo/booking_date;
  customer_id    : /dmo/customer_id;
  carrier_id     : /dmo/carrier_id;
  connection_id  : /dmo/connection_id;
  flight_date    : /dmo/flight_date;
  @Semantics.amount.currencyCode : 'zasgt02_book.currency_code'
  flight_price   : /dmo/flight_price;
  currency_code  : /dmo/currency_code;
  booking_status : /dmo/booking_status;
  include zasgt02_st_change_log;

}
```