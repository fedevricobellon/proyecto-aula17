-- VALORACIÓN DEL PRIMER CUATRIMESTRE

-- A. Crear Base de Datos y Tablas según Modelo Relacional:

CREATE DATABASE Pelu_Can;

USE Pelu_Can;
CREATE TABLE Dueno(
DNI int not null,
Nombre varchar(25),
Apellido varchar(25),
Teléfono bigint(25),
Dirección varchar(25),
constraint pk_DNI primary key (DNI)
);

CREATE TABLE Perro(
ID_Perro int not null auto_increment,
Nombre varchar(25),
Fecha_nac datetime,
Sexo varchar(1),
DNI_dueno int not null,
constraint pk_Perro primary key (ID_Perro),
foreign key (DNI_dueno) references Dueno(DNI) 
);

CREATE TABLE Historial(
ID_Historial int not null auto_increment,
Fecha date,
Perro int not null,
Descripción varchar(50),
Monto int,
constraint pk_hist primary key Historial(ID_Historial),
foreign key (Perro) references Perro(ID_Perro)
);

-- Ejercicio 1: Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus PK y FK. 
-- Respuesta: Creé la misma luego de crear la BBDD y crear el esquema completo. Por ello, vuelvo a reflejarla aqui debajo:

CREATE TABLE Perro(
ID_Perro int not null auto_increment,
Nombre varchar(25),
Fecha_nac datetime,
Sexo varchar(1),
DNI_dueno int not null,
constraint pk_Perro primary key (ID_Perro),
foreign key (DNI_dueno) references Dueno(DNI) 
);

-- Ejercicio 2: Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal:

INSERT INTO Dueno (DNI, Nombre, Apellido, Teléfono, Dirección) VALUES (30000000, 'Gerardo', 'Farias', 3514734379, 'Los Jacintos 433');
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) VALUES ('Lio', '2016-01-22', 'M', 30000000);
INSERT INTO Historial (Fecha, Perro, Descripción, Monto) VALUES ('2022-07-01', 1, 'Corte', 800);
INSERT INTO Dueno (DNI, Nombre, Apellido, Teléfono, Dirección) VALUES (30000001, 'Karina', 'Sand', 3514734378, 'Libertad 123');
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) VALUES ('Kiara', '2016-03-24', 'F', 30000001);
INSERT INTO Historial (Fecha, Perro, Descripción, Monto) VALUES ('2022-07-05', 2, 'Baño', 500);
INSERT INTO Dueno (DNI, Nombre, Apellido, Teléfono, Dirección) VALUES (30000002, 'Roberto', 'Gomez', 3514734377, 'Calle 840');
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) VALUES ('Kile', '2013-12-02', 'M', 30000002);
INSERT INTO Historial (Fecha, Perro, Descripción, Monto) VALUES ('2022-06-05', 3, 'Baño', 500);
INSERT INTO Dueno (DNI, Nombre, Apellido, Teléfono, Dirección) VALUES (30000003, 'Elida', 'Roque', 3514734376, 'San Juan 436');
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) VALUES ('Rocky', '2010-04-04', 'M', 30000003);
INSERT INTO Historial (Fecha, Perro, Descripción, Monto) VALUES ('2022-05-11', 4, 'Baño', 500);
INSERT INTO Dueno (DNI, Nombre, Apellido, Teléfono, Dirección) VALUES (30000004, 'Raul', 'Rojas', 3514734375, 'Independencia 153');
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) VALUES ('Reina', '2016-01-22', 'F', 30000004);
INSERT INTO Historial (Fecha, Perro, Descripción, Monto) VALUES ('2022-07-09', 5, 'Corte', 800);
INSERT INTO Dueno (DNI, Nombre, Apellido, Teléfono, Dirección) VALUES (30000005, 'Carmen', 'Electra', 3514734374, 'San Martin 587');
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) VALUES ('Diva', '2021-08-30', 'F', 30000005);
INSERT INTO Historial (Fecha, Perro, Descripción, Monto) VALUES ('2022-03-30', 6, 'Corte', 800);

-- Observación: Ingresé más de un animal para así tener varios ingresos con los cuales realizar el ejercicio que me fue asignado a continuación.

-- Ejercicio 7: Obtener ingresos percibidos en Julio del 2022.

SELECT Fecha, SUM(Monto) AS ingresos_percibidos FROM Historial WHERE Fecha LIKE '2022-07%';