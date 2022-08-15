CREATE DATABASE Pelu_Canina;

USE Pelu_Canina;

CREATE TABLE Dueño(
DNI int not null auto_increment,
Nombre varchar(50),
Apellido varchar(50),
Teléfono varchar(50),
Dirección varchar(50),
constraint pk_DNI primary key (DNI)
);

CREATE TABLE Perro(
ID_Perro int not null auto_increment,
Nombre varchar(50),
Fecha_nac datetime,
Sexo varchar(1),
DNI_dueño int not null,
constraint pk_Perro primary key (ID_Perro),
foreign key (DNI_dueño) references Dueño(DNI) 
);

CREATE TABLE Historial(
ID_Historial int not null auto_increment,
Fecha date,
Perro int not null,
Descripción varchar(100),
Monto int,
constraint pk_Hist primary key Historial(ID_Historial),
foreign key (Perro) references Perro(ID_Perro)
);

-- Ejercicio 8: Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10

INSERT INTO Historial VALUES (112233, '2022-08-14', 'Bianca', 'Rapado', 3500);
SELECT*FROM Perro WHERE ID_Perro=10;