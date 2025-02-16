[HOME](/README.md)
___
```cds
projection;
strict ( 2 );
use draft;
// ==========================================================
define behavior for ZASGT01_CDS_C_S_EMPLOYEE //alias <alias_name>
{
  use action Activate;
  use action Resume;
  use action Discard;
  use action Prepare;
  use action Edit;

  use association _employee { create; with draft; }
}
// ==========================================================
define behavior for ZASGT01_CDS_C_EMPLOYEE //alias <alias_name>

{
  use update;
  use delete;

  use association _employee_s { with draft; }
}
```