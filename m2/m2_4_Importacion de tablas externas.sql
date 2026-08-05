/* ========================================================================
   SCRIPT: Importación de Tablas Externas - Verificación de Datos
   ========================================================================
   
   PROPÓSITO:
   Este script verifica y consulta los datos de tablas que fueron creadas
   a partir de la importación de archivos externos en diferentes formatos
   (CSV y JSON). Se utiliza para validar que la importación se realizó
   correctamente y para consultar los datos almacenados.
   
   TABLAS INVOLUCRADAS:
   - localidades_argentina_csv: Tabla creada desde archivo CSV
   - localidades_argentina_json: Tabla creada desde archivo JSON
   
   DESCRIPCIÓN DEL FLUJO:
   1. Selecciona la base de datos de trabajo: comercioit
   2. Lista todas las tablas disponibles en la BD
   3. Consulta los datos de la tabla CSV
   4. Consulta los datos de la tabla JSON
   
   MÓDULO: M2 - Importación de Datos Externos
   ======================================================================== */

-- Paso 1: Seleccionar la base de datos de trabajo
USE comercioit;

-- Paso 2: Listar todas las tablas disponibles en la base de datos
-- Esto permite verificar que las tablas importadas existen en comercioit
SHOW TABLES;

-- Paso 3: Consultar datos de la tabla importada desde archivo CSV
-- Esta tabla contiene información de localidades de Argentina en formato CSV
-- Se muestra el contenido completo para verificar la correcta importación
SELECT * FROM localidades_argentina_csv;

-- Paso 4: Consultar datos de la tabla importada desde archivo JSON
-- Esta tabla contiene información de localidades de Argentina en formato JSON
-- Se muestra el contenido completo para validar la estructura y datos
SELECT * FROM localidades_argentina_json;

/* ========================================================================
   NOTAS IMPORTANTES:
   - Ambas tablas deben contener información similar sobre localidades
   - Los formatos de origen (CSV y JSON) pueden tener diferencias estructurales
   - Comparar resultados para validar consistencia entre formatos
   - Verificar cantidad de registros en ambas tablas
   ======================================================================== */
