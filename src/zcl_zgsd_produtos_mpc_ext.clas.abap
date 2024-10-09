CLASS zcl_zgsd_produtos_mpc_ext DEFINITION
  PUBLIC
  INHERITING FROM zcl_zgsd_produtos_mpc
  CREATE PUBLIC .

PUBLIC SECTION.

  TYPES:
    BEGIN OF ts_reqcompradeep,
        id_sap                   TYPE banfn,
        data_solicitacao         TYPE char10,
        data_remessa             TYPE char10,
        escopo(500)              TYPE c,
        id_sap_departamento      TYPE ekgrp,
        tipo_requisicao          TYPE bbsrt,
        id_sap_usuario_aprovador TYPE afnam,
        id_sap_moeda             TYPE waers,
        itemsolicitacao          TYPE TABLE OF ts_reqcompraitem WITH DEFAULT KEY,
      END OF ts_reqcompradeep .
  TYPES:
    BEGIN OF ts_pedidodeep,
        ebeln            TYPE ebeln,
        escopo(25000)    TYPE c,
        afnam            TYPE afnam,
        bsart            TYPE esart,
        ekgrp            TYPE bkgrp,
        lifnr            TYPE elifn,
        gparn            TYPE gparn,
        vtext            TYPE vtxtk,
        bukrs            TYPE bukrs,
        waers            TYPE waers,
        werks            TYPE ewerk,
        konnr            TYPE konnr,
        banfn            TYPE banfn,
        aedat            TYPE c LENGTH 10,
        zterm            TYPE dzterm,
        funcoesParceiro  TYPE TABLE OF ts_funcoesparceiro WITH DEFAULT KEY,
        items            TYPE TABLE OF ts_pedidoitem WITH DEFAULT KEY,
      END OF ts_pedidodeep .
  TYPES:
    BEGIN OF ts_folhaservicodeep,
        serviceentrysheet      TYPE char10,
        postingdate            TYPE char10,
        responsibleperson      TYPE char8,
        referencepurchaseorder TYPE char10,
        name                   TYPE char40,
        items                  TYPE TABLE OF ts_folhaservicoitem WITH DEFAULT KEY,
      END OF ts_folhaservicodeep .

  TYPES:
    BEGIN OF ts_centro_material_deep,
      bukrs  TYPE bukrs,
      werks  TYPE werks_d,
      status TYPE c LENGTH 10,
      butxt  TYPE name1,
      materialservicoset TYPE TABLE OF ts_materialservico WITH DEFAULT KEY,
    END OF ts_centro_material_deep,

    tt_centro_material_deep TYPE TABLE OF ts_centro_material_deep.

  METHODS define
    REDEFINITION .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ZGSD_PRODUTOS_MPC_EXT IMPLEMENTATION.


  method DEFINE.

    super->define( ).

    model->get_entity_type( 'ReqCompra' )->bind_structure( iv_structure_name = 'ZCL_ZGSD_PRODUTOS_MPC_EXT=>TS_REQCOMPRADEEP' ).

    model->get_entity_type( 'Pedido' )->bind_structure( iv_structure_name = 'ZCL_ZGSD_PRODUTOS_MPC_EXT=>TS_PEDIDODEEP' ).

    model->get_entity_type( 'FolhaServico' )->bind_structure( iv_structure_name = 'ZCL_ZGSD_PRODUTOS_MPC_EXT=>TS_FOLHASERVICO' ).

  endmethod.
ENDCLASS.
