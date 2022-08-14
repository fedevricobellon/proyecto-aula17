CREATE database Peluqueria_Canina;

use Peluqueria_Canina;

/* Tabla Dueño */
CREATE table dueno(
DNI int,
Nombre varchar(20),
Apellido varchar(20),
Telefono varchar(15),
Direccion varchar(30),
constraint pk_DNI primary key(DNI)
)

/* Tabla Perro */
CREATE table perro(
Id_Perro int,
Nombre varchar (15),
Fecha_nac date,
Sexo varchar(6),
DNI_dueno1 int,
constraint pk_IdPerro primary key(Id_Perro),
constraint fk_DniDueno foreign key(DNI_dueno1) references dueno(DNI)
)

/* Tabla Historial */
CREATE table historial(
Id_Historial int,
Fecha date,
Id_Perro1 int,
Descripcion varchar(200),
Monto int,
constraint pk_IdHistorial primary key(Id_Historial),
constraint fk_IdPerro1 foreign key(Id_Perro1) references perro(Id_Perro)
)

/* Inserto Datos de Dueños, Perros e Historial */
INSERT INTO dueno values(25687897, 'Abigail', 'Sanchez', '11222555', 'Rio Ceballos, Cordoba');
INSERT INTO dueno values(14575687, 'Beatriz', 'Gonzalez', '11234222', 'Centro, Cordoba');
INSERT INTO dueno values(12548789, 'Esteban', 'Perez', '22333455', 'Rio Cuarto, Cordoba');
INSERT INTO dueno values (35151151, 'Dayana', 'Castillo', '22354888', 'Monte Cristo, Cordoba');
INSERT INTO dueno values(22323232, 'Carlos', 'Lopez', '13335555', 'Rio Primero, Cordoba');

INSERT INTO perro values(1, 'Umma', '2019-09-23', 'hembra', 25687897);
INSERT INTO perro values(2, 'Beto', '2020-03-16', 'macho', 14575687);
INSERT INTO perro values(3, 'Tobby', '2016-06-26', 'macho', 12548789);
INSERT INTO perro values(4, 'Nina', '2022-05-13', 'hembra', 35151151);
INSERT INTO perro values(6, 'Luci', '2021-12-10', 'hembra', 22323232);

INSERT INTO historial values(01, '2021-11-26', 1, 'Corte de pelo y peinado', 1000);
INSERT INTO historial values(02, '2022-02-15', 2, 'Corte de uñas y pelo', 1500);
INSERT INTO historial values(03, '2022-04-22', 3, 'Limpieza y corte de pelo', 2000);
INSERT INTO historial values(04, '2022-05-20', 4, 'Corte de Pelo', 1000);
INSERT INTO historial values(05,'2019-05-17', 5, 'Limpieza Completa', 1300);
INSERT INTO historial values(06,'2018-11-27', 6, 'Nutricion', 1600);

SELECT*FROM dueno;
SELECT*FROM perro;
SELECT*FROM historial;

/* 2. Inserte en la tabla correspondiente un nuevo animal (perro) como
paciente y el dueño asociado a ese animal. */
INSERT INTO dueno values(22333554, 'Aldana', 'Garcia', '11555777', 'Rio Primero, Cordoba');
INSERT INTO perro values(5, 'Daysi', '2022-04-12', 'hembra',22333554);

/* 6. Obtener todos los perros que asistieron a la peluquería en 2022 */
SELECT Nombre, Fecha, Id_Perro1 FROM perro inner join historial on perro.Id_Perro = historial.Id_Perro1 WHERE year(fecha)='2022';

/* 11.Obtener todos los dueños que tengan perros de menos de 5 años de
edad que no hayan visitado la peluquería en el año 2022. */

SELECT perro.Id_perro, perro.Nombre, DNI_dueno1, dueno.Apellido FROM perro inner join dueno on perro.DNI_dueno1 = dueno.DNI
inner join historial on historial.Id_perro1 = perro.Id_perro
WHERE Fecha_nac >=5 AND NOT historial.Fecha > '2022-01-01';
