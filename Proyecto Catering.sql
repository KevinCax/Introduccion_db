CREATE TABLE Vendedor ( --
  id INTEGER PRIMARY KEY,
  nombre_vendedor VARCHAR(100)
);

CREATE TABLE Servicio ( ---
  id INTEGER PRIMARY KEY,
  nombre varchar(100),
  descripcion VARCHAR(200),
  costo VARCHAR(15),
  meseros_asignados INTEGER
);

CREATE TABLE Evento ( --
  id INTEGER PRIMARY KEY,
  fecha_evento VARCHAR(20),
  hora_evento VARCHAR(20),
  lugar_evento VARCHAR(100),
  tipo_evento VARCHAR(100),
  tiempo_evento VARCHAR(100)
);

CREATE TABLE Contrato ( --
  id INTEGER PRIMARY KEY,
  nombre_contratante VARCHAR(100),
  telefono_contratante VARCHAR(20),
  fecha_requerimiento VARCHAR(20),
  descripcion_opcional VARCHAR(200),
  motivo_cancelacion VARCHAR(200),
  metodo_pago VARCHAR(100),
  monto_pagado VARCHAR(15),
   estado_cumplimiento VARCHAR(50),
   id_vendedor INTEGER,
   id_evento INTEGER,
    FOREIGN KEY (id_vendedor) REFERENCES Vendedor(id),
    FOREIGN KEY (id_evento) REFERENCES Evento(id)
);

CREATE TABLE meseros (
  id INTEGER PRIMARY KEY,
  nombre VARCHAR(100),
  dpi VARCHAR(20),
  telefono_contacto VARCHAR(20),
  edad INTEGER,
  genero VARCHAR(20),
  disponibilidad_evento VARCHAR(100)
);


CREATE TABLE ofrece (
    id_servicio INTEGER,
    id_contrato INTEGER,
    FOREIGN KEY(id_servicio) REFERENCES Servicio(id),
    FOREIGN KEY (id_contrato) REFERENCES Contrato(id)
);

CREATE TABLE asigna (
    id_evento INTEGER,
    id_meseros INTEGER,
    FOREIGN KEY (id_evento) REFERENCES Evento(id),
    FOREIGN KEY (id_meseros) REFERENCES meseros(id)
);



---CONTRATOS---
INSERT INTO Contrato (id, nombre_contratante, telefono_contratante, fecha_requerimiento, descripcion_opcional, motivo_cancelacion, metodo_pago, monto_pagado, estado_cumplimiento, id_vendedor, id_evento)
VALUES (1, 'Pedro Daniel', '42468971', '15 de Enero 2022','Cliente solicita el paquete P2', 'NULL', 'Tarjeta MasterCard', '16000','Completado', 2, 1);

INSERT INTO Contrato (id, nombre_contratante, telefono_contratante, fecha_requerimiento, descripcion_opcional, motivo_cancelacion, metodo_pago, monto_pagado, estado_cumplimiento, id_vendedor, id_evento)
VALUES (2, 'Edgar Lopez', '52774712', '25 de Enero 2022','Cliente solicita el paquete P3', 'NULL', 'Efectivo', '12000','Completado', 1, 2);

INSERT INTO Contrato (id, nombre_contratante, telefono_contratante, fecha_requerimiento, descripcion_opcional, motivo_cancelacion, metodo_pago, monto_pagado, estado_cumplimiento, id_vendedor, id_evento)
VALUES (3, 'Jakeline Rodriguez', '533984712', '3 de Febrero 2022','Cliente solicita el paquete P4', 'NULL', 'Cheque', '10000','Completado', 3, 3);

INSERT INTO Contrato (id, nombre_contratante, telefono_contratante, fecha_requerimiento, descripcion_opcional, motivo_cancelacion, metodo_pago, monto_pagado, estado_cumplimiento, id_vendedor, id_evento)
VALUES (4, 'Astrid Martinez', '52468971', '6 de Marzo 2022','Cliente solicita el paquete P2', 'Cheque sin fondos', 'Cheque', '16000','Cancelado', 1, 4);

INSERT INTO Contrato (id, nombre_contratante, telefono_contratante, fecha_requerimiento, descripcion_opcional, motivo_cancelacion, metodo_pago, monto_pagado, estado_cumplimiento, id_vendedor, id_evento)
VALUES (5, 'Nayeli Saravia', '25468974', '4 de Abril 2022','Cliente solicita el paquete P6', 'NULL', 'Efectivo', '6000','Completado', 2, 5);

INSERT INTO Contrato (id, nombre_contratante, telefono_contratante, fecha_requerimiento, descripcion_opcional, motivo_cancelacion, metodo_pago, monto_pagado, estado_cumplimiento, id_vendedor, id_evento)
VALUES (6, 'Edgar Lopez', '52774712', '20 de Abril 2022','Cliente solicita el paquete P1', 'NULL', 'Tarjeta Visa', '25000','Programado', 1, 6);

INSERT INTO Contrato (id, nombre_contratante, telefono_contratante, fecha_requerimiento, descripcion_opcional, motivo_cancelacion, metodo_pago, monto_pagado, estado_cumplimiento, id_vendedor, id_evento)
VALUES (7, 'Angelica Leiva', '58933712', '10 de Mayo 2022','Cliente solicita el paquete P3', 'Cancelo por retrasos', 'Efectivo', '12000','Cancelado', 3, 7);

INSERT INTO Contrato (id, nombre_contratante, telefono_contratante, fecha_requerimiento, descripcion_opcional, motivo_cancelacion, metodo_pago, monto_pagado, estado_cumplimiento, id_vendedor, id_evento)
VALUES (8, 'Astrid Martinez', '52468971', '25 de Julio 2022','Cliente solicita el paquete P6', 'NULL', 'Tarjeta Visa', '6000','Programado', 2, 8);

INSERT INTO Contrato (id, nombre_contratante, telefono_contratante, fecha_requerimiento, descripcion_opcional, motivo_cancelacion, metodo_pago, monto_pagado, estado_cumplimiento, id_vendedor, id_evento)
VALUES (9, 'Jose Hernandez', '52984712', '8 de Agosto 2022','Cliente solicita el paquete P1', 'NULL', 'Efectivo', '25000','Programado', 1, 9);

INSERT INTO Contrato (id, nombre_contratante, telefono_contratante, fecha_requerimiento, descripcion_opcional, motivo_cancelacion, metodo_pago, monto_pagado, estado_cumplimiento, id_vendedor, id_evento)
VALUES (10, 'Estaban Reynoso', '82468971', '20 de Agosto 2022','Cliente solicita el paquete P5', 'NULL', 'Efectivo', '8000','Programado', 3, 10);


select * FROM Servicio
INSERT INTO Servicio (id, nombre, descripcion, costo, meseros_asignados)
VALUES (1, 'P1','Primer paquete de servicios', '25,000', 25);

INSERT INTO Servicio (id, nombre, descripcion, costo, meseros_asignados)
VALUES (2, 'P2','Segundo paquete de servicios', '16,000', 16);

INSERT INTO Servicio (id, nombre, descripcion, costo, meseros_asignados)
VALUES (3, 'P3','Tecer paquete de servicios', '12,000', 12);

INSERT INTO Servicio (id, nombre, descripcion, costo, meseros_asignados)
VALUES (4, 'P4','Cuarto paquete de servicios', '10,000', 10);

INSERT INTO Servicio (id, nombre, descripcion, costo, meseros_asignados)
VALUES (5, 'P5','Quinto paquete de servicios', '8,000', 8);

INSERT INTO Servicio (id, nombre, descripcion, costo, meseros_asignados)
VALUES (6, 'P6','Sexto paquete de servicios', '6,000', 6);



INSERT INTO Evento(id, fecha_evento, hora_evento, lugar_evento, tipo_evento, tiempo_evento)
VALUES (1,'Sábado 15 de Enero', '4 Pm', 'Islas las cascadas','Boda','9 horas');

INSERT INTO Evento(id, fecha_evento, hora_evento, lugar_evento, tipo_evento, tiempo_evento)
VALUES (2, 'Martes 25 de Enero', '10 Am', 'San Jose del Goldo','Despedida de soltero','5 horas');

INSERT INTO Evento(id, fecha_evento, hora_evento, lugar_evento, tipo_evento, tiempo_evento)
VALUES (3,'Jueves 3 de Febrero', '2 Pm', 'Las Palmeras','XV Años','6 horas');

INSERT INTO Evento(id, fecha_evento, hora_evento, lugar_evento, tipo_evento, tiempo_evento)
VALUES (4,'Domingo 6 de Marzo 2022', '11 Am', 'Hacienda las flores','Pedida','5 horas');

INSERT INTO Evento(id, fecha_evento, hora_evento, lugar_evento, tipo_evento, tiempo_evento)
VALUES (5,'Lunes 4 de Abril', '4 Pm', 'Islas las cascadas','Boda','6 horas');

INSERT INTO Evento(id, fecha_evento, hora_evento, lugar_evento, tipo_evento, tiempo_evento)
VALUES (6,'Miércoles 20 de Abril', '4 Pm', 'La Azodeca','Bodas de plata','7 horas');

INSERT INTO Evento(id, fecha_evento, hora_evento, lugar_evento, tipo_evento, tiempo_evento)
VALUES (7,'Martes 10 de Mayo 2022', '10 Am', 'Las cabañas','XV Años','7 horas');

INSERT INTO Evento(id, fecha_evento, hora_evento, lugar_evento, tipo_evento, tiempo_evento)
VALUES (8,'Lunes 25 de Julio 2022', '4 Pm', 'Salón principal','Despedida de soltera','5 horas');

INSERT INTO Evento(id, fecha_evento, hora_evento, lugar_evento, tipo_evento, tiempo_evento)
VALUES (9,'Lunes 8 de Agosto 2022', '2 Pm', 'Hacienda las rosas','Boda','8 horas');

INSERT INTO Evento(id, fecha_evento, hora_evento, lugar_evento, tipo_evento, tiempo_evento)
VALUES (10,'Sábado 20 de Agosto 2022', '10 Am', 'San Jose del Golfo','Boda','7 horas');

---MESEROS---
insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (1, 'Josue Lopez', '1245879325', '52687941', '20', 'Masculino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (2, 'Juan Perez', '3345879325', '77687941', '21', 'Masculino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (3, 'Fernanda Rodriguez', '7745872325', '99683941', '19', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (4, 'Ester Gutierrez', '1245879222', '22682941', '25', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (5, 'Pedro Lopez', '12458736952', '66687941', '24', 'Masculino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (6, 'Maria Chic', '99458793325', '55687941', '18', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (7, 'Yanely Hernandez', '11458793251', '85687941', '21', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (8, 'Josue Gonzales', '55458793254', '52687999', '29', 'Masculino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (9, 'Denilson Coc', '33509876011', '52684795', '23', 'Masculino', 'No Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (10, 'Rosa Ovalle', '44145879325', '44687941', '25', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (11, 'Sofia Hernandez', '99545879325', '46687941', '19', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (12, 'Katy Hernandez', '11545879325', '33687941', '22', 'Femenino', 'No Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (13, 'Raquel Perez', '99542579325', '25687941', '23', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (14, 'Sofia Hernandez', '99545873325', '46227941', '27', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (15, 'Alejandra Lunaa', '11545779325', '66687941', '20', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (16, 'Andres Perez', '26545879325', '78687941', '25', 'Masculino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (17, 'Jazmin Locon', '11543679325', '22287941', '29', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (18, 'Anthony Lopez', '11545879885', '33387941', '27', 'Masculino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (19, 'Ilsie Revolorio', '22545879325', '26687941', '20', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (20, 'Adolfo Luna', '52486324895', '32568746', '21', 'Masculino', 'No Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (21, 'Eddy Archila', '11545333935', '55687941', '25', 'Masculino', 'No Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (22, 'Sofia Mejia', '33345879325', '46007941', '18', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (23, 'Yamileth Perez', '22545879325', '55587941', '24', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (24, 'Laura Cax', '11545879325', '52687941', '26', 'Femenino', 'No Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (25, 'Edgar Coc', '99542229325', '44487941', '26', 'Masculino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (26, 'Juan Hernandez', '11545555325', '98987941', '21', 'Masculino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (27, 'Anahi Estrada', '22545555325', '88987941', '21', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (28, 'Rosaura Top', '22545555325', '98007941', '27', 'Femenino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (29, 'Juan Mendizabal', '11546665325', '55007941', '26', 'Masculino', 'Disponible');

insert into meseros (id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
values (30, 'Jose Canales', '11540055325', '52487941', '23', 'Masculino', 'Disponible');

INSERT INTO meseros(id, nombre, dpi, telefono_contacto, edad, genero, disponibilidad_evento)
VALUES (31, 'Sebastian Nodales', '33659845120', '23568974', '25', 'Masculino', 'No Disponible');

drop table ofrece

INSERT INTO ofrece(ID_SERVICIO, id_contrato)
VALUES (1,1);

INSERT INTO ofrece(ID_SERVICIO, ID_CONTRATO)
VALUES (3,2);

INSERT INTO ofrece(ID_SERVICIO, ID_CONTRATO)
VALUES (4,3);

INSERT INTO ofrece(ID_SERVICIO, ID_CONTRATO)
VALUES (2,4);

INSERT INTO ofrece(ID_SERVICIO, ID_CONTRATO)
VALUES (6,5);

INSERT INTO ofrece(ID_SERVICIO, ID_CONTRATO)
VALUES (1,6);

INSERT INTO ofrece(ID_SERVICIO, ID_CONTRATO)
VALUES (3,7);

INSERT INTO ofrece(ID_SERVICIO, ID_CONTRATO)
VALUES (6,8);

INSERT INTO ofrece(ID_SERVICIO, ID_CONTRATO)
VALUES (1,9);

INSERT INTO ofrece(ID_SERVICIO, ID_CONTRATO)
VALUES (5,10);



---Asignaciones de meseros--

INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (4,1);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (4,2);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (4,3);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (4,4);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (4,5);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (4,6);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (4,7);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (4,8);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (4,9);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (4,10);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (5,11);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (5,12);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (5,13);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (5,14);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (5,15);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (5,16);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (5,17);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (5,18);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (6,19);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (6,20);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (6,21);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (6,22);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (6,23);
INSERT INTO asigna(ID_EVENTO, ID_MESEROS)
VALUES (6,3);


---VENDEDORES---
INSERT INTO Vendedor(id, nombre_vendedor)
values (1,'Denis López');

INSERT INTO Vendedor(id, nombre_vendedor)
values (2,'Dayana Avila');

INSERT INTO Vendedor(id, nombre_vendedor)
values (3,'Jaime Barrillas');



SELECT *FROM Evento

-- A Realizar una consulta para ver los contratos completos en enero de cualquier año
SELECT Contrato.estado_cumplimiento
FROM Contrato
WHERE strftime('%m', fecha_requerimiento) = '01' AND estado_cumplimiento = 'Completado';


-- B Consulta para contar los contratos de cada servicio
SELECT Servicio.descripcion, COUNT(Contrato.id_vendedor) AS veces_contratado
FROM Servicio
LEFT JOIN Contrato ON Servicio.id = Contrato.id_vendedor
GROUP BY Servicio.descripcion;


--C Realizar una consulta donde me indique los contratos cuyo estado no sea completado
SELECT *
FROM Contrato
WHERE Contrato.estado_cumplimiento <> 'Completado';

--D Realizar una consulta indicando los contratos realizados por cada vendedor
SELECT v.nombre_vendedor, COUNT(c.id) AS total_contratos
FROM vendedor v
INNER JOIN contrato c ON v.id = c.id_vendedor
GROUP BY v.nombre_vendedor;

--E Realizar una consulta cuyo resultado sean los meseros que atendieron un evento en un determinado mes
SELECT strftime('%m', fecha_evento) AS mes, COUNT(*) AS cantidad_eventos
FROM Evento
GROUP BY mes;

-- F Consulta para obtener los meseros que atendieron un evento en un mes específico
SELECT Contrato.id_evento
FROM Contrato
WHERE strftime('%m', fecha_requerimiento) = '05';


--G Realizar una consulta donde me indique el numero de eventos atendido por cada mesero
SELECT m.nombre AS nombre_mesero, COUNT(e.id) AS numero_eventos_atendidos
FROM meseros m
LEFT JOIN Evento e ON m.id = e.id
GROUP BY m.nombre;

-- H Consulta para obtener los eventos realizados por mes
SELECT fecha_requerimiento
FROM Contrato
WHERE strftime('%m', id_evento) = 'Enero';

-- I Consulta del día de la semana en el que se realizan más eventos
SELECT strftime('%w', fecha_evento) AS dia_semana, COUNT(*) AS cantidad_eventos
FROM Evento
GROUP BY dia_semana
ORDER BY cantidad_eventos DESC
LIMIT 1;

-- J Resumen de eventos con nombre del contratante, fecha de completado, monto y vendedor
SELECT c.nombre_contratante, e.fecha_evento, c.monto_pagado, v.nombre_vendedor
FROM Contrato c
JOIN Vendedor v ON c.id_vendedor = v.id
JOIN Evento e ON c.id_evento = e.id;



-- K Actualizar el valor inicial del servicio P2 de 16,000 a 16,500
UPDATE Servicio
SET costo = '16,500'
WHERE nombre = 'P2';
select * from Servicio


--L Debido al costo de los productos se deberá incrementar los servicios mayores a 15,000 suben un 10%
UPDATE Servicio
SET costo = CAST(costo AS FLOAT) * 1.1
WHERE CAST(costo AS FLOAT)>15000;
select *from Servicio
-- L Actualizar los servicios mayores a 15,000 con un incremento del 10%
UPDATE Servicio
SET costo = costo * 1.1
WHERE costo > 15000;


-- M Actualizar el nombre del servicio P4 a D4
UPDATE Servicio
SET nombre = 'D4'
WHERE nombre = 'P4';
--Actualizar el nombre del servicio P5 a D5
UPDATE Servicio
SET nombre = 'D5'
WHERE nombre = 'P5';

-- N  El servicio p6 será desactivado
UPDATE Servicio
SET nombre = 'Desactivado'
WHERE nombre = 'P6';

-- O  Indicar cual fue la fecha en la que se vendió el ultimo servicio p6
SELECT MAX(c.fecha_requerimiento) AS fecha_ultimo_p6
FROM Contrato c
JOIN Servicio s ON c.id_evento = s.id
WHERE s.nombre = 'P6';

--P Indicar cual es el genero de los meseros que más atienden los eventos
SELECT m.genero, COUNT(*) AS cantidad_eventos
FROM meseros m
JOIN asigna a ON m.id = a.id_meseros
GROUP BY m.genero
ORDER BY cantidad_eventos DESC
LIMIT 1;


--Q Realizar una consulta que me indique el numero de horas trabajadas por los meseros en un mes
SELECT m.nombre, SUM(strftime('%H', e.tiempo_evento)) AS horas_trabajadas
FROM meseros m
JOIN asigna a ON m.id = a.id_meseros
JOIN Evento e ON a.id_evento = e.id
WHERE strftime('%m', e.fecha_evento) = '01'
GROUP BY m.nombre;

--R Realizar una tabla que me diga el número de horas trabajadas por los meseros el año anterior, los datos del mesero que se solicitan son, nombre, dpi, edad y estado
SELECT m.nombre, m.dpi, m.edad, m.nombre, SUM(strftime('%H', e.tiempo_evento)) AS horas_trabajadas
FROM meseros m
JOIN asigna a ON m.id = a.id_meseros
JOIN Evento e ON a.id_evento = e.id
WHERE strftime('%Y', e.fecha_evento) = strftime('%Y', date('now', '-1 year'))
GROUP BY m.nombre, m.dpi, m.edad, m.nombre, m.dpi, m.edad, m.nombre;

