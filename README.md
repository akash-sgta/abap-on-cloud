# abap-on-cloud
## Learning - Multilayer Application
RAP Backend with ODATA V4 + UI
___
Package - ZASGT02

Object Prefix - ZASGT02_
___

1. Create Dictionary Elements
   -  Structure
      - [Change Log](/source_copy/Dictionary/Structures/zasgt02_st_change_log.md)
   -  Tables
      - [Travel](/source_copy/Dictionary/Database%20Tables/zasgt02_travel.md)
      - [Booking](/source_copy/Dictionary/Database%20Tables/zasgt02_book.md)
      - [Booking Supplement](/source_copy/Dictionary/Database%20Tables/zasgt02_book_sup.md)
2. Create Class to copy data to custom tables
   - [Data Copy](/source_copy/Source%20Code%20Library/Classes/zasgt02_cl_copy_data.md)
3. Create Interface Views
      - [Travel](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT02_CDS_I_TRAVEL.md)
      - [Booking](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT02_CDS_I_BOOK.md)
      - [Booking Supplement](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT02_CDS_I_BOOKSUP.md)
4. Create Consumption Views
      - [Travel](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT02_CDS_C_TRAVEL.md)
      - [Booking](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT02_CDS_C_BOOK.md)
      - [Booking Supplement](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT02_CDS_C_BOOKSUP.md)
5. Create Metadata Extensions
      - [Travel](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT02_CDS_M_TRAVEL.md)
      - [Booking](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT02_CDS_M_BOOK.md)
      - [Booking Supplement](/source_copy/Core%20Data%20Services/Data%20Definitions/ZASGT02_CDS_M_BOOKSUP.md)
6. [Create Service Definition](/source_copy/Business%20Services/Service%20Definitions/ZASGT01_SD_EMPLOYEE.md)
7. [Create Service Bindings](/source_copy/Business%20Services/Service%20Bindings/ZASGT01_SD_EMPLOYEE.md)
8. Create Behaviour Definitions
    -   [For Interface View of Singelton](/source_copy/Core%20Data%20Services/Behaviour%20Definitions/ZASGT01_CDS_IF_S_EMPLOYEE.md)
    -   [For Consumption View of Singelton](/source_copy/Core%20Data%20Services/Behaviour%20Definitions/ZASGT01_CDS_C_S_EMPLOYEE.md)
9.  Create the required Objects
    -   Behaviour Pool Class
    -   Draft Table(s)
        -    Main Table
        -    Singleton Table