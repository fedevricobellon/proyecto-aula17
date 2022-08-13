-- Se crea la Base de Datos de "La Peluqueria Canina"
--
create database Lapeluqueria_canina;

use Lapeluqueria_canina;

-- Estructura de Tabla "Dueno"

create table `dueno`(
`DNI_n` int NOT NULL, 
`Nombre_n` varchar(50) NOT NULL,
`Apellido_n` varchar(50) NOT NULL,
`Telefono_n` varchar(30) NOT NULL,
`Direccion_n` varchar (50) NOT NULL,
constraint pk_Di primary key(DNI_n)
);

-- Datos del dueno

insert into `dueno` (`DNI_n`,`Nombre_n`,`Apellido_n`,`Telefono_n`,`Direccion_n`) values
(33567456,'Andrea','Navarro','351334556','Las Lilas 89'),
(20501700,'Juan','Iglesias','2975223456','Los Medanos 234'),
(36700233,'Veronica','Lopez','2974299908','Lavalle 890'); 

ALTER TABLE `dueno` ADD UNIQUE (DNI_n);

Select * from dueno; 

-- 9.Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
-- Modificacion de Direccion "Las Lilas 89" a "Libertad 123" con UPDATE 

UPDATE `dueno`
SET `Direccion_n`= 'Libertad 123'
WHERE `DNI_n`= 33567456;

-- Actualizamos la direccion Libertad 123 a la direccion anterior Las Lilas 89

UPDATE `dueno`
SET `Direccion_n`= 'Las Lilas 89'
WHERE `DNI_n`= 33567456;


-- Estructura de Tabla "perro"

create table `perro`(
`ID_perro` int NOT NULL,
`Nombre` varchar(40) NOT NULL,
`Fecha_nac` date,
`Sexo` varchar(10) NOT NULL,
`DNI_dueno` int(10) NOT NULL,
constraint pk_Idp primary key(ID_perro),
constraint fk_Dnd1 foreign key (DNI_dueno) references dueno (DNI_n)
);

Select * from perro;


-- Datos de los perros

insert into `perro` (`ID_perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES 
(10, 'Firulais', '2019/04/26', 'Macho', 33567456),
(20, 'Naomi', '2017/08/09', 'Hembra', 20501700),
(30, 'Toby', '2019/07/15', 'Macho', 36700233);

Select * from perro;

 
-- Estructura de Tabla "historial"

create table `historial`(
`ID_histor` int NOT NULL,
`Fecha_d` date,
`Descripcion` varchar(100) NOT NULL,
`Monto` int(30) NOT NULL,
`ID_perro1` int(40) NOT NULL,
constraint pk_Idh primary key(ID_histor),
constraint fk_perr foreign key(ID_perro1) references perro (ID_perro)
);

Select * from historial;

-- Historial de visita de los perros a la peluqueria

insert into `historial` (`ID_histor`,`Fecha_d`,`Descripcion`,`Monto`, `ID_perro1`) values
(1, '2022/07/20', 'Corte', 1000, 10),
(2, '2022/07/28', 'Nutricion', 3000, 20),
(3, '2020/08/02', 'Corte', 1000, 30);

Select * from historial;
Select * from perro;
Select * from dueno;
