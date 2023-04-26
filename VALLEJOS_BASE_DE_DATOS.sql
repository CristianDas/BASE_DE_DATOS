create database trasporte2;
use trasporte2;


create table conductor (
  id_conductor INT PRIMARY KEY,
  nombre_conductor VARCHAR(50),
  apellido_conductor VARCHAR(50),
  fecha_nacimiento DATE,
  telefono VARCHAR(15)
);

drop table conductor;

drop TABLE vehiculo;
create table vehiculo (
  id_vehiculo INT PRIMARY KEY,
  marca VARCHAR(50),
  modelo VARCHAR(50),
  placa VARCHAR(10),
  FOREIGN KEY (id_vehiculo) REFERENCES conductor(id_conductor)
);
drop table pasajero;
CREATE TABLE pasajero (
  id_pasajero INT PRIMARY KEY,
  nombre_pasajero VARCHAR(50),
  apellido_pasajero VARCHAR(50),
  fecha_nacimiento DATE,
  telefono VARCHAR(15),
  FOREIGN KEY (id_pasajero) REFERENCES vehiculo(id_vehiculo)
);

CREATE TABLE horarios (
  id_horario INT PRIMARY KEY,
  dia_semana VARCHAR(10),
  hora_salida TIME,
  hora_llegada TIME,
   FOREIGN KEY (id_horario) REFERENCES conductor(id_conductor)
);

CREATE TABLE rutas (
  id_ruta INT PRIMARY KEY ,
  origen VARCHAR(255) ,
  destino VARCHAR(255),
   FOREIGN KEY (id_ruta) REFERENCES horarios (id_horario)
);

INSERT INTO conductor (id_conductor, nombre_conductor, apellido_conductor, fecha_nacimiento, telefono)
VALUES (1, 'sofia', 'Pérez', '1990-01-01', '3216397353');

INSERT INTO conductor (id_conductor, nombre_conductor, apellido_conductor, fecha_nacimiento, telefono)
VALUES (2, 'María', 'González', '1985-05-15', '3216397351');
INSERT INTO conductor (id_conductor, nombre_conductor, apellido_conductor, fecha_nacimiento, telefono)
VALUES (3, 'cristian', 'vallejos', '2000-01-01', '3147888196');

INSERT INTO conductor (id_conductor, nombre_conductor, apellido_conductor, fecha_nacimiento, telefono)
VALUES (4, 'camila', 'González', '1985-03-15', '322196566');
INSERT INTO conductor (id_conductor, nombre_conductor, apellido_conductor, fecha_nacimiento, telefono)
VALUES (5, 'arlison', 'Pérez', '1960-01-01', '3251121221');

INSERT INTO conductor (id_conductor, nombre_conductor, apellido_conductor, fecha_nacimiento, telefono)
VALUES (6, 'natalia', 'vallejos', '1985-05-15', '315896	456');
INSERT INTO conductor (id_conductor, nombre_conductor, apellido_conductor, fecha_nacimiento, telefono)
VALUES (7, 'yolima', 'gomez', '1980-01-01', '3259554554');

INSERT INTO conductor (id_conductor, nombre_conductor, apellido_conductor, fecha_nacimiento, telefono)
VALUES (8, 'daniel', 'felipe', '1990-05-15', '3265564564');
INSERT INTO conductor (id_conductor, nombre_conductor, apellido_conductor, fecha_nacimiento, telefono)
VALUES (9, 'camila', 'suarez', '1985-05-15', '3254848784');
INSERT INTO conductor (id_conductor, nombre_conductor, apellido_conductor, fecha_nacimiento, telefono)
VALUES (10, 'herminsul', 'González', '1985-05-15', '3154978744');




SELECT * FROM CONDUCTOR;


INSERT INTO vehiculo (id_vehiculo, marca, modelo, placa)
VALUES (1, 'Toyota', 'Corolla', 'ABC123');
INSERT INTO vehiculo (id_vehiculo, marca, modelo, placa)
VALUES (2, 'Honda', 'Civic', 'DEF456');
INSERT INTO vehiculo (id_vehiculo, marca, modelo, placa)
VALUES (3, 'Nissan', 'Sentra', 'GHI789');
INSERT INTO vehiculo (id_vehiculo, marca, modelo, placa)
VALUES (4, 'Ford', 'Fiesta', 'JKL012');
INSERT INTO vehiculo (id_vehiculo, marca, modelo, placa)
VALUES (5, 'Chevrolet', 'Camaro', 'MNO345');
INSERT INTO vehiculo (id_vehiculo, marca, modelo, placa)
VALUES (6, 'Mazda', '3', 'PQR678');
INSERT INTO vehiculo (id_vehiculo, marca, modelo, placa)
VALUES (7, 'Hyundai', 'Elantra', 'STU901');
INSERT INTO vehiculo (id_vehiculo, marca, modelo, placa)
VALUES (8, 'Volkswagen', 'Jetta', 'VWX234');
INSERT INTO vehiculo (id_vehiculo, marca, modelo, placa)
VALUES (9, 'Kia', 'Soul', 'YZA567');
INSERT INTO vehiculo (id_vehiculo, marca, modelo, placa)
VALUES (10, 'BMW', '320i', 'BCD890');

SELECT * FROM VEHICULO;

INSERT INTO pasajero (id_pasajero, nombre_pasajero, apellido_pasajero, fecha_nacimiento, telefono)
VALUES (1, 'orlando', 'vallejos', '1992-05-15', '321545454');
INSERT INTO pasajero (id_pasajero, nombre_pasajero, apellido_pasajero, fecha_nacimiento, telefono)
VALUES (2, 'luis', 'González', '2000-10-20', '325645644');
INSERT INTO pasajero (id_pasajero, nombre_pasajero, apellido_pasajero, fecha_nacimiento, telefono)
VALUES (3, 'Pedro', 'vallejos', '2000-10-12', '555-9876');
INSERT INTO pasajero (id_pasajero, nombre_pasajero, apellido_pasajero, fecha_nacimiento, telefono)
VALUES (4, 'juan', 'Martínez', '1992-05-30', '555-4321');
INSERT INTO pasajero (id_pasajero, nombre_pasajero, apellido_pasajero, fecha_nacimiento, telefono)
VALUES (5, 'Carlos', 'Rodríguez', '1985-08-08', '555-8765');
INSERT INTO pasajero (id_pasajero, nombre_pasajero, apellido_pasajero, fecha_nacimiento, telefono)
VALUES (6, 'Sofía', 'Pérez', '1993-12-18', '312154848');
INSERT INTO pasajero (id_pasajero, nombre_pasajero, apellido_pasajero, fecha_nacimiento, telefono)
VALUES (7, 'Luis', 'García', '1999-03-25', '3554545544');
INSERT INTO pasajero (id_pasajero, nombre_pasajero, apellido_pasajero, fecha_nacimiento, telefono)
VALUES (8, 'Marta', 'ortiz', '2000-11-05', '315454545');
INSERT INTO pasajero (id_pasajero, nombre_pasajero, apellido_pasajero, fecha_nacimiento, telefono)
VALUES (9, 'cristian', 'vallejos', '1987-06-27', '321697353');
INSERT INTO pasajero (id_pasajero, nombre_pasajero, apellido_pasajero, fecha_nacimiento, telefono)
VALUES (10, 'Laura', 'Díaz', '1994-09-03', '3258945445');
SELECT * FROM PASAJERO;






insert  horarios (id_horario, dia_semana, hora_salida, hora_llegada) values (3, 'lunes', '13:00:00', '15:00:00');
insert  horarios (id_horario, dia_semana, hora_salida, hora_llegada) values (4, 'Martes', '13:00:00', '09:00:00');
insert  horarios (id_horario, dia_semana, hora_salida, hora_llegada) values (5, 'Miércoles', '13:00:00', '15:00:00');
insert  horarios (id_horario, dia_semana, hora_salida, hora_llegada) values (6, 'jueves', '13:00:00', '10:00:00');
insert  horarios (id_horario, dia_semana, hora_salida, hora_llegada) values (7, 'viernes', '13:00:00', '11:00:00');
insert  horarios (id_horario, dia_semana, hora_salida, hora_llegada) values (8, 'sabado', '13:00:00', '13:00:00');
insert  horarios (id_horario, dia_semana, hora_salida, hora_llegada) values (9, 'domingo', '13:00:00', '14:00:00');
insert  horarios (id_horario, dia_semana, hora_salida, hora_llegada) values (10, 'lunes', '13:00:00', '05:00:00');
insert  horarios (id_horario, dia_semana, hora_salida, hora_llegada) values (13, 'jueves', '00:00:00', '04:00:00');
insert  horarios (id_horario, dia_semana, hora_salida, hora_llegada) values (12, 'Miércoles', '13:00:00', '03:00:00');







INSERT INTO rutas (id_ruta, origen, destino) VALUES (10, 'bogota', 'medellin');
INSERT INTO rutas (id_ruta, origen, destino) VALUES(20, 'pasto', 'bogota');
INSERT INTO rutas (id_ruta, origen, destino) VALUES(3, 'bogota', 'barranquilla');
INSERT INTO rutas (id_ruta, origen, destino) VALUES(4, 'medellin', 'cartagena');
INSERT INTO rutas (id_ruta, origen, destino) VALUES(5, 'monteria', 'Oaxaca');
INSERT INTO rutas (id_ruta, origen, destino) VALUES(6, 'bogota', 'Playa del Carmen');
INSERT INTO rutas (id_ruta, origen, destino) VALUES(7, 'cartagena', 'Villahermosa');
INSERT INTO rutas (id_ruta, origen, destino) VALUES(8, 'pereira', 'manizales');
INSERT INTO rutas (id_ruta, origen, destino) VALUES(9, 'holanda', 'orlando');
INSERT INTO rutas (id_ruta, origen, destino) VALUES(10, 'Hermosillo', 'Culiacán');


SELECT nombre_conductor AS "nombre_conductor1"
FROM conductor;

SELECT id_vehiculo AS "id_de_vehiculos"
FROM vehiculo;

SELECT nombre_pasajero AS "nombre_personas"
FROM pasajero;


SELECT *
FROM conductor
LIMIT 5;

SELECT *
FROM pasajero
LIMIT 5;

SELECT *
FROM vehiculo
LIMIT 5;

SELECT *
FROM rutas
LIMIT 5;

SELECT *
FROM horarios
LIMIT 5;

SELECT COUNT(*)
FROM conductor WHERE id_conductor % 2 = 0;

SELECT COUNT(*)
FROM vehiculo
WHERE id_conductor % 2 = 0;


SELECT COUNT(*)
FROM pasajero
WHERE id_pasajero % 2 = 0;


SELECT COUNT(*)
FROM rutas
WHERE id_ruta % 2 = 0;



SELECT COUNT(*)
FROM horarios
WHERE id_horario % 2 = 0;



SELECT COUNT(*)
FROM conductor
WHERE id_conductor % 2 = 0;


SELECT *
FROM conductor
WHERE id_conductor IN (SELECT id_vehiculo FROM vehiculo WHERE marca = 'Toyota');


SELECT *
FROM rutas
WHERE id_ruta IN (SELECT id_ruta FROM horarios WHERE dia_semana = 'lunes');

SELECT *
FROM horario
WHERE origen = 'bogota' AND destino LIKE 'M%';	

SELECT *
FROM vehiculo
WHERE marca = 'mazda' AND modelo > 2010;

SELECT *
FROM pasajero
WHERE apellido_pasajero = 'vallejos';
