@AbapCatalog.sqlViewName: 'ZV_CATEGO_0494'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categoria'
@Metadata.ignorePropagatedAnnotations: true
define view z_c_catego_0494
  as select from ztb_catego_0494
{
  key bi_categ    as BiCateg,
      descripcion as Descripcion
}
