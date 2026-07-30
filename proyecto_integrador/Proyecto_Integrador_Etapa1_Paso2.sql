# PASO 2: 
#       Crear el diagrama que represente la estructura de la base de datos con la descripción que se detalla y con el conocimiento de que

-- a. Uno a muchos entre CLIENTES y FACTURAS: un cliente puede tener muchas facturas.
-- b. Uno a muchos entre FACTURAS y DETALLE: una factura puede tener varios detalles.
-- c. Uno a muchos entre ARTÍCULOS y DETALLE: un artículo puede estar en varios detalles

/*
# Referencia – Estructuras de las tablas a generar

## Tabla: FACTURAS

| Campo     | Tipo    | Clave |
| --------- | ------- | ----- |
| FacturaID | integer | PK    |
| Letra     | char    |       |
| Número    | integer |       |
| ClienteID | integer |       |
| Fecha     | date    |       |
| Monto     | double  |       |

**Descripción de campos**

* **FacturaID**: Identificador único de la factura (clave primaria).
* **Letra**: Letra identificatoria del tipo de factura.
* **Número**: Número correlativo de la factura.
* **ClienteID**: Identificador del cliente asociado a la factura.
* **Fecha**: Fecha de emisión de la factura.
* **Monto**: Importe total de la factura.

---

## Tabla: ARTÍCULOS

| Campo      | Tipo        | Clave |
| ---------- | ----------- | ----- |
| ArticuloID | integer     | PK    |
| Nombre     | varchar(50) |       |
| Precio     | double      |       |
| Stock      | integer     |       |

**Descripción de campos**

* **ArticuloID**: Identificador único del artículo (clave primaria).
* **Nombre**: Nombre o descripción del artículo.
* **Precio**: Precio unitario del artículo.
* **Stock**: Cantidad disponible en inventario.

---

## Tabla: CLIENTES

| Campo       | Tipo        | Clave |
| ----------- | ----------- | ----- |
| ClienteID   | integer     | PK    |
| Nombre      | varchar(25) |       |
| Apellido    | varchar(25) |       |
| CUIT        | char(16)    |       |
| Dirección   | varchar(50) |       |
| Comentarios | varchar(50) |       |

**Descripción de campos**

* **ClienteID**: Identificador único del cliente (clave primaria).
* **Nombre**: Nombre del cliente.
* **Apellido**: Apellido del cliente.
* **CUIT**: Clave Única de Identificación Tributaria.
* **Dirección**: Dirección del cliente.
* **Comentarios**: Observaciones o notas adicionales sobre el cliente.

---

## Tabla: DETALLE

| Campo      | Tipo    | Clave |
| ---------- | ------- | ----- |
| DetalleID  | integer | PK    |
| ArticuloID | integer | FK    |
| FacturaID  | integer | FK    |
| Cantidad   | integer |       |

**Descripción de campos**

* **DetalleID**: Identificador único del registro de detalle (clave primaria).
* **ArticuloID**: Identificador del artículo asociado al detalle (clave foránea).
* **FacturaID**: Identificador de la factura asociada al detalle (clave foránea).
* **Cantidad**: Cantidad del artículo incluida en la factura.

---

## Relaciones entre tablas

* **FACTURAS → CLIENTES**

  * `Facturas.ClienteID` referencia a `Clientes.ClienteID`

* **DETALLE → FACTURAS**

  * `Detalle.FacturaID` referencia a `Facturas.FacturaID`

* **DETALLE → ARTÍCULOS**

  * `Detalle.ArticuloID` referencia a `Articulos.ArticuloID`

*/