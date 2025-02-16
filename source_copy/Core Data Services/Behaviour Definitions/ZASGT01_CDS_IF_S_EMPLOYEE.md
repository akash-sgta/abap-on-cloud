[hOME](/README.md)
___
```cds
managed implementation in class zasgt01_cl_bp_s_employee unique;
strict ( 2 );
with draft;
// =======================================================
define behavior for ZASGT01_CDS_IF_S_EMPLOYEE //alias <alias_name>
with unmanaged save
draft table zasgt01_dt_s_emp
lock master
total etag maxChangedAt
authorization master ( instance )
##DRAFT_OP_NOT_REQUIRED
{
  field ( readonly ) singleton;
  association _employee { create; }

  draft action Edit;
  draft action Activate optimized;
  draft action Discard;
  draft action Resume;
  draft determine action Prepare;
}
// =======================================================
define behavior for ZASGT01_CDS_IF_EMPLOYEE //alias <alias_name>
persistent table zasgt01_employee
draft table zasgt01_dt_emp
lock dependent by _employee_s
authorization dependent by _employee_s
//etag master <field_name>
{
  update;
  delete;
  field ( mandatory : create, readonly : update ) Id;
  field ( readonly ) singleton, ChangedAt, ChangedBy, CreatedAt, CreatedBy;
  field ( mandatory ) Fname;
  association _employee_s;
  mapping for zasgt01_employee
    {
      id                 = id;
      Fname              = fname;
      Lname              = lname;
      Dept               = dept;
      JoinDate           = join_date;
      IsActive           = is_active;
      CreatedAt          = created_at;
      CreatedBy          = created_by;
      ChangedAt          = changed_at;
      ChangedBy          = changed_by;
      LocalLastChangedAt = local_last_changed_at;
    }
}
```