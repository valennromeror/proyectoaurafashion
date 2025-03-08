-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2025 a las 19:25:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aurafashionn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorios`
--

CREATE TABLE `accesorios` (
  `id_accesorios` int(100) NOT NULL,
  `aretes` varchar(100) NOT NULL,
  `bolsos` varchar(100) NOT NULL,
  `collares` varchar(100) NOT NULL,
  `gafas` varchar(100) NOT NULL,
  `cinturones` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `accesorios`
--

INSERT INTO `accesorios` (`id_accesorios`, `aretes`, `bolsos`, `collares`, `gafas`, `cinturones`) VALUES
(1, '', '1', '', '', ''),
(2, '2', '', '', '', ''),
(3, '', '', '2', '', ''),
(4, '', '', '', '1', ''),
(5, '', '', '', '', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camisas`
--

CREATE TABLE `camisas` (
  `id_camisas` int(100) NOT NULL,
  `blusa con botones` varchar(100) NOT NULL,
  `blusa con estampado` varchar(100) NOT NULL,
  `camisa overzise` varchar(100) NOT NULL,
  `blusa de seda` varchar(100) NOT NULL,
  `blusa crop top` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `camisas`
--

INSERT INTO `camisas` (`id_camisas`, `blusa con botones`, `blusa con estampado`, `camisa overzise`, `blusa de seda`, `blusa crop top`) VALUES
(1, 'blanca', '', 'azul', '', ''),
(2, '', '', 'azul', '', ''),
(3, 'roja', '', '', '', ''),
(4, '', 'amarilla', '', '', ''),
(5, 'blanca azul', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categorias` int(100) NOT NULL,
  `vestuario` varchar(100) NOT NULL,
  `accesorios` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chaquetas`
--

CREATE TABLE `chaquetas` (
  `id_chaquetas` int(100) NOT NULL,
  `blazzer` varchar(100) NOT NULL,
  `blazzer overzise` varchar(100) NOT NULL,
  `abrigo de lana` varchar(100) NOT NULL,
  `corta` varchar(100) NOT NULL,
  `polar` varchar(100) NOT NULL,
  `rompevientos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `chaquetas`
--

INSERT INTO `chaquetas` (`id_chaquetas`, `blazzer`, `blazzer overzise`, `abrigo de lana`, `corta`, `polar`, `rompevientos`) VALUES
(1, '', 'beish', '', '', '', ''),
(2, '', '', '', 'negra', '', ''),
(3, '', '', '', '', '', 'blanco con negro'),
(4, 'rojo', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pantalones`
--

CREATE TABLE `pantalones` (
  `id_pantalones` int(100) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `jogger` varchar(100) NOT NULL,
  `leggings` varchar(100) NOT NULL,
  `cigarette` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `pantalones`
--

INSERT INTO `pantalones` (`id_pantalones`, `cargo`, `jogger`, `leggings`, `cigarette`) VALUES
(1, ' beish', '', '', ''),
(2, '', '', '', 'azul'),
(3, '', '', '', 'azul'),
(4, '', '', '', 'verde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `agregar` int(11) NOT NULL,
  `total prendas` int(11) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `agregar`, `total prendas`, `precio`) VALUES
(1, 0, 10, 100),
(2, 0, 5, 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(100) NOT NULL,
  `camisas` int(100) NOT NULL,
  `pantalones` int(100) NOT NULL,
  `chaquetas` int(100) NOT NULL,
  `accesorios` int(100) NOT NULL,
  `stock` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `camisas`, `pantalones`, `chaquetas`, `accesorios`, `stock`) VALUES
(1, 10, 6, 4, 5, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `correo`, `contraseña`) VALUES
(1, 'valen@gmail.com', '****'),
(2, 'pepito@gmail.com', '****'),
(3, 'lluz123@gmail.com', '*****'),
(4, 'juana12@gmail.com', '***'),
(5, 'karla124@gmail.com', '*****');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorios`
--
ALTER TABLE `accesorios`
  ADD PRIMARY KEY (`id_accesorios`);

--
-- Indices de la tabla `camisas`
--
ALTER TABLE `camisas`
  ADD PRIMARY KEY (`id_camisas`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categorias`);

--
-- Indices de la tabla `chaquetas`
--
ALTER TABLE `chaquetas`
  ADD PRIMARY KEY (`id_chaquetas`);

--
-- Indices de la tabla `pantalones`
--
ALTER TABLE `pantalones`
  ADD PRIMARY KEY (`id_pantalones`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
