# abap-on-cloud
## Learning - Multilayer Application
RAP Backend with ODATA V4 + UI
___
Package - ZASGT02

Object Prefix - ZASGT02_
___

1. Create Tables
   -    [Change Log](/source_copy/Dictionary/Structures/zasgt02_st_change_log.md)
   -    [Travel]()
   -    [Booking]()
   -    [Booking Supplement]()
2. Create Interface Views
   -    [Table as Child](/source_copy//Core%20Data%20Services/Data%20Definitions/ZASGT01_CDS_IF_EMPLOYEE.md)
   -    [Singelton as Parent](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT01_CDS_IF_S_EMPLOYEE.md)
3. Create Consumption Views
   -    [Table as Child](/source_copy//Core%20Data%20Services/Data%20Definitions/ZASGT01_CDS_C_EMPLOYEE.md)
   -    [Singelton as Parent](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT01_CDS_C_S_EMPLOYEE.md)
4. Create Metadata Extensions
   -    [For table consumption view](/source_copy//Core%20Data%20Services/Metadata%20Extensions/ZASGT01_CDS_M_EMPLOYEE.md)
   -    [For singleton consumption view](/source_copy/Core%20Data%20Services/Metadata%20Extensions/ZASGT01_CDS_M_S_EMPLOYEE.md)
5. [Create Service Definition](/source_copy/Business%20Services/Service%20Definitions/ZASGT01_SD_EMPLOYEE.md)
6. [Create Service Bindings](/source_copy/Business%20Services/Service%20Bindings/ZASGT01_SD_EMPLOYEE.md)
7. Create Behaviour Definitions
    -   [For Interface View of Singelton](/source_copy/Core%20Data%20Services/Behaviour%20Definitions/ZASGT01_CDS_IF_S_EMPLOYEE.md)
    -   [For Consumption View of Singelton](/source_copy/Core%20Data%20Services/Behaviour%20Definitions/ZASGT01_CDS_C_S_EMPLOYEE.md)
8.  Create the required Objects
    -   Behaviour Pool Class
    -   Draft Table(s)
        -    Main Table
        -    Singleton Table