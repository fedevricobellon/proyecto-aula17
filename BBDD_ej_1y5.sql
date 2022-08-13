create database PeluqueriaCanina
use peluqueriaCanina

create table dueno(
DNI_d int,
Nombre_d varchar(50),
Apellido_d varchar(50),
Telefono_d bigint,
Direccion_d varchar (50),
constraint pk_Dd primary key(DNI_d)
);

create table Perro(
ID_Perro int,
Nombre varchar(30),
Fecha_nac date,
sexo varchar(10),
DNI_d1 int,
constraint pk_IDP primary key(ID_Perro),
constraint fk_fDd1 foreign key(Dni_d1) references dueno(DNI_d)
);

create table Historial(
ID_Historial int,
Fecha date,
Descripcion varchar(100),
Monto int,
ID_Perro1 int,
constraint pk_IDH primary key(ID_Historial),
constraint fk_IDP1 foreign key(ID_Perro1) references perro(ID_Perro)
);


insert into dueno values(28957346,"juan", "Perez", 4789689,"Belgrano 101");
insert into dueno values(23546987,"Maria", "Perez", 4789689,"Pueyrredon 811");
insert into dueno values(30473288,"Sergio", "Escalante", 4787613,"Alsina 10");
insert into dueno values(25537213,"Paolo", "Zerpa", 47111327,"Constitucion 153");
insert into dueno values(19128345,"Karina", "Dominguez", 47841139,"Cabrales 250");
insert into dueno values(17899107,"Facundo", "Roble", 47913673,"Tijuana 405");

insert into Perro values(16, "Lennon", "2021-01-03" , "Macho", 30473288);
insert into Perro values(17, "Olivia", "2020-11-04", "Hembra", 25537213);
insert into Perro values(18,"Toto", "2011-06-23", "Macho", 19128345);

insert into historial values(10, "2015-03-11", "vacuna", 2350, 13);
insert into historial values(11, "2017-12-28", "consulta simple", 3100, 14);
insert into historial values(12, "2022-03-30", "doble consulta", 5960, 15);
insert into historial values(13, "2018-09-13", "comida", 4580, 16);
insert into historial values(14, "2020-05-27", "juguete", 800, 17);
insert into historial values(15, "2022-08-01", "consulta doble", 9510, 18);


#1-Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

select * from Perro

#---------------------------------------------------------------------
#5 Realice una consulta multitabla que arroje el nombre de todos los perros 
#cuyos dueños se llaman Pedro

select Nombre as NombrePerro, nombre_d as NombreDueno
from Perro inner join dueno on Perro.DNI_d1=dueno.DNI_d
where Nombre_d="Pedro";