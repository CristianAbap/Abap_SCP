@AbapCatalog.sqlViewName: 'ZV_CLIENTES_0494'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Información cliente'
@Metadata.allowExtensions: true
@UI.headerInfo : { typeName       : 'Cliente',
                   title          : {type  : #STANDARD,
                                     value : 'NombreCompleto'},
                   description    : {type  : #STANDARD,
                                     value : 'IdCliente'},
                   imageUrl: 'Url' }
define view z_c_clientes_0494
  as select from ztb_cliente_0494 as clientes
    inner join   ztb_cln_lib_0494 as clilib on clilib.id_cliente = clientes.id_cliente
{

  key clilib.id_libro      as IdLibro,
  key clientes.id_cliente  as IdCliente,
  key clientes.tipo_acceso as Acceso,
      clientes.nombre      as Nombre,
      clientes.apellido    as Apellido,
      clientes.email       as Email,
      clientes.url         as Url,
      concat_with_space(clientes.nombre,clientes.apellido,1) as NombreCompleto
}
