@AbapCatalog.sqlViewName: 'ZV_LIBROS_0494'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Lista Libros'
@Search.searchable: true
@Metadata.allowExtensions: true
@UI.headerInfo : { typeName       : 'Libro',
                   typeNamePlural : 'Libros',
                   title          : {type  : #STANDARD,
                                     value : 'Titulo'},
                   description    : {type  : #STANDARD,
                                     value : 'Autor'},
                   imageUrl: 'Url' }
define view z_c_libros_0494
  as select from    ztb_libros_0494     as libros
    inner join      ztb_catego_0494     as categ  on libros.bi_categ = categ.bi_categ
    left outer join z_c_clnts_libs_0494 as ventas on libros.id_libro = ventas.IdLibro
  association [0..*] to z_c_clientes_0494 as _clientes on libros.id_libro = _clientes.IdLibro
{

  key libros.id_libro   as IdLibro,
  key categ.bi_categ    as Categoria,
      libros.titulo     as Titulo,
      libros.autor      as Autor,
      libros.editorial  as Editorial,
      libros.idioma     as Idioma,
      libros.pagina     as Pagina,
      @Semantics.amount.currencyCode: 'Moneda'
      libros.precio     as Precio,
      case
      when ventas.Ventas < 1 then 0
      when ventas.Ventas = 1 then 1
      when ventas.Ventas = 2 then 2
      when ventas.Ventas > 2 then 3
      else 0
      end               as Ventas,
      case ventas.Ventas
      when 0 then ''
      else ''
      end               as Semaforo,
      @Semantics.currencyCode: true
      libros.moneda     as Moneda,
      libros.formato    as Formato,
      categ.descripcion as Descripcion,
      libros.url        as Url,
      _clientes
}
