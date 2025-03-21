@AbapCatalog.sqlViewName: 'ZV_CLI_LIBS_0495'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes-Libros'
@Metadata.ignorePropagatedAnnotations: true
define view z_c_clnts_libs_0494
  as select from ztb_cln_lib_0494
{
  key id_libro                     as IdLibro,
      count( distinct id_cliente ) as Ventas
}
group by
  id_libro
