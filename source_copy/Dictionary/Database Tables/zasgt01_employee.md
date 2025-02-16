[HOME](/README.md)
___
```abap
@EndUserText.label : 'Database Table - Employee'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zasgt01_employee {

  key client : abap.clnt not null;
  @EndUserText.label : 'Employee Id'
  key id     : abap.char(10) not null;
  @EndUserText.label : 'First Name'
  fname      : abap.char(100);
  @EndUserText.label : 'Last Name'
  lname      : abap.char(100);
  @EndUserText.label : 'Department'
  dept       : abap.char(20);
  @EndUserText.label : 'Joining Date'
  join_date  : abap.dats;
  @EndUserText.label : 'Active Employee'
  is_active  : abap.char(1);
  include zasgt01_st_change_log;

}
```