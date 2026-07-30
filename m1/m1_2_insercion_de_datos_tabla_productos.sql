use ComercioIT;

-- ============================================
-- PRODUCTOS DE TECNOLOGÍA DEL HOGAR (50)
-- ============================================

-- ===== Smart TVs =====
INSERT INTO Productos (Nombre, Precio, Marca, Categoria, Stock, Disponible) VALUES
('OLED evo C6 55"', 1599.99, 'LG', 'Smart TV', 12, TRUE),
('OLED S95F 55"', 1799.99, 'Samsung', 'Smart TV', 10, TRUE),
('BRAVIA 8 II 55"', 1899.99, 'Sony', 'Smart TV', 8, TRUE),
('QNED92 65"', 1699.99, 'LG', 'Smart TV', 7, TRUE),
('X90M 65"', 1499.99, 'Sony', 'Smart TV', 9, TRUE);

-- ===== Altavoces Inteligentes =====
INSERT INTO Productos (Nombre, Precio, Marca, Categoria, Stock, Disponible) VALUES
('Echo Dot (6ª Gen)', 69.99, 'Amazon', 'Altavoz Inteligente', 30, TRUE),
('Echo Show 10', 279.99, 'Amazon', 'Altavoz Inteligente', 14, TRUE),
('Nest Audio', 99.99, 'Google', 'Altavoz Inteligente', 20, TRUE),
('HomePod mini', 109.99, 'Apple', 'Altavoz Inteligente', 18, TRUE),
('HomePod (2ª Gen)', 349.99, 'Apple', 'Altavoz Inteligente', 10, TRUE);

-- ===== Aspiradoras Robot =====
INSERT INTO Productos (Nombre, Precio, Marca, Categoria, Stock, Disponible) VALUES
('Roomba Combo j10 Max', 1399.99, 'iRobot', 'Aspiradora Robot', 6, TRUE),
('Qrevo Curv', 1299.99, 'Roborock', 'Aspiradora Robot', 9, TRUE),
('Deebot X9 Pro Omni', 1499.99, 'ECOVACS', 'Aspiradora Robot', 7, TRUE),
('S10 Ultra', 1199.99, 'Dreame', 'Aspiradora Robot', 8, TRUE),
('X50 Ultra Complete', 1599.99, 'Dreame', 'Aspiradora Robot', 5, TRUE);

-- ===== Cámaras de Seguridad =====
INSERT INTO Productos (Nombre, Precio, Marca, Categoria, Stock, Disponible) VALUES
('Stick Up Cam Pro', 199.99, 'Ring', 'Seguridad', 15, TRUE),
('Battery Doorbell Plus', 179.99, 'Ring', 'Seguridad', 18, TRUE),
('Nest Cam Indoor', 119.99, 'Google', 'Seguridad', 16, TRUE),
('eufyCam S3 Pro', 549.99, 'Eufy', 'Seguridad', 9, TRUE),
('Tapo C425', 89.99, 'TP-Link', 'Seguridad', 22, TRUE);

-- ===== Iluminación Inteligente =====
INSERT INTO Productos (Nombre, Precio, Marca, Categoria, Stock, Disponible) VALUES
('Hue Starter Kit', 199.99, 'Philips Hue', 'Iluminación', 15, TRUE),
('Hue Lightstrip Plus', 99.99, 'Philips Hue', 'Iluminación', 20, TRUE),
('Essentials A60 RGB', 24.99, 'Nanoleaf', 'Iluminación', 35, TRUE),
('Shapes Hexagons Kit', 249.99, 'Nanoleaf', 'Iluminación', 10, TRUE),
('Smart Bulb Color', 19.99, 'TP-Link', 'Iluminación', 40, TRUE);

-- ===== Termostatos Inteligentes =====
INSERT INTO Productos (Nombre, Precio, Marca, Categoria, Stock, Disponible) VALUES
('Learning Thermostat', 279.99, 'Google Nest', 'Climatización', 11, TRUE),
('Smart Thermostat Premium', 259.99, 'ecobee', 'Climatización', 9, TRUE),
('Tado X Starter Kit', 229.99, 'tado°', 'Climatización', 13, TRUE),
('Smart Thermostat', 199.99, 'Honeywell', 'Climatización', 10, TRUE),
('Radiator Thermostat X', 99.99, 'tado°', 'Climatización', 25, TRUE);

-- ===== Cerraduras Inteligentes =====
INSERT INTO Productos (Nombre, Precio, Marca, Categoria, Stock, Disponible) VALUES
('Encode Plus', 329.99, 'Schlage', 'Seguridad', 8, TRUE),
('Smart Lock Pro', 279.99, 'Nuki', 'Seguridad', 12, TRUE),
('Linus Smart Lock L2', 249.99, 'Yale', 'Seguridad', 10, TRUE),
('Aqara U300', 229.99, 'Aqara', 'Seguridad', 14, TRUE),
('Ultraloq U-Bolt Pro', 299.99, 'Ultraloq', 'Seguridad', 7, TRUE);

-- ===== Enchufes Inteligentes =====
INSERT INTO Productos (Nombre, Precio, Marca, Categoria, Stock, Disponible) VALUES
('Smart Plug Mini', 24.99, 'TP-Link', 'Domótica', 45, TRUE),
('Smart Plug', 29.99, 'Meross', 'Domótica', 35, TRUE),
('Smart Plug Matter', 39.99, 'Eve', 'Domótica', 20, TRUE),
('Smart Plug', 34.99, 'Amazon', 'Domótica', 28, TRUE),
('Outdoor Smart Plug', 44.99, 'TP-Link', 'Domótica', 15, TRUE);

-- ===== Purificadores de Aire =====
INSERT INTO Productos (Nombre, Precio, Marca, Categoria, Stock, Disponible) VALUES
('Pure Cool TP10', 649.99, 'Dyson', 'Purificador', 6, TRUE),
('Smart Air Purifier 4', 249.99, 'Xiaomi', 'Purificador', 14, TRUE),
('Core 600S', 299.99, 'Levoit', 'Purificador', 11, TRUE),
('Blue Pure 211i Max', 349.99, 'Blueair', 'Purificador', 9, TRUE),
('Pure A9', 499.99, 'Electrolux', 'Purificador', 5, TRUE);

-- ===== Electrodomésticos Inteligentes =====
INSERT INTO Productos (Nombre, Precio, Marca, Categoria, Stock, Disponible) VALUES
('Bespoke AI Fridge', 2999.99, 'Samsung', 'Electrodoméstico', 3, TRUE),
('Family Hub Plus', 3499.99, 'Samsung', 'Electrodoméstico', 2, TRUE),
('Smart Oven Pro', 499.99, 'Breville', 'Electrodoméstico', 8, TRUE),
('Dual Blaze Air Fryer', 249.99, 'Cosori', 'Electrodoméstico', 12, TRUE),
('Smart Coffee Maker', 299.99, 'DeLonghi', 'Electrodoméstico', 10, TRUE);