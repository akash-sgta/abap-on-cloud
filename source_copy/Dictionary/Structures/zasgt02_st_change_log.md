[HOME](/README.md)
___
```abap
@EndUserText.label : 'Structure - Change Log'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
define structure zasgt02_st_change_log {

  created_by            : abp_creation_user;
  created_at            : abp_creation_tstmpl;
  changed_by            : abp_lastchange_user;
  changed_at            : abp_lastchange_tstmpl;
  local_last_changed_by : abp_locinst_lastchange_user;
  local_last_changed_at : abp_locinst_lastchange_tstmpl;

}
```