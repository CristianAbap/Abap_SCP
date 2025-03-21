CLASS zcl_carga_dataos_0494 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS insert_data_tab_1.
    METHODS insert_data_tab_2.
    METHODS insert_data_tab_3.
    METHODS insert_data_tab_4.
    METHODS insert_data_tab_5.
ENDCLASS.



CLASS zcl_carga_dataos_0494 IMPLEMENTATION.
 METHOD if_oo_adt_classrun~main.

    "Se inserta información tabla ZTB_ACC_CAT_0494
    me->insert_data_tab_1( ).
    "Se muestra salida de información
    out->write( sy-dbcnt ).
    out->write( 'Se inserta información tabla ZTB_ACC_CAT_0494' ).

    "Se inserta información tabla ZTB_LIBROS_238
    me->insert_data_tab_2( ).
    out->write( sy-dbcnt ).
    out->write( 'Se inserta información tabla ZTB_LIBROS_0494' ).

    "Se inserta información tabla ZTB_CATEGO_0494
    me->insert_data_tab_3( ).
    out->write( sy-dbcnt ).
    out->write( 'Se inserta información tabla ZTB_CATEGO_0494' ).

    "Se inserta información tabla ZTB_CLIENTE_0494
    me->insert_data_tab_4( ).
    out->write( sy-dbcnt ).
    out->write( 'Se inserta información tabla ZTB_CLIENTE_0494' ).

    "Se inserta información tabla ZTB_CLN_LIB_0494
    me->insert_data_tab_5( ).
    out->write( sy-dbcnt ).
    out->write( 'Se inserta información tabla ZTB_CLN_LIB_0494' ).

  ENDMETHOD.

  METHOD insert_data_tab_1.
    DATA: l_ti_acc_cat_0494 TYPE TABLE OF ztb_acc_cat_0494.

    "Se asignan valores
    l_ti_acc_cat_0494 = VALUE #( ( bi_categ = '1' tipo_acceso =  'R' descripcion = 'Restringido' )
                                 ( bi_categ = '2' tipo_acceso =  'P' descripcion = 'Publico' ) ).

    "Se borra data
    DELETE FROM ztb_acc_cat_0494.
    "Se inserta información
    INSERT ztb_acc_cat_0494 FROM TABLE @l_ti_acc_cat_0494.

  ENDMETHOD.

  METHOD insert_data_tab_2.
    DATA: l_ti_libros_0494 TYPE TABLE OF ztb_libros_0494.

    "Se asignan valores
    l_ti_libros_0494 = VALUE #(
    ( id_libro = 'LB00000001' bi_categ = '1' titulo = 'El Marciano tras ella' autor = 'CRODRIGUEZ'  editorial = 'HC-Limitada' idioma = 'E' pagina = '400' precio = '90000' moneda = 'COP' formato = 'A' url =
'https://cdn-icons-png.flaticon.com/512/3330/3330314.png' )
    ( id_libro = 'LB00000002' bi_categ = '1' titulo = 'Misterios del Ayer' autor = 'CRODRIGUEZ'  editorial = 'HC-Limitada' idioma = 'E' pagina = '350' precio = '120000' moneda = 'COP' formato = 'A' url =
'https://cdn-icons-png.flaticon.com/512/3330/3330314.png' )
    ( id_libro = 'LB00000003' bi_categ = '2' titulo = 'Rosa Salvaje' autor = 'NARENAS'  editorial = 'LD-Limitada' idioma = 'E' pagina = '250' precio = '55000' moneda = 'COP' formato = 'A' url = 'https://cdn-icons-png.flaticon.com/512/3330/3330314.png' )
    ( id_libro = 'LB00000004' bi_categ = '2' titulo = 'Miranda' autor = 'NARENAS'  editorial = 'LD-Limitada' idioma = 'E' pagina = '200' precio = '30000' moneda = 'COP' formato = 'A' url = 'https://cdn-icons-png.flaticon.com/512/3330/3330314.png' ) ).

    "Se borra data
    DELETE FROM ztb_libros_0494.
    "Se inserta información
    INSERT ztb_libros_0494 FROM TABLE @l_ti_libros_0494.

  ENDMETHOD.

  METHOD insert_data_tab_3.
    DATA: l_ti_CATEGO_0494 TYPE TABLE OF ztb_catego_0494.

    "Se asignan valores
    l_ti_CATEGO_0494 = VALUE #( ( bi_categ = '1'  descripcion = 'Terror' )
                                ( bi_categ = '2'  descripcion = 'Comedia' ) ).

    "Se borra data
    DELETE FROM ztb_catego_0494.
    "Se inserta información
    INSERT ztb_catego_0494 FROM TABLE @l_ti_CATEGO_0494.
  ENDMETHOD.

  METHOD insert_data_tab_4.
    DATA: l_ti_CLIENTE_0494 TYPE TABLE OF ztb_cliente_0494.

    "Se asignan valores
    l_ti_CLIENTE_0494 = VALUE #( ( id_cliente = 'CL00000001' tipo_acceso = 'R' nombre = 'Cristian Fernando' apellido = 'Rodriguez Molina' email = 'cristianf0305@gmail.com' url = 'https://cdn-icons-png.flaticon.com/512/1785/1785911.png' )
                                 ( id_cliente = 'CL00000001' tipo_acceso = 'P' nombre = 'Cristian Fernando' apellido = 'Rodriguez Molina' email = 'cristianf0305@gmail.com' url = 'https://cdn-icons-png.flaticon.com/512/1785/1785911.png' )
                                 ( id_cliente = 'CL00000002' tipo_acceso = 'P' nombre = 'Luis Felipe' apellido = 'Rodriguez Molina' email = 'Luisf@gmail.com' url = 'https://cdn-icons-png.flaticon.com/512/3445/3445069.png' ) ).

    "Se borra data
    DELETE FROM ztb_cliente_0494.
    "Se inserta información
    INSERT ztb_cliente_0494 FROM TABLE @l_ti_CLIENTE_0494.
  ENDMETHOD.

  METHOD insert_data_tab_5.
    DATA: l_ti_CLN_LIB_0494 TYPE TABLE OF ztb_cln_lib_0494.

    "Se asignan valores
    l_ti_CLN_LIB_0494 = VALUE #( ( id_cliente = 'CL00000001' id_libro = 'LB00000001' )
                                 ( id_cliente = 'CL00000001' id_libro = 'LB00000002' )
                                 ( id_cliente = 'CL00000002' id_libro = 'LB00000003' )
                                 ( id_cliente = 'CL00000002' id_libro = 'LB00000004' ) ).

    "Se borra data
    DELETE FROM ztb_cln_lib_0494.
    "Se inserta información
    INSERT ztb_cln_lib_0494 FROM TABLE @l_ti_CLN_LIB_0494.
  ENDMETHOD.
ENDCLASS.
