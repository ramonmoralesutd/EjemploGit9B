-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2022 a las 01:17:26
-- Versión del servidor: 10.5.12-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u646610080_viteandy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mytable`
--

CREATE TABLE `mytable` (
  `id` int(11) NOT NULL,
  `nombre` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(29) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comentario` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mytable`
--

INSERT INTO `mytable` (`id`, `nombre`, `telefono`, `correo`, `comentario`) VALUES
(1, 'ANDY', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(2, 'ERNESTO', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(3, 'ANA', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(4, 'JHOVANA', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(5, 'DAVID', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(6, 'JUAN', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(7, 'YESSICA', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(8, 'DANIELA', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(9, 'ETZY', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(10, 'JOAQUIN', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(11, 'EMMANUEL', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(12, 'MATIAS', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(13, 'MELISSA', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(14, 'MARIBEL', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(15, 'PEDRO', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(16, 'JOSE', 1234567890, 'alguien@gmail.com', 'ahsiuhafishsdfih'),
(17, 'PACO', 12354816, 'nope@gmail.com', 'Hola Andy, honestamente tu pagina es la mas intuitiva y llamativa, solo te recomiendo bajar el preci'),
(18, 'MORDECAI', 2147483647, 'NoTePiensoDecir@gmail.com', 'Si van a copiar una plantilla procuren eliminar las partes que no utilicen.'),
(19, 'GUSTAVO', 1234567890, 'gonzales24@gmai.com', 'creo que ase falta mas ....'),
(20, 'JUAN', 2147483647, 'juan@gmail.com', 'Perfecta no puedo decir mas'),
(21, 'KEVIN CORTEGA', 2147483647, 'kevin18_pin@gmail.com', 'Sobre el curso creo que su precio es muy elevado, podemos conseguir cursos mucho mejores por menos p'),
(22, 'AURELIO', 612771620, 'alvarez@gmail.com', 'La interfaz y diseño son sencillas pero funcionales.\r\nEl captcha deberia estar antes de los botones'),
(23, 'JUAN LECHUGA', 2147483647, 'juan_prisas22@outlook.es', 'Esta algo caro'),
(24, 'DIANA CRISTINA S', 2147483647, 'C14ORCE@gamail.com', 'la pagina es buena un poco mas de informacion y agregar un modo oscuro'),
(25, 'JUAN', 2147483647, 'juan_30@gmail.com', 'buen diseño un poco comun pero se ve bien no le falla nada le funcionan todos los bototnes'),
(26, 'ANGEL SEBASTIAN', 2147483647, 'Cortezanegel.210208@gmail.com', 'Me gusta el diseño de la pagina web, botones funcionales, una buena estructura de la pagina y con un'),
(27, 'ANGEL ALEJANDRO', 2147483647, 'Cortezanegel.210208@gmail.com', 'Me gusta el diseño de la pagina web, botones funcionales, una buena estructura de la pagina y con un'),
(28, 'SAMUEL HERNANDEZ', 2147483647, 'Cortezanegel.210208@gmail.com', 'Me gusta el diseño de la pagina web, botones funcionales, una buena estructura de la pagina y con un'),
(29, 'DAVID PEREZ', 2147483647, 'Cortezanegel.210208@gmail.com', 'Me gusta el diseño de la pagina web, botones funcionales, una buena estructura de la pagina y con un'),
(30, 'SEBASTIAN', 2147483647, 'Cortezanegel.210208@gmail.com', 'Me gusta el diseño de la pagina web, botones funcionales, una buena estructura de la pagina y con un'),
(31, 'AXEL', 2147483647, 'Cortezanegel.210208@gmail.com', 'Me gusta el diseño de la pagina web, botones funcionales, una buena estructura de la pagina y con un');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
