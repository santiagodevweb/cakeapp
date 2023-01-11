-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-01-2023 a las 01:50:33
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meseros`
--

CREATE TABLE `meseros` (
  `id` int(11) NOT NULL,
  `dni` varchar(18) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `meseros`
--

INSERT INTO `meseros` (`id`, `dni`, `nombre`, `apellido`, `telefono`, `created`, `modified`) VALUES
(1, '9098334', 'Pedro', 'Salasar', '6678444545', '2023-01-10 18:04:25', NULL),
(2, '05656809605060', 'Juan', 'Robles', '6675434433', '2023-01-10 18:04:25', NULL),
(3, '5453545', 'Rodrigo', 'Delangel', '66784545', '2023-01-10 18:06:04', NULL),
(4, '4549385349', 'Elisa', 'Alpiños', '6678544434', '2023-01-10 18:06:04', NULL),
(5, '5453545', 'Francisco', 'delagarza', '66734343', '2023-01-10 18:08:01', NULL),
(6, '4549385349', 'Brenda', 'xavala', '6645343423', '2023-01-10 18:08:01', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `meseros`
--
ALTER TABLE `meseros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `meseros`
--
ALTER TABLE `meseros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
