-- Seleccionar la base de datos para trabajar
use ComercioIT;

-- Consultas para verificar los registros insertados en la tabla Articulos

SELECT * FROM Articulos; -- Muestra todos los campos de todos los artículos

SELECT Nombre FROM Articulos; -- Muestra solo los nombres de los artículos

SELECT Nombre, Precio FROM Articulos; -- Muestra nombre y precio de cada artículo

-- Consulta que muestra todos los campos y el precio con un aumento del 25%
SELECT *, Precio * 1.25 as 'Precio con Aumento' FROM Articulos;

# -------------------------------
# ORDENAMIENTO - ORDER BY
# -------------------------------
-- Consultas para visualizar y ordenar los registros de la tabla Clientes

select * from Clientes; -- Muestra todos los clientes

select * from Clientes order by Id desc; -- Muestra los clientes ordenados por ID descendente

select Apellido, Nombre from Clientes order by Apellido, Nombre desc; -- Muestra apellido y nombre ordenados alfabéticamente

select Id, Apellido, Nombre, Provincia 
from Clientes 
order by Provincia, Apellido, Nombre; -- Muestra clientes ordenados por provincia y luego por apellido y nombre

-- Consultas de registros insertados en la tabla Productos
select * from Productos;

select *, 'China' as Origen
from Productos;

# -------------------------------
# LIMITAR REGISTROS - LIMIT
# -------------------------------
SELECT * FROM Clientes;
SELECT * FROM Clientes LIMIT 10;
SELECT * FROM Clientes ORDER BY Provincia LIMIT 5;

# -----------------------------------------------
# PAGINACIÓN - LIMIT + OFFSET
# -----------------------------------------------
SELECT * FROM Clientes LIMIT 5 OFFSET 20;

