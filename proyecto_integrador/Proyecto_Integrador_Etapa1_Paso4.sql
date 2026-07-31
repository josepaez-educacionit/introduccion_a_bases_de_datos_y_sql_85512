use tecno_prj;

show TABLEs;

desc clientes;
describe clientes;

select * from clientes;


INSERT INTO CLIENTES (Nombre, Apellido, CUIT, Direccion, Comentarios) VALUES
('Juan', 'Gonzalez', '20-32145678-9', 'Av. Corrientes 1450, CABA', NULL),
('María', 'Fernandez', '27-28456789-4', 'San Martín 325, Rosario', 1),
('Carlos', 'Rodriguez', '20-30123456-7', 'Belgrano 852, Córdoba', NULL),
('Lucía', 'Martinez', '27-33214567-8', 'Mitre 450, Mendoza', 2),
('Diego', 'Lopez', '20-29876543-5', 'Rivadavia 1780, La Plata', NULL),
('Ana', 'Perez', '27-31548796-1', 'Sarmiento 990, Mar del Plata', 3),
('Javier', 'Sosa', '20-27564321-8', '25 de Mayo 231, Salta', NULL),
('Carolina', 'Romero', '27-34127895-0', 'España 1520, Tucumán', NULL),
('Pablo', 'Diaz', '20-29345678-6', 'Urquiza 110, Santa Fe', 4),
('Valeria', 'Alvarez', '27-32789456-2', 'Moreno 145, Neuquén', NULL),
('Fernando', 'Torres', '20-31234567-1', 'Las Heras 880, San Juan', NULL),
('Gabriela', 'Ruiz', '27-29874125-9', 'Brown 654, Bahía Blanca', 5),
('Nicolás', 'Castro', '20-33659874-3', 'Colón 220, Paraná', NULL),
('Florencia', 'Suarez', '27-34987541-7', '9 de Julio 310, Posadas', NULL),
('Martín', 'Acosta', '20-28765412-0', 'Av. Alem 450, Resistencia', 2),
('Sofía', 'Herrera', '27-35698741-5', 'Pellegrini 710, San Luis', NULL),
('Ricardo', 'Benitez', '20-27456981-2', 'Independencia 1500, Río Cuarto', NULL),
('Paula', 'Molina', '27-31874569-8', 'Chacabuco 420, San Rafael', 1),
('Gustavo', 'Silva', '20-29123487-6', 'Av. Libertad 980, Tandil', NULL),
('Julieta', 'Ortiz', '27-33412587-4', 'Lavalle 1220, Rafaela', NULL),
('Hernán', 'Vega', '20-30214587-9', 'General Paz 845, Villa María', 6),
('Micaela', 'Ramos', '27-34789652-1', 'Catamarca 390, Jujuy', NULL),
('Federico', 'Medina', '20-28965471-3', 'San Lorenzo 555, Río Gallegos', NULL),
('Camila', 'Navarro', '27-35147896-0', 'Avellaneda 875, Comodoro Rivadavia', 7),
('Leandro', 'Morales', '20-31478596-2', 'Buenos Aires 210, Ushuaia', NULL),
('Natalia', 'Ibarra', '27-32987415-6', 'Hipólito Yrigoyen 990, Formosa', NULL),
('Cristian', 'Cabrera', '20-29587412-8', 'Dorrego 415, San Nicolás', 8),
('Verónica', 'Rojas', '27-34457896-3', 'Italia 760, Concordia', NULL),
('Sebastián', 'Gimenez', '20-30789654-1', 'Perón 1350, Trelew', NULL),
('Daniela', 'Quiroga', '27-35987412-7', 'Alem 640, Santiago del Estero', 9);


select * from Clientes;
select * from Clientes where ClienteId = 25;
select * from Clientes where ClienteId = 100;
select * from Clientes where comentarios is not null;
select * from Clientes where comentarios is null;
