use GestionComercial;

select * from Clientes;
select count(*) from Clientes;

desc Clientes;

# create table + select
create table Clientes_Copia
select * from Clientes;

show tables;

desc Clientes;
desc Clientes_Copia;

select * from Clientes_Copia;
select count(*) from Clientes_Copia;

create table Clientes_SetMinimo
select Id, Nombre from Clientes;

select * from Clientes_SetMinimo;

SHOW TABLES;