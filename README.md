# abap-on-cloud
## Learning - SM30
RAP Backend with ODATA V4 + UI
___
Package - ZASGT01

Object Prefix - ZASGT01_
___

1. Create Dictionary Objects
   - Structure
     - [Change Log](/source_copy/Dictionary/Structures/zasgt01_st_change_log.md)
   - Table
     - [Employee](/source_copy/Dictionary/Database%20Tables/zasgt01_employee.md)
2. Create Interface Views
   -    [Employee as Child](/source_copy//Core%20Data%20Services/Data%20Definitions/ZASGT01_CDS_IF_EMPLOYEE.md)
   -    [Employee Singelton as Parent](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT01_CDS_IF_S_EMPLOYEE.md)
3. Create Consumption Views
   -    [Employee as Child](/source_copy//Core%20Data%20Services/Data%20Definitions/ZASGT01_CDS_C_EMPLOYEE.md)
   -    [Employee Singelton as Parent](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT01_CDS_C_S_EMPLOYEE.md)
4. Create Metadata Extensions
   -    [For Employee consumption view](/source_copy//Core%20Data%20Services/Metadata%20Extensions/ZASGT01_CDS_M_EMPLOYEE.md)
   -    [For Employee singleton consumption view](/source_copy/Core%20Data%20Services/Metadata%20Extensions/ZASGT01_CDS_M_S_EMPLOYEE.md)
5. [Create Service Definition](/source_copy/Business%20Services/Service%20Definitions/ZASGT01_SD_EMPLOYEE.md)
6. [Create Service Bindings](/source_copy/Business%20Services/Service%20Bindings/ZASGT01_SD_EMPLOYEE.md)
7. Create Behaviour Definitions
    -   [For Interface View of Singelton](/source_copy/Core%20Data%20Services/Behaviour%20Definitions/ZASGT01_CDS_IF_S_EMPLOYEE.md)
    -   [For Consumption View of Singelton](/source_copy/Core%20Data%20Services/Behaviour%20Definitions/ZASGT01_CDS_C_S_EMPLOYEE.md)
8.  Create other required Objects
    -   Behaviour Pool Class
    -   Draft Table(s)
        -    Main Table