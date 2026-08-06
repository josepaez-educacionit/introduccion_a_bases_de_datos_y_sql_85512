use gestioncomercial;

SELECT * FROM Clientes;
SELECT * FROM Clientes where Id = 4;

update Clientes set correo_electronico =  'sofi.lopez89@hotmail.com' where Id = 4;

SELECT * FROM Clientes where Id = 4;

update Clientes set correo_electronico =  'martin.gonzalez@yahoo.com' where Id = 100;

show tables;
select * from clientes_copia;

update clientes_copia set correo_electronico = '';

-- Se desactiva el modo seguro de SQL para permitir actualizaciones masivas
SET sql_safe_updates = 0;

-- Se vuelve a activar el modo seguro de SQL
SET sql_safe_updates = 1;