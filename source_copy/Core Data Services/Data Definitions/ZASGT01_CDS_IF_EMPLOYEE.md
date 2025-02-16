[HOME](/README.md)
___
```cds
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View - Employee'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZASGT01_CDS_IF_EMPLOYEE
  as select from zasgt01_employee
  association to parent ZASGT01_CDS_IF_S_EMPLOYEE as _employee_s on(
    $projection.singleton = _employee_s.singleton
  )
{
  key id                    as Id,
      1                     as singleton,

      fname                 as Fname,
      lname                 as Lname,
      dept                  as Dept,
      join_date             as JoinDate,
      is_active             as IsActive,

      -- CHANGE LOG --
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      changed_by            as ChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at            as ChangedAt, --  TOTAL ETAG
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt, -- ETAG

      -- PARENT --
      _employee_s
}
```