[HOME](/README.md)
___
```abap
@EndUserText.label : 'Database Table - Booking Supplement'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zasgt02_book_sup {

  key client                : abap.clnt not null;
  @AbapCatalog.foreignKey.label : 'Travel'
  @AbapCatalog.foreignKey.screenCheck : false
  key travel_id             : /dmo/travel_id not null
    with foreign key [0..*,1] zasgt02_travel
      where client = zasgt02_book_sup.client
        and travel_id = zasgt02_book_sup.travel_id;
  @AbapCatalog.foreignKey.label : 'Book'
  @AbapCatalog.foreignKey.screenCheck : false
  key booking_id            : /dmo/booking_id not null
    with foreign key [0..*,1] zasgt02_book
      where client = zasgt02_book_sup.client
        and travel_id = zasgt02_book_sup.travel_id
        and booking_id = zasgt02_book_sup.booking_id;
  key booking_supplement_id : /dmo/booking_supplement_id not null;
  supplement_id             : /dmo/supplement_id;
  @Semantics.amount.currencyCode : 'zasgt02_book_sup.currency_code'
  price                     : /dmo/supplement_price;
  currency_code             : /dmo/currency_code;
  include zasgt02_st_change_log;

}
```