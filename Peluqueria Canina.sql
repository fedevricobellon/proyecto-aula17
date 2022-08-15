CREATE database Peluqueria_Canina;

use Peluqueria_Canina;

/* Tabla Dueño */
CREATE table dueno
(
DNI int,
Nombre varchar(20),
Apellido varchar(20),
Telefono varchar(15),
Direccion varchar(30),
constraint pk_DNI primary key(DNI)
)

/* Tabla Perro */
CREATE table perro 
(
Id_Perro int,
Nombre varchar (15),
Fecha_nac date,
Sexo varchar(6),
DNI_dueno1 int,
constraint pk_IdPerro primary key(Id_Perro),
constraint fk_DniDueno foreign key(DNI_dueno1) references dueno(DNI)
)

/* Tabla Historial */
CREATE table historial
(
Id_Historial int,
Fecha date,
Id_Perro1 int,
Descripcion varchar(200),
Monto int,
constraint pk_IdHistorial primary key(Id_Historial),
constraint fk_IdPerro1 foreign key(Id_Perro1) references perro(Id_Perro)
)

/* Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.*/
INSERT INTO dueno values(34588063, 'Sebastian', 'Mamani', '128055', 'San Salvador de Jujuy, Jujuy');


INSERT INTO perro values(1, 'Martin', '2019-12-19', 'macho', 34588063);

INSERT INTO historial values(01, '2022-03-08', 1, 'Corte de pelo y peinado', 850);


SELECT*FROM dueno;
SELECT*FROM perro;
SELECT*FROM historial;


/*12.Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.*/


SELECT perro.Id_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno1
FROM perro 
WHERE Sexo='macho' and  Fecha_nac between 2020 and 2022 ;


