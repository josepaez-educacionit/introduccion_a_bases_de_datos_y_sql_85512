-- Mostrar las Bases de Datos del servidor
show databases;

use comercioit;

-- Mostrar las tablas de la base de datos activa
show tables;

select * from productos;

desc productos;
describe productos;

# Manera Completa
-- Insertamos un registo sin asiganar el precio, por lo queda en Null el precio

INSERT INTO Productos (Nombre, Marca, Categoria, Stock, Disponible) VALUES
('Laptop HP 17', 'HP', 'Portátiles', 2, true);

INSERT INTO Productos ( Marca, Nombre, Categoria, Precio, Stock, Disponible) VALUES
					('Teclado', 'Laptop R9', 'Portátiles', 1200, 1, true);

INSERT INTO Productos (Nombre, Marca, Categoria, Stock) VALUES
					  ('Laptop Apple', 'Apple', 'Portátiles', 10);

# Manera SQL
INSERT INTO Productos 
SET Nombre = 'Antivirus', Marca = 'AVG', Categoria = 'Utilidades', Stock = 10, Disponible = true;


# Manera Simplificada
INSERT INTO Productos 
VALUES ( null, 'Mouse', 20, 'LG', 'Dispositivos', 0, false );


# Consulta de Datos Anexados

CREATE TABLE ClientesVIP (
    ID INT AUTO_INCREMENT PRIMARY KEY, 
    Nombre VARCHAR(50) NOT NULL, 
    Apellido VARCHAR(50) NOT NULL, 
    Email VARCHAR(100), 
    Telefono VARCHAR(20), 
    Ciudad VARCHAR(50), 
    Provincia VARCHAR(50), 
    CodigoPostal VARCHAR(10) 
);

truncate table ClientesVIP;

select * from ClientesVIP;
select * from Clientes;

insert into ClientesVIP (ID, Nombre, Apellido, Email, Telefono, Ciudad, Provincia, CodigoPostal)
select 					 ID, Nombre, Apellido, Email, Telefono, Ciudad, Provincia, CodigoPostal
from clientes;

insert into ClientesVIP (ID, Nombre, Apellido, Email, Telefono, Ciudad, Provincia, CodigoPostal)
select 					 ID, Nombre, Apellido, Email, Telefono, Ciudad, Provincia, CodigoPostal
from clientes where id = 23;

insert into ClientesVIP (ID, Nombre, Apellido, Email, Telefono, Ciudad, Provincia, CodigoPostal)
select 					 ID, Nombre, Apellido, Email, Telefono, Ciudad, Provincia, CodigoPostal
from clientes where id = 19;

select * from ClientesVIP;

-- =========================================
-- 1. Creación de la tabla OtrosArticulos
-- =========================================
CREATE TABLE OtrosArticulos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(50),
    precio DECIMAL(10,2),
    stock INT,
    disponible BOOLEAN
);

show tables;

-- =========================================
-- 2. Inserción de 5 artículos
-- =========================================
INSERT INTO OtrosArticulos (nombre, categoria, precio, stock, disponible)
VALUES
('Notebook Lenovo IdeaPad 3', 'Tecnología', 459999.99, 15, TRUE),
('Silla Ergonómica Oficina', 'Muebles', 85000.50, 8, TRUE),
('Smartphone Samsung Galaxy A34', 'Tecnología', 299999.90, 25, TRUE),
('Cafetera Express Philips', 'Electrodomésticos', 120000.75, 5, FALSE),
('Zapatillas Adidas Runfalcon', 'Calzado', 55000.00, 30, TRUE);

select * from OtrosArticulos;

/*
Prompt: 
	Genera una sentencia SQL para insertar 10 artículos en la tabla OtrosArticulos en MySQL. La tabla tiene las siguientes columnas: 
		nombre (VARCHAR(100)), categoria (VARCHAR(50)), precio (DECIMAL(10,2)), stock (INT), y disponible (BOOLEAN). 
        Los valores deben ser realistas y variados para cada artículo."
*/

-- Sentencia SQL para insertar 10 artículos variados en la tabla OtrosArticulos generado por IA
INSERT INTO OtrosArticulos (nombre, categoria, precio, stock, disponible) VALUES
('Lámpara LED 60W', 'Iluminación', 45.99, 15, TRUE),
('Teclado Inalámbrico', 'Electrónica', 38.50, 8, TRUE),
('Botella Térmica 1L', 'Accesorios', 29.99, 25, TRUE),
('Funda Protectora iPad', 'Accesorios', 19.95, 12, TRUE),
('Cable HDMI 2.0 3m', 'Electrónica', 12.75, 30, TRUE),
('Cojín Ergonómico', 'Hogar', 52.00, 5, FALSE),
('Juego de Herramientas 20 piezas', 'Herramientas', 34.25, 7, TRUE),
('Auriculares Bluetooth', 'Electrónica', 65.99, 3, TRUE),
('Maceta Cerámica Grande', 'Hogar', 27.50, 18, TRUE),
('Protector Pantalla Vidrio Templado', 'Accesorios', 9.99, 50, TRUE);
