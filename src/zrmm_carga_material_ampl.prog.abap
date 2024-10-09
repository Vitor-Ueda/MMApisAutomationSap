*&---------------------------------------------------------------------*
*& Report ZRMM_CARGA_MATERIAL_AMPL
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zrmm_carga_material_ampl.

TYPES: BEGIN OF t_datatab,
         matkl(9)        TYPE c,
         werks(4)        TYPE c,
         lgort(4)        TYPE c,
         eisbe           TYPE eisbe,
         mabst           TYPE mabst,
       END OF t_datatab.

   CONSTANTS: gc_linha TYPE string VALUE 'Linha '.

DATA: gt_datatab TYPE STANDARD TABLE OF t_datatab,
      gt_return  TYPE TABLE OF bapiret2.

SELECTION-SCREEN BEGIN OF BLOCK block WITH FRAME TITLE txt_01.
  PARAMETERS: p_file TYPE  rlgrap-filename.
SELECTION-SCREEN END OF BLOCK block .

* At selection screen
AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_file.
  CALL FUNCTION 'F4_FILENAME'
    EXPORTING
      field_name = 'P_FILE'
    IMPORTING
      file_name  = p_file.

INITIALIZATION.
  txt_01 = TEXT-001.

START-OF-SELECTION.

  PERFORM f_ler_arquivo.
  PERFORM f_processa_bapi.
  PERFORM f_mostrar_res.

END-OF-SELECTION.

*&---------------------------------------------------------------------*
*& Form f_ler_arquivo
*&---------------------------------------------------------------------*
FORM f_ler_arquivo .

  DATA: filename      TYPE string,
        lt_excel_data TYPE truxs_t_text_data.

  filename = p_file.

  CALL METHOD cl_gui_frontend_services=>gui_upload
    EXPORTING
      filename                = filename
      filetype                = 'ASC'
      has_field_separator     = abap_true
    CHANGING
      data_tab                = lt_excel_data[]
    EXCEPTIONS
      file_open_error         = 1
      file_read_error         = 2
      no_batch                = 3
      gui_refuse_filetransfer = 4
      invalid_type            = 5
      no_authority            = 6
      unknown_error           = 7
      bad_data_format         = 8
      header_not_allowed      = 9
      separator_not_allowed   = 10
      header_too_long         = 11
      unknown_dp_error        = 12
      access_denied           = 13
      dp_out_of_memory        = 14
      disk_full               = 15
      dp_timeout              = 16
      not_supported_by_gui    = 17
      error_no_gui            = 18
      OTHERS                  = 19.
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ELSE.

    DELETE lt_excel_data INDEX 1.

* Get fields from csv file
    CALL FUNCTION 'TEXT_CONVERT_CSV_TO_SAP'
      EXPORTING
        i_field_seperator    = ','
        i_line_header        = ' '
        i_tab_raw_data       = lt_excel_data
      TABLES
        i_tab_converted_data = gt_datatab
      EXCEPTIONS
        conversion_failed    = 1
        OTHERS               = 2.
    IF sy-subrc NE 0.
      REFRESH gt_datatab.
    ENDIF.
  ENDIF.

ENDFORM.


*&---------------------------------------------------------------------*
*& Form f_processa_bapi
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM f_processa_bapi .

  DATA: ls_return TYPE bapiret2, " Return Parameter
        lv_cont   TYPE i.

    LOOP AT gt_datatab ASSIGNING FIELD-SYMBOL(<fs_data>).

      lv_cont = lv_cont + 1.

      DATA(ls_marc) = VALUE bapi_marc(
         plant = <fs_data>-werks
         safety_stk = <fs_data>-eisbe
         max_stock = <fs_data>-mabst
         mrp_type = 'ND'
       ).

      DATA(ls_marcx) = VALUE bapi_marcx(
        plant = <fs_data>-werks
        safety_stk = abap_true
        max_stock = abap_true
        mrp_type = abap_true
      ).

       CALL FUNCTION 'BAPI_MATERIAL_SAVEDATA'
                        EXPORTING
                          headdata             = VALUE bapimathead( material = <fs_data>-matkl )
                          plantdata            = ls_marc
                          plantdatax           = ls_marcx
                        IMPORTING
                          return               = ls_return.

           IF  ls_return-type EQ 'S'.
              CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'.
           ENDIF.

           ls_return-message_v4 = gc_linha && | | && lv_cont.

           APPEND ls_return TO gt_return.

           CLEAR: ls_return.

     ENDLOOP.

     CLEAR: lv_cont.

ENDFORM.

FORM f_mostrar_res.

 DATA: r_table      TYPE REF TO cl_salv_table,
       r_columns    TYPE REF TO cl_salv_columns_table,
       r_column     TYPE REF TO cl_salv_column.

  CALL METHOD cl_salv_table=>factory
    IMPORTING
      r_salv_table = r_table
    CHANGING
      t_table      = gt_return.

  r_columns = r_table->get_columns( ).
  r_columns->set_optimize( if_salv_c_bool_sap=>true ).

   DATA(lr_functions) = r_table->get_functions( ).
   lr_functions->set_all( abap_true ).

  CALL METHOD r_table->display.

  REFRESH: gt_return.

ENDFORM.
