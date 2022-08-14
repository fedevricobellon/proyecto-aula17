-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2022 a las 17:42:11
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peluqueria_canina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueno`
--

CREATE TABLE `dueno` (
  `DNI` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dueno`
--

INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES
(20697431, 'Josefina', 'Sanchez', '44445879', 'Mendoza 546'),
(23546987, 'Maria', 'Perez', '4789689', 'Pueyrredon 811'),
(25697431, 'Marianella', 'Aguirre', '45625879', 'Rivadavia 546'),
(25697515, 'Mario', 'Aguirre', '45625879', 'Rivadavia 200'),
(28657346, 'Juan', 'Perez', '4789689', 'Belgrano 101');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `ID_Historial` int(11) NOT NULL,
  `Fecha` varchar(30) DEFAULT NULL,
  `Perro` int(11) DEFAULT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `Monto` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`ID_Historial`, `Fecha`, `Perro`, `Descripcion`, `Monto`) VALUES
(1, '01/01/2010', 1, 'lavado', 1500),
(2, '01/02/2021', 13, 'Vacuna', 5960),
(3, '01/03/2021', 13, 'Cirugis', 23000),
(4, '01/03/2022', 13, 'remedio', 1000),
(5, '01/05/2022', 13, 'remedio', 8900),
(6, '01/05/2022', 11, 'lavado', 3000),
(7, '01/07/2022', 11, 'lavado', 3500),
(8, '02/07/2022', 10, 'lavado', 3000),
(9, '03/07/2022', 14, 'lavado', 2500),
(10, '03/08/2022', 12, 'Vacuna', 3500),
(11, '03/08/2022', 13, 'Vacuna', 2350);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perro`
--

CREATE TABLE `perro` (
  `ID_Perro` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Fecha_nac` varchar(30) DEFAULT NULL,
  `Sexo` varchar(30) DEFAULT NULL,
  `DNI_dueno` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perro`
--

INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES
(1, 'Fefo', '01/04/2010', 'Macho', 20697431),
(10, 'Toto', '01/10/2018', 'Macho', 20697431),
(11, 'Mili', '01/03/2018', 'Hembra', 23546987),
(12, 'Sara', '25/05/2020', 'Hembra', 20697431),
(13, 'Puppy', '12/12/2012', 'Macho', 25697431),
(14, 'Frida', '12/12/2012', 'Macho', 25697515),
(15, 'Rocky', '25/05/2021', 'Macho', 28657346);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dueno`
--
ALTER TABLE `dueno`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`ID_Historial`),
  ADD KEY `Perro` (`Perro`);

--
-- Indices de la tabla `perro`
--
ALTER TABLE `perro`
  ADD PRIMARY KEY (`ID_Perro`),
  ADD KEY `DNI_dueno` (`DNI_dueno`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_Perro`);

--
-- Filtros para la tabla `perro`
--
ALTER TABLE `perro`
  ADD CONSTRAINT `perro_ibfk_1` FOREIGN KEY (`DNI_dueno`) REFERENCES `dueno` (`DNI`);
COMMIT;

--Ejercicio nro 6

UPDATE Perro
SET Fecha_nac="13/12/2022"
WHERE Nombre="Frida";