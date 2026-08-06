Use TECNO_DB;

CREATE TABLE LOCALIDADES (
   LOCALIDADID INT PRIMARY KEY,
   NOMBRE VARCHAR(40),
   CP VARCHAR(10),
   PROVINCIA VARCHAR(20));


#5 Mostrar todas las BBDD
show DATABASES;

#6 Mostrar todas tablas de la BBDD Laboratorio
use LABORATORIO;
show tables;

#7 Comentar instruccion que muestra todas tablas de la BBDD Laboratorio
-- show tables;
#  show tables;
/* show tables; */

#8. Describir la estructura de la tabla CLIENTES.
use TECNO_DB;
desc Clientes;
describe Clientes;
