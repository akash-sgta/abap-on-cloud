[HOME](/README.md)
___
```abap
CLASS zasgt02_cl_copy_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zasgt02_cl_copy_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA:
      lt_travel   TYPE TABLE OF zasgt02_travel,
      lt_book     TYPE TABLE OF zasgt02_book,
      lt_book_sup TYPE TABLE OF zasgt02_book_sup.

    GET TIME STAMP FIELD DATA(lv_ts).

    SELECT * FROM /dmo/travel_m INTO CORRESPONDING FIELDS OF TABLE @lt_travel.
    LOOP AT lt_travel ASSIGNING FIELD-SYMBOL(<lfs_travel>).
      <lfs_travel>-created_at = lv_ts.
      <lfs_travel>-created_by = sy-uname.
    ENDLOOP.
    MODIFY zasgt02_travel FROM TABLE @lt_travel.

    SELECT * FROM /dmo/booking_m INTO CORRESPONDING FIELDS OF TABLE @lt_book.
    LOOP AT lt_book ASSIGNING FIELD-SYMBOL(<lfs_book>).
      <lfs_book>-created_at = lv_ts.
      <lfs_book>-created_by = sy-uname.
    ENDLOOP.
    MODIFY zasgt02_book FROM TABLE @lt_book.

    SELECT * FROM /dmo/booksuppl_m INTO CORRESPONDING FIELDS OF TABLE @lt_book_sup.
    LOOP AT lt_book_sup ASSIGNING FIELD-SYMBOL(<lfs_book_sup>).
      <lfs_book_sup>-created_at = lv_ts.
      <lfs_book_sup>-created_by = sy-uname.
    ENDLOOP.
    MODIFY zasgt02_book_sup FROM TABLE @lt_book_sup.

    out->write(
      EXPORTING
        data   = 'Copied'
    ).

  ENDMETHOD.
ENDCLASS.
```