-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-05-2018 a las 19:04:22
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'celular', 'tipo de celulares'),
(2, 'cables', 'tipo de cables para t');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `perfil` varchar(60) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `nit` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `perfil`, `direccion`, `nit`) VALUES
(1, 'jorge ayala', '', 'guastatoya', '34353-4'),
(3, 'josue aldana', '', 'sanarate', '34223-0'),
(5, 'antonio', '', 'san cristobal', '38239-2'),
(6, 'maria', '', 'guatemala', '38329-3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(60) NOT NULL,
  `precio` int(10) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `cantidad` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `nombre`, `descripcion`, `precio`, `id_categoria`, `cantidad`) VALUES
(3, 'LG K10', 'telefono de gama media', 1451, 1, 23),
(4, 'UTP', 'CABLE PARA RED', 350, 1, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(60, 'Richard David Ortiz Sasvin', 'ricardo', 'ricardo123', 'Administrador', 'vistas/img/usuarios/ricardo/419.jpg', 1, '2018-05-18 09:10:07', '2018-05-18 14:19:16'),
(62, 'Roberto Carlos', 'roberto', 'roberto123', 'Administrador', 'vistas/img/usuarios/roberto/671.jpg', 1, '2018-05-02 18:11:04', '2018-05-18 14:19:18'),
(66, 'alex antonio', 'alex', 'alex123', 'Administrador', 'vistas/img/usuarios/alex/377.jpg', 1, '0000-00-00 00:00:00', '2018-05-18 14:19:22'),
(67, 'mario illes', 'mario', 'mario123', 'Especial', '', 0, '0000-00-00 00:00:00', '2018-05-02 23:52:07'),
(68, 'juan', 'juan', 'juan123', 'Administrador', 'vistas/img/usuarios/juan/663.jpg', 0, '0000-00-00 00:00:00', '2018-05-02 23:58:13'),
(69, 'vgyvgygvy', 'alex', 'ales123', '', '', 0, '0000-00-00 00:00:00', '2018-05-02 23:59:10'),
(70, 'admin', 'alex', 'ales123', '', '', 0, '0000-00-00 00:00:00', '2018-05-02 23:59:20'),
(71, 'luis', 'luis', 'luis123', 'Administrador', '', 0, '0000-00-00 00:00:00', '2018-05-03 00:17:29'),
(72, 'jorge', 'jorge', 'jorge123', 'Administrador', 'vistas/img/usuarios/jorge/461.jpg', 0, '0000-00-00 00:00:00', '2018-05-03 00:20:51'),
(73, 'antonio', 'antony', 'antonio123', 'Especial', 'vistas/img/usuarios/antony/266.jpg', 0, '0000-00-00 00:00:00', '2018-05-03 00:22:12'),
(74, 'estela', 'este', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'Administrador', '', 0, '0000-00-00 00:00:00', '2018-05-03 01:42:51'),
(75, 'edvin', 'edv', '617b5eab5b99ec888001c848dd5b239be32aef9f336646f6f49592b8fb0dbb1f', 'Administrador', 'vistas/img/usuarios/edv/197.jpg', 0, '0000-00-00 00:00:00', '2018-05-03 01:34:41'),
(76, 'alfredo', 'alfre', '154c01ba9e000cd3b613f735616993d59d5a3eff0fd3cb5c339596542468a759', 'Administrador', '', 0, '0000-00-00 00:00:00', '2018-05-03 02:36:59'),
(78, 'erika', 'erik', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'Administrador', 'vistas/img/usuarios/erik/652.jpg', 0, '0000-00-00 00:00:00', '2018-05-03 03:00:02'),
(79, 'lincy', 'linc', 'lincy123', 'Administrador', '', 0, '0000-00-00 00:00:00', '2018-05-03 03:01:28'),
(80, 'maria', 'mari', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'Administrador', '', 0, '0000-00-00 00:00:00', '2018-05-03 03:02:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_productos` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_ventas`, `fecha`, `id_cliente`, `id_productos`, `id`) VALUES
(1, '2018-05-18', 1, 3, 75),
(2, '2018-05-18', 1, 3, 68);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`),
  ADD KEY `producto-categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`),
  ADD KEY `clientes-ventas` (`id_cliente`),
  ADD KEY `productos-ventas` (`id_productos`),
  ADD KEY `usuario-ventas` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
