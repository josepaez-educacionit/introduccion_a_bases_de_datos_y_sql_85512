# PASO 3: 
#       Crear las relaciones indicando cardinalidad.

-- a. Uno a muchos entre CLIENTES y FACTURAS: un cliente puede tener muchas facturas.
-- b. Uno a muchos entre FACTURAS y DETALLE: una factura puede tener varios detalles.
-- c. Uno a muchos entre ARTÍCULOS y DETALLE: un artículo puede estar en varios detalles

## Relaciones entre tablas

* **FACTURAS → CLIENTES**

  * `Facturas.ClienteID` referencia a `Clientes.ClienteID`

* **DETALLE → FACTURAS**

  * `Detalle.FacturaID` referencia a `Facturas.FacturaID`

* **DETALLE → ARTÍCULOS**

  * `Detalle.ArticuloID` referencia a `Articulos.ArticuloID`

*/