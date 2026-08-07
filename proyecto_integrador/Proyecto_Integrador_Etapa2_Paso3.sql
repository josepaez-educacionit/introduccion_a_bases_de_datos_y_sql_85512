use tecno_db;

/* 1. Cargar 5 registros en la tabla LOCALIDADES, tal como se detallan a continuación: */
# Prompt: podrías proporcionar el script para cargar 5 registros en la tabla LOCALIDADES, tal como se detallan en las imágenes adjuntas.

INSERT INTO `LOCALIDADES` (`LocalidadID`, `Nombre`, `CP`, `Provincia`) VALUES
(1, 'CABA', '1000', 'Buenos Aires'),
(2, 'Rosario', '2000', 'Santa Fe'),
(3, 'Córdoba', '5000', 'Córdoba'),
(4, 'San Miguel de Tucumán', '4000', 'Tucumán'),
(5, 'Neuquén', '8300', 'Neuquén');

select * from LOCALIDADES;

/* 2. Cargar 5 registros en la tabla CLIENTES, tal como se detallan a continuación: */
# podrías proporcionar el script para cargar 5 registros en la tabla CLIENTES, tal como se detallan en las imágenes adjuntas 

desc CLIENTES;
select * from Clientes;

INSERT INTO `CLIENTES` (`ClienteID`, `Nombre`, `Apellido`, `CUIT`, `Direccion`, `Observaciones`, `LocalidadID`) VALUES
(5, 'Santiago', 'González', '23-24582359-9', 'Uriburu 558 - 7°A', 'VIP', 3),
(14, 'Gloria', 'Fernández', '23-35965852-5', 'Constitución 323', 'GBA', 1),
(17, 'Gonzalo', 'López', '23-33587416-0', 'Arias 2624', 'GBA', 5),
(26, 'Carlos', 'García', '23-42321230-9', 'Pasteur 322 - 2°C', 'VIP', 2),
(50, 'Micaela', 'Altieri', '23-22885566-5', 'Santamarina 1255', 'GBA', 4);

/* 3. Cargar 4 registros en la tabla ARTICULOS, tal como se detallan a continuación: */
#Prompt: podrías proporcionar el script para cargar 4 registros en la tabla ARTICULOS, tal como se detallan en las imágenes adjuntas 

select * from ARTICULOS;

INSERT INTO `ARTICULOS` (`ArticuloID`, `Nombre`, `Precio`, `Stock`) VALUES
(95, 'Webcam con Micrófono Plug & Play', 513.35, 39),
(157, 'Apple AirPods Pro', 979.75, 152),
(335, 'Lavasecarropas Automático Samsung', 1589.50, 12),
(411, 'Gloria Trevi / Gloria / CD+DVD', 2385.70, 2);

/* 4. Cargar 5 registros en la tabla FACTURAS, tal como se detallan a continuación:*/
# Prompt: podrías proporcionar el script para cargar 5 registros en la tabla FACTURAS, tal como se detallan en las imágenes adjuntas 

select * from FACTURAS;

INSERT INTO FACTURAS (FacturaID, Letra, Numero, ClienteID, Fecha, Monto)
VALUES
(1, 'A', 28, 14, '2021-03-18', 1589.50),
(2, 'A', 39, 26, '2021-04-12', 979.75),
(3, 'B', 8, 17, '2021-04-25', 513.35),
(4, 'B', 12, 5, '2021-05-01', 2385.70),
(5, 'B', 19, 50, '2022-05-26', 979.75);

/* Adjuntar el archivo SQL con el código y realizar un prompt donde le pedimos generar 
el código SQL para insertar 15 registros en la tabla DETALLES.*/

# Prompt: 
/*
		Podrías generar el código SQL para insertar 15 registros en la  tabla DETALLES.
		Considerando los datos registrados en estas tablas: 

Podrías generar el código SQL para insertar 15 registros en la  tabla DETALLES.
Considerando los datos registrados en estas tablas: 

INSERT INTO articulos (ArticuloID, Nombre, Precio, Stock) VALUES
(95,  'Webcam con Micrófono Plug & Play',       513.35,   39),
(157, 'Apple AirPods Pro',                      979.75,  152),
(335, 'Lavasecarropas Automático Samsung',     1589.50,   12),
(411, 'Gloria Trevi / Gloria / CD+DVD',        2385.70,    2);

INSERT INTO CLIENTES (ClienteID, Nombre, Apellido, CUIT, Direccion, Observaciones, LocalidadID) VALUES
(5,  'Santiago', 'González',    '23-24582359-9',  'Uriburu 558 - 7°A',      'VIP', '3'),
(14, 'Gloria',   'Fernández',   '23-35965852-5',  'Constitución 323',       'GBA', '1'),
(17, 'Gonzalo',  'López',       '23-33587416-0',  'Arias 2624',             'GBA', '5'),
(26, 'Carlos',   'García',      '23-42321230-9',  'Pasteur 322 - 2°C',      'VIP', '2'),
(50, 'Micaela',  'Altieri',     '23-22885566-5',  'Santamarina 1255',       'GBA', '4');

INSERT INTO facturas (FacturaID, Letra, Numero, ClienteID, Fecha, Monto) VALUES
(1, 'A', 28, 14, '2021-03-18', 1589.50),
(2, 'A', 39, 26, '2021-04-12',  979.75),
(3, 'B',  8, 17, '2021-04-25',  513.35),
(4, 'B', 12,  5, '2021-05-01', 2385.70),
(5, 'B', 19, 50, '2022-05-26',  979.75);

CREATE TABLE IF NOT EXISTS `DETALLE` (
	`DetalleID` int AUTO_INCREMENT NOT NULL UNIQUE, -- Identificador único del detalle, autoincremental
	`ArticuloID` int NOT NULL,                      -- Relaciona el detalle con un artículo vendido
	`FacturaID` int NOT NULL,                       -- Relaciona el detalle con una factura
	`Cantidad` int NOT NULL,                        -- Cantidad de unidades del artículo vendido
	PRIMARY KEY (`DetalleID`)                       -- Llave primaria de la tabla
);
*/

select * from DETALLE;

INSERT INTO DETALLE (ArticuloID, FacturaID, Cantidad) VALUES
-- Factura 1
(335, 1, 1),
(95,  1, 2),
(157, 1, 1),

-- Factura 2
(157, 2, 1),
(95,  2, 1),
(335, 2, 1),

-- Factura 3
(95,  3, 1),
(157, 3, 1),
(95,  3, 2),

-- Factura 4
(411, 4, 1),
(95,  4, 1),
(157, 4, 2),

-- Factura 5
(157, 5, 1),
(95,  5, 1),
(335, 5, 1);

INSERT INTO DETALLE (ArticuloID, FacturaID, Cantidad) VALUES
-- Factura 1 - Cliente Gloria
(335, 1, 1),
(95,  1, 2),
(157, 1, 1),

-- Factura 2 - Cliente Carlos
(157, 2, 1),
(411, 2, 1),
(95,  2, 3),

-- Factura 3 - Cliente Gonzalo
(95,  3, 1),
(335, 3, 1),
(157, 3, 2),

-- Factura 4 - Cliente Santiago
(411, 4, 2),
(95,  4, 1),
(157, 4, 1),

-- Factura 5 - Cliente Micaela
(157, 5, 2),
(411, 5, 1),
(95,  5, 1);
