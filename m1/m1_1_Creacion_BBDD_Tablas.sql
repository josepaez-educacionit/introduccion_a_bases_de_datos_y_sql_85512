-- Crear la base de datos principal
create database ComercioIT;

-- Seleccionar la base de datos para trabajar
use ComercioIT;

/*
  Si necesitas eliminar la base de datos para reiniciar el entorno, descomenta la siguiente línea:
  drop database ComercioIT;
*/

-- Ejemplos de comentarios en SQL:
-- Esto es un comentario de una línea usando '--'.
# Esto es otra forma de comentario de una línea usando '#'.
/*
  Esto es
  un comentario multilinea
*/

-- Crear la tabla Productos para almacenar información de los productos disponibles
CREATE TABLE Productos(
    idProducto INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, -- Identificador único del producto
    Nombre VARCHAR(50) NOT NULL, -- Nombre del producto
    Precio DOUBLE, -- Precio del producto
    Marca VARCHAR(30) NOT NULL, -- Marca del producto
    Categoria VARCHAR(30) NOT NULL, -- Categoría a la que pertenece el producto
    Stock INT NOT NULL, -- Cantidad disponible en inventario
    Disponible BOOLEAN DEFAULT FALSE -- Indica si el producto está disponible para la venta
);

-- Crear la tabla Articulos para registrar productos específicos y sus precios
CREATE TABLE Articulos (
    ID INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del artículo
    Nombre VARCHAR(100) NOT NULL, -- Nombre descriptivo del artículo
    Precio DECIMAL(10, 2) NOT NULL -- Precio del artículo con dos decimales
);

-- Crear la tabla Clientes para almacenar información de los clientes
CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY, 
    Nombre VARCHAR(50) NOT NULL, 
    Apellido VARCHAR(50) NOT NULL, 
    Email VARCHAR(100), 
    Telefono VARCHAR(20), 
    Ciudad VARCHAR(50), 
    Provincia VARCHAR(50), 
    CodigoPostal VARCHAR(10) 
);


-- Mostrar todas las bases de datos existentes
show databases;

-- Mostrar todas las tablas creadas en la base de datos actual
show tables;

-- Si necesitas eliminar la tabla Productos, puedes usar alguna de las siguientes opciones:
-- drop TABLE Productos;
-- drop table if exists Productos;


