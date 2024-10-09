class ZCL_ZGSD_PRODUTOS_DPC_EXT definition
  public
  inheriting from ZCL_ZGSD_PRODUTOS_DPC
  create public .

public section.

  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_DEEP_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_EXPANDED_ENTITYSET
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~PATCH_ENTITY
    redefinition .
protected section.

  methods ANEXOSET_CREATE_ENTITY
    redefinition .
  methods APROVADORESSET_GET_ENTITYSET
    redefinition .
  methods ATIVOIMOBILIZADO_GET_ENTITYSET
    redefinition .
  methods CENTROCUSTOSET_GET_ENTITYSET
    redefinition .
  methods CENTROSET_GET_ENTITY
    redefinition .
  methods CENTROSET_GET_ENTITYSET
    redefinition .
  methods DEPARTAMENTOSET_GET_ENTITYSET
    redefinition .
  methods DIAGRAMAREDESET_GET_ENTITY
    redefinition .
  methods DIAGRAMAREDESET_GET_ENTITYSET
    redefinition .
  methods EMPRESASET_GET_ENTITYSET
    redefinition .
  methods FOLHASERVICOSET_DELETE_ENTITY
    redefinition .
  methods FORNECEDORESSET_GET_ENTITY
    redefinition .
  methods FORNECEDORESSET_GET_ENTITYSET
    redefinition .
  methods IMPOSTOIVASET_GET_ENTITYSET
    redefinition .
  methods LOCALESTOQUESET_GET_ENTITYSET
    redefinition .
  methods MATERIALSERVICOS_GET_ENTITY
    redefinition .
  methods MATERIALSERVICOS_GET_ENTITYSET
    redefinition .
  methods MOEDASET_GET_ENTITY
    redefinition .
  methods MOEDASET_GET_ENTITYSET
    redefinition .
  methods NUMEROPESSOALSET_GET_ENTITY
    redefinition .
  methods NUMEROPESSOALSET_GET_ENTITYSET
    redefinition .
  methods OPERACAOSET_GET_ENTITYSET
    redefinition .
  methods PEDIDOITEMSET_CREATE_ENTITY
    redefinition .
  methods PEDIDOITEMSET_DELETE_ENTITY
    redefinition .
  methods PEDIDOITEMSET_GET_ENTITY
    redefinition .
  methods PEDIDOITEMSET_UPDATE_ENTITY
    redefinition .
  methods PEDIDOSET_DELETE_ENTITY
    redefinition .
  methods PEDIDOSET_GET_ENTITY
    redefinition .
  methods PEDIDOSET_UPDATE_ENTITY
    redefinition .
  methods PERFILUSUARIOSET_GET_ENTITY
    redefinition .
  methods PERFILUSUARIOSET_GET_ENTITYSET
    redefinition .
  methods REQCOMPRAITEMSET_DELETE_ENTITY
    redefinition .
  methods REQCOMPRAITEMSET_UPDATE_ENTITY
    redefinition .
  methods REQCOMPRASET_DELETE_ENTITY
    redefinition .
  methods REQCOMPRASET_GET_ENTITYSET
    redefinition .
  methods REQCOMPRASET_UPDATE_ENTITY
    redefinition .
  methods REQUISITANTESSET_GET_ENTITYSET
    redefinition .
  methods TIPODOCUMENTOSET_GET_ENTITYSET
    redefinition .
  methods USUARIOSET_GET_ENTITY
    redefinition .
  methods USUARIOSET_GET_ENTITYSET
    redefinition .
  methods VALIDACONTRATOSE_GET_ENTITY
    redefinition .
  methods VALIDACONTRATOSE_GET_ENTITYSET
    redefinition .
  methods VALIDAFOLHASERVI_GET_ENTITY
    redefinition .
  methods VALIDAITEMCONTRA_GET_ENTITYSET
    redefinition .
  methods VALIDANUMEROPEDI_GET_ENTITY
    redefinition .
  methods VALIDAREQUISICAO_GET_ENTITY
    redefinition .
  methods REQCOMPRAITEMSET_CREATE_ENTITY
    redefinition .
private section.

  methods REQCOMPRA_DEEP_ENTITY
    importing
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_EXPAND type ref to /IWBEP/IF_MGW_ODATA_EXPAND
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C
    exporting
      !ER_DEEP_ENTITY type ZCL_ZGSD_PRODUTOS_MPC_EXT=>TS_REQCOMPRADEEP
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods PEDIDO_DEEP_ENTITY
    importing
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_EXPAND type ref to /IWBEP/IF_MGW_ODATA_EXPAND
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C
    exporting
      !ER_DEEP_ENTITY type ZCL_ZGSD_PRODUTOS_MPC_EXT=>TS_PEDIDODEEP
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods FOLHASERVICO_DEEP_ENTITY
    importing
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_EXPAND type ref to /IWBEP/IF_MGW_ODATA_EXPAND
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C
    exporting
      !ER_DEEP_ENTITY type ZCL_ZGSD_PRODUTOS_MPC_EXT=>TS_FOLHASERVICODEEP
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods CENTRO_MATERIAL_DEEP_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION
      !IS_PAGING type /IWBEP/S_MGW_PAGING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IT_ORDER type /IWBEP/T_MGW_SORTING_ORDER
      !IV_FILTER_STRING type STRING
      !IV_SEARCH_STRING type STRING
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET
    exporting
      !ET_ENTITYSET type ZCL_ZGSD_PRODUTOS_MPC_EXT=>TT_CENTRO_MATERIAL_DEEP
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT .
ENDCLASS.



CLASS ZCL_ZGSD_PRODUTOS_DPC_EXT IMPLEMENTATION.


  METHOD /iwbep/if_mgw_appl_srv_runtime~create_deep_entity.

    CASE iv_entity_name.
      WHEN 'ReqCompra'.

        DATA: ls_deep_entity_req TYPE zcl_zgsd_produtos_mpc_ext=>ts_reqcompradeep.

        me->reqcompra_deep_entity(
          EXPORTING
            io_data_provider        = io_data_provider
            it_key_tab              = it_key_tab
            it_navigation_path      = it_navigation_path
            io_expand               = io_expand
            io_tech_request_context = io_tech_request_context
          IMPORTING
            er_deep_entity          = ls_deep_entity_req
        ).

        copy_data_to_ref(
          EXPORTING
            is_data = ls_deep_entity_req
          CHANGING
            cr_data = er_deep_entity
        ).

      WHEN 'Pedido'.

        DATA: ls_deep_entity_pedido TYPE zcl_zgsd_produtos_mpc_ext=>ts_pedidodeep.

        me->pedido_deep_entity(
          EXPORTING
            io_data_provider        = io_data_provider
            it_key_tab              = it_key_tab
            it_navigation_path      = it_navigation_path
            io_expand               = io_expand
            io_tech_request_context = io_tech_request_context
          IMPORTING
            er_deep_entity          = ls_deep_entity_pedido
        ).

        copy_data_to_ref(
          EXPORTING
            is_data = ls_deep_entity_pedido
          CHANGING
            cr_data = er_deep_entity
        ).

      WHEN 'FolhaServico'.

        DATA: ls_deep_entity_folha_servico TYPE zcl_zgsd_produtos_mpc_ext=>ts_folhaservicodeep.

        me->folhaservico_deep_entity(
          EXPORTING
            io_data_provider        = io_data_provider
            it_key_tab              = it_key_tab
            it_navigation_path      = it_navigation_path
            io_expand               = io_expand
            io_tech_request_context = io_tech_request_context
          IMPORTING
            er_deep_entity          = ls_deep_entity_folha_servico
        ).

        copy_data_to_ref(
          EXPORTING
            is_data = ls_deep_entity_folha_servico
          CHANGING
            cr_data = er_deep_entity
        ).

    ENDCASE.


  ENDMETHOD.


  METHOD /iwbep/if_mgw_appl_srv_runtime~get_expanded_entityset.

    CASE iv_entity_name.

      WHEN 'Centro'.

        READ TABLE io_expand->get_children( )
          TRANSPORTING NO FIELDS WITH KEY tech_nav_prop_name = 'MATERIALSERVICOSET'.

        IF sy-subrc IS INITIAL.

          DATA: lt_centros_materiais TYPE zcl_zgsd_produtos_mpc_ext=>tt_centro_material_deep.

          me->centro_material_deep_entity(
            EXPORTING
              iv_entity_name           = iv_entity_name
              iv_entity_set_name       = iv_entity_set_name
              iv_source_name           = iv_source_name
              it_filter_select_options = it_filter_select_options
              is_paging                = is_paging
              it_key_tab               = it_key_tab
              it_navigation_path       = it_navigation_path
              it_order                 = it_order
              iv_filter_string         = iv_filter_string
              iv_search_string         = iv_search_string
              io_tech_request_context  = io_tech_request_context
            IMPORTING
              et_entityset             = lt_centros_materiais
              es_response_context      = es_response_context
          ).

        ENDIF.

        copy_data_to_ref(
          EXPORTING
            is_data = lt_centros_materiais
          CHANGING
            cr_data = er_entityset
        ).

      WHEN 'DiagramaRede'.

        DATA: diagramaredeset_get_entityset TYPE zcl_zgsd_produtos_mpc=>tt_diagramarede.

        diagramaredeset_get_entityset(
          EXPORTING
           iv_entity_name           = iv_entity_name
           iv_entity_set_name       = iv_entity_set_name
           iv_source_name           = iv_source_name
           it_filter_select_options = it_filter_select_options
           it_order                 = it_order
           is_paging                = is_paging
           it_navigation_path       = it_navigation_path
           it_key_tab               = it_key_tab
           iv_filter_string         = iv_filter_string
           iv_search_string         = iv_search_string
           io_tech_request_context  = io_tech_request_context
         IMPORTING
           et_entityset             = diagramaredeset_get_entityset
           es_response_context      = es_response_context
         ).

        copy_data_to_ref(
          EXPORTING
            is_data = diagramaredeset_get_entityset
          CHANGING
            cr_data = er_entityset
        ).

      WHEN 'Operacao'.

        DATA: operacaoset_get_entityset TYPE zcl_zgsd_produtos_mpc=>tt_operacao.

        operacaoset_get_entityset(
          EXPORTING
           iv_entity_name           = iv_entity_name
           iv_entity_set_name       = iv_entity_set_name
           iv_source_name           = iv_source_name
           it_filter_select_options = it_filter_select_options
           it_order                 = it_order
           is_paging                = is_paging
           it_navigation_path       = it_navigation_path
           it_key_tab               = it_key_tab
           iv_filter_string         = iv_filter_string
           iv_search_string         = iv_search_string
           io_tech_request_context  = io_tech_request_context
         IMPORTING
           et_entityset             = operacaoset_get_entityset
           es_response_context      = es_response_context
         ).

        copy_data_to_ref(
          EXPORTING
            is_data = operacaoset_get_entityset
          CHANGING
            cr_data = er_entityset
        ).

     WHEN 'ValidaContrato'.

       DATA: validacontratose_get_entityset TYPE zcl_zgsd_produtos_mpc=>tt_validacontrato.

       validacontratose_get_entityset(
        EXPORTING
          iv_entity_name           = iv_entity_name
          iv_entity_set_name       = iv_entity_set_name
          iv_source_name           = iv_source_name
          it_filter_select_options = it_filter_select_options
          it_order                 = it_order
          is_paging                = is_paging
          it_navigation_path       = it_navigation_path
          it_key_tab               = it_key_tab
          iv_filter_string         = iv_filter_string
          iv_search_string         = iv_search_string
          io_tech_request_context  = io_tech_request_context
       IMPORTING
          et_entityset             = validacontratose_get_entityset
          es_response_context      = es_response_context
       ).

       copy_data_to_ref(
        EXPORTING
          is_data = validacontratose_get_entityset
        CHANGING
          cr_data = er_entityset
       ).

     WHEN 'ValidaItemContrato'.

       DATA: validaitemcontra_get_entityset TYPE zcl_zgsd_produtos_mpc=>tt_validaitemcontrato.

       validaitemcontra_get_entityset(
        EXPORTING
          iv_entity_name           = iv_entity_name
          iv_entity_set_name       = iv_entity_set_name
          iv_source_name           = iv_source_name
          it_filter_select_options = it_filter_select_options
          it_order                 = it_order
          is_paging                = is_paging
          it_navigation_path       = it_navigation_path
          it_key_tab               = it_key_tab
          iv_filter_string         = iv_filter_string
          iv_search_string         = iv_search_string
          io_tech_request_context  = io_tech_request_context
       IMPORTING
          et_entityset             = validaitemcontra_get_entityset
          es_response_context      = es_response_context
       ).

       copy_data_to_ref(
        EXPORTING
          is_data = validaitemcontra_get_entityset
        CHANGING
          cr_data = er_entityset
       ).

    ENDCASE.

  ENDMETHOD.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~PATCH_ENTITY.

    CASE iv_entity_name.

      WHEN 'Pedido'.

        DATA: ls_deep_entity_pedido TYPE zcl_zgsd_produtos_mpc_ext=>ts_pedido.

        me->pedidoset_update_entity(
          EXPORTING
            iv_entity_name          = iv_entity_name
            iv_entity_set_name      = iv_entity_set_name
            iv_source_name          = iv_source_name
            it_key_tab              = it_key_tab
            io_tech_request_context = io_tech_request_context
            it_navigation_path      = it_navigation_path                 " table of navigation paths
            io_data_provider        = io_data_provider
          IMPORTING
            er_entity               = ls_deep_entity_pedido
        ).

        copy_data_to_ref(
          EXPORTING
            is_data = ls_deep_entity_pedido
          CHANGING
            cr_data = er_entity
        ).

      WHEN 'PedidoItem'.

        DATA: ls_deep_entity_item TYPE zcl_zgsd_produtos_mpc_ext=>ts_pedidoitem.

        me->pedidoitemset_update_entity(
          EXPORTING
            iv_entity_name          = iv_entity_name
            iv_entity_set_name      = iv_entity_set_name
            iv_source_name          = iv_source_name
            it_key_tab              = it_key_tab
            io_tech_request_context = io_tech_request_context
            it_navigation_path      = it_navigation_path
            io_data_provider        = io_data_provider
          IMPORTING
            er_entity               = ls_deep_entity_item
        ).

        copy_data_to_ref(
          EXPORTING
            is_data = ls_deep_entity_pedido
          CHANGING
            cr_data = er_entity
        ).

      WHEN 'ReqCompra'.

        DATA: ls_deep_entity_req TYPE zcl_zgsd_produtos_mpc_ext=>ts_reqcompra.

        me->reqcompraset_update_entity(
          EXPORTING
            iv_entity_name          = iv_entity_name
            iv_entity_set_name      = iv_entity_set_name
            iv_source_name          = iv_source_name
            it_key_tab              = it_key_tab
            io_tech_request_context = io_tech_request_context
            it_navigation_path      = it_navigation_path
            io_data_provider        = io_data_provider
          IMPORTING
            er_entity               = ls_deep_entity_req
        ).

        copy_data_to_ref(
          EXPORTING
            is_data = ls_deep_entity_req
          CHANGING
            cr_data = er_entity
        ).

      WHEN 'ReqCompraItem'.

        DATA: ls_deep_entity_reqitem TYPE zcl_zgsd_produtos_mpc_ext=>ts_reqcompraitem.

        me->reqcompraitemset_update_entity(
          EXPORTING
            iv_entity_name          = iv_entity_name
            iv_entity_set_name      = iv_entity_set_name
            iv_source_name          = iv_source_name
            it_key_tab              = it_key_tab
            io_tech_request_context = io_tech_request_context
            it_navigation_path      = it_navigation_path
            io_data_provider        = io_data_provider
          IMPORTING
            er_entity               = ls_deep_entity_reqitem
        ).

       copy_data_to_ref(
          EXPORTING
            is_data = ls_deep_entity_reqitem
          CHANGING
            cr_data = er_entity
        ).

    ENDCASE.

  endmethod.


  METHOD anexoset_create_entity.

    DATA: ls_data       TYPE                   zst_dados_anexo,
          lt_return     TYPE STANDARD TABLE OF bapiret2,
          lo_message    TYPE REF TO            /iwbep/cl_mgw_msg_container,
          lo_insert_doc TYPE REF TO            zcl_insert_document_gos.

    io_data_provider->read_entry_data(
      IMPORTING
        es_data = ls_data
    ).

    IF ls_data-base64        IS NOT INITIAL AND
       ls_data-name_file     IS NOT INITIAL AND
       ls_data-type          IS NOT INITIAL AND
       ls_data-type_document IS NOT INITIAL AND
       ls_data-po_number     IS NOT INITIAL.

      CREATE OBJECT lo_insert_doc.

      lo_insert_doc->execute(
        EXPORTING
          data   = ls_data
        IMPORTING
          return = lt_return
      ).

      IF lt_return IS INITIAL.

        me->mo_context->get_message_container( )->add_message_text_only(
          EXPORTING
            iv_msg_type               = 'S'
            iv_msg_text               = 'Arquivo inserido com sucesso!!!'
            iv_add_to_response_header = abap_true
        ).

        er_entity-po_number = ls_data-po_number.

      ELSE.

         lo_message->get_mgw_msg_container( )->add_messages_from_bapi(
           EXPORTING
             it_bapi_messages = lt_return
         ).

         RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
          EXPORTING
            message_container = lo_message.

      ENDIF.

    ELSE.

      me->mo_context->get_message_container( )->add_message(
          EXPORTING
            iv_msg_type    = 'E'
            iv_msg_id      = 'ZMM'
            iv_msg_number  = '003'
            iv_msg_v1      = 'Campos necessários vazios!!!' ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          message_container = me->mo_context->get_message_container( ).

    ENDIF.

  ENDMETHOD.


  METHOD aprovadoresset_get_entityset.

    DATA: ls_entityset TYPE zcl_zgsd_produtos_mpc=>ts_aprovadores.

    SELECT afnam, rarea, respo
      FROM ztb_mm_req_name
      INTO TABLE @DATA(it_aprovadores).

    MOVE-CORRESPONDING it_aprovadores[] TO et_entityset[].

    IF et_entityset IS INITIAL.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum aprovador encontrado' ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          message_container = me->mo_context->get_message_container( ).

    ENDIF.

  ENDMETHOD.


  METHOD ativoimobilizado_get_entityset.

    DATA: ls_entityset   TYPE zcl_zgsd_produtos_mpc=>ts_ativoimobilizado,
          lv_ktopl       TYPE t001-ktopl VALUE 'SPIC',
          lv_deakt       TYPE anla-deakt VALUE '00000000',
          lv_active(5)   TYPE c VALUE 'Ativo',
          lv_inactive(7) TYPE c VALUE 'Inativo',
          lv_top         TYPE i,
          lv_skip        TYPE i,
          lv_tablesize   TYPE i.

    DATA: lr_bukrs TYPE RANGE OF bukrs,
          ls_bukrs LIKE LINE OF lr_bukrs.

    READ TABLE it_filter_select_options INTO DATA(ls_filter) WITH KEY property = 'IdSap'.
    IF sy-subrc IS INITIAL.

      LOOP AT ls_filter-select_options INTO DATA(ls_options).
        MOVE-CORRESPONDING ls_options TO ls_bukrs.
        APPEND ls_bukrs TO lr_bukrs.
      ENDLOOP.

    ENDIF.

    lv_top  = io_tech_request_context->get_top( ).
    lv_skip = io_tech_request_context->get_skip( ).

    SELECT FROM t001
     INNER JOIN anla ON anla~bukrs = t001~bukrs
      LEFT JOIN anlz ON anlz~bukrs = anla~bukrs
                    AND anlz~anln1 = anla~anln1
          FIELDS t001~bukrs,
                 anla~anln1,
                 anla~txt50,
                 anla~deakt,
                 anlz~werks
           WHERE t001~bukrs IN @lr_bukrs
             AND t001~ktopl EQ @lv_ktopl
             AND anla~deakt EQ @lv_deakt
        ORDER BY anla~bukrs, anla~anln1 ASCENDING
      INTO TABLE @DATA(it_ativoimobilizado)
          OFFSET @lv_skip
           UP TO @lv_top ROWS.

    IF it_ativoimobilizado IS NOT INITIAL.

      LOOP AT it_ativoimobilizado INTO DATA(ls_ativoimobilizado).

        ls_entityset-bukrs  = ls_ativoimobilizado-bukrs.
        ls_entityset-anln1  = ls_ativoimobilizado-anln1.
        ls_entityset-butxt  = ls_ativoimobilizado-txt50.
        ls_entityset-werks  = ls_ativoimobilizado-werks.

        ls_entityset-status = COND #( WHEN ls_ativoimobilizado-deakt = lv_deakt
                                      THEN lv_active
                                      ELSE lv_inactive ).

        APPEND ls_entityset TO et_entityset.

      ENDLOOP.

    ELSE.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum ativo encontrado' ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          message_container = me->mo_context->get_message_container( ).

    ENDIF.

  ENDMETHOD.


  METHOD centrocustoset_get_entityset.

    DATA: ls_entityset TYPE  zcl_zgsd_produtos_mpc=>ts_centrocusto,
          lv_ktopl     TYPE t001-ktopl VALUE 'SPIC'.

    DATA: lr_bukrs TYPE RANGE OF bukrs,
          ls_bukrs LIKE LINE OF lr_bukrs.

    READ TABLE it_filter_select_options INTO DATA(ls_filter) WITH KEY property = 'IdSap'.
    IF sy-subrc IS INITIAL.

      LOOP AT ls_filter-select_options INTO DATA(ls_options).
        MOVE-CORRESPONDING ls_options TO ls_bukrs.
        APPEND ls_bukrs TO lr_bukrs.
      ENDLOOP.
    ENDIF.

    SELECT DISTINCT csks~bukrs, csks~kostl, ltext
      FROM csks
      INNER JOIN cskt ON cskt~spras = @sy-langu AND csks~kokrs = cskt~kokrs AND csks~kostl = cskt~kostl AND csks~datbi = cskt~datbi
        INNER JOIN t001 ON csks~bukrs = t001~bukrs
      INTO TABLE @DATA(it_centrocusto)
      WHERE t001~ktopl = @lv_ktopl
      AND csks~bukrs IN @lr_bukrs.

    LOOP AT it_centrocusto INTO DATA(ls_centrocusto).

      ls_entityset-bukrs = ls_centrocusto-bukrs.
      ls_entityset-kostl = ls_centrocusto-kostl.
      ls_entityset-butxt  = ls_centrocusto-ltext.

      APPEND ls_entityset TO et_entityset.

    ENDLOOP.

    IF et_entityset is INITIAL.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum centro de custo encontrado' ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          message_container = me->mo_context->get_message_container( ).      .

    ENDIF.


  ENDMETHOD.


  METHOD centroset_get_entity.

    DATA: lv_ktopl TYPE t001-ktopl VALUE 'SPIC',
          ls_bukrs TYPE bukrs,
          ls_werks TYPE werks_d,
          ls_key   TYPE /iwbep/s_mgw_name_value_pair.

    TRY.
      ls_bukrs = it_key_tab[ name = 'IdSap' ]-value.
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.

    TRY.
      ls_werks = it_key_tab[ name = 'IdSapCentro' ]-value.
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.

    SELECT SINGLE werks, name1, t001w~bwkey, t001k~bukrs
             FROM t001w
       INNER JOIN t001k ON t001w~bwkey = t001k~bwkey
       INNER JOIN t001  ON t001k~bukrs = t001~bukrs
       INTO @DATA(ls_centro)
            WHERE t001~ktopl  EQ @lv_ktopl
              AND t001~bukrs  EQ @ls_bukrs
              AND t001w~werks EQ @ls_werks.

    IF ls_centro IS NOT INITIAL.

      er_entity-bukrs = ls_centro-bukrs.
      er_entity-werks = ls_centro-werks.
      er_entity-butxt = ls_centro-name1.

    ELSE.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum centro encontrado' ).

    ENDIF.

  ENDMETHOD.


  METHOD centroset_get_entityset.

    DATA: ls_entityset TYPE zcl_zgsd_produtos_mpc=>ts_centro,
          lv_ktopl     TYPE t001-ktopl VALUE 'SPIC'.

    DATA: lr_bukrs   TYPE RANGE OF bukrs,
          lr_werks   TYPE RANGE OF werks_d,
          ls_bukrs   LIKE LINE OF  lr_bukrs,
          ls_werks   LIKE LINE OF  lr_werks,
          ls_filter  TYPE /iwbep/s_mgw_select_option,
          ls_options TYPE /iwbep/s_cod_select_option.

    READ TABLE it_filter_select_options INTO ls_filter WITH KEY property = 'IdSap'.
    IF sy-subrc IS INITIAL.

      LOOP AT ls_filter-select_options INTO ls_options.
        MOVE-CORRESPONDING ls_options TO ls_bukrs.
        APPEND ls_bukrs TO lr_bukrs.
      ENDLOOP.

    ENDIF.

    READ TABLE it_filter_select_options INTO ls_filter WITH KEY property = 'IdSapCentro'.
    IF sy-subrc IS INITIAL.

      LOOP AT ls_filter-select_options INTO ls_options.
        MOVE-CORRESPONDING ls_options TO ls_werks.
        APPEND ls_werks TO lr_werks.
      ENDLOOP.

    ENDIF.

    SELECT werks, name1, t001w~bwkey, t001k~bukrs
      FROM t001w
      INNER JOIN t001k ON t001w~bwkey = t001k~bwkey
      INNER JOIN t001  ON t001k~bukrs = t001~bukrs
      INTO TABLE @DATA(it_centros)
      WHERE t001~ktopl  EQ @lv_ktopl
        AND t001~bukrs  IN @lr_bukrs
        AND t001w~werks IN @lr_werks.

    LOOP AT it_centros INTO DATA(ls_centro).

      ls_entityset-bukrs = ls_centro-bukrs.
      ls_entityset-werks = ls_centro-werks.
      ls_entityset-butxt = ls_centro-name1.
      APPEND ls_entityset TO et_entityset.

    ENDLOOP.

    IF et_entityset IS INITIAL.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum centro encontrado' ).

    ENDIF.


  ENDMETHOD.


  METHOD CENTRO_MATERIAL_DEEP_ENTITY.

    CONSTANTS: lc_type       TYPE string VALUE 'ZDIE',
               lc_service    TYPE string VALUE 'Serviço',
               lc_material   TYPE string VALUE 'Material',
               lc_active     TYPE string VALUE 'Ativo',
               lc_inactive   TYPE string VALUE 'Inativo'.

    DATA: ls_entityset       TYPE zcl_zgsd_produtos_mpc_ext=>ts_centro_material_deep,
          ls_entity_material TYPE zcl_zgsd_produtos_mpc=>ts_materialservico,
          ls_filter          TYPE /iwbep/s_mgw_select_option,
          ls_options         TYPE /iwbep/s_cod_select_option,

          lr_werks           TYPE RANGE OF werks_d,
          ls_werks           LIKE LINE OF  lr_werks,

          lv_ktopl           TYPE t001-ktopl VALUE 'SPIC',
          lv_top             TYPE i,
          lv_skip            TYPE i.

    READ TABLE it_filter_select_options INTO ls_filter WITH KEY property = 'IdSapCentro'.
    IF sy-subrc IS INITIAL.

      LOOP AT ls_filter-select_options INTO ls_options.
        MOVE-CORRESPONDING ls_options TO ls_werks.
        APPEND ls_werks TO lr_werks.
      ENDLOOP.

    ENDIF.

    lv_top  = is_paging-top.
    lv_skip = is_paging-skip.

    SELECT FROM t001w
     INNER JOIN t001k ON t001w~bwkey = t001k~bwkey
     INNER JOIN t001  ON t001k~bukrs = t001~bukrs
         FIELDS t001w~werks,
                t001w~name1,
                t001w~bwkey,
                t001k~bukrs
          WHERE t001~ktopl  EQ @lv_ktopl
            AND t001w~werks IN @lr_werks
       ORDER BY t001~bukrs, t001w~werks ASCENDING
     INTO TABLE @DATA(lt_centros).

    IF lt_centros IS NOT INITIAL.

      CLEAR lr_werks.
      lr_werks = VALUE #( FOR ls_range IN lt_centros ( sign   = 'I'
                                                       option = 'EQ'
                                                       low    = ls_range-werks ) ).

      IF lr_werks IS NOT INITIAL.

        SELECT FROM marc
         INNER JOIN mara ON mara~matnr EQ marc~matnr
                        AND mara~lvorm NE @abap_true
         INNER JOIN makt ON makt~matnr EQ mara~matnr
                        AND makt~spras EQ 'P'
             FIELDS marc~werks,
                    marc~steuc,
                    mara~matnr,
                    mara~mtart,
                    mara~lvorm,
                    makt~maktx
              WHERE marc~werks IN @lr_werks
           ORDER BY marc~werks, mara~matnr ASCENDING
         INTO TABLE @DATA(lt_material)
             OFFSET @lv_skip
              UP TO @lv_top ROWS.

        IF lt_material IS NOT INITIAL.

          LOOP AT lt_centros INTO DATA(ls_centros).

            ls_entityset-bukrs = ls_centros-bukrs.
            ls_entityset-werks = ls_centros-werks.
            ls_entityset-butxt = ls_centros-name1.

            LOOP AT lt_material INTO DATA(ls_material) WHERE werks = ls_entityset-werks.

              ls_entity_material       = CORRESPONDING #( ls_material ).

              ls_entity_material-lvorm = COND #( WHEN ls_material-lvorm = abap_true
                                                 THEN lc_inactive
                                                 ELSE lc_active ).

              ls_entity_material-mtart = COND #( WHEN ls_material-mtart = lc_type
                                                 THEN |{ ls_material-mtart } - { lc_service }|
                                                 ELSE |{ ls_material-mtart } - { lc_material }| ).

              APPEND ls_entity_material TO ls_entityset-materialservicoset.

            ENDLOOP.

            APPEND ls_entityset TO et_entityset.

            CLEAR: ls_entityset, ls_entity_material.

          ENDLOOP.

        ENDIF.

      ENDIF.

    ENDIF.

    IF et_entityset IS INITIAL.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum dado encontrado' ).

    ENDIF.

  ENDMETHOD.


  method DEPARTAMENTOSET_GET_ENTITYSET.
**TRY.
*CALL METHOD SUPER->DEPARTAMENTOSET_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  IMPORTING
**    et_entityset             =
**    es_response_context      =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
  endmethod.


  method DIAGRAMAREDESET_GET_ENTITY.

    DATA: ls_bukrs TYPE bukrs,
          lv_ktopl TYPE t001-ktopl VALUE 'SPIC'.

    ls_bukrs = it_key_tab[ 1 ]-value.

    SELECT SINGLE aufk~aufnr, aufk~bukrs, aufk~ktext
             FROM aufk
       INNER JOIN t001 ON aufk~bukrs = t001~bukrs
       INTO @DATA(ls_diagramaredes)
            WHERE t001~ktopl EQ @lv_ktopl
              AND aufk~bukrs EQ @ls_bukrs.

    IF ls_diagramaredes IS NOT INITIAL.

      er_entity-bukrs = ls_diagramaredes-bukrs.
      er_entity-aufnr = ls_diagramaredes-aufnr.
      er_entity-butxt = ls_diagramaredes-ktext.

    ELSE.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum diagrama de rede encontrado' ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          message_container = me->mo_context->get_message_container( ).

    ENDIF.

  endmethod.


  METHOD diagramaredeset_get_entityset.

    DATA: ls_entityset TYPE  zcl_zgsd_produtos_mpc=>ts_diagramarede,
          lv_ktopl     TYPE t001-ktopl VALUE 'SPIC'.

    DATA: lr_bukrs TYPE RANGE OF bukrs,
          ls_bukrs LIKE LINE OF lr_bukrs.

    READ TABLE it_filter_select_options INTO DATA(ls_filter) WITH KEY property = 'IdSap'.
    IF sy-subrc IS INITIAL.

      LOOP AT ls_filter-select_options INTO DATA(ls_options).
        MOVE-CORRESPONDING ls_options TO ls_bukrs.
        APPEND ls_bukrs TO lr_bukrs.
      ENDLOOP.
    ENDIF.

    SELECT aufk~aufnr, aufk~bukrs, aufk~ktext
      FROM aufk
      INNER JOIN t001 ON aufk~bukrs = t001~bukrs
      INTO TABLE @DATA(it_diagramaredes)
      WHERE t001~ktopl = @lv_ktopl
        AND aufk~bukrs IN @lr_bukrs.

    LOOP AT it_diagramaredes INTO DATA(ls_diagramarede).

      ls_entityset-bukrs = ls_diagramarede-bukrs.
      ls_entityset-aufnr = ls_diagramarede-aufnr.
      ls_entityset-butxt = ls_diagramarede-ktext.

      APPEND ls_entityset TO et_entityset.

    ENDLOOP.

    IF et_entityset is INITIAL.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum diagrama de rede encontrado' ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          message_container = me->mo_context->get_message_container( ).      .

    ENDIF.


  ENDMETHOD.


  METHOD empresaset_get_entityset.

    DATA: ls_entityset TYPE  zcl_zgsd_produtos_mpc=>ts_empresa,
          lv_ktopl     TYPE t001-ktopl VALUE 'SPIC'.

    DATA: lr_bukrs TYPE RANGE OF bukrs,
          ls_bukrs LIKE LINE OF lr_bukrs.

    READ TABLE it_filter_select_options INTO DATA(ls_filter) WITH KEY property = 'IdSap'.
    IF sy-subrc IS INITIAL.

      LOOP AT ls_filter-select_options INTO DATA(ls_options).
        MOVE-CORRESPONDING ls_options TO ls_bukrs.
        APPEND ls_bukrs TO lr_bukrs.
      ENDLOOP.
    ENDIF.

    SELECT t001~bukrs, t001~butxt, t001z~paval
      FROM t001
      LEFT JOIN t001z ON t001~bukrs = t001z~bukrs AND t001z~party = 'J_1BCG'
      INTO TABLE @DATA(it_empresas)
      WHERE t001~bukrs IN @lr_bukrs
      and t001~ktopl = @lv_ktopl.

    LOOP AT it_empresas INTO DATA(ls_empresa).

      ls_entityset-bukrs = ls_empresa-bukrs.
*      ls_entityset-STATUS
      ls_entityset-butxt2 = ls_entityset-butxt = ls_empresa-butxt.
      ls_entityset-stcd1 = ls_empresa-paval.

      APPEND ls_entityset TO et_entityset.

    ENDLOOP.

  ENDMETHOD.


  METHOD folhaservicoset_delete_entity.

    DATA: lv_serviceentrysheet TYPE mmpur_ses_serviceentrysheet,
          o_folha_servico      TYPE REF TO zclmm_folha_servico.

    lv_serviceentrysheet = it_key_tab[ 1 ]-value.
    lv_serviceentrysheet = |{ lv_serviceentrysheet ALPHA = IN }|.

    SELECT SINGLE
      FROM mmpur_ses_header AS mm
    FIELDS mm~serviceentrysheet,
           mm~approvalstatus,
           mm~deletioncode
     WHERE mm~serviceentrysheet EQ @lv_serviceentrysheet
      INTO @DATA(ls_mmpur_header).

    IF ls_mmpur_header IS NOT INITIAL.

      CREATE OBJECT o_folha_servico.

      CALL METHOD o_folha_servico->elimina_folha_servico
        EXPORTING
          serviceentrysheet = lv_serviceentrysheet
        EXCEPTIONS
          not_deleted       = 1
          OTHERS            = 2.

      IF sy-subrc <> 0.

        me->mo_context->get_message_container( )->add_message(
           EXPORTING
             iv_msg_type    = 'E'
             iv_msg_id      = 'ZMM'
             iv_msg_number  = '003'
             iv_msg_v1      = 'Erro ao eliminar a folha de serviço' ).

        RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
          EXPORTING
            http_status_code  = 404
            message_container = me->mo_context->get_message_container( ).

      ENDIF.

    ELSE.

      me->mo_context->get_message_container( )->add_message(
         EXPORTING
           iv_msg_type    = 'E'
           iv_msg_id      = 'ZMM'
           iv_msg_number  = '003'
           iv_msg_v1      = 'Nenhuma folha de serviço encontrado' ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          http_status_code  = 404
          message_container = me->mo_context->get_message_container( ).

    ENDIF.


  ENDMETHOD.


  METHOD folhaservico_deep_entity.

    DATA: ls_deep_entity       TYPE zcl_zgsd_produtos_mpc_ext=>ts_folhaservicodeep,
          o_folha_servico      TYPE REF TO zclmm_folha_servico,
          ls_folha_servico     TYPE zst_folha_servico,
          lt_folha_servio_item TYPE ztt_folha_servico_item,
          lt_return	TYPE bapirettab.


    CREATE OBJECT o_folha_servico.

    io_data_provider->read_entry_data(
    IMPORTING
       es_data = ls_deep_entity ).

    IF ls_deep_entity IS NOT INITIAL.

      TRANSLATE ls_deep_entity-postingdate USING '- '.
      CONDENSE ls_deep_entity-postingdate NO-GAPS.

      MOVE-CORRESPONDING ls_deep_entity TO ls_folha_servico.

      LOOP AT ls_deep_entity-items ASSIGNING FIELD-SYMBOL(<fs_folha_servico_item>).
        TRANSLATE <fs_folha_servico_item>-performancedate USING '- '.
        CONDENSE <fs_folha_servico_item>-performancedate NO-GAPS.
      ENDLOOP.

      MOVE-CORRESPONDING ls_deep_entity-items[] TO lt_folha_servio_item.

      CALL METHOD o_folha_servico->cria_folha_servico
        EXPORTING
          folha_servico      = ls_folha_servico
          folha_servico_item = lt_folha_servio_item
        IMPORTING
          serviceentrysheet  = ls_deep_entity-serviceentrysheet
          return = lt_return
        EXCEPTIONS
          not_created        = 1
          OTHERS             = 2.


      READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

      IF sy-subrc IS NOT INITIAL AND ls_deep_entity-serviceentrysheet IS NOT INITIAL.

        LOOP AT ls_deep_entity-items ASSIGNING FIELD-SYMBOL(<fs_item>).
          <fs_item>-serviceentrysheet = ls_deep_entity-serviceentrysheet.
        ENDLOOP.

        er_deep_entity = ls_deep_entity.


      ELSE.

        DATA: lt_errors TYPE STANDARD TABLE OF bapiret2.

        " Collect Errors
        LOOP AT lt_return ASSIGNING FIELD-SYMBOL(<fs_return>) WHERE type = 'E'.
          APPEND <fs_return> TO lt_errors.
        ENDLOOP.


        IF lt_errors IS NOT INITIAL.
          DATA(lr_msg_cont) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).


          lr_msg_cont->add_messages_from_bapi(
            EXPORTING
              it_bapi_messages          = lt_errors    " Return parameter table
          ).
          RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
            EXPORTING
              message_container = lr_msg_cont.
        ENDIF.

      ENDIF.

    ENDIF.


  ENDMETHOD.


  METHOD fornecedoresset_get_entity.

    DATA: ls_lifnr TYPE lifnr.

    ls_lifnr = it_key_tab[ 1 ]-value.

    SELECT SINGLE FROM lfa1 AS l
        LEFT JOIN adr6 AS a ON a~addrnumber = l~adrnr
                           AND a~home_flag = @abap_true
           FIELDS l~lifnr,
                  l~name1,
                  l~name3,
                  l~stcd1,
                  l~adrnr,
                  l~stras,
                  l~pstlz,
                  l~ort02,
                  l~regio,
                  l~telf1,
                  a~smtp_addr
            WHERE l~lifnr     = @ls_lifnr
       INTO @DATA(ls_supplier).

    IF ls_supplier IS NOT INITIAL.

      IF ls_supplier-stras IS NOT INITIAL.
        er_entity-endereco = ls_supplier-stras.
      ENDIF.

      IF ls_supplier-regio IS NOT INITIAL.
        er_entity-endereco = |{ er_entity-endereco } - { ls_supplier-regio }|.
      ENDIF.

      IF ls_supplier-pstlz IS NOT INITIAL.
        er_entity-endereco = |{ er_entity-endereco } - CEP:{ ls_supplier-pstlz }|.
      ENDIF.

      IF ls_supplier-ort02 IS NOT INITIAL.
        er_entity-endereco = |{ er_entity-endereco } - Bairro { ls_supplier-ort02 }|.
      ENDIF.

      er_entity = CORRESPONDING #( ls_supplier ).

    ENDIF.

  ENDMETHOD.


  METHOD fornecedoresset_get_entityset.

    DATA: lr_lifnr     TYPE RANGE OF lifnr,
          lr_stcd1     TYPE RANGE OF stcd1,
          ls_entityset LIKE LINE OF  et_entityset.

    IF it_filter_select_options IS NOT INITIAL.

      IF it_filter_select_options[ 1 ]-property EQ 'Cnpj'.

        lr_stcd1 = VALUE #( FOR ls_stcd1 IN it_filter_select_options ( sign   = 'I'
                                                                       option = 'EQ'
                                                                       low    = ls_stcd1-select_options[ sy-index ]-low ) ).

      ENDIF.

      IF it_filter_select_options[ 1 ]-property EQ 'IDSap'.

        lr_lifnr = VALUE #( FOR ls_filter IN it_filter_select_options ( sign   = 'I'
                                                                        option = 'EQ'
                                                                        low    = ls_filter-select_options[ sy-index ]-low ) ).

      ENDIF.

    ENDIF.

    SELECT FROM lfa1 AS l
      LEFT JOIN adr6 AS a ON a~addrnumber = l~adrnr
                         AND a~home_flag EQ @abap_true
         FIELDS l~lifnr,
                l~name1,
                l~name3,
                l~stcd1,
                l~adrnr,
                l~stras,
                l~pstlz,
                l~ort02,
                l~regio,
                l~telf1,
                a~smtp_addr
          WHERE l~lifnr     IN @lr_lifnr
            AND l~stcd1     IN @lr_stcd1
     INTO TABLE @DATA(lt_supplier).

    LOOP AT lt_supplier INTO DATA(ls_supplier).

      ls_entityset = CORRESPONDING #( ls_supplier ).

      IF ls_supplier-stras IS NOT INITIAL.
        ls_entityset-endereco = ls_supplier-stras.
      ENDIF.

      IF ls_supplier-regio IS NOT INITIAL.
        ls_entityset-endereco = |{ ls_entityset-endereco } - { ls_supplier-regio }|.
      ENDIF.

      IF ls_supplier-pstlz IS NOT INITIAL.
        ls_entityset-endereco = |{ ls_entityset-endereco } - CEP:{ ls_supplier-pstlz }|.
      ENDIF.

      IF ls_supplier-ort02 IS NOT INITIAL.
        ls_entityset-endereco = |{ ls_entityset-endereco } - Bairro { ls_supplier-ort02 }|.
      ENDIF.

      APPEND ls_entityset TO et_entityset.
      CLEAR: ls_entityset.

    ENDLOOP.

  ENDMETHOD.


  METHOD impostoivaset_get_entityset.

    DATA: lr_mwskz     TYPE RANGE OF mwskz,
          ls_entityset LIKE LINE OF  et_entityset.

    lr_mwskz = VALUE #( FOR ls_filter IN it_filter_select_options ( sign   = 'I'
                                                                    option = 'EQ'
                                                                    low    = ls_filter-select_options[ sy-tabix ]-low ) ).

    SELECT FROM t007a AS ta
     INNER JOIN t007s AS ts ON ts~kalsm = ta~kalsm
                           AND ts~mwskz = ta~mwskz
                           AND ts~spras = 'P'
         FIELDS ta~kalsm,
                ta~mwskz,
                ts~text1
          WHERE ta~mwskz IN @lr_mwskz
            AND ta~kalsm EQ 'TAXBRA'
     INTO TABLE @DATA(lt_impostos).

    IF lt_impostos IS NOT INITIAL.

      LOOP AT lt_impostos INTO DATA(ls_impostos).

        ls_entityset = CORRESPONDING #( ls_impostos ).

        APPEND ls_entityset TO et_entityset.

      ENDLOOP.

    ENDIF.

  ENDMETHOD.


  METHOD localestoqueset_get_entityset.

    DATA: ls_entityset TYPE  zcl_zgsd_produtos_mpc=>ts_localestoque,
          lv_ktopl     TYPE t001-ktopl VALUE 'SPIC'.

    DATA: lr_bukrs TYPE RANGE OF bukrs,
          lr_werks TYPE RANGE OF werks_d,
          ls_bukrs LIKE LINE OF lr_bukrs,
          ls_werks LIKE LINE OF lr_werks.

    "Filter in URL
    READ TABLE it_filter_select_options INTO DATA(ls_filter) WITH KEY property = 'IdSap'.
    IF sy-subrc IS INITIAL.

      LOOP AT ls_filter-select_options INTO DATA(ls_options).
        MOVE-CORRESPONDING ls_options TO ls_bukrs.
        APPEND ls_bukrs TO lr_bukrs.
      ENDLOOP.

    ENDIF.

    IF it_key_tab IS NOT INITIAL.

      "Association with API Centro
      TRY.

        ls_werks-low = it_key_tab[ name = 'IdSapCentro' ]-value.

        IF ls_werks-low IS NOT INITIAL.

          ls_werks-sign   = 'I'.
          ls_werks-option = 'EQ'.

          APPEND ls_werks TO lr_werks.

        ENDIF.

        CATCH cx_sy_itab_line_not_found.
      ENDTRY.

    ENDIF.

    SELECT t001l~werks, t001l~lgort, t001l~lgobe, t001w~bwkey, t001k~bukrs
      FROM t001l
      INNER JOIN t001w ON t001l~werks = t001w~werks
      INNER JOIN t001k ON t001w~bwkey = t001k~bwkey
      INNER JOIN t001 ON t001k~bukrs = t001~bukrs
      INTO TABLE @DATA(it_localestoques)
      WHERE t001~ktopl  EQ @lv_ktopl
        AND t001~bukrs  IN @lr_bukrs
        AND t001l~werks IN @lr_werks.

    LOOP AT it_localestoques INTO DATA(ls_localestoque).

      ls_entityset-bukrs = ls_localestoque-bukrs.
      ls_entityset-lgobe = ls_localestoque-lgort.
      ls_entityset-werks = ls_localestoque-werks.
      ls_entityset-butxt = ls_localestoque-lgobe.

      APPEND ls_entityset TO et_entityset.

    ENDLOOP.

    IF et_entityset IS INITIAL.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum local de estoque encontrado' ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          message_container = me->mo_context->get_message_container( ).      .

    ENDIF.

  ENDMETHOD.


  METHOD materialservicos_get_entity.

    CONSTANTS: lc_type      TYPE string VALUE 'ZDIE',
               lc_service   TYPE string VALUE 'Serviço',
               lc_material  TYPE string VALUE 'Material',
               lc_active    TYPE string VALUE 'Ativo',
               lc_inactive  TYPE string VALUE 'Inativo'.

    DATA: ls_matnr TYPE matnr.

    TRY.

      ls_matnr     = it_key_tab[ 1 ]-value.
      ls_matnr(18) = |{ ls_matnr ALPHA = IN }|.

      CATCH cx_sy_itab_line_not_found.
    ENDTRY.

    SELECT SINGLE FROM mara AS a
             LEFT JOIN makt AS b ON b~matnr = a~matnr
                                AND b~spras = @sy-langu(1)
             LEFT JOIN marc AS c ON c~matnr = a~matnr
                FIELDS a~matnr,
                       a~mtart,
                       a~lvorm,
                       b~maktx,
                       c~werks,
                       c~steuc
                 WHERE a~matnr EQ @ls_matnr
                   AND a~lvorm NE @abap_true
            INTO @DATA(ls_material).

    IF ls_material IS NOT INITIAL.

      er_entity       = CORRESPONDING #( ls_material ).

      er_entity-lvorm = COND #( WHEN ls_material-lvorm = abap_true
                                THEN lc_inactive
                                ELSE lc_active ).

      er_entity-mtart = COND #( WHEN ls_material-mtart = lc_type
                                THEN |{ ls_material-mtart } - { lc_service }|
                                ELSE |{ ls_material-mtart } - { lc_material }| ).

    ENDIF.

  ENDMETHOD.


  METHOD materialservicos_get_entityset.

    CONSTANTS: lc_type      TYPE string VALUE 'ZDIE',
               lc_service   TYPE string VALUE 'Serviço',
               lc_material  TYPE string VALUE 'Material',
               lc_active    TYPE string VALUE 'Ativo',
               lc_inactive  TYPE string VALUE 'Inativo'.

    DATA: lr_matnr     TYPE RANGE OF matnr,
          lr_werks     TYPE RANGE OF werks_d,
          ls_matnr     LIKE LINE OF  lr_matnr,
          ls_werks     LIKE LINE OF  lr_werks,
          ls_entityset LIKE LINE OF  et_entityset,
          lt_entityset TYPE          zcl_zgsd_produtos_mpc=>tt_materialservico,
          lv_top       TYPE          i,
          lv_skip      TYPE          i,
          lv_tablesize TYPE          i.

    IF it_filter_select_options IS NOT INITIAL.

      "Filter in URL
      LOOP AT it_filter_select_options INTO DATA(ls_filter) WHERE property = 'IdSap'.

        ls_matnr-sign    = 'I'.
        ls_matnr-option  = 'EQ'.
        ls_matnr-low     = ls_filter-select_options[ sy-index ]-low.
        ls_matnr-low(18) = |{ ls_matnr-low ALPHA = IN }|.

        APPEND ls_matnr TO lr_matnr.

      ENDLOOP.

    ENDIF.

    IF it_key_tab IS NOT INITIAL.

      "Association with API Centro
      TRY.

        ls_werks-low = it_key_tab[ name = 'IdSapCentro' ]-value.

        IF ls_werks-low IS NOT INITIAL.

          ls_werks-sign   = 'I'.
          ls_werks-option = 'EQ'.

          APPEND ls_werks TO lr_werks.

        ENDIF.

        CATCH cx_sy_itab_line_not_found.
      ENDTRY.

    ENDIF.

    lv_top  = io_tech_request_context->get_top( ).
    lv_skip = io_tech_request_context->get_skip( ).

    SELECT FROM mara AS a
     INNER JOIN makt AS b ON b~matnr = a~matnr
                         AND b~spras = 'P'
     INNER JOIN marc AS c ON c~matnr = a~matnr
         FIELDS a~matnr,
                a~mtart,
                a~lvorm,
                b~maktx,
                c~werks,
                c~steuc
          WHERE a~matnr IN @lr_matnr
            AND c~werks IN @lr_werks
       ORDER BY a~matnr, c~werks ASCENDING
     INTO TABLE @DATA(lt_material)
         OFFSET @lv_skip
          UP TO @lv_top ROWS.

    IF lt_material IS NOT INITIAL .

      LOOP AT lt_material INTO DATA(ls_material).

        ls_entityset       = CORRESPONDING #( ls_material ).

        ls_entityset-lvorm = COND #( WHEN ls_material-lvorm = abap_true
                                     THEN lc_inactive
                                     ELSE lc_active ).

        ls_entityset-mtart = COND #( WHEN ls_material-mtart = lc_type
                                     THEN |{ ls_material-mtart } - { lc_service }|
                                     ELSE |{ ls_material-mtart } - { lc_material }| ).

        APPEND ls_entityset TO et_entityset.

      ENDLOOP.

    ELSE.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum material ou serviço encontrado' ).

    ENDIF.

  ENDMETHOD.


  method MOEDASET_GET_ENTITY.

    DATA: ls_filter TYPE waers.

    ls_filter = it_key_tab[ 1 ]-value.

    SELECT SINGLE FROM tcurc AS curc
     INNER JOIN tcurt AS curt
             ON curt~waers = curc~waers
            AND curt~spras = @sy-langu
         FIELDS curc~waers,
                curc~isocd,               "Cifrão por enquanto
                curt~ktext
          WHERE curt~waers EQ @ls_filter
     INTO @DATA(ls_coin).

     IF ls_coin IS NOT INITIAL.

       er_entity        = CORRESPONDING #( ls_coin ).
       er_entity-cifrao = ls_coin-isocd.
       er_entity-status = 'Moeda Ativa'.

     ENDIF.

  endmethod.


  METHOD moedaset_get_entityset.

    DATA: lr_coin      TYPE RANGE OF waers,
          ls_entityset LIKE LINE OF  et_entityset.

    lr_coin = VALUE #( FOR ls_filter
                        IN it_filter_select_options ( sign   = 'I'
                                                      option = 'EQ'
                                                      low    = ls_filter-select_options[ sy-index ]-low ) ).

    SELECT FROM tcurc AS curc
     INNER JOIN tcurt AS curt
             ON curt~waers = curc~waers
            AND curt~spras = @sy-langu
         FIELDS curc~waers,
                curc~isocd,               "Cifrão por enquanto
                curt~ktext
          WHERE curt~waers IN @lr_coin
       ORDER BY curt~waers ASCENDING
     INTO TABLE @DATA(lt_coin).

     IF lt_coin IS NOT INITIAL.

      LOOP AT lt_coin INTO DATA(ls_coin).

        ls_entityset        = CORRESPONDING #( ls_coin ).
        ls_entityset-cifrao = ls_coin-isocd.
        ls_entityset-status = 'Moeda Ativa'.

        APPEND ls_entityset TO et_entityset.

      ENDLOOP.

     ENDIF.

  ENDMETHOD.


  METHOD numeropessoalset_get_entity.

    DATA: ls_pernr  TYPE p_pernr,
          lt_pa0105 TYPE STANDARD TABLE OF p0105.

    ls_pernr = it_key_tab[ 1 ]-value.

    SELECT SINGLE
             FROM pa0001 AS p
           FIELDS p~pernr,
                  p~begda,
                  p~endda,
                  p~ename
            WHERE p~pernr EQ @ls_pernr
              AND p~endda GE @sy-datum
       INTO @DATA(ls_pa0001).

    IF ls_pa0001 IS NOT INITIAL.

      er_entity = CORRESPONDING #( ls_pa0001 ).

      CALL FUNCTION 'HR_READ_SUBTYPE'
        EXPORTING
          pernr           = ls_pernr
          infty           = '0105'
          subty           = '0001'
          begda           = sy-datum
          endda           = sy-datum
        TABLES
          infty_tab       = lt_pa0105
        EXCEPTIONS
          infty_not_found = 1
          invalid_input   = 2
          OTHERS          = 3.

      IF sy-subrc IS INITIAL.
        READ TABLE lt_pa0105 INTO DATA(ls_pa0105) INDEX 1.
        er_entity-usrid = ls_pa0105-usrid.
      ENDIF.

    ELSE.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Usuário não existe ou está expirado!!!' ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          message_container = me->mo_context->get_message_container( ).

    ENDIF.

  ENDMETHOD.


  METHOD numeropessoalset_get_entityset.

    DATA: lr_pernr     TYPE RANGE OF p_pernr,
          ls_entityset LIKE LINE OF et_entityset,
          lt_pa0105    TYPE STANDARD TABLE OF p0105.

    lr_pernr = VALUE #( FOR ls_filter IN it_filter_select_options ( sign   = 'I'
                                                                    option = 'EQ'
                                                                    low    = ls_filter-select_options[ sy-index ]-low ) ).

    SELECT FROM pa0001 AS p
         FIELDS p~pernr,
                p~begda,
                p~endda,
                p~ename
          WHERE p~pernr IN @lr_pernr
            AND p~endda GE @sy-datum
     INTO TABLE @DATA(lt_pa0001).

    IF lt_pa0001 IS NOT INITIAL.

      LOOP AT lt_pa0001 INTO DATA(ls_pa0001).

        ls_entityset = CORRESPONDING #( ls_pa0001 ).

        CLEAR lt_pa0105.
        CALL FUNCTION 'HR_READ_SUBTYPE'
          EXPORTING
            pernr           = ls_pa0001-pernr
            infty           = '0105'
            subty           = '0001'
            begda           = sy-datum
            endda           = sy-datum
          TABLES
            infty_tab       = lt_pa0105
          EXCEPTIONS
            infty_not_found = 1
            invalid_input   = 2
            OTHERS          = 3.

        IF sy-subrc IS INITIAL.
          READ TABLE lt_pa0105 INTO DATA(ls_pa0105) INDEX 1.
          ls_entityset-usrid = ls_pa0105-usrid.
        ENDIF.

        APPEND ls_entityset TO et_entityset.

      ENDLOOP.

    ELSE.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Não há usuários!!!' ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          message_container = me->mo_context->get_message_container( ).

    ENDIF.

  ENDMETHOD.


  METHOD operacaoset_get_entityset.

    DATA: lr_aufnr TYPE RANGE OF aufnr,
          ls_aufnr LIKE LINE OF  lr_aufnr.

    IF it_filter_select_options IS NOT INITIAL.

      lr_aufnr = VALUE #( FOR ls_params IN it_filter_select_options ( sign   = 'I'
                                                                      option = 'EQ'
                                                                      low = ls_params-select_options[ sy-index ]-low ) ).

    ENDIF.

    IF it_key_tab IS NOT INITIAL.

      TRY.

          ls_aufnr-low = it_key_tab[ name = 'IdSapDiagramaRede' ]-value.

          IF ls_aufnr-low IS NOT INITIAL.

            ls_aufnr-sign   = 'I'.
            ls_aufnr-option = 'EQ'.

            APPEND ls_aufnr TO lr_aufnr.

          ENDIF.

        CATCH cx_sy_itab_line_not_found.
      ENDTRY.

    ENDIF.

    SELECT FROM afko
     INNER JOIN afvc ON afvc~aufpl EQ afko~aufpl
         FIELDS afko~aufnr,
                afvc~vornr,
                afvc~ltxa1
          WHERE afko~aufnr IN @lr_aufnr
       ORDER BY afko~aufnr, afvc~vornr
    INTO CORRESPONDING FIELDS OF TABLE @et_entityset.

  ENDMETHOD.


  method PEDIDOITEMSET_CREATE_ENTITY.

    DATA: ls_deep_entity      TYPE zcl_zgsd_produtos_mpc_ext=>ts_pedidoitem,
          ls_poheader         TYPE bapimepoheader,
          ls_poheaderx        TYPE bapimepoheaderx,
          ls_poitem           TYPE bapimepoitem,
          ls_poitemx          TYPE bapimepoitemx,
          ls_poaccount        TYPE bapimepoaccount,
          ls_poaccountx       TYPE bapimepoaccountx,

          lt_poitem           TYPE TABLE OF bapimepoitem,
          lt_poitemx          TYPE TABLE OF bapimepoitemx,
          lt_poaccount        TYPE TABLE OF bapimepoaccount,
          lt_poaccountx       TYPE TABLE OF bapimepoaccountx,
          lt_return           TYPE TABLE OF bapiret2,
          ls_return           TYPE bapiret2.

    io_data_provider->read_entry_data(
      IMPORTING
        es_data = ls_deep_entity
    ).

    IF ls_deep_entity IS NOT INITIAL.

      "POITEM
      IF ls_deep_entity-ebelp IS NOT INITIAL.
        ls_poitem-po_item   = ls_deep_entity-ebelp.
        ls_poitemx-po_item  = ls_deep_entity-ebelp.
        ls_poitemx-po_itemx = abap_true.
      ENDIF.

      IF ls_deep_entity-afnam IS NOT INITIAL.
        ls_poitem-preq_name  = ls_deep_entity-afnam.
        ls_poitemx-preq_name = abap_true.
      ENDIF.

      IF ls_deep_entity-matnr IS NOT INITIAL.
        ls_poitem-material  = |{ ls_deep_entity-matnr ALPHA = IN }|.
        ls_poitemx-material = abap_true.
      ENDIF.

      IF ls_deep_entity-netpr IS NOT INITIAL.
        ls_poitem-net_price  = ls_deep_entity-netpr.
        ls_poitemx-net_price = abap_true.

        ls_poitem-price_unit  = '1'.
        ls_poitemx-price_unit = abap_true.
      ENDIF.

      IF ls_deep_entity-menge IS NOT INITIAL.
        ls_poitem-quantity  = ls_deep_entity-menge.
        ls_poitemx-quantity = abap_true.
      ENDIF.

      IF ls_deep_entity-mwskz IS NOT INITIAL.
        ls_poitem-tax_code  = ls_deep_entity-mwskz.
        ls_poitemx-tax_code = abap_true.
      ENDIF.

      IF ls_deep_entity-knttp IS NOT INITIAL.
        ls_poitem-acctasscat  = ls_deep_entity-knttp.
        ls_poitemx-acctasscat = abap_true.
      ENDIF.

      IF ls_deep_entity-werks IS NOT INITIAL.
        ls_poitem-plant  = ls_deep_entity-werks.
        ls_poitemx-plant = abap_true.
      ENDIF.

      IF ls_deep_entity-afnam IS NOT INITIAL.
        ls_poitem-preq_name  = ls_deep_entity-afnam.
        ls_poitemx-preq_name = abap_true.
      ENDIF.

      APPEND ls_poitem TO lt_poitem.
      APPEND ls_poitemx TO lt_poitemx.

      "POACCOUNT
      IF ls_deep_entity-ebelp IS NOT INITIAL.
        ls_poaccount-po_item   = ls_deep_entity-ebelp.
        ls_poaccountx-po_item  = ls_deep_entity-ebelp.
        ls_poaccountx-po_itemx = abap_true.
      ENDIF.

      IF ls_deep_entity-menge IS NOT INITIAL.
        ls_poaccount-quantity  = ls_deep_entity-menge.
        ls_poaccountx-quantity = abap_true.
      ENDIF.

      IF ls_deep_entity-netpr IS NOT INITIAL.
        ls_poaccount-net_value  = ls_deep_entity-netpr.
        ls_poaccountx-net_value = abap_true.
      ENDIF.

      IF ls_deep_entity-knttp IS NOT INITIAL.

        CASE ls_deep_entity-knttp.

          WHEN 'A'.

            IF ls_deep_entity-anln1 IS NOT INITIAL.
              ls_poaccount-asset_no  = |{ ls_deep_entity-anln1 ALPHA = IN }|.
              ls_poaccountx-asset_no = abap_true.
            ENDIF.

          WHEN 'K'.

            IF ls_deep_entity-aloc_custo IS NOT INITIAL.
              ls_poaccount-costcenter  = |{ ls_deep_entity-aloc_custo ALPHA = IN }|.
              ls_poaccountx-costcenter = abap_true.
            ENDIF.

          WHEN 'N'.

            IF ls_deep_entity-nplnr IS NOT INITIAL.
              ls_poaccount-network  = |{ ls_deep_entity-nplnr ALPHA = IN }|.
              ls_poaccountx-network = abap_true.
            ENDIF.

            IF ls_deep_entity-vornr IS NOT INITIAL.
              ls_poaccount-activity  = |{ ls_deep_entity-vornr ALPHA = IN }|.
              ls_poaccountx-activity = abap_true.
            ENDIF.

        ENDCASE.

      ENDIF.

      APPEND ls_poaccount TO lt_poaccount.
      APPEND ls_poaccountx TO lt_poaccountx.

      CALL FUNCTION 'BAPI_PO_CHANGE'
        EXPORTING
          purchaseorder = ls_deep_entity-ebeln
        TABLES
          poitem        = lt_poitem
          poitemx       = lt_poitemx
          poaccount     = lt_poaccount
          poaccountx    = lt_poaccountx
          return        = lt_return.

      IF lt_return IS NOT INITIAL.

        READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

        IF sy-subrc IS NOT INITIAL.

          CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
            EXPORTING
              wait = abap_true.

        ELSE.

          DATA(lr_msg_cont) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

          lr_msg_cont->add_messages_from_bapi(
            EXPORTING
              it_bapi_messages = lt_return
          ).

          RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
            EXPORTING
              http_status_code  = 404
              message_container = lr_msg_cont.

        ENDIF.

      ENDIF.

    ENDIF.

  endmethod.


  method PEDIDOITEMSET_DELETE_ENTITY.

    DATA: ls_ebeln       TYPE ebeln,
          ls_ebelp       TYPE ebelp,
          ls_poitem      TYPE bapimepoitem,
          ls_poitemx     TYPE bapimepoitemx,
          ls_return      TYPE bapiret2,

          lt_poitem      TYPE TABLE OF bapimepoitem,
          lt_poitemx     TYPE TABLE OF bapimepoitemx,
          lt_return      TYPE TABLE OF bapiret2,

          lv_http_status TYPE /iwbep/mgw_http_status_code.

    ls_ebeln = it_key_tab[ name = 'idSap' ]-value.
    ls_ebelp = it_key_tab[ name = 'idSapItem' ]-value.

    SELECT SINGLE
             FROM ekko AS ko
       INNER JOIN ekpo AS po ON po~ebeln = ko~ebeln
                            AND po~ebelp = @ls_ebelp
                            AND po~loekz = 'L'
           FIELDS ko~ebeln,
                  po~ebelp,
                  po~loekz
            WHERE ko~ebeln = @ls_ebeln
       INTO @DATA(ls_items).

    IF ls_items IS NOT INITIAL.

      lv_http_status    = 400.
      ls_return-type    = 'E'.
      ls_return-message = 'Item do pedido já deletado'.
      APPEND ls_return TO lt_return.

    ELSE.

      IF ls_ebelp IS NOT INITIAL.
        ls_poitem-po_item   = ls_ebelp.
        ls_poitemx-po_item  = ls_ebelp.
        ls_poitemx-po_itemx = abap_true.
      ENDIF.

      ls_poitem-delete_ind  = 'L'.
      ls_poitemx-delete_ind = abap_true.

      APPEND ls_poitem TO lt_poitem.
      APPEND ls_poitemx TO lt_poitemx.

      CALL FUNCTION 'BAPI_PO_CHANGE'
        EXPORTING
          purchaseorder = ls_ebeln
        TABLES
          poitem        = lt_poitem
          poitemx       = lt_poitemx
          return        = lt_return.

      READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

      IF sy-subrc IS NOT INITIAL.

        CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
          EXPORTING
            wait = abap_true.

      ELSE.

        lv_http_status = 404.

      ENDIF.

    ENDIF.

    IF lv_http_status IS NOT INITIAL.

      DATA(lr_msg_container) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

      lr_msg_container->add_messages_from_bapi(
        EXPORTING
          it_bapi_messages = lt_return
      ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          http_status_code   = lv_http_status
          message_container  = lr_msg_container.

    ENDIF.

  endmethod.


  METHOD pedidoitemset_get_entity.

    DATA: ls_ebeln TYPE ebeln,
          ls_ebelp TYPE ebelp.

    TRY.
      ls_ebeln = it_key_tab[ name = 'idSap' ]-value.
      ls_ebelp = it_key_tab[ name = 'idSapItem' ]-value.
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.

    SELECT SINGLE
      FROM ekko
     INNER JOIN ekpo ON ekpo~ebeln = ekko~ebeln
                    AND ekpo~ebelp = @ls_ebelp
    FIELDS ekko~*, ekpo~*
     WHERE ekko~ebeln = @ls_ebeln
      INTO @DATA(ls_items).

    IF ls_items-ekko IS NOT INITIAL AND
       ls_items-ekpo IS NOT INITIAL.

      er_entity = CORRESPONDING #( ls_items-ekko ).
      er_entity = CORRESPONDING #( ls_items-ekpo ).

    ELSE.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Este item de pedido não existe!!!' ).

    ENDIF.

  ENDMETHOD.


  METHOD pedidoitemset_update_entity.

    DATA: ls_deep_entity      TYPE zcl_zgsd_produtos_mpc_ext=>ts_pedidoitem,
          ls_poitem           TYPE bapimepoitem,
          ls_poitemx          TYPE bapimepoitemx,
          ls_poaccount        TYPE bapimepoaccount,
          ls_poaccountx       TYPE bapimepoaccountx,

          lt_poitem           TYPE TABLE OF bapimepoitem,
          lt_poitemx          TYPE TABLE OF bapimepoitemx,
          lt_poaccount        TYPE TABLE OF bapimepoaccount,
          lt_poaccountx       TYPE TABLE OF bapimepoaccountx,
          lt_return           TYPE TABLE OF bapiret2,
          ls_return           TYPE bapiret2,
          lv_http_status_code TYPE /iwbep/mgw_http_status_code.

    io_data_provider->read_entry_data(
      IMPORTING
        es_data = ls_deep_entity
    ).

    ls_deep_entity-ebeln = it_key_tab[ name = 'idSap' ]-value.
    ls_deep_entity-ebelp = it_key_tab[ name = 'idSapItem' ]-value.

    IF ls_deep_entity IS NOT INITIAL.

      SELECT SINGLE ebeln, ebelp
        FROM ekpo
        INTO @DATA(ls_ekpo)
        WHERE ebeln = @ls_deep_entity-ebeln
          AND ebelp = @ls_deep_entity-ebelp.

      IF sy-subrc IS NOT INITIAL.
        lv_http_status_code = 404. "Not Found
        ls_return-type = 'E'.
        ls_return-message = 'Pedido de compra não existe'.
        APPEND ls_return TO lt_return.
      ENDIF.

      IF lv_http_status_code IS INITIAL.

        "POITEM
        ls_poitem-po_item   = ls_deep_entity-ebelp.
        ls_poitemx-po_item  = ls_deep_entity-ebelp.
        ls_poitemx-po_itemx = abap_true.

        IF ls_deep_entity-afnam IS NOT INITIAL.
          ls_poitem-preq_name  = ls_deep_entity-afnam.
          ls_poitemx-preq_name = abap_true.
        ENDIF.

        IF ls_deep_entity-matnr IS NOT INITIAL.
          ls_poitem-material  = |{ ls_deep_entity-matnr ALPHA = IN }|.
          ls_poitemx-material = abap_true.
        ENDIF.

        IF ls_deep_entity-netpr IS NOT INITIAL.
          ls_poitem-net_price  = ls_deep_entity-netpr.
          ls_poitemx-net_price = abap_true.

          ls_poitem-price_unit  = '1'.
          ls_poitemx-price_unit = abap_true.
        ENDIF.

        IF ls_deep_entity-menge IS NOT INITIAL.
          ls_poitem-quantity  = ls_deep_entity-menge.
          ls_poitemx-quantity = abap_true.
        ENDIF.

        IF ls_deep_entity-mwskz IS NOT INITIAL.
          ls_poitem-tax_code  = ls_deep_entity-mwskz.
          ls_poitemx-tax_code = abap_true.
        ENDIF.

        IF ls_deep_entity-knttp IS NOT INITIAL.
          ls_poitem-acctasscat  = ls_deep_entity-knttp.
          ls_poitemx-acctasscat = abap_true.
        ENDIF.

        APPEND ls_poitem TO lt_poitem.
        APPEND ls_poitemx TO lt_poitemx.

        "POACCOUNT
        IF ls_deep_entity-knttp IS NOT INITIAL.

          CASE ls_deep_entity-knttp.

            WHEN 'A'.

              IF ls_deep_entity-anln1 IS NOT INITIAL.
                ls_poaccount-asset_no  = |{ ls_deep_entity-anln1 ALPHA = IN }|.
                ls_poaccountx-asset_no = abap_true.
              ENDIF.

            WHEN 'K'.

              IF ls_deep_entity-aloc_custo IS NOT INITIAL.
                ls_poaccount-costcenter  = |{ ls_deep_entity-aloc_custo ALPHA = IN }|.
                ls_poaccountx-costcenter = abap_true.
              ENDIF.

            WHEN 'N'.

              IF ls_deep_entity-nplnr IS NOT INITIAL.
                ls_poaccount-network  = |{ ls_deep_entity-nplnr ALPHA = IN }|.
                ls_poaccountx-network = abap_true.
              ENDIF.

              IF ls_deep_entity-vornr IS NOT INITIAL.
                ls_poaccount-activity  = |{ ls_deep_entity-vornr ALPHA = IN }|.
                ls_poaccountx-activity = abap_true.
              ENDIF.

          ENDCASE.

        ENDIF.

        APPEND ls_poaccount TO lt_poaccount.
        APPEND ls_poaccountx TO lt_poaccountx.

        CALL FUNCTION 'BAPI_PO_CHANGE'
          EXPORTING
            purchaseorder = ls_deep_entity-ebeln
          TABLES
            poitem        = lt_poitem
            poitemx       = lt_poitemx
            poaccount     = lt_poaccount
            poaccountx    = lt_poaccountx
            return        = lt_return.

        READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

        IF sy-subrc IS NOT INITIAL.

          CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
            EXPORTING
              wait = abap_true.

        ELSE.

          lv_http_status_code = 400.

        ENDIF.

      ENDIF.
    ENDIF.


    IF lv_http_status_code IS NOT INITIAL.

      DATA(lr_msg_cont) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

      lr_msg_cont->add_messages_from_bapi(
        EXPORTING
          it_bapi_messages = lt_return
      ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          http_status_code  = lv_http_status_code
          message_container = lr_msg_cont.

    ENDIF.

  ENDMETHOD.


  METHOD pedidoset_delete_entity.

    TYPES: BEGIN OF ty_message,
            type    TYPE bapi_mtype,
            message TYPE symsgv,
            id      TYPE symsgid,
            number  TYPE symsgno,
           END OF ty_message.

    DATA: lt_poitem        TYPE TABLE OF bapimepoitem,
          lt_poitemx       TYPE TABLE OF bapimepoitemx,
          lt_return        TYPE TABLE OF bapiret2,
          lt_dfies         TYPE TABLE OF dfies,
          lv_tabname       TYPE ddobjname,
          lv_fieldname(20) TYPE c.

    DATA: ls_purchaseorder TYPE bapimepoheader-po_number,
          ls_poitem        LIKE LINE OF lt_poitem,
          ls_poitemx       LIKE LINE OF lt_poitemx,
          ls_dfies         LIKE LINE OF lt_dfies.

    TRY.
      ls_purchaseorder = it_key_tab[ 1 ]-value.
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.

    CALL FUNCTION 'BAPI_PO_GETDETAIL1'
      EXPORTING
        purchaseorder = ls_purchaseorder
      TABLES
        poitem        = lt_poitem
        return        = lt_return .

    IF lt_poitem IS NOT INITIAL.

      lv_tabname = 'BAPIMEPOITEM'.

      CALL FUNCTION 'DDIF_FIELDINFO_GET'
        EXPORTING
          tabname        = lv_tabname
        TABLES
          dfies_tab      = lt_dfies
        EXCEPTIONS
          not_found      = 1
          internal_error = 2
          OTHERS         = 3.

      LOOP AT lt_poitem ASSIGNING FIELD-SYMBOL(<fs_poitem>).

        <fs_poitem>-delete_ind = abap_true.

        LOOP AT lt_dfies INTO ls_dfies.

          ASSIGN COMPONENT ls_dfies-fieldname OF STRUCTURE <fs_poitem> TO FIELD-SYMBOL(<fs_item>).
          IF <fs_item> IS NOT INITIAL.

            ASSIGN COMPONENT ls_dfies-fieldname OF STRUCTURE ls_poitemx TO FIELD-SYMBOL(<fs_poitemx>).
            IF <fs_poitemx> IS ASSIGNED.

              IF ls_dfies-fieldname = 'PO_ITEM'.
                <fs_poitemx> = <fs_item>.
              ELSE.
                <fs_poitemx> = abap_true.
              ENDIF.

            ENDIF.

          ENDIF.

        ENDLOOP.

        APPEND ls_poitemx TO lt_poitemx.

      ENDLOOP.

      IF lt_poitem  IS NOT INITIAL AND
         lt_poitemx IS NOT INITIAL.

        CALL FUNCTION 'BAPI_PO_CHANGE'
          EXPORTING
            purchaseorder = ls_purchaseorder
          TABLES
            poitem        = lt_poitem
            poitemx       = lt_poitemx
            return        = lt_return.

        CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
          EXPORTING
            wait    = abap_true.

      ENDIF.

    ENDIF.

    IF lt_return IS NOT INITIAL.

      READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

      IF sy-subrc IS INITIAL.

        DATA: lt_errors TYPE TABLE OF bapiret2.

        LOOP AT lt_return INTO DATA(ls_return) WHERE type = 'E'.
          APPEND ls_return TO lt_errors.
        ENDLOOP.

        DATA(lr_msg_cont) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

        lr_msg_cont->add_messages_from_bapi(
          EXPORTING
            it_bapi_messages = lt_errors
        ).

        RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
          EXPORTING
            http_status_code   = 404
            message_container  = lr_msg_cont.

      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD pedidoset_get_entity.

    TRY.
      DATA(ls_ebeln) = it_key_tab[ 1 ].
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.

    SELECT SINGLE *
      FROM ekko
      INTO @DATA(ls_ekko)
     WHERE ebeln = @ls_ebeln-value.

    IF ls_ekko IS NOT INITIAL.

      er_entity = CORRESPONDING #( ls_ekko ).

    ELSE.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Pedido não existe!!!' ).

    ENDIF.

  ENDMETHOD.


  METHOD pedidoset_update_entity.

    DATA: ls_deep_entity      TYPE zcl_zgsd_produtos_mpc_ext=>ts_pedido,
          ls_potextheader     TYPE bapimepotextheader,

          lt_potextheader     TYPE TABLE OF bapimepotextheader,
          lt_return           TYPE TABLE OF bapiret2,

          lv_textlen          TYPE i,
          lv_remainlen        TYPE i,
          lv_countext         TYPE i VALUE 0,
          ls_return           TYPE bapiret2,
          lv_http_status_code TYPE /iwbep/mgw_http_status_code.

    io_data_provider->read_entry_data(
      IMPORTING
        es_data = ls_deep_entity
    ).

    IF ls_deep_entity IS NOT INITIAL.

      ls_deep_entity-ebeln = it_key_tab[ name = 'idSap' ]-value.

      SELECT SINGLE ebeln
        FROM ekko
        INTO @DATA(ls_ebeln)
        WHERE ebeln = @ls_deep_entity-ebeln.

      IF sy-subrc IS NOT INITIAL.
        lv_http_status_code = 404. "Not Found
        ls_return-type = 'E'.
        ls_return-message = 'Pedido de compra não existe'.
        APPEND ls_return TO lt_return.
      ENDIF.

      IF lv_http_status_code IS INITIAL.

        "POTEXTHEADER - Fill text header
        IF ls_deep_entity-escopo IS NOT INITIAL .

          lv_textlen = strlen( ls_deep_entity-escopo ).

          WHILE lv_countext LE lv_textlen.

            lv_remainlen = lv_textlen - lv_countext.

            ls_potextheader-text_id   = 'F01'.
            ls_potextheader-text_form = '/'.
            ls_potextheader-text_line = ls_deep_entity-escopo+lv_countext(lv_remainlen).

            lv_countext += 132.

            APPEND ls_potextheader TO lt_potextheader.

          ENDWHILE.

        ENDIF.

        CALL FUNCTION 'BAPI_PO_CHANGE'
          EXPORTING
            purchaseorder = ls_deep_entity-ebeln
          TABLES
            potextheader  = lt_potextheader
            return        = lt_return.

        READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

        IF sy-subrc IS NOT INITIAL.

          CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
            EXPORTING
              wait = abap_true.

        ELSE.
          lv_http_status_code = 400.
        ENDIF.

      ENDIF.
    ENDIF.

    IF lv_http_status_code IS NOT INITIAL.

      DATA(lr_msg_cont) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

      lr_msg_cont->add_messages_from_bapi(
        EXPORTING
          it_bapi_messages = lt_return
      ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          http_status_code  = lv_http_status_code
          message_container = lr_msg_cont.

    ENDIF.

  ENDMETHOD.


  METHOD pedido_deep_entity.

    DATA: ls_deep_entity       TYPE zcl_zgsd_produtos_mpc_ext=>ts_pedidodeep,
          ls_poheader          TYPE bapimepoheader,
          ls_poheaderx         TYPE bapimepoheaderx,
          ls_poitem            TYPE bapimepoitem,
          ls_poitemx           TYPE bapimepoitemx,
          ls_poitem_change     TYPE bapimepoitem,
          ls_poitemx_change    TYPE bapimepoitemx,
          ls_poaccount         TYPE bapimepoaccount,
          ls_poaccountx        TYPE bapimepoaccountx,
          ls_poaccount_change  TYPE bapimepoaccount,
          ls_poaccountx_change TYPE bapimepoaccountx,
          ls_potextheader      TYPE bapimepotextheader,
          ls_popartner         TYPE bapiekkop,
          ls_items             LIKE LINE OF ls_deep_entity-items,
          lv_number            TYPE bapimepoheader-po_number,
          lv_po_item           TYPE ebelp,
          lv_kostl             TYPE kostl,
          lv_nplnr             TYPE nplnr,
          lv_vornr             TYPE vornr,
          lv_anln1             TYPE anln1,
          lv_textlen           TYPE i,
          lv_remainlen         TYPE i,
          lv_countext          TYPE i VALUE 0,
          lv_sched_line        TYPE etenr.

    DATA: lt_return            TYPE TABLE OF bapiret2,
          lt_poitem            TYPE TABLE OF bapimepoitem,
          lt_poitemx           TYPE TABLE OF bapimepoitemx,
          lt_poitem_change     TYPE TABLE OF bapimepoitem,
          lt_poitemx_change    TYPE TABLE OF bapimepoitemx,
          lt_poaccount         TYPE TABLE OF bapimepoaccount,
          lt_poaccountx        TYPE TABLE OF bapimepoaccountx,
          lt_poaccount_change  TYPE TABLE OF bapimepoaccount,
          lt_poaccountx_change TYPE TABLE OF bapimepoaccountx,
          lt_popartner         TYPE TABLE OF bapiekkop,
          lt_potextheader      TYPE TABLE OF bapimepotextheader,
          lr_nro_item          TYPE RANGE OF char10.

    io_data_provider->read_entry_data(
      IMPORTING
        es_data = ls_deep_entity
    ).

    IF ls_deep_entity IS NOT INITIAL.

      lr_nro_item = VALUE #( FOR ls_item IN ls_deep_entity-items ( sign   = 'I'
                                                                   option = 'EQ'
                                                                   low    = |{ ls_item-nro_item_referencia ALPHA = IN }| ) ).

      IF ls_deep_entity-konnr IS NOT INITIAL AND lr_nro_item IS NOT INITIAL. "Contract Reference

        DATA: lv_konnr TYPE konnr.

        lv_konnr = |{ ls_deep_entity-konnr ALPHA = IN }|.

        SELECT FROM ekko
         INNER JOIN ekpo ON ekpo~ebeln EQ ekko~ebeln
          LEFT JOIN ekkn ON ekkn~ebeln EQ ekpo~ebeln
                        AND ekkn~ebelp EQ ekpo~ebelp
          LEFT JOIN afvc ON afvc~aufpl EQ ekkn~aufpl
                        AND afvc~aplzl EQ ekkn~aplzl
             FIELDS ekko~ebeln,
                    ekko~ekorg,
                    ekko~bsart,
                    ekko~waers,
                    ekko~bukrs,
                    ekko~lifnr,
                    ekko~ekgrp,
                    ekko~zterm,
                    ekpo~ebelp,
                    ekpo~matnr,
                    ekpo~afnam,
                    ekpo~werks,
                    ekpo~knttp,
                    ekpo~peinh,
                    ekkn~kostl,
                    ekkn~nplnr,
                    ekkn~anln1,
                    afvc~vornr
              WHERE ekko~ebeln EQ @lv_konnr
                AND ekpo~ebelp IN @lr_nro_item
           ORDER BY ekko~ebeln, ekpo~ebelp ASCENDING
         INTO TABLE @DATA(lt_document).

      ELSEIF ls_deep_entity-banfn IS NOT INITIAL AND lr_nro_item IS NOT INITIAL. "Requisition Reference

        DATA: lv_banfn TYPE banfn.

        lv_banfn = |{ ls_deep_entity-banfn ALPHA = IN }|.

        SELECT FROM eban
          LEFT JOIN ebkn  ON ebkn~banfn  EQ eban~banfn
                         AND ebkn~bnfpo  EQ eban~bnfpo
          LEFT JOIN afvc  ON afvc~aufpl  EQ ebkn~aufpl
                         AND afvc~aplzl  EQ ebkn~aplzl
          LEFT JOIN t001w ON t001w~werks EQ eban~werks
         INNER JOIN t001k ON t001k~bwkey EQ t001w~bwkey
         INNER JOIN lfm1  ON lfm1~ekorg  EQ t001k~bukrs
             FIELDS eban~banfn,
                    eban~bnfpo,
                    eban~ekorg,
                    eban~bsart,
                    eban~waers,
                    eban~matnr,
                    eban~werks,
                    eban~afnam,
                    eban~knttp,
                    eban~peinh,
                    eban~lifnr,
                    eban~ekgrp,
                    ebkn~kostl,
                    ebkn~nplnr,
                    ebkn~anln1,
                    afvc~vornr,
                    t001k~bukrs,
                    lfm1~zterm
              WHERE eban~banfn EQ @lv_banfn
                AND eban~bnfpo IN @lr_nro_item
           ORDER BY eban~banfn, eban~bnfpo ASCENDING
         INTO TABLE @DATA(lt_requisition).

      ELSE. "Without Reference

        "Find condPagamento(ZTERM)
        SELECT SINGLE zterm
          FROM lfm1
          INTO @DATA(ls_condpay)
          WHERE lifnr EQ @ls_deep_entity-lifnr
            AND ekorg EQ @ls_deep_entity-bukrs.

      ENDIF.

      "Fill POHEADER
      IF lt_document IS NOT INITIAL. "Contract Reference

        SORT: lt_document BY ebeln ebelp.

        TRY.
          DATA(ls_document) = lt_document[ 1 ].
          CATCH cx_sy_itab_line_not_found.
        ENDTRY.

        IF ls_document IS NOT INITIAL.

          IF ls_document-bukrs IS NOT INITIAL.
            ls_poheader-comp_code  = ls_document-bukrs.
            ls_poheaderx-comp_code = abap_true.
          ENDIF.

          IF ls_document-ekorg IS NOT INITIAL.
            ls_poheader-purch_org  = ls_document-ekorg.
            ls_poheaderx-purch_org = abap_true.
          ENDIF.

          IF ls_document-bsart IS NOT INITIAL.
            ls_poheader-doc_type   = ls_document-bsart.
            ls_poheaderx-doc_type  = abap_true.
          ENDIF.

          IF ls_document-waers IS NOT INITIAL.
            ls_poheader-currency   = ls_document-waers.
            ls_poheaderx-currency  = abap_true.
          ENDIF.

          IF ls_document-lifnr IS NOT INITIAL.
            ls_poheader-vendor     = ls_document-lifnr.
            ls_poheaderx-vendor    = abap_true.
          ENDIF.

          IF ls_document-ekgrp IS NOT INITIAL.
            ls_poheader-pur_group  = ls_document-ekgrp.
            ls_poheaderx-pur_group = abap_true.
          ENDIF.

          IF ls_document-zterm IS NOT INITIAL.
            ls_poheader-pmnttrms   = ls_document-zterm.
            ls_poheaderx-pmnttrms  = abap_true.
          ENDIF.

        ENDIF.

      ELSEIF lt_requisition IS NOT INITIAL. "Requisition Reference

        SORT: lt_requisition BY banfn bnfpo.

        TRY.
          DATA(ls_requisition) = lt_requisition[ 1 ].
          CATCH cx_sy_itab_line_not_found.
        ENDTRY.

        IF ls_requisition IS NOT INITIAL.

          IF ls_requisition-bukrs IS NOT INITIAL.
            ls_poheader-comp_code  = ls_requisition-bukrs.
            ls_poheaderx-comp_code = abap_true.
          ENDIF.

          IF ls_requisition-ekorg IS NOT INITIAL.
            ls_poheader-purch_org  = ls_requisition-ekorg.
            ls_poheaderx-purch_org = abap_true.
          ENDIF.

          IF ls_requisition-bsart IS NOT INITIAL.
            ls_poheader-doc_type   = ls_requisition-bsart.
            ls_poheaderx-doc_type  = abap_true.
          ENDIF.

          IF ls_requisition-waers IS NOT INITIAL.
            ls_poheader-currency   = ls_requisition-waers.
            ls_poheaderx-currency  = abap_true.
          ENDIF.

          IF ls_requisition-lifnr IS NOT INITIAL.
            ls_poheader-vendor     = ls_requisition-lifnr.
            ls_poheaderx-vendor    = abap_true.
          ENDIF.

          IF ls_requisition-ekgrp IS NOT INITIAL.
            ls_poheader-pur_group  = ls_requisition-ekgrp.
            ls_poheaderx-pur_group = abap_true.
          ENDIF.

          IF ls_requisition-zterm IS NOT INITIAL.
            ls_poheader-pmnttrms   = ls_requisition-zterm.
            ls_poheaderx-pmnttrms  = abap_true.
          ENDIF.

        ENDIF.

      ENDIF.

      "Without Reference
      IF ls_deep_entity-bukrs IS NOT INITIAL.               "Change value case be sent
        ls_poheader-comp_code  = ls_deep_entity-bukrs.
        ls_poheaderx-comp_code = abap_true.
      ENDIF.

      IF ls_deep_entity-bukrs IS NOT INITIAL.               "Change value case be sent
        ls_poheader-purch_org  = ls_deep_entity-bukrs.
        ls_poheaderx-purch_org = abap_true.
      ENDIF.

      IF ls_deep_entity-bsart IS NOT INITIAL.               "Change value case be sent
        ls_poheader-doc_type   = ls_deep_entity-bsart.
        ls_poheaderx-doc_type  = abap_true.
      ENDIF.

      IF ls_deep_entity-waers IS NOT INITIAL.               "Change value case be sent
        ls_poheader-currency   = ls_deep_entity-waers.
        ls_poheaderx-currency  = abap_true.
      ENDIF.

      IF ls_deep_entity-lifnr IS NOT INITIAL.               "Change value case be sent
        ls_poheader-vendor     = ls_deep_entity-lifnr.
        ls_poheaderx-vendor    = abap_true.
      ENDIF.

      IF ls_deep_entity-ekgrp IS NOT INITIAL.               "Change value case be sent
        ls_poheader-pur_group  = ls_deep_entity-ekgrp.
        ls_poheaderx-pur_group = abap_true.
      ENDIF.

      IF ls_deep_entity-konnr IS NOT INITIAL.
        ls_poheader-agreement  = ls_deep_entity-konnr.
        ls_poheaderx-agreement = abap_true.
      ENDIF.

      ls_deep_entity-aedat = replace( val = ls_deep_entity-aedat regex = '-' with = '' occ = 0 ).

      IF ls_deep_entity-aedat IS NOT INITIAL.
        ls_poheader-doc_date   = ls_deep_entity-aedat.
        ls_poheaderx-doc_date  = abap_true.
      ELSE.
        ls_poheader-doc_date   = sy-datum.
        ls_poheaderx-doc_date  = abap_true.
      ENDIF.

      "Fill condPagamento(ZTERM)
      IF ls_condpay IS NOT INITIAL.
        ls_poheader-pmnttrms   = ls_condpay.
        ls_poheaderx-pmnttrms  = abap_true.
      ENDIF.

      ls_poheader-creat_date   = sy-datum.
      ls_poheaderx-creat_date  = abap_true.

      ls_poheader-created_by   = sy-uname.
      ls_poheaderx-created_by  = abap_true.

      ls_poheader-langu        = 'P'.
      ls_poheaderx-langu       = abap_true.

      "POTEXTHEADER - Fill text header
      IF ls_deep_entity-escopo IS NOT INITIAL.

        lv_textlen = strlen( ls_deep_entity-escopo ).

        WHILE lv_countext LE lv_textlen.

          lv_remainlen = lv_textlen - lv_countext.

          ls_potextheader-text_id   = 'F01'.
          ls_potextheader-text_form = '/'.
          ls_potextheader-text_line = ls_deep_entity-escopo+lv_countext(lv_remainlen).

          lv_countext += 132.

          APPEND ls_potextheader TO lt_potextheader.

        ENDWHILE.

      ENDIF.

      "Fill Partner
      IF ls_deep_entity-funcoesparceiro IS NOT INITIAL AND ls_deep_entity-gparn IS NOT INITIAL.

        LOOP AT ls_deep_entity-funcoesparceiro INTO DATA(ls_funcoesparceiro).

            ls_popartner-partnerdesc = ls_funcoesparceiro-parvw.
            ls_popartner-buspartno   = ls_deep_entity-gparn.
            ls_popartner-langu       = 'P'.

            APPEND ls_popartner TO lt_popartner.

        ENDLOOP.

      ENDIF.

      "Fill first POITEM, second POACCOUNT
      LOOP AT ls_deep_entity-items ASSIGNING FIELD-SYMBOL(<fs_item>).

        "POITEM
        lv_po_item              = lv_po_item + 10.
        ls_poitem-po_item       = lv_po_item.
        ls_poitemx-po_item      = ls_poitem-po_item.
        ls_poitemx-po_itemx     = abap_true.

        IF <fs_item>-menge IS NOT INITIAL.
          ls_poitem-quantity    = <fs_item>-menge.
          ls_poitemx-quantity   = abap_true.
        ENDIF.

        IF <fs_item>-netpr IS NOT INITIAL.
          ls_poitem-net_price   = <fs_item>-netpr.
          ls_poitemx-net_price  = abap_true.
        ENDIF.

        IF <fs_item>-mwskz IS NOT INITIAL.
          ls_poitem-tax_code    = <fs_item>-mwskz.
          ls_poitemx-tax_code   = abap_true.
        ENDIF.

        IF lt_document IS NOT INITIAL. "Contract Reference

          CLEAR ls_document.

          lv_konnr = |{ ls_deep_entity-konnr ALPHA = IN }|.

          READ TABLE lt_document INTO ls_document
            WITH KEY ebeln = lv_konnr ebelp = <fs_item>-nro_item_referencia BINARY SEARCH.

          IF ls_document IS NOT INITIAL.

            IF ls_document-matnr IS NOT INITIAL.
              ls_poitem-material    = |{ ls_document-matnr ALPHA = IN }|.
              ls_poitemx-material   = abap_true.
            ENDIF.

            IF ls_document-knttp IS NOT INITIAL.
              ls_poitem-acctasscat  = ls_document-knttp.
              ls_poitemx-acctasscat = abap_true.
            ENDIF.

            IF ls_document-afnam IS NOT INITIAL.
              ls_poitem-preq_name   = ls_document-afnam.
              ls_poitemx-preq_name  = abap_true.
            ENDIF.

            IF ls_document-werks IS NOT INITIAL.
              ls_poitem-plant       = ls_document-werks.
              ls_poitemx-plant      = abap_true.
            ENDIF.

            IF ls_document-peinh IS NOT INITIAL.
              ls_poitem-price_unit  = ls_document-peinh.
              ls_poitemx-price_unit = abap_true.
            ENDIF.

            "Below fill POACCOUNT
            IF ls_document-kostl IS NOT INITIAL.
              lv_kostl = ls_document-kostl.
            ENDIF.

            "Below fill POACCOUNT
            IF ls_document-nplnr IS NOT INITIAL.
              lv_nplnr = ls_document-nplnr.
            ENDIF.

            "Below fill POACCOUNT
            IF ls_document-vornr IS NOT INITIAL.
              lv_vornr = ls_document-vornr.
            ENDIF.

            "Below fill POACCOUNT
            IF ls_document-anln1 IS NOT INITIAL.
              lv_anln1 = ls_document-anln1.
            ENDIF.

          ENDIF.

        ELSEIF lt_requisition IS NOT INITIAL. "Requisition Reference

          CLEAR ls_requisition.

          lv_banfn = |{ ls_deep_entity-banfn ALPHA = IN }|.

          READ TABLE lt_requisition INTO ls_requisition
            WITH KEY banfn = lv_banfn bnfpo = <fs_item>-nro_item_referencia BINARY SEARCH.

          IF ls_requisition IS NOT INITIAL.

            IF ls_requisition-matnr IS NOT INITIAL.
              ls_poitem-material    = |{ ls_requisition-matnr ALPHA = IN }|.
              ls_poitemx-material   = abap_true.
            ENDIF.

            IF ls_requisition-knttp IS NOT INITIAL.
              ls_poitem-acctasscat  = ls_requisition-knttp.
              ls_poitemx-acctasscat = abap_true.
            ENDIF.

            IF ls_requisition-afnam IS NOT INITIAL.
              ls_poitem-preq_name   = ls_requisition-afnam.
              ls_poitemx-preq_name  = abap_true.
            ENDIF.

            IF ls_requisition-werks IS NOT INITIAL.
              ls_poitem-plant       = ls_requisition-werks.
              ls_poitemx-plant      = abap_true.
            ENDIF.

            IF ls_requisition-peinh IS NOT INITIAL.
              ls_poitem-price_unit  = ls_requisition-peinh.
              ls_poitemx-price_unit = abap_true.
            ENDIF.

            "Below fill POACCOUNT
            IF ls_requisition-kostl IS NOT INITIAL.
              lv_kostl = ls_requisition-kostl.
            ENDIF.

            "Below fill POACCOUNT
            IF ls_requisition-nplnr IS NOT INITIAL.
              lv_nplnr = ls_requisition-nplnr.
            ENDIF.

            "Below fill POACCOUNT
            IF ls_requisition-vornr IS NOT INITIAL.
              lv_vornr = ls_requisition-vornr.
            ENDIF.

            "Below fill POACCOUNT
            IF ls_requisition-anln1 IS NOT INITIAL.
              lv_anln1 = ls_requisition-anln1.
            ENDIF.

          ENDIF.

        ENDIF.

        "Without Reference
        IF <fs_item>-matnr IS NOT INITIAL.                                 "Change value case be sent
          ls_poitem-material    = |{ <fs_item>-matnr ALPHA = IN }|.
          ls_poitemx-material   = abap_true.
        ENDIF.

        IF <fs_item>-knttp IS NOT INITIAL.                                 "Change value case be sent
          ls_poitem-acctasscat  = <fs_item>-knttp.
          ls_poitemx-acctasscat = abap_true.
        ENDIF.

        IF ls_deep_entity-afnam IS NOT INITIAL.                            "Change value case be sent
          ls_poitem-preq_name   = ls_deep_entity-afnam.
          ls_poitemx-preq_name  = abap_true.
        ENDIF.

        IF ls_deep_entity-werks IS NOT INITIAL.                            "Change value case be sent
          ls_poitem-plant       = ls_deep_entity-werks.
          ls_poitemx-plant      = abap_true.
        ENDIF.

        "Define like 1 for standard until validation business area
        ls_poitem-price_unit  = '1'.
        ls_poitemx-price_unit = abap_true.
*        IF <fs_item>-peinh IS NOT INITIAL.                                 "Change value case be sent
*          ls_poitem-price_unit  = <fs_item>-peinh.
*          ls_poitemx-price_unit = abap_true.
*        ENDIF.

        IF ls_deep_entity-konnr IS NOT INITIAL.                            "Obrigatórios para criação de pedidos com referência a contrato

          ls_poitem-agreement  = |{ ls_deep_entity-konnr ALPHA = IN }|.
          ls_poitemx-agreement = abap_true.

          IF <fs_item>-nro_item_referencia IS NOT INITIAL.
            ls_poitem-agmt_item  = <fs_item>-nro_item_referencia.
            ls_poitemx-agmt_item = abap_true.
          ENDIF.

          ls_poitem-po_price = '2'.
          ls_poitemx-po_price = abap_true.

        ELSEIF ls_deep_entity-banfn IS NOT INITIAL.                        "Obrigatórios para criação de pedidos com referência a requisição

          ls_poitem-preq_no  = |{ ls_deep_entity-banfn ALPHA = IN }|.
          ls_poitemx-preq_no = abap_true.

          IF <fs_item>-nro_item_referencia IS NOT INITIAL.
            ls_poitem-preq_item  = <fs_item>-nro_item_referencia.
            ls_poitemx-preq_item = abap_true.
          ENDIF.

          ls_poitem-po_price = '2'.
          ls_poitemx-po_price = abap_true.

        ENDIF.

        APPEND ls_poitem  TO lt_poitem.
        APPEND ls_poitemx TO lt_poitemx.

        "POACCOUNT
        ls_poaccount-po_item   = lv_po_item.
        ls_poaccountx-po_item  = ls_poaccount-po_item.
        ls_poaccountx-po_itemx = abap_true.

        IF <fs_item>-menge IS NOT INITIAL.
          ls_poaccount-quantity  = <fs_item>-menge.
          ls_poaccountx-quantity = abap_true.
        ENDIF.

        IF <fs_item>-netpr IS NOT INITIAL.
          ls_poaccount-net_value  = <fs_item>-netpr.
          ls_poaccountx-net_value = abap_true.
        ENDIF.

        CASE ls_poitem-acctasscat.
          WHEN 'A'.                                              "Quando a alocação de custo for ativo imobilizado

            IF <fs_item>-anln1 IS NOT INITIAL.

              ls_poaccount-asset_no    = |{ <fs_item>-anln1 ALPHA = IN }|.
              ls_poaccountx-asset_no   = abap_true.

            ELSEIF lv_anln1 IS NOT INITIAL.

              ls_poaccount-asset_no    = |{ lv_anln1 ALPHA = IN }|.
              ls_poaccountx-asset_no   = abap_true.

            ENDIF.

          WHEN 'K'.                                              "Quando a alocação de custo for centro de custo

            IF <fs_item>-aloc_custo IS NOT INITIAL.

              ls_poaccount-costcenter  = |{ <fs_item>-aloc_custo ALPHA = IN }|.
              ls_poaccountx-costcenter = abap_true.

            ELSEIF lv_kostl IS NOT INITIAL.

              ls_poaccount-costcenter  = |{ lv_kostl ALPHA = IN }|.
              ls_poaccountx-costcenter = abap_true.

            ENDIF.

          WHEN 'N'.                                              "Quando a alocação de custo for projeto

            IF <fs_item>-nplnr IS NOT INITIAL.

              ls_poaccount-network  = |{ <fs_item>-nplnr ALPHA = IN }|.
              ls_poaccountx-network = abap_true.

            ELSEIF lv_nplnr IS NOT INITIAL.

              ls_poaccount-network  = |{ lv_nplnr ALPHA = IN }|.
              ls_poaccountx-network = abap_true.

            ENDIF.

            IF <fs_item>-vornr IS NOT INITIAL.

              ls_poaccount-activity  = |{ <fs_item>-vornr ALPHA = IN }|.
              ls_poaccountx-activity = abap_true.

            ELSEIF lv_vornr IS NOT INITIAL.

              ls_poaccount-activity  = |{ lv_vornr ALPHA = IN }|.
              ls_poaccountx-activity = abap_true.

            ENDIF.

        ENDCASE.

        APPEND ls_poaccount  TO lt_poaccount.
        APPEND ls_poaccountx TO lt_poaccountx.

        CLEAR: ls_poitem, ls_poitemx, ls_poaccount, ls_poaccountx.

      ENDLOOP.

      CLEAR: lv_po_item.

      CALL FUNCTION 'BAPI_PO_CREATE1'
        EXPORTING
          poheader         = ls_poheader
          poheaderx        = ls_poheaderx
        IMPORTING
          exppurchaseorder = lv_number
        TABLES
          poitem           = lt_poitem
          poitemx          = lt_poitemx
          poaccount        = lt_poaccount
          poaccountx       = lt_poaccountx
          popartner        = lt_popartner
          potextheader     = lt_potextheader
          return           = lt_return.

      CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
        EXPORTING
          wait = abap_true.

      READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

      IF sy-subrc IS NOT INITIAL AND lv_number IS NOT INITIAL.

        DATA: lv_material  TYPE matnr,
              lv_startdate TYPE bapimepoitem-startdate,
              lv_enddate   TYPE bapimepoitem-enddate.

        "Change value data inicio and data fim
        LOOP AT ls_deep_entity-items INTO ls_items.

          ls_items-matnr = |{ ls_items-matnr ALPHA = IN }|.

          lv_po_item += 10.

          READ TABLE lt_poitem INTO ls_poitem WITH KEY material = ls_items-matnr
                                                       po_item  = lv_po_item.

          IF ls_poitem IS NOT INITIAL.

            ls_poitem_change-material = ls_poitem-material.
            ls_poitem_change-po_item  = ls_poitem-po_item.

            ls_poitemx_change-po_item  = ls_poitem-po_item.
            ls_poitemx_change-material = abap_true.
            ls_poitemx_change-po_itemx = abap_true.

            IF ls_items-data_inicio IS NOT INITIAL OR
               ls_items-data_fim    IS NOT INITIAL.

              IF ls_items-data_inicio IS NOT INITIAL.
                ls_poitem_change-startdate  = replace( val = ls_items-data_inicio regex = '-' with = '' occ = 0 ).
                ls_poitemx_change-startdate = abap_true.
              ENDIF.

              IF ls_items-data_fim IS NOT INITIAL.
                ls_poitem_change-enddate  = replace( val = ls_items-data_fim regex = '-' with = '' occ = 0 ).
                ls_poitemx_change-enddate = abap_true.
              ENDIF.

            ENDIF.

            IF ls_poitem-quantity NE ls_items-menge.
              ls_poitem_change-quantity  = ls_items-menge.
              ls_poitemx_change-quantity = abap_true.
            ENDIF.

            IF ls_items-data_inicio IS NOT INITIAL OR
               ls_items-data_fim    IS NOT INITIAL OR
               ls_poitem-quantity NE ls_items-menge.

              APPEND ls_poitem_change  TO lt_poitem_change.
              APPEND ls_poitemx_change TO lt_poitemx_change.

            ENDIF.

          ENDIF.

          CLEAR: ls_items, ls_poitem, ls_poitemx, ls_poaccount,
                 ls_poaccountx, ls_poitem_change, ls_poitemx_change.

        ENDLOOP.

        IF lt_poitem_change  IS NOT INITIAL AND
           lt_poitemx_change IS NOT INITIAL.

          CALL FUNCTION 'BAPI_PO_CHANGE'
            EXPORTING
              purchaseorder = lv_number
              poheader      = ls_poheader
              poheaderx     = ls_poheaderx
            TABLES
              poitem        = lt_poitem_change
              poitemx       = lt_poitemx_change
              return        = lt_return.

          CLEAR: lt_poitem_change, lt_poitemx_change, lt_return.

        ENDIF.

      ENDIF.

      READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

      IF sy-subrc IS NOT INITIAL AND lv_number IS NOT INITIAL.

        CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
          EXPORTING
            wait = abap_true.

        ls_deep_entity-ebeln = lv_number.

        LOOP AT ls_deep_entity-items ASSIGNING FIELD-SYMBOL(<fs_items>).
          <fs_items>-ebeln = lv_number.
        ENDLOOP.

        er_deep_entity = ls_deep_entity.

      ELSE.

        DATA: lt_errors TYPE STANDARD TABLE OF bapiret2.

        " Collect Errors
        LOOP AT lt_return ASSIGNING FIELD-SYMBOL(<fs_return>) WHERE type = 'E'.
          APPEND <fs_return> TO lt_errors.
        ENDLOOP.

        IF lt_errors IS NOT INITIAL.

          DATA(lr_msg_cont) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

          lr_msg_cont->add_messages_from_bapi(
            EXPORTING
              it_bapi_messages          = lt_errors    " Return parameter table
          ).

          RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
            EXPORTING
              message_container = lr_msg_cont.

        ENDIF.

      ENDIF.

    ELSE.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Dados inválidos!!!' ).

    ENDIF.

  ENDMETHOD.


  method PERFILUSUARIOSET_GET_ENTITY.

    DATA: ls_uname TYPE uname.

    ls_uname = it_key_tab[ 1 ]-value.

    SELECT SINGLE FROM agr_users AS a
           FIELDS a~agr_name,
                  a~uname
            WHERE a~uname = @ls_uname
       INTO @DATA(ls_user_function).

    IF ls_user_function IS NOT INITIAL.

      er_entity = CORRESPONDING #( ls_user_function ).

    ENDIF.

  endmethod.


  METHOD perfilusuarioset_get_entityset.

    DATA: lr_username  TYPE RANGE OF bname,
          ls_entityset LIKE LINE OF  et_entityset.

    DATA: lv_top  TYPE i,
          lv_skip TYPE i.

    lr_username = VALUE #( FOR ls_filter IN it_filter_select_options ( sign   = 'I'
                                                                       option = 'EQ'
                                                                       low    = ls_filter-select_options[ sy-index ]-low ) ).

    lv_top  = io_tech_request_context->get_top( ).
    lv_skip = io_tech_request_context->get_skip( ).

    SELECT FROM agr_users AS a
         FIELDS a~agr_name,
                a~uname
          WHERE a~uname IN @lr_username
       ORDER BY a~agr_name, a~uname ASCENDING
     INTO TABLE @DATA(lt_user_function)
         OFFSET @lv_skip
          UP TO @lv_top ROWS.

    LOOP AT lt_user_function INTO DATA(ls_user_function).

      ls_entityset = CORRESPONDING #( ls_user_function ).

      APPEND ls_entityset TO et_entityset.

    ENDLOOP.

  ENDMETHOD.


  METHOD reqcompraitemset_create_entity.

    DATA: ls_reqcompraitem    TYPE zcl_zgsd_produtos_mpc_ext=>ts_reqcompraitem,

          ls_pritem           TYPE bapimereqitemimp,
          ls_pritemx          TYPE bapimereqitemx,
          ls_praccount        TYPE bapimereqaccount,
          ls_praccountx       TYPE bapimereqaccountx,

          lv_banfn            TYPE eban-banfn,
          lv_bnfpo            TYPE eban-bnfpo,
          lv_http_status_code TYPE /iwbep/mgw_http_status_code,

          lt_pritem           TYPE TABLE OF bapimereqitemimp,
          lt_pritemx          TYPE TABLE OF bapimereqitemx,
          lt_praccount        TYPE TABLE OF bapimereqaccount,
          lt_praccountx       TYPE TABLE OF bapimereqaccountx,
          lt_return           TYPE TABLE OF bapiret2.

    io_data_provider->read_entry_data(
      IMPORTING
        es_data = ls_reqcompraitem
    ).

    lv_banfn = |{ ls_reqcompraitem-id_sap      WIDTH = 10 ALIGN = RIGHT PAD = '0' }|.
    lv_bnfpo = |{ ls_reqcompraitem-id_sap_item WIDTH = 5  ALIGN = RIGHT PAD = '0' }|.

    IF ls_reqcompraitem IS NOT INITIAL.

      IF ls_reqcompraitem-id_sap_item IS NOT INITIAL.
        ls_pritem-preq_item   = lv_bnfpo.
        ls_pritemx-preq_item  = lv_bnfpo.
        ls_pritemx-preq_itemx = abap_true.
      ENDIF.

      IF ls_reqcompraitem-id_sap_materialservico IS NOT INITIAL.
        ls_pritem-material  = |{ ls_reqcompraitem-id_sap_materialservico ALPHA = IN }|.
        ls_pritemx-material = abap_true.
      ENDIF.

      IF ls_reqcompraitem-id_sap_centro IS NOT INITIAL.
        ls_pritem-plant  = ls_reqcompraitem-id_sap_centro.
        ls_pritemx-plant = abap_true.
      ENDIF.

      IF ls_reqcompraitem-id_sap_empresa IS NOT INITIAL.
        ls_pritem-purch_org  = ls_reqcompraitem-id_sap_empresa.
        ls_pritemx-purch_org = abap_true.
      ENDIF.

      IF ls_reqcompraitem-preco_item IS NOT INITIAL.
        ls_pritem-preq_price  = ls_reqcompraitem-preco_item.
        ls_pritemx-preq_price = abap_true.
      ENDIF.

      IF ls_reqcompraitem-quantidade IS NOT INITIAL.
        ls_pritem-quantity  = ls_reqcompraitem-quantidade.
        ls_pritemx-quantity = abap_true.
      ENDIF.

      IF ls_reqcompraitem-afnam IS NOT INITIAL.
        ls_pritem-preq_name  = ls_reqcompraitem-afnam.
        ls_pritemx-preq_name = abap_true.
      ENDIF.

      IF ls_reqcompraitem-id_sap_alocacao_custo IS NOT INITIAL.
        ls_pritem-acctasscat  = ls_reqcompraitem-id_sap_alocacao_custo.
        ls_pritemx-acctasscat = abap_true.
      ENDIF.

      IF ls_reqcompraitem-data_inicio IS NOT INITIAL.
        ls_pritem-startdate  = ls_reqcompraitem-data_inicio.
        ls_pritemx-startdate = abap_true.
      ENDIF.

      IF ls_reqcompraitem-data_fim IS NOT INITIAL.
        ls_pritem-enddate  = ls_reqcompraitem-data_fim.
        ls_pritemx-enddate = abap_true.

        ls_pritem-deliv_date  = ls_reqcompraitem-data_fim.
        ls_pritemx-deliv_date = abap_true.
      ENDIF.

      ls_pritem-langu  = sy-langu(1).
      ls_pritemx-langu = abap_true.

      APPEND ls_pritem  TO lt_pritem.
      APPEND ls_pritemx TO lt_pritemx.

      IF ls_reqcompraitem-id_sap_item IS NOT INITIAL.
        ls_praccount-preq_item   = lv_bnfpo.
        ls_praccountx-preq_item  = lv_bnfpo.
        ls_praccountx-preq_itemx = abap_true.
      ENDIF.

      IF ls_reqcompraitem-quantidade IS NOT INITIAL.
        ls_praccount-quantity  = ls_reqcompraitem-quantidade.
        ls_praccountx-quantity = abap_true.
      ENDIF.

      IF ls_reqcompraitem-preco_item IS NOT INITIAL.
        ls_praccount-net_value  = ls_reqcompraitem-preco_item.
        ls_praccountx-net_value = abap_true.
      ENDIF.

      CASE ls_reqcompraitem-id_sap_alocacao_custo.

        WHEN 'A'.

          IF ls_reqcompraitem-id_sap_imobilizado IS NOT INITIAL.
            ls_praccount-asset_no  = |{ ls_reqcompraitem-id_sap_imobilizado ALPHA = IN }|.
            ls_praccountx-asset_no = abap_true.
          ENDIF.

        WHEN 'K'.

          IF ls_reqcompraitem-id_sap_centro_custo IS NOT INITIAL.
            ls_praccount-costcenter  = |{ ls_reqcompraitem-id_sap_centro_custo ALPHA = IN }|.
            ls_praccountx-costcenter = abap_true.
          ENDIF.

        WHEN 'N'.

          IF ls_reqcompraitem-id_sap_diagrama IS NOT INITIAL.
            ls_praccount-network  = |{ ls_reqcompraitem-id_sap_diagrama ALPHA = IN }|.
            ls_praccountx-network = abap_true.
          ENDIF.

          IF ls_reqcompraitem-id_sap_operacao IS NOT INITIAL.
            ls_praccount-activity  = |{ ls_reqcompraitem-id_sap_operacao ALPHA = IN }|.
            ls_praccountx-activity = abap_true.
          ENDIF.

      ENDCASE.

      ls_praccount-serial_no   = 01.
      ls_praccountx-serial_no  = 01.
      ls_praccountx-serial_nox = abap_true.

      APPEND ls_praccount  TO lt_praccount.
      APPEND ls_praccountx TO lt_praccountx.

      CALL FUNCTION 'BAPI_PR_CHANGE'
        EXPORTING
          number     = lv_banfn
        TABLES
          pritem     = lt_pritem
          pritemx    = lt_pritemx
          praccount  = lt_praccount
          praccountx = lt_praccountx
          return     = lt_return.

      READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

      IF sy-subrc IS INITIAL.

        lv_http_status_code  = 400.

      ELSE.

        CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
          EXPORTING
            wait = abap_true.

      ENDIF.
    ENDIF.

    IF lv_http_status_code IS NOT INITIAL.

      DATA(lr_msg_cont) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

      lr_msg_cont->add_messages_from_bapi(
        EXPORTING
          it_bapi_messages = lt_return
      ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          http_status_code  = lv_http_status_code
          message_container = lr_msg_cont.

    ENDIF.

  ENDMETHOD.


  METHOD reqcompraitemset_delete_entity.

    DATA: ls_banfn     TYPE banfn,
          ls_bnfpo     TYPE bnfpo,
          ls_bapieband TYPE bapieband,
          lt_bapieband TYPE TABLE OF bapieband,
          lt_return    TYPE TABLE OF bapireturn.

    ls_banfn = it_key_tab[ name = 'idSap' ]-value.
    ls_banfn = |{ ls_banfn ALPHA = IN }|.

    ls_bnfpo = it_key_tab[ name = 'idSapItem' ]-value.

    ls_bapieband-preq_item  = ls_bnfpo.
    ls_bapieband-delete_ind = abap_true.
    APPEND ls_bapieband TO lt_bapieband.

    CALL FUNCTION 'BAPI_REQUISITION_DELETE'
      EXPORTING
        number                      = ls_banfn
      TABLES
        requisition_items_to_delete = lt_bapieband
        return                      = lt_return.

    READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

    IF sy-subrc IS INITIAL.

      DATA: lt_return2 TYPE TABLE OF bapiret2,
            ls_return2 LIKE LINE OF  lt_return2.

      DATA(lr_msg_container) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

      LOOP AT lt_return INTO DATA(ls_return) WHERE type = 'E'.
        ls_return2 = CORRESPONDING #( ls_return ).
        APPEND ls_return2 TO lt_return2.
      ENDLOOP.

      lr_msg_container->add_messages_from_bapi(
        EXPORTING
          it_bapi_messages = lt_return2
      ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          http_status_code   = 404
          message_container  = lr_msg_container.

    ENDIF.

  ENDMETHOD.


  METHOD reqcompraitemset_update_entity.

    DATA: ls_deep_entity      TYPE zcl_zgsd_produtos_mpc_ext=>ts_reqcompraitem,
          ls_return           TYPE bapiret2,

          lv_banfn            TYPE eban-banfn,
          lv_bnfpo            TYPE eban-bnfpo,
          lv_http_status_code TYPE /iwbep/mgw_http_status_code,

          w_praccount         TYPE bapimereqaccount,
          w_praccountx        TYPE bapimereqaccountx,
          w_pritem            TYPE bapimereqitemimp,
          w_pritemx           TYPE bapimereqitemx,
          w_return            TYPE bapiret2,

          ti_return           TYPE TABLE OF bapiret2,
          ti_pritem           TYPE TABLE OF bapimereqitemimp,
          ti_pritemx          TYPE TABLE OF bapimereqitemx,
          ti_praccount        TYPE TABLE OF bapimereqaccount,
          ti_praccountx       TYPE TABLE OF bapimereqaccountx.

    io_data_provider->read_entry_data(
      IMPORTING
        es_data = ls_deep_entity
    ).

    ls_deep_entity-id_sap      = it_key_tab[ name = 'idSap' ]-value.
    ls_deep_entity-id_sap_item = it_key_tab[ name = 'idSapItem' ]-value.

    lv_banfn = |{ ls_deep_entity-id_sap      WIDTH = 10 ALIGN = RIGHT PAD = '0' }|.
    lv_bnfpo = |{ ls_deep_entity-id_sap_item WIDTH = 5  ALIGN = RIGHT PAD = '0' }|.

    SELECT SINGLE banfn, bnfpo
      FROM eban
      INTO @DATA(lv_eban)
      WHERE banfn = @lv_banfn
        AND bnfpo = @lv_bnfpo.

    IF sy-subrc IS NOT INITIAL.
      lv_http_status_code = 404. "Not Found
      ls_return-type = 'E'.
      ls_return-message = 'Requisição de compra não existe'.
      APPEND ls_return TO ti_return.
    ENDIF.

    IF ls_deep_entity IS NOT INITIAL AND lv_http_status_code IS INITIAL.

      w_pritem-preq_item   = lv_bnfpo.
      w_pritemx-preq_item  = lv_bnfpo.
      w_pritemx-preq_itemx = abap_true.

      IF ls_deep_entity-id_sap_materialservico IS NOT INITIAL.
        w_pritem-material  = |{ ls_deep_entity-id_sap_materialservico ALPHA = IN }|.
        w_pritemx-material = abap_true.
      ENDIF.

      IF ls_deep_entity-quantidade IS NOT INITIAL.
        w_pritem-quantity  = ls_deep_entity-quantidade.
        w_pritemx-quantity = abap_true.
      ENDIF.

      IF ls_deep_entity-preco_item IS NOT INITIAL.
        w_pritem-preq_price  = ls_deep_entity-preco_item.
        w_pritemx-preq_price = abap_true.
      ENDIF.

      IF ls_deep_entity-id_sap_centro IS NOT INITIAL.
        w_pritem-plant  = ls_deep_entity-id_sap_centro.
        w_pritemx-plant = abap_true.
      ENDIF.

      IF ls_deep_entity-id_sap_empresa IS NOT INITIAL.
        w_pritem-purch_org  = ls_deep_entity-id_sap_empresa.
        w_pritemx-purch_org = abap_true.
      ENDIF.

      APPEND w_pritem  TO ti_pritem.
      APPEND w_pritemx TO ti_pritemx.

      IF ls_deep_entity-id_sap_alocacao_custo IS NOT INITIAL.

        w_praccount-preq_item   = lv_bnfpo.
        w_praccountx-preq_item  = lv_bnfpo.
        w_praccountx-preq_itemx = abap_true.

        IF ls_deep_entity-quantidade IS NOT INITIAL.
          w_praccount-quantity  = ls_deep_entity-quantidade.
          w_praccountx-quantity = abap_true.
        ENDIF.

        IF ls_deep_entity-preco_item IS NOT INITIAL.
          w_praccount-net_value  = ls_deep_entity-preco_item.
          w_praccountx-net_value = abap_true.
        ENDIF.

        CASE ls_deep_entity-id_sap_alocacao_custo.

          WHEN 'A'.

            IF ls_deep_entity-id_sap_imobilizado IS NOT INITIAL.
              w_praccount-asset_no  = |{ ls_deep_entity-id_sap_imobilizado ALPHA = IN }|.
              w_praccountx-asset_no = abap_true.
            ENDIF.

          WHEN 'K'.

            IF ls_deep_entity-id_sap_centro_custo IS NOT INITIAL.
              w_praccount-costcenter  = |{ ls_deep_entity-id_sap_centro_custo ALPHA = IN }|.
              w_praccountx-costcenter = abap_true.
            ENDIF.

          WHEN 'N'.

            IF ls_deep_entity-id_sap_diagrama IS NOT INITIAL.
              w_praccount-network  = |{ ls_deep_entity-id_sap_diagrama ALPHA = IN }|.
              w_praccountx-network = abap_true.
            ENDIF.

            IF ls_deep_entity-id_sap_operacao IS NOT INITIAL.
              w_praccount-activity  = |{ ls_deep_entity-id_sap_operacao ALPHA = IN }|.
              w_praccountx-activity = abap_true.
            ENDIF.

        ENDCASE.

        APPEND w_praccount TO ti_praccount.
        APPEND w_praccountx TO ti_praccountx.

      ENDIF.

*     Atualiza Requisição
      CALL FUNCTION 'BAPI_PR_CHANGE'
        EXPORTING
          number     = lv_banfn
        TABLES
          return     = ti_return
          pritem     = ti_pritem
          pritemx    = ti_pritemx
          praccount  = ti_praccount
          praccountx = ti_praccountx.

      READ TABLE ti_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

      IF sy-subrc IS NOT INITIAL.

        READ TABLE ti_return TRANSPORTING NO FIELDS WITH KEY type = 'I'
                                                               id = 'ME'
                                                           number = 664.
        IF sy-subrc IS NOT INITIAL.

          CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
            EXPORTING
              wait = abap_true.

        ELSE.

          lv_http_status_code = 400.

        ENDIF.

      ELSE.

        lv_http_status_code  = 400.

      ENDIF.

    ENDIF.

    IF lv_http_status_code IS NOT INITIAL..

      DATA(lr_msg_cont) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

      lr_msg_cont->add_messages_from_bapi(
        EXPORTING
          it_bapi_messages = ti_return
      ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          http_status_code  = lv_http_status_code
          message_container = lr_msg_cont.

    ENDIF.

  ENDMETHOD.


  METHOD reqcompraset_delete_entity.

    DATA: ls_banfn     TYPE          banfn,
          lt_bapieband TYPE TABLE OF bapieband,
          ls_bapieband LIKE LINE OF  lt_bapieband,
          lt_return    TYPE TABLE OF bapireturn,
          ls_return    LIKE LINE OF  lt_return.

    TRY.
        ls_banfn = it_key_tab[ 1 ]-value.
        ls_banfn = |{ ls_banfn ALPHA = IN }|.
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.

    SELECT FROM eban
         FIELDS banfn,
                bnfpo
          WHERE banfn = @ls_banfn
     INTO TABLE @DATA(lt_eban).

    IF lt_eban IS NOT INITIAL.

      LOOP AT lt_eban INTO DATA(ls_eban).

        ls_bapieband-preq_item  = ls_eban-bnfpo.
        ls_bapieband-delete_ind = abap_true.

        APPEND ls_bapieband TO lt_bapieband.

      ENDLOOP.

      CALL FUNCTION 'BAPI_REQUISITION_DELETE'
        EXPORTING
          number                      = ls_banfn
        TABLES
          requisition_items_to_delete = lt_bapieband
          return                      = lt_return.
    ELSE.

      ls_return-type       = 'E'.
      ls_return-code       = 'W5024'.
      ls_return-message    = 'Não existem requisições de compra para esta seleção'.

      APPEND ls_return TO lt_return.

    ENDIF.

    IF lt_return IS NOT INITIAL.

      READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

      IF sy-subrc IS INITIAL.

        DATA: lt_errors TYPE TABLE OF bapiret2,
              ls_errors LIKE LINE OF  lt_errors.

        LOOP AT lt_return INTO ls_return WHERE type = 'E'.

          ls_errors-type    = ls_return-type.
          ls_errors-id      = ls_return-code.
          ls_errors-message = ls_return-message.

          APPEND ls_errors TO lt_errors.

        ENDLOOP.

        DATA(lr_msg_cont) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

        lr_msg_cont->add_messages_from_bapi(
          EXPORTING
            it_bapi_messages = lt_errors
        ).

        RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
          EXPORTING
            http_status_code  = 404
            message_container = lr_msg_cont.

      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD reqcompraset_get_entityset.

    DATA:
      lr_BANFN TYPE RANGE OF banfn,
      ls_BANFN LIKE LINE OF lr_BANFN.

    READ TABLE it_filter_select_options INTO DATA(ls_filter) WITH KEY property = 'BANFN'.
    IF sy-subrc IS INITIAL.

      LOOP AT ls_filter-select_options INTO DATA(ls_options).
        MOVE-CORRESPONDING ls_options TO ls_BANFN.
        APPEND ls_BANFN TO lr_BANFN.
      ENDLOOP.

      SELECT * FROM eban
        INTO CORRESPONDING FIELDS OF TABLE et_entityset
        WHERE banfn IN lr_BANFN.


    ENDIF.

  ENDMETHOD.


  METHOD reqcompraset_update_entity.

    DATA: ls_deep_entity      TYPE zcl_zgsd_produtos_mpc_ext=>ts_reqcompra,
          lv_number           TYPE bapimereqheader-preq_no,
          lt_text             TYPE STANDARD TABLE OF tline,
          ls_header_text      TYPE thead,
          lt_return           TYPE TABLE OF bapiret2,
          ls_return           TYPE bapiret2,
          lv_http_status_code TYPE /iwbep/mgw_http_status_code.

    io_data_provider->read_entry_data(
      IMPORTING
        es_data = ls_deep_entity
    ).

    lv_number = it_key_tab[ name = 'idSap' ]-value.

    CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
      EXPORTING
        input  = lv_number
      IMPORTING
        output = lv_number.

    SELECT banfn UP TO 1 ROWS
      FROM eban
      INTO @DATA(lv_banfn)
      WHERE banfn = @lv_number.
    ENDSELECT.

    IF sy-subrc IS NOT INITIAL.
      lv_http_status_code = 404. "Not Found
      ls_return-type = 'E'.
      ls_return-message = 'Requisição de compra não existe'.
      APPEND ls_return TO lt_return.
    ENDIF.

    IF ls_deep_entity IS NOT INITIAL AND lv_http_status_code IS INITIAL.

      IF ls_deep_entity-escopo IS NOT INITIAL.

        ls_header_text-tdobject = 'EBANH'.
        ls_header_text-tdspras  = 'PT'.
        ls_header_text-tdname   = |{ lv_number WIDTH = 10 ALIGN = RIGHT PAD = '0' }|.

        ls_header_text-tdid = 'B01'.

        DATA: lv_char(10000),
              lt_string TYPE TABLE OF string.

        lv_char = ls_deep_entity-escopo.

        CALL FUNCTION 'RKD_WORD_WRAP'
          EXPORTING
            textline            = lv_char
            delimiter           = ' '
            outputlen           = 132
          TABLES
            out_lines           = lt_string
          EXCEPTIONS
            outputlen_too_large = 1
            OTHERS              = 2.

        IF sy-subrc IS INITIAL.
          LOOP AT lt_string ASSIGNING FIELD-SYMBOL(<ls_string>).
            APPEND INITIAL LINE TO lt_text ASSIGNING FIELD-SYMBOL(<ls_text>).

            IF sy-tabix EQ 1.
              <ls_text>-tdformat = '*'.
            ELSE.
              <ls_text>-tdformat = '='.
            ENDIF.
            <ls_text>-tdline = <ls_string>.
          ENDLOOP.
        ENDIF.


        CALL FUNCTION 'SAVE_TEXT'
          EXPORTING
            header          = ls_header_text
            savemode_direct = 'X'
          TABLES
            lines           = lt_text
          EXCEPTIONS
            id              = 1
            language        = 2
            name            = 3
            object          = 4
            OTHERS          = 5.

        IF sy-subrc IS NOT INITIAL.
          lv_http_status_code = 400.
          ls_return-type = 'E'.
          ls_return-message = 'Erro ao atualizar escopo'.
          APPEND ls_return TO lt_return.
        ENDIF.

      ENDIF.
    ENDIF.


    IF  lv_http_status_code IS NOT INITIAL.

      DATA(lr_msg_cont) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

      lr_msg_cont->add_messages_from_bapi(
        EXPORTING
          it_bapi_messages = lt_return
      ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          http_status_code  = lv_http_status_code
          message_container = lr_msg_cont.

    ENDIF.

  ENDMETHOD.


  METHOD reqcompra_deep_entity.

    DATA: ls_deep_entity     TYPE zcl_zgsd_produtos_mpc_ext=>ts_reqcompradeep,
          ls_itemsolicitacao TYPE zcl_zgsd_produtos_mpc_ext=>ts_reqcompraitem.

    DATA: ls_prheader  TYPE  bapimereqheader,
          ls_prheaderx TYPE  bapimereqheaderx.

    DATA: lv_number    TYPE bapimereqheader-preq_no,
          lv_preq_item TYPE bapimereqitemimp-preq_item,
          lv_serial_no TYPE dzekkn,
          lv_textlen   TYPE i,
          lv_remainlen TYPE i,
          lv_countext  TYPE i VALUE 0.

    DATA: lt_return       TYPE TABLE OF bapiret2,
          ls_return       TYPE bapiret2,

          lt_pritem       TYPE TABLE OF bapimereqitemimp,
          ls_pritem       TYPE bapimereqitemimp,
          lt_pritemx      TYPE TABLE OF bapimereqitemx,
          ls_pritemx      TYPE  bapimereqitemx,

          lt_praccount    TYPE TABLE OF bapimereqaccount,
          ls_praccount    TYPE bapimereqaccount,
          lt_praccountx   TYPE TABLE OF bapimereqaccountx,
          ls_praccountx   TYPE bapimereqaccountx,

          lt_prheadertext TYPE TABLE OF bapimereqheadtext,
          ls_prheadertext TYPE bapimereqheadtext.

    DATA: lv_quantidade TYPE p DECIMALS 3 LENGTH 13.
    DATA: lv_preco      TYPE p DECIMALS 3 LENGTH 13.

    io_data_provider->read_entry_data(
      IMPORTING
        es_data = ls_deep_entity
    ).

    IF ls_deep_entity IS NOT INITIAL.

      "PRHEADER - Header
      IF ls_deep_entity-tipo_requisicao IS NOT INITIAL.
        ls_prheader-pr_type  = ls_deep_entity-tipo_requisicao.
        ls_prheaderx-pr_type = abap_true.
      ENDIF.

      "PRHEADTEXT - Fill text header
      IF ls_deep_entity-escopo IS NOT INITIAL.

        lv_textlen = strlen( ls_deep_entity-escopo ).

        WHILE lv_countext LT lv_textlen.

          lv_remainlen = lv_textlen - lv_countext.

          ls_prheadertext-text_id   = 'B01'.
          ls_prheadertext-text_form = '*'.
          ls_prheadertext-text_line = ls_deep_entity-escopo+lv_countext(lv_remainlen).

          lv_countext += 132.

          APPEND ls_prheadertext TO lt_prheadertext.

        ENDWHILE.

      ENDIF.

*     ITEM
      LOOP AT ls_deep_entity-itemsolicitacao INTO ls_itemsolicitacao.

        CLEAR:ls_pritem, ls_pritemx, ls_praccount, ls_praccountx, ls_praccountx, ls_prheadertext, lv_quantidade, lv_preco.

        lv_preq_item         = lv_preq_item + 10.
        lv_serial_no         = 01.
        ls_pritem-preq_item  = lv_preq_item.
        ls_pritemx-preq_item = lv_preq_item.

        IF ls_deep_entity-data_solicitacao IS NOT INITIAL.
          TRANSLATE ls_deep_entity-data_solicitacao USING '- '.
          CONDENSE ls_deep_entity-data_solicitacao NO-GAPS.
          ls_pritem-preq_date  = ls_deep_entity-data_solicitacao.
          ls_pritemx-preq_date = abap_true.
        ENDIF.

        IF ls_deep_entity-data_remessa IS NOT INITIAL.
          TRANSLATE ls_deep_entity-data_remessa USING '- '.
          CONDENSE ls_deep_entity-data_remessa NO-GAPS.
          ls_pritem-deliv_date  = ls_deep_entity-data_remessa.
          ls_pritemx-deliv_date = abap_true.
        ENDIF.

        IF ls_deep_entity-id_sap_departamento IS NOT INITIAL.
          ls_pritem-pur_group  = ls_deep_entity-id_sap_departamento.
          ls_pritemx-pur_group = abap_true.
        ENDIF.

        IF ls_deep_entity-id_sap_moeda IS NOT INITIAL.
          ls_pritem-currency  = ls_deep_entity-id_sap_moeda.
          ls_pritemx-currency = abap_true.
        ENDIF.

        IF ls_itemsolicitacao-id_sap_alocacao_custo IS NOT INITIAL.
          ls_pritem-acctasscat  = ls_itemsolicitacao-id_sap_alocacao_custo.
          ls_pritemx-acctasscat = abap_true.
        ENDIF.

        IF ls_itemsolicitacao-id_sap_materialservico IS NOT INITIAL.

          CALL FUNCTION 'CONVERSION_EXIT_MATN1_INPUT'
            EXPORTING
              input  = ls_itemsolicitacao-id_sap_materialservico
            IMPORTING
              output = ls_pritem-material.

          ls_pritemx-material = abap_true.

        ENDIF.

        IF ls_itemsolicitacao-quantidade IS NOT INITIAL.
          lv_quantidade = ls_itemsolicitacao-quantidade.
          ls_pritem-quantity  = lv_quantidade.
          ls_pritemx-quantity = abap_true.
        ENDIF.

        IF ls_itemsolicitacao-preco_item IS NOT INITIAL.
          lv_preco = ls_itemsolicitacao-preco_item.
          ls_pritem-preq_price  = lv_preco.
          ls_pritemx-preq_price = abap_true.
        ENDIF.

        IF ls_itemsolicitacao-id_sap_empresa IS NOT INITIAL.
          ls_pritem-purch_org  = ls_itemsolicitacao-id_sap_empresa.
          ls_pritemx-purch_org = abap_true.
        ENDIF.

        IF ls_itemsolicitacao-id_sap_centro IS NOT INITIAL.
          ls_pritem-plant  = ls_itemsolicitacao-id_sap_centro.
          ls_pritemx-plant = abap_true.
        ENDIF.

        IF ls_deep_entity-id_sap_usuario_aprovador IS NOT INITIAL.
          ls_pritem-preq_name  = ls_deep_entity-id_sap_usuario_aprovador.
          ls_pritemx-preq_name = abap_true.
        ENDIF.

        IF ls_itemsolicitacao-data_inicio IS NOT INITIAL.
          TRANSLATE ls_itemsolicitacao-data_inicio USING '- '.
          CONDENSE ls_itemsolicitacao-data_inicio NO-GAPS.
          ls_pritem-startdate  = ls_itemsolicitacao-data_inicio.
          ls_pritemx-startdate = abap_true.
        ELSE.
          ls_pritem-startdate  = sy-datum.
          ls_pritemx-startdate = abap_true.
        ENDIF.

        IF ls_itemsolicitacao-data_fim IS NOT INITIAL.
          TRANSLATE ls_itemsolicitacao-data_fim USING '- '.
          CONDENSE ls_itemsolicitacao-data_fim NO-GAPS.
          ls_pritem-enddate  = ls_itemsolicitacao-data_fim.
          ls_pritemx-enddate = abap_true.
        ELSE.
          ls_pritem-enddate  = sy-datum.
          ls_pritemx-enddate = abap_true.
        ENDIF.

        ls_pritem-langu  = 'PT'.
        ls_pritemx-langu = abap_true.

        APPEND ls_pritem  TO lt_pritem.
        APPEND ls_pritemx TO lt_pritemx.

*       ACCOUNT
        CASE ls_pritem-acctasscat.

          WHEN 'U'.
            "não preencher estrutura de classificação contábil quando acctasscat = 'U'

          WHEN 'K'.
            "Quando a alocação de custo for centro de custo
            ls_praccount-preq_item = lv_preq_item.
            ls_praccountx-preq_item = lv_preq_item.

            ls_praccount-serial_no = lv_serial_no.
            ls_praccountx-serial_no = lv_serial_no.

            IF ls_itemsolicitacao-quantidade IS NOT INITIAL.
              ls_praccount-quantity = ls_itemsolicitacao-quantidade.
              ls_praccountx-quantity = abap_true.
            ENDIF.

            IF ls_itemsolicitacao-id_sap_centro_custo IS NOT INITIAL.

              CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
                EXPORTING
                  input  = ls_itemsolicitacao-id_sap_centro_custo
                IMPORTING
                  output = ls_praccount-costcenter.

              ls_praccountx-costcenter = abap_true.

            ENDIF.

            APPEND ls_praccount  TO lt_praccount.
            APPEND ls_praccountx TO lt_praccountx.

          WHEN 'A'.
            "Quando a alocação de custo for ativo imobilizado
            ls_praccount-preq_item = lv_preq_item.
            ls_praccountx-preq_item = lv_preq_item.

            ls_praccount-serial_no = lv_serial_no.
            ls_praccountx-serial_no = lv_serial_no.

            IF ls_itemsolicitacao-quantidade IS NOT INITIAL.
              ls_praccount-quantity = ls_itemsolicitacao-quantidade.
              ls_praccountx-quantity = abap_true.
            ENDIF.

            IF ls_itemsolicitacao-id_sap_centro_custo IS NOT INITIAL.

              CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
                EXPORTING
                  input  = ls_itemsolicitacao-id_sap_centro_custo
                IMPORTING
                  output = ls_praccount-asset_no.

              ls_praccountx-asset_no = abap_true.

            ENDIF.

            APPEND ls_praccount  TO lt_praccount.
            APPEND ls_praccountx TO lt_praccountx.

          WHEN 'N'.
            "Quando a alocação de custo for projeto
            ls_praccount-preq_item  = lv_preq_item.
            ls_praccountx-preq_item = lv_preq_item.

            ls_praccount-serial_no  = lv_serial_no.
            ls_praccountx-serial_no = lv_serial_no.

            IF ls_itemsolicitacao-quantidade IS NOT INITIAL.
              ls_praccount-quantity  = ls_itemsolicitacao-quantidade.
              ls_praccountx-quantity = abap_true.
            ENDIF.

            IF ls_itemsolicitacao-id_sap_centro_custo IS NOT INITIAL.

              CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
                EXPORTING
                  input  = ls_itemsolicitacao-id_sap_centro_custo
                IMPORTING
                  output = ls_praccount-network.

              ls_praccountx-network = abap_true.

            ENDIF.

            IF ls_itemsolicitacao-id_sap_operacao IS NOT INITIAL.
              ls_praccount-activity  = ls_itemsolicitacao-id_sap_operacao.
              ls_praccountx-activity = abap_true.
            ENDIF.

            APPEND ls_praccount  TO lt_praccount.
            APPEND ls_praccountx TO lt_praccountx.

        ENDCASE.

      ENDLOOP.

      CALL FUNCTION 'BAPI_PR_CREATE'
        EXPORTING
          prheader     = ls_prheader
          prheaderx    = ls_prheaderx
        IMPORTING
          number       = lv_number
        TABLES
          return       = lt_return
          pritem       = lt_pritem
          pritemx      = lt_pritemx
          praccount    = lt_praccount
          praccountx   = lt_praccountx
          prheadertext = lt_prheadertext.

      READ TABLE lt_return TRANSPORTING NO FIELDS WITH KEY type = 'E'.

      IF sy-subrc IS NOT INITIAL AND lv_number IS NOT INITIAL.

        ls_deep_entity-id_sap =  lv_number.

        LOOP AT ls_deep_entity-itemsolicitacao ASSIGNING FIELD-SYMBOL(<fs_itemsolicitacao>).
          <fs_itemsolicitacao>-id_sap = lv_number.
        ENDLOOP.

        er_deep_entity = ls_deep_entity.
      ELSE.

        DATA: lt_errors TYPE STANDARD TABLE OF bapiret2.

        " Collect Errors
        LOOP AT lt_return ASSIGNING FIELD-SYMBOL(<fs_return>) WHERE type = 'E'.
          APPEND <fs_return> TO lt_errors.
        ENDLOOP.


        IF lt_errors IS NOT INITIAL.
          DATA(lr_msg_cont) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).


          lr_msg_cont->add_messages_from_bapi(
            EXPORTING
              it_bapi_messages          = lt_errors    " Return parameter table
          ).
          RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
            EXPORTING
              message_container = lr_msg_cont.
        ENDIF.

      ENDIF.
    ENDIF.

  ENDMETHOD.


  METHOD requisitantesset_get_entityset.

    SELECT kostl, afnam
      FROM ztb_mm_req_cc
      INTO TABLE @DATA(it_requisitantes).

    MOVE-CORRESPONDING it_requisitantes[] TO et_entityset[].

    IF et_entityset IS INITIAL.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum requisitante encontrado' ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          message_container = me->mo_context->get_message_container( ).

    ENDIF.

  ENDMETHOD.


  method TIPODOCUMENTOSET_GET_ENTITYSET.

    DATA: lr_bsart     TYPE RANGE OF bsart,
          ls_entityset LIKE LINE OF  et_entityset.

    lr_bsart = VALUE #( FOR ls_filter IN it_filter_select_options ( sign   = 'I'
                                                                    option = 'EQ'
                                                                    low    = ls_filter-select_options[ sy-tabix ]-low ) ).

    SELECT FROM t161  AS a
      LEFT JOIN t161t AS b ON b~bsart = a~bsart
                          AND b~bstyp = a~bstyp
                          AND b~spras = 'P'
         FIELDS a~bsart,
                a~bstyp,
                b~batxt
          WHERE a~bsart IN @lr_bsart
         INTO TABLE @DATA(lt_type_doc).

    IF lt_type_doc IS NOT INITIAL.

      LOOP AT lt_type_doc INTO DATA(ls_type_doc).

        ls_entityset-bsart = ls_type_doc-bsart.
        ls_entityset-bstyp = |{ ls_type_doc-bstyp } - { ls_type_doc-batxt }|.

        APPEND ls_entityset TO et_entityset.

      ENDLOOP.

    ENDIF.

  endmethod.


  METHOD usuarioset_get_entity.

    CONSTANTS: c_true  TYPE string VALUE 'TRUE',
               c_false TYPE string VALUE 'FALSE'.

    DATA: ls_username     TYPE bname,
          lt_domain_value TYPE TABLE OF dd07v,
          ls_domvalue     TYPE dd07v-domvalue_l.

    ls_username = it_key_tab[ 1 ]-value.

    SELECT SINGLE FROM usr21 AS a
       INNER JOIN adrc       AS b ON b~addrnumber = a~addrnumber
       INNER JOIN adrp       AS c ON c~persnumber = a~persnumber
       INNER JOIN adcp       AS d ON d~addrnumber = a~addrnumber
                                 AND d~persnumber = a~persnumber
       INNER JOIN uscompany  AS e ON e~addrnumber = a~addrnumber
        LEFT JOIN adr6       AS f ON f~addrnumber = a~addrnumber
                                 AND f~persnumber = a~persnumber
       INNER JOIN usr02      AS g ON g~bname      = a~bname
           FIELDS a~bname,
                  c~name_text,
                  d~department,
                  f~smtp_addr,
                  g~uflag
            WHERE a~bname = @ls_username
       INTO @DATA(ls_user).

    IF ls_user IS NOT INITIAL.

      er_entity = CORRESPONDING #( ls_user ).

      CALL FUNCTION 'GET_DOMAIN_VALUES'
        EXPORTING
          domname         = 'XUUFLAG'
          text            = 'X'              " Descriptions - yes/no
        TABLES
          values_tab      = lt_domain_value
        EXCEPTIONS
          no_values_found = 1
          OTHERS          = 2 .

      IF lt_domain_value IS NOT INITIAL.

        er_entity-status = ls_user-uflag.
        ls_domvalue      = |{ ls_user-uflag ALIGN = LEFT }|.

        TRY.
          er_entity-status = |{ ls_domvalue } - { lt_domain_value[ domvalue_l = ls_domvalue ]-ddtext }|.
          CATCH cx_sy_itab_line_not_found.
        ENDTRY.

      ENDIF.

      SELECT FROM agr_users
           FIELDS agr_name
            WHERE uname = @ls_user-bname
       INTO TABLE @DATA(lt_functions).

      IF lt_functions IS NOT INITIAL.

        LOOP AT lt_functions INTO DATA(ls_functions).

          FIND 'APROVA' IN ls_functions.

          IF sy-subrc IS INITIAL.
            er_entity-aprovador = c_true.
            EXIT.
          ELSE.
            er_entity-aprovador = c_false.
          ENDIF.

        ENDLOOP.

      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD usuarioset_get_entityset.

    DATA: lr_username     TYPE RANGE OF bname,
          lt_domain_value TYPE TABLE OF dd07v,
          ls_domvalue     TYPE dd07v-domvalue_l,
          ls_entityset    LIKE LINE OF  et_entityset.

    CONSTANTS: c_true  TYPE string VALUE 'TRUE',
               c_false TYPE string VALUE 'FALSE'.

    lr_username = VALUE #( FOR ls_filter IN it_filter_select_options ( sign   = 'I'
                                                                       option = 'EQ'
                                                                       low    = ls_filter-select_options[ sy-index ]-low ) ).

      SELECT FROM usr21     AS a
       INNER JOIN adrc      AS b ON b~addrnumber = a~addrnumber
       INNER JOIN adrp      AS c ON c~persnumber = a~persnumber
       INNER JOIN adcp      AS d ON d~addrnumber = a~addrnumber
                                AND d~persnumber = a~persnumber
       INNER JOIN uscompany AS e ON e~addrnumber = a~addrnumber
        LEFT JOIN adr6      AS f ON f~addrnumber = a~addrnumber
                                AND f~persnumber = a~persnumber
       INNER JOIN usr02     AS g ON g~bname      = a~bname
           FIELDS a~bname,
                  c~name_text,
                  d~department,
                  f~smtp_addr,
                  g~uflag
            WHERE a~bname IN @lr_username
       INTO TABLE @DATA(lt_user).

    IF lt_user IS NOT INITIAL.

      SELECT FROM agr_users
           FIELDS agr_name, uname
            WHERE uname IN @lr_username
       INTO TABLE @DATA(lt_functions).

      CALL FUNCTION 'GET_DOMAIN_VALUES'
        EXPORTING
          domname         = 'XUUFLAG'
          text            = 'X'              " Descriptions - yes/no
        TABLES
          values_tab      = lt_domain_value
        EXCEPTIONS
          no_values_found = 1
          OTHERS          = 2 .

      LOOP AT lt_user INTO DATA(ls_user).

        ls_entityset = CORRESPONDING #( ls_user MAPPING bname      = bname
                                                        department = department
                                                        name_text  = name_text
                                                        smtp_addr  = smtp_addr ).

        ls_domvalue = |{ ls_user-uflag ALIGN = LEFT }|.

        IF lt_domain_value IS NOT INITIAL.

          TRY.
            ls_entityset-status = |{ ls_domvalue } - { lt_domain_value[ domvalue_l = ls_domvalue ]-ddtext }|.
            CATCH cx_sy_itab_line_not_found.
          ENDTRY.

        ENDIF.

        LOOP AT lt_functions INTO DATA(ls_functions) WHERE uname = ls_user-bname.

          FIND 'APROVA' IN ls_functions.

          IF sy-subrc IS INITIAL.
            ls_entityset-aprovador = c_true.
            EXIT.
          ELSE.
            ls_entityset-aprovador = c_false.
          ENDIF.

        ENDLOOP .

        APPEND ls_entityset TO et_entityset.

      ENDLOOP.

    ENDIF.
  ENDMETHOD.


  method VALIDACONTRATOSE_GET_ENTITY.

    DATA: lv_true(3)      TYPE c VALUE 'Sim',
          lv_false(3)     TYPE c VALUE 'Não',
          lv_ebeln(10)    TYPE c,
          lv_liquid_value TYPE ekko-ktwrt.

    DATA(lr_msg_container) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

    TRY.
        lv_ebeln = it_key_tab[ 1 ]-value.
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.

    IF lv_ebeln(2) EQ '46'.

      SELECT FROM ekko  AS e
        LEFT JOIN ekpo  AS p ON p~konnr = e~ebeln
                            AND p~loekz = @space
        LEFT JOIN lfa1  AS l ON l~lifnr = e~lifnr
        LEFT JOIN t16fe AS t ON t~frgke = e~frgke
                            AND t~spras = 'P'
           FIELDS e~bukrs, e~bsart, e~ebeln,
                  e~waers, e~ktwrt, e~kdatb,
                  e~kdate, e~frgke, e~wkurs,
                  e~zz1_cfild_aditivo_pdh,
                  p~ebelp, p~matnr, p~menge,
                  p~netpr, p~werks, p~knttp,
                  p~loekz, p~konnr, p~netwr,
                  l~lifnr, l~stcd1, l~name1,
                  t~frget
            WHERE e~ebeln = @lv_ebeln
         ORDER BY e~ebeln, p~ebelp ASCENDING
       INTO TABLE @DATA(lt_contrato).

      IF lt_contrato IS NOT INITIAL.

        TRY.
            DATA(ls_contrato) = lt_contrato[ 1 ].
          CATCH cx_sy_itab_line_not_found.
        ENDTRY.

        IF ls_contrato <> space.

          er_entity            = CORRESPONDING #( ls_contrato ).
          er_entity-fornecedor = CORRESPONDING #( ls_contrato ).

          IF ls_contrato-frgke <> space.
            er_entity-frgke = |{ ls_contrato-frgke } - { ls_contrato-frget }|.
          ENDIF.

          er_entity-zz1_cfild_aditivo_pdh = COND #( WHEN ls_contrato-zz1_cfild_aditivo_pdh = abap_true
                                                    THEN lv_true
                                                    ELSE lv_false ).

*          er_entity-saldo = ls_contrato-ktwrt.
*
*          LOOP AT lt_contrato INTO DATA(ls_itens) WHERE konnr = ls_contrato-ebeln.
*
*            IF ls_itens-loekz = abap_false.
*              er_entity-saldo -= ls_itens-netwr.
*            ENDIF.
*
*          ENDLOOP.

          CALL FUNCTION 'ME_READ_RELEASE_DOCU'
            EXPORTING
              bukrs   = ls_contrato-bukrs
              ebeln   = ls_contrato-ebeln
              waers   = ls_contrato-waers
              wkurs   = ls_contrato-wkurs
           IMPORTING
              suwrt   = lv_liquid_value.

          er_entity-saldo = ls_contrato-ktwrt - lv_liquid_value.

        ENDIF.

      ELSE.

        lr_msg_container->add_message(
          EXPORTING
            iv_msg_type               = 'E'
            iv_msg_id                 = 'ZMM'
            iv_msg_number             = 003
            iv_msg_v1                 = 'Nenhum documento encontrado'
        ).

        RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
          EXPORTING
            http_status_code   = 404
            message_container  = lr_msg_container.

      ENDIF.

    ELSE.

      lr_msg_container->add_message(
        EXPORTING
          iv_msg_type   = 'E'
          iv_msg_id     = 'ZMM'
          iv_msg_number = 003
          iv_msg_v1     = |'Número'{ lv_ebeln } não é um contrato'|
      ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          http_status_code   = 404
          message_container  = lr_msg_container.

    ENDIF.

  endmethod.


  method VALIDACONTRATOSE_GET_ENTITYSET.

    DATA: lv_true(3)      TYPE c VALUE 'Sim',
          lv_false(3)     TYPE c VALUE 'Não',
          lv_liquid_value TYPE ekko-ktwrt,
          lr_ebeln        TYPE RANGE OF ebeln,
          ls_ebeln        LIKE LINE OF  lr_ebeln,
          ls_entityset    LIKE LINE OF et_entityset.

    DATA(lr_msg_container) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

    lr_ebeln = VALUE #( FOR ls_filter IN it_filter_select_options ( sign   = 'I'
                                                                    option = 'EQ'
                                                                    low    = ls_filter-select_options[ sy-index ]-low ) ).

    SELECT FROM ekko  AS e
      LEFT JOIN ekpo  AS p ON p~konnr = e~ebeln
                          AND p~loekz = @space
      LEFT JOIN lfa1  AS l ON l~lifnr = e~lifnr
      LEFT JOIN t16fe AS t ON t~frgke = e~frgke
                          AND t~spras = 'P'
         FIELDS e~bukrs, e~bsart, e~ebeln,
                e~waers, e~ktwrt, e~kdatb,
                e~kdate, e~frgke, e~wkurs,
                e~zz1_cfild_aditivo_pdh,
                p~ebelp, p~matnr, p~menge,
                p~netpr, p~werks, p~knttp,
                p~loekz, p~konnr, p~netwr,
                l~lifnr, l~stcd1, l~name1,
                t~frget
          WHERE e~ebeln IN @lr_ebeln
       ORDER BY e~ebeln, p~ebelp ASCENDING
     INTO TABLE @DATA(lt_contrato).

    IF lt_contrato IS NOT INITIAL.

      LOOP AT lt_contrato INTO DATA(ls_contrato) WHERE ebeln(2) = '46'.

        ls_entityset            = CORRESPONDING #( ls_contrato ).
        ls_entityset-fornecedor = CORRESPONDING #( ls_contrato ).

        IF ls_contrato-frgke <> space.
          ls_entityset-frgke = |{ ls_contrato-frgke } - { ls_contrato-frget }|.
        ENDIF.

        ls_entityset-zz1_cfild_aditivo_pdh = COND #( WHEN ls_contrato-zz1_cfild_aditivo_pdh = abap_true
                                                     THEN lv_true
                                                     ELSE lv_false ).
*        ls_entityset-saldo = ls_contrato-ktwrt.

*        LOOP AT lt_contrato INTO DATA(ls_itens) WHERE ebeln = ls_contrato-konnr.
*
*          IF ls_itens-loekz = abap_false.
*            ls_entityset-saldo -= ls_itens-netwr.
*          ENDIF.
*
*        ENDLOOP.

        CALL FUNCTION 'ME_READ_RELEASE_DOCU'
          EXPORTING
            bukrs   = ls_contrato-bukrs
            ebeln   = ls_contrato-ebeln
            waers   = ls_contrato-waers
            wkurs   = ls_contrato-wkurs
          IMPORTING
            suwrt   = lv_liquid_value.

        ls_entityset-saldo = ls_contrato-ktwrt - lv_liquid_value.

        APPEND ls_entityset TO et_entityset.

      ENDLOOP.

    ENDIF.

    IF et_entityset IS INITIAL.

      lr_msg_container->add_message(
        EXPORTING
          iv_msg_type               = 'E'
          iv_msg_id                 = 'ZMM'
          iv_msg_number             = 003
          iv_msg_v1                 = 'Nenhum contrato encontrado'
      ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          http_status_code   = 404
          message_container  = lr_msg_container.

    ENDIF.

  endmethod.


  METHOD validafolhaservi_get_entity.

    DATA: ls_service         TYPE mmpur_ses_serviceentrysheet,
          lv_eliminated      TYPE string VALUE 'Eliminado',
          lv_domain_text(30) TYPE c,
          lt_domain_values   TYPE TABLE OF dd07v.

    ls_service = it_key_tab[ 1 ]-value.

    SELECT SINGLE
      FROM mmpur_ses_header AS mm
    FIELDS mm~serviceentrysheet,
           mm~approvalstatus,
           mm~deletioncode
     WHERE mm~serviceentrysheet EQ @ls_service
      INTO @DATA(ls_mmpur_header).

    IF ls_mmpur_header IS NOT INITIAL.

      CALL FUNCTION 'GET_DOMAIN_VALUES'
        EXPORTING
          domname    = 'MMPUR_SES_APPROVAL_STATUS'
          text       = 'X'
        TABLES
          values_tab = lt_domain_values
        EXCEPTIONS
          no_values_found = 1
          OTHERS          = 2 .

      IF lt_domain_values IS NOT INITIAL.
        lv_domain_text = lt_domain_values[ domvalue_l = ls_mmpur_header-approvalstatus ]-ddtext.
      ENDIF.

      er_entity-serviceentrysheet = ls_mmpur_header-serviceentrysheet.

      er_entity-status = COND #( WHEN ls_mmpur_header-deletioncode = abap_true
                                 THEN |{ ls_mmpur_header-deletioncode } - { lv_eliminated }|
                                 ELSE |{ ls_mmpur_header-approvalstatus } - { lv_domain_text }| ).

    ELSE.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhuma folha de serviço encontrado' ).

    ENDIF.

  ENDMETHOD.


  METHOD validaitemcontra_get_entityset.

    DATA: lt_itens     TYPE TABLE OF zcl_zgsd_produtos_mpc_ext=>ts_validaitemcontrato,
          ls_entityset LIKE LINE OF et_entityset.

    DATA(lv_ebeln) = it_key_tab[ 1 ]-value.

    SELECT FROM ekpo AS p
      LEFT JOIN ekkn AS n ON p~ebeln = n~ebeln
                         AND p~ebelp = n~ebelp
         FIELDS p~ebeln, p~ebelp,
                p~matnr, p~werks,
                p~ktmng, p~netpr,
                p~knttp, p~netwr,
                p~mwskz, n~kostl,
                n~nplnr, n~anln1
          WHERE p~ebeln = @lv_ebeln
            AND p~loekz = @space
       ORDER BY p~ebeln, p~ebelp ASCENDING
     INTO TABLE @DATA(lt_contrato).

    IF lt_contrato IS NOT INITIAL.

      LOOP AT lt_contrato INTO DATA(ls_itens).

        ls_entityset = CORRESPONDING #( ls_itens ).

        IF ls_itens-kostl <> space.
          ls_entityset-numero_alocao = ls_itens-kostl.
        ENDIF.

        IF ls_itens-nplnr <> space.
          ls_entityset-numero_alocao = |{ ls_entityset-numero_alocao } ; { ls_itens-nplnr }|.
        ENDIF.

        IF ls_itens-anln1 <> space.
          ls_entityset-numero_alocao = |{ ls_entityset-numero_alocao } ; { ls_itens-anln1 }|.
        ENDIF.

        APPEND ls_entityset TO et_entityset.

      ENDLOOP.

    ELSE.

      DATA(lr_msg_container) = /iwbep/cl_mgw_msg_container=>get_mgw_msg_container( ).

      lr_msg_container->add_message(
        EXPORTING
          iv_msg_type               = 'E'
          iv_msg_id                 = 'ZMM'
          iv_msg_number             = 003
          iv_msg_v1                 = 'Nenhum item encontrado'
      ).

      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          http_status_code   = 404
          message_container  = lr_msg_container.

    ENDIF.

  ENDMETHOD.


  method VALIDANUMEROPEDI_GET_ENTITY.

    DATA(lv_ebeln) = it_key_tab[ 1 ]-value.

    SELECT FROM ekko  AS e
      LEFT JOIN t16fe AS t ON t~frgke = e~frgke
                          AND t~spras = 'P'
         FIELDS e~ebeln,
                e~frgke,
                t~frget
          WHERE e~ebeln = @lv_ebeln
           INTO @DATA(lv_pedido).
    ENDSELECT.

    IF lv_pedido IS NOT INITIAL.

      er_entity       = CORRESPONDING #( lv_pedido ).
      er_entity-frgke = |{ lv_pedido-frgke } - { lv_pedido-frget }|.

    ELSE.

      me->mo_context->get_message_container( )->add_message(
        EXPORTING
          iv_msg_type    = 'E'
          iv_msg_id      = 'ZMM'
          iv_msg_number  = '003'
          iv_msg_v1      = 'Nenhum número de pedido encontrado' ).

    ENDIF.

  endmethod.


  METHOD validarequisicao_get_entity.

    DATA: lv_banfn(10) TYPE c.

    lv_banfn = it_key_tab[ 1 ]-value.

    lv_banfn = |{ lv_banfn ALPHA = IN }|.

    SELECT FROM eban
      LEFT JOIN t161u ON t161u~frgkz = eban~frgkz
                     AND t161u~spras = 'P'
         FIELDS eban~banfn,
                eban~frgkz,
                t161u~fkztx
          WHERE eban~banfn = @lv_banfn
           INTO @DATA(lv_requisicao).
    ENDSELECT.

    IF lv_requisicao IS NOT INITIAL.

      er_entity       = CORRESPONDING #( lv_requisicao ).
      er_entity-frgkz = |{ lv_requisicao-frgkz } - { lv_requisicao-fkztx }|.

    ELSE.

      me->mo_context->get_message_container( )->add_message(
          EXPORTING
            iv_msg_type    = 'E'
            iv_msg_id      = 'ZMM'
            iv_msg_number  = '003'
            iv_msg_v1      = 'Nenhuma requisição encontrado' ).

    ENDIF.

  ENDMETHOD.
ENDCLASS.
