-- Insertar 5 buses en la tabla Vehiculo
INSERT INTO Vehiculo (id_vehiculo, modelo, estado, capacidad_pasajeros, fecha_compra, numero_bus, id_tipo_vehiculo) VALUES
(1, 'Mercedes-Benz Sprinter', TRUE, 20, '2020-05-15', 1001, 1),
(2, 'Mercedes-Benz Sprinter', TRUE, 50, '2021-08-10', 1002, 1),
(3, 'Mercedes-Benz Sprinter', TRUE, 45, '2019-03-22', 1003, 1),
(4, 'Mercedes-Benz Sprinter', FALSE, 40, '2022-01-05', 1004, 1),
(5, 'Mercedes-Benz Sprinter', TRUE, 25, '2023-06-30', 1005, 1);

-- Insertar 3 roles para operarios y conductores en la tabla Rol
INSERT INTO Rol (id_rol, nombre) VALUES
(1, 'Conductor'),
(2, 'Operario');

-- Insertar 3 operarios en la tabla Personal
INSERT INTO Personal (Codigo, nombre, apellido, info_licencia, años_exp, identificacion, id_rol) VALUES
('12345678CG', 'Carlos', 'Gómez', NULL, '5 años', 12345678, 2),
('87654321LM', 'Lucía', 'Martínez', NULL, '3 años', 87654321, 2),
('11223344AP', 'Ana', 'Pérez', NULL, '7 años', 11223344, 2);

-- Insertar 3 conductores en la tabla Personal
INSERT INTO Personal (Codigo, nombre, apellido, info_licencia, años_exp, identificacion, id_rol) VALUES
('22334455JR', 'Juan', 'Ramírez', 'Licencia A', '10 años', 22334455, 1),
('33445566PL', 'Pedro', 'López', 'Licencia B', '8 años', 33445566, 1),
('44556677MF', 'María', 'Fernández', 'Licencia C', '12 años', 44556677, 1);

-- Insertar 5 estaciones del tipo "Terminal"
INSERT INTO Estacion (id_estacion, nombre, ubicacion_latitud, ubicacion_longitud, cap_max) VALUES
(1, 'Terminal Central', '40.712776', '-74.005974', 200),
(2, 'Terminal Norte', '34.052235', '-118.243683', 150),
(3, 'Terminal Sur', '41.878113', '-87.629799', 180),
(4, 'Terminal Este', '29.760427', '-95.369804', 120),
(5, 'Terminal Oeste', '25.761681', '-80.191788', 160);

-- Insertar 5 estaciones del tipo "Paradero"
INSERT INTO Estacion (id_estacion, nombre, ubicacion_latitud, ubicacion_longitud, cap_max) VALUES
(6, 'Paradero A', '37.774929', '-122.419416', 50),
(7, 'Paradero B', '47.606209', '-122.332069', 40),
(8, 'Paradero C', '39.739236', '-104.990251', 60),
(9, 'Paradero D', '32.776665', '-96.796989', 45),
(10, 'Paradero E', '36.162664', '-86.781602', 55);

-- Insertar 6 visitas de mantenimiento en la tabla Visita
INSERT INTO Visita (id_visita, descripcion, Fecha, id_bus, id_estacion, id_personal) VALUES
(1, 'Cambio de aceite y revisión general', '2024-12-01', 1, 1, '12345678CG'),
(2, 'Revisión de frenos y limpieza de motor', '2024-12-02', 2, 2, '11223344AP'),
(3, 'Reemplazo de llantas y alineación', '2024-12-03', 3, 3, '12345678CG'),
(4, 'Chequeo del sistema eléctrico', '2024-12-04', 4, 4, '11223344AP'),
(5, 'Cambio de filtros y mantenimiento preventivo', '2024-12-05', 5, 5, '87654321LM'),
(6, 'Revisión de suspensión y reparación menor', '2024-12-06', 1, 6, '12345678CG');

-- Insertar 3 rutas en la tabla Ruta
INSERT INTO Ruta (id_ruta, tiem_recorrido, nombre, id_estacion) VALUES
(1, '01:30:00', 'Ruta Centro-Norte', 1),
(2, '02:15:00', 'Ruta Este-Oeste', 2),
(3, '01:45:00', 'Ruta Sur-Centro', 3);

-- Insertar 5 viajes en la tabla Viaje
INSERT INTO Viaje (id_viaje, fecha_hora, id_vehiculo, id_ruta) VALUES
(1, '2024-12-01 08:00:00', 1, 1),
(2, '2024-12-01 10:30:00', 2, 2),
(3, '2024-12-01 15:00:00', 3, 3),
(4, '2024-12-02 07:00:00', 4, 1),
(5, '2024-12-02 12:00:00', 5, 2);
