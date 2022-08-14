CREATE DATABASE peluq_canina;

USE peluq_canina;

CREATE TABLE dueno(
DNI_n int(10) NOT NULL auto_increment, 
Nombre_n varchar(50) NOT NULL,
Apellido_n varchar(50) NOT NULL,
Telefono_n varchar(30) NOT NULL,
Direccion_n varchar(50) NOT NULL,
constraint pk_Di primary key(DNI_n)
);

CREATE TABLE perro(
ID_perro int(40) NOT NULL auto_increment,
Nombre varchar(40) NOT NULL,
Fecha_nac date,
Sexo varchar(10) NOT NULL,
DNI_dueno int(10) NOT NULL,
constraint pk_Idp primary key(ID_perro),
constraint fk_Dnd1 foreign key (DNI_dueno) references dueno (DNI_n)
);

CREATE TABLE historial(
ID_histor int(40) NOT NULL auto_increment,
Fecha_d date,
Descripcion varchar(100) NOT NULL,
Monto int(30) NOT NULL,
ID_perro1 int(40) NOT NULL,
constraint pk_Idh primary key(ID_histor),
constraint fk_perr foreign key(ID_perro1) references perro (ID_perro)
);

SET FOREIGN_KEY_CHECKS=0;

-- Ejercicio 2: Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

INSERT INTO dueno (DNI_n, Nombre_n, Apellido_n , Telefono_n , Direccion_n) VALUES
(32553774,'Julieta','Alvarado','1122338877','Riglos 827'),
(27585324,'Roberto','Gomez','1147859965','Del Valle 149'),
(30584225,'Jorge','Gallardo','1158963526','Montes 214'); 

INSERT INTO perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES 
(1, 'Runa', '2016/05/15', 'Hembra', 32553774),
(2, 'Morisqueta', '2015/06/25', 'Hembra', 27585324),
(3, 'Roco', '2017/08/12', 'Macho', 30584225);


-- Ejercicio 3:	Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.

-- 1ro cargamos datos en el historial
INSERT INTO historial (ID_histor, Fecha_d, Descripcion, Monto, ID_perro1) VALUES
(10, '2022/08/11', 'Corte', 2000, 1),
(20, '2017/11/15', 'servicio_2', 3000, 2),
(30, '2021/08/12', 'Corte', 2000, 3);

-- 2do verificamos los datos (fechas) cargados en la tabla de datos historial
Select * from historial;

-- 3ro eliminamos el id_perro que no es atendido hace mucho tiempo
DELETE FROM perro 
WHERE Id_perro = 2;

-- 4to verificamos que el Id_perro 2 fue eliminado
Select * from perro;

