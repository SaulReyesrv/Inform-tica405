-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2023 a las 16:59:13
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto405`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `Id_Clase` int(11) NOT NULL,
  `Horario` varchar(55) NOT NULL,
  `Id_Laboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`Id_Clase`, `Horario`, `Id_Laboratorio`) VALUES
(1, 'Null', 0),
(2, 'Null', 0),
(3, 'Null', 0),
(4, 'Null', 0),
(5, 'Null', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `Id_Estado` int(11) NOT NULL,
  `NombreEstado` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`Id_Estado`, `NombreEstado`) VALUES
(1, 'Estado de Mexico'),
(2, 'Estado de Mexico'),
(4, 'Estado de Mexico'),
(5, 'Estado de Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `Id_Inventario` int(11) NOT NULL,
  `Nombre_h` varchar(55) NOT NULL,
  `Descripcion_h` varchar(55) NOT NULL,
  `Cantidad` varchar(255) NOT NULL,
  `Id_Laboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`Id_Inventario`, `Nombre_h`, `Descripcion_h`, `Cantidad`, `Id_Laboratorio`) VALUES
(1, 'NULL', '45', '*descripcion.h', 0),
(2, 'NULL', '40', '*descripcion.h', 0),
(3, 'NULL', '35', '*descripcion.h', 0),
(4, 'NULL', '30', '*descripcion.h', 0),
(5, 'NULL', '25', '*descripcion.h', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_h`
--

CREATE TABLE `inventario_h` (
  `Id_Reseta` int(11) NOT NULL,
  `Nombre_r` varchar(55) NOT NULL,
  `Descripcion_r` varchar(55) NOT NULL,
  `Link_r` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario_h`
--

INSERT INTO `inventario_h` (`Id_Reseta`, `Nombre_r`, `Descripcion_r`, `Link_r`) VALUES
(1, 'nombre', 'link.r', '*descripcion.r'),
(2, 'nombre', 'descripcion.r', 'link.r'),
(3, 'nombre', 'descripcion.r', 'link.r'),
(4, 'nombre', 'descripcion.r', 'link.r'),
(5, 'nombre', 'descripcion.r', 'link.r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `Id_Laboratorio` int(11) NOT NULL,
  `Nombre_l` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`Id_Laboratorio`, `Nombre_l`) VALUES
(1, 'Nombre.laboratorio'),
(2, 'Nombre.laboratorio'),
(3, 'Nombre.laboratorio'),
(4, 'Nombre.laboratorio'),
(5, 'Nombre.laboratorio'),
(6, 'Nombre.laboratorio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `Id_Municipio` int(11) NOT NULL,
  `Nombre_m` varchar(55) NOT NULL,
  `Id_Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`Id_Municipio`, `Nombre_m`, `Id_Estado`) VALUES
(1, 'Naucalpan de Juarez', 1),
(3, 'Ecatepec', 2),
(4, 'Naucalpan de Juarez', 3),
(5, 'Naucalpan de Juarez', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantel`
--

CREATE TABLE `plantel` (
  `Id_Plantel` int(11) NOT NULL,
  `Nombre_p` varchar(55) NOT NULL,
  `Direccion_p` text NOT NULL,
  `Telefono_p` varchar(55) NOT NULL,
  `Correoelectronico_p` varchar(255) NOT NULL,
  `Clave` varchar(255) NOT NULL,
  `Id_municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plantel`
--

INSERT INTO `plantel` (`Id_Plantel`, `Nombre_p`, `Direccion_p`, `Telefono_p`, `Correoelectronico_p`, `Clave`, `Id_municipio`) VALUES
(1, 'Conalep1', 'valle dorado1', '5530324541', 'conalepmex.edu1', '2120', 0),
(2, 'Conalep2', 'valle dorado2', '5582198663', 'conalepmex.edu2', '2021', 0),
(4, 'Conalep4', 'valle dorado4', '5530324544', 'conalepmex.edu4', '2021', 0),
(5, 'ConalepGranjas', 'Avenida de las granjas ', '5530324545', 'conalepmex.edu5', '2021', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `Id_Tusuario` int(11) NOT NULL,
  `Nombre_t` varchar(55) NOT NULL,
  `Descripcion` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`Id_Tusuario`, `Nombre_t`, `Descripcion`) VALUES
(2, 'Luis', 'Usuario especializado'),
(3, 'Francisco', 'Usuario Tecnico'),
(4, 'Paola', 'Usuario Final'),
(5, 'Alondra', 'Usuario especializado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_usuario` int(11) NOT NULL,
  `Nombre` varchar(55) NOT NULL,
  `A_paterno` varchar(55) NOT NULL,
  `A_materno` varchar(55) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Correo_electronico` varchar(255) NOT NULL,
  `Contraseña` varchar(55) NOT NULL,
  `Id_Plantel` int(11) NOT NULL,
  `Id_Tusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_usuario`, `Nombre`, `A_paterno`, `A_materno`, `Telefono`, `Correo_electronico`, `Contraseña`, `Id_Plantel`, `Id_Tusuario`) VALUES
(1, 'Victor', 'Vite', 'Garcia', '5527283131', 'yootu0@gmail', 'bebe', 1, 5),
(2, 'Luis', 'Hernandez', 'Valencia', '5527245451', 'yootu1@gmail', 'coca', 2, 4),
(3, 'Francisco', 'Galvez', 'Lopez', '5527284544', 'yootu2@gmail', 'perico', 3, 2),
(5, 'Garcia', 'De la Cruz', 'Ramirez', '5587283131', 'yootu4@gmail', 'chabelo', 5, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`Id_Clase`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`Id_Estado`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`Id_Inventario`);

--
-- Indices de la tabla `inventario_h`
--
ALTER TABLE `inventario_h`
  ADD PRIMARY KEY (`Id_Reseta`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`Id_Laboratorio`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`Id_Municipio`);

--
-- Indices de la tabla `plantel`
--
ALTER TABLE `plantel`
  ADD PRIMARY KEY (`Id_Plantel`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`Id_Tusuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `Id_Clase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `Id_Estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `Id_Inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inventario_h`
--
ALTER TABLE `inventario_h`
  MODIFY `Id_Reseta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  MODIFY `Id_Laboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `Id_Municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `plantel`
--
ALTER TABLE `plantel`
  MODIFY `Id_Plantel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `Id_Tusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
