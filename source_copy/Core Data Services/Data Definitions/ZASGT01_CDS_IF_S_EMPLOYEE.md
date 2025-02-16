[HOME](/README.md)
___
```cds
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View - Singleton : Employee'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZASGT01_CDS_IF_S_EMPLOYEE
  as select from    I_Language
    left outer join zasgt01_employee as t_employee on 1 = 1
  composition [0..*] of ZASGT01_CDS_IF_EMPLOYEE as _employee
{
  key 1                            as singleton,
      max( t_employee.changed_at ) as maxChangedAt, -- TOTAL ETAG

      -- CHILD --
      _employee
}
where
  I_Language.Language = $session.system_language;
```