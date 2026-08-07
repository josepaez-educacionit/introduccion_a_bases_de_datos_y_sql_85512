use tecno_db;

-- 1. Modificar la tabla FACTURAS

/* a. 
	Asignar la restricción UNSIGNED al campo Monto, manteniendo el tipo de dato ya
	definido para el campo.
*/

desc FACTURAS;
alter table FACTURAS modify Monto double UNSIGNED;


/* b. 
	Modificar la tabla ARTICULOS tomando en cuenta las siguientes consideraciones:
	b1. Cambiar el tipo de dato del campo Nombre para que admita hasta 75 caracteres.
	b2. Asignar las restricciones UNSIGNED y NOT NULL al campo Precio, manteniendo
	el tipo de dato ya definido para el campo.
	b3. Asignar las restricciones UNSIGNED y NOT NULL al campo Stock, manteniendo
	el tipo de dato ya definido para el campo
*/ 
desc ARTICULOS;
alter table ARTICULOS
	modify Nombre varchar(75) NOT NULL,
    modify Precio double UNSIGNED NOT NULL,
    modify Stock int UNSIGNED NOT NULL;
    
desc ARTICULOS;    

/* 3. Modificar la tabla CLIENTES. Tomar en cuenta las siguientes consideraciones: */
/*
	a. Cambiar el tipo de dato del campo Nombre para que admita hasta 30 caracteres y asigne la restricción correspondiente para
		que su carga sea obligatoria. OK

	b. Cambiar el tipo de dato del campo Apellido para que admita hasta 35 caracteres y asigne la restricción
		correspondiente para que su carga sea obligatoria.

	c. Cambiar el nombre del campo Comentarios por Observaciones y su tipo de dato para que admita hasta
		255 caracteres.
*/
 
  desc CLIENTES;
alter table CLIENTES
	modify Nombre varchar(30) NOT NULL,
	modify Apellido varchar(35) NOT NULL,
	change Comentarios Observaciones varchar(255);
    
desc CLIENTES;    
desc localidades;

 /* 4. Crear un PROMPT para que la IA modifique el código que venimos desarrollando, de tal forma que se
relacionen las tablas CLIENTES y LOCALIDAD. 

Prompt: Actúa como experto en MySQL, analiza la siguiente estructura de tablas y ayudame a relacionar Clientes y Localidades proporcionando el script sql

CREATE TABLE IF NOT EXISTS `CLIENTES` (
	`ClienteID` int AUTO_INCREMENT NOT NULL UNIQUE, 
	`Nombre` varchar(25) NOT NULL,                  
	`Apellido` varchar(25) NOT NULL,                
	`CUIT` char(16) NOT NULL,                       
	`Direccion` varchar(50) NOT NULL,               
	`Comentarios` varchar(50) NOT NULL,             
	PRIMARY KEY (`ClienteID`)                       
);

CREATE TABLE LOCALIDADES (
    LocalidadID INT PRIMARY KEY,
    Nombre VARCHAR(40) not null,
    CP VARCHAR(10) not null,
    Provincia VARCHAR(20) not null
);
*/


-- Agregar la columna para la relación
ALTER TABLE `CLIENTES` ADD COLUMN `LocalidadID` INT;

-- Establecer la relación (Foreign Key)
ALTER TABLE `CLIENTES` 
ADD CONSTRAINT `fk_cliente_localidad` 
FOREIGN KEY (`LocalidadID`) REFERENCES `LOCALIDADES`(`LocalidadID`);

desc CLIENTES; 

