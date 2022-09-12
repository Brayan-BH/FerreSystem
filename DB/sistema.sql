-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2022 a las 23:57:15
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(1065, 361, 8, '25.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(20,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `stock`, `descripcion`, `imagen`) VALUES
(8, 'taladro', '25.00', 20, '', '1650305426_DCD771C2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `clavetransaccion` varchar(255) NOT NULL,
  `paypaldatos` text NOT NULL,
  `fecha` datetime NOT NULL,
  `correo` varchar(5000) NOT NULL,
  `total` decimal(60,2) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `clavetransaccion`, `paypaldatos`, `fecha`, `correo`, `total`, `status`) VALUES
(1, '12345678910', '', '2022-04-21 17:53:12', 'Brayanbasurto@gmail.com', '700.00', 'pendiente'),
(2, '12345678910', '', '2022-04-21 17:53:12', 'Brayanbasurto@gmail.com', '700.00', 'pendiente'),
(3, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 18:09:41', 'brayanbasurto007@gmail.com', '15.00', 'pendiente'),
(4, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 18:14:16', 'brayanperezwood@gmail.com', '40.00', 'pendiente'),
(5, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:42:13', 'brayanbasurto007@gmail.com', '40.00', 'pendiente'),
(6, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:43:37', 'brayanbasurto007@gmail.com', '40.00', 'pendiente'),
(7, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:44:57', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(8, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:53:30', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(9, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:55:03', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(10, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:55:05', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(11, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:55:30', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(12, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:55:30', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(13, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:12', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(14, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:21', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(15, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:21', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(16, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:22', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(17, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:22', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(18, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:23', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(19, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:24', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(20, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:39', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(21, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:40', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(22, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:41', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(23, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:41', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(24, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:42', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(25, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:42', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(26, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:42', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(27, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:43', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(28, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:43', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(29, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:43', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(30, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:44', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(31, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:45', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(32, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:45', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(33, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:45', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(34, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:46', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(35, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:47', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(36, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:47', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(37, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:56:47', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(38, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:57:12', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(39, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:57:13', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(40, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:57:14', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(41, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:57:14', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(42, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:57:15', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(43, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:57:16', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(44, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:57:29', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(45, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:57:30', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(46, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:58:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(47, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:58:20', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(48, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 19:59:03', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(49, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:00:01', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(50, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:00:26', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(51, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:00:39', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(52, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:01:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(53, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:01:15', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(54, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:01:59', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(55, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:02:14', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(56, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:02:16', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(57, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:02:42', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(58, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:03:12', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(59, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:03:34', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(60, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:03:53', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(61, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:05:25', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(62, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:05:35', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(63, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:05:36', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(64, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:05:37', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(65, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:05:55', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(66, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:06:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(67, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:06:04', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(68, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:06:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(69, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:06:34', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(70, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:06:35', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(71, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:06:36', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(72, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:06:53', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(73, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:06:54', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(74, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:06:54', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(75, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:06:55', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(76, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:07:24', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(77, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:07:25', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(78, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:07:44', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(79, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:07:46', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(80, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:07:49', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(81, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:07:50', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(82, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:07:51', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(83, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:07:51', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(84, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:07:52', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(85, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:07:53', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(86, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:07:54', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(87, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:08:01', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(88, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:08:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(89, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:08:06', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(90, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:08:07', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(91, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:08:08', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(92, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:08:12', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(93, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:08:13', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(94, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:08:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(95, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:08:18', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(96, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:08:19', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(97, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:08:23', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(98, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:20:24', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(99, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:21:26', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(100, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:22:01', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(101, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:23:07', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(102, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:26:59', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(103, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:27:00', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(104, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:27:00', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(105, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:27:01', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(106, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:27:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(107, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:27:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(108, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:27:03', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(109, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:28:00', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(110, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:28:01', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(111, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:28:05', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(112, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:28:19', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(113, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:28:20', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(114, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:28:21', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(115, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:28:24', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(116, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:28:26', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(117, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:28:30', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(118, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:28:31', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(119, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:29:25', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(120, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:29:26', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(121, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:29:37', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(122, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:29:38', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(123, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:29:49', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(124, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:29:50', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(125, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:29:51', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(126, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:29:52', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(127, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:29:58', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(128, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:30:15', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(129, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:30:16', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(130, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:30:22', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(131, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:30:23', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(132, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:30:29', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(133, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:30:30', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(134, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:30:31', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(135, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:30:31', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(136, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:31:33', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(137, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:31:44', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(138, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:33:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(139, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:34:14', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(140, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:34:16', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(141, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:34:45', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(142, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:34:47', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(143, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:34:52', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(144, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:34:53', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(145, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:35:01', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(146, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:35:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(147, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:35:03', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(148, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:36:06', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(149, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:36:07', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(150, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:36:14', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(151, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:36:15', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(152, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:38:43', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(153, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:38:44', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(154, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:38:58', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(155, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:39:11', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(156, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:39:20', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(157, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:39:21', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(158, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:39:22', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(159, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:39:34', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(160, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:39:56', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(161, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:39:57', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(162, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:41:51', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(163, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:42:18', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(164, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:42:20', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(165, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:42:24', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(166, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:42:25', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(167, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:42:26', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(168, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:42:27', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(169, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:42:28', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(170, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:42:32', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(171, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:42:43', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(172, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:42:44', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(173, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:43:16', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(174, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:43:30', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(175, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:43:31', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(176, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:43:32', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(177, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:43:42', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(178, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:43:43', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(179, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:43:43', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(180, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:43:47', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(181, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:43:56', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(182, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:43:57', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(183, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:43:58', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(184, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:44:03', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(185, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:44:06', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(186, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:44:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(187, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:04', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(188, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:09', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(189, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:10', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(190, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:11', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(191, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:12', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(192, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:16', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(193, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(194, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:42', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(195, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:43', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(196, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:54', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(197, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:55', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(198, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:46:55', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(199, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:48:06', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(200, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:48:07', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(201, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:08', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(202, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:09', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(203, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:10', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(204, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:11', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(205, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(206, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:18', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(207, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:19', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(208, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:34', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(209, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:46', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(210, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:46', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(211, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:47', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(212, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:49:49', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(213, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:52:39', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(214, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:52:40', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(215, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:52:41', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(216, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:53:36', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(217, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:53:47', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(218, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:53:48', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(219, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:01', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(220, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(221, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:03', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(222, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:04', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(223, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:04', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(224, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:25', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(225, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:26', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(226, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:27', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(227, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:27', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(228, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:28', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(229, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:28', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(230, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:41', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(231, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:41', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(232, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:42', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(233, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:42', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(234, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:43', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(235, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:43', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(236, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:44', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(237, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:54:44', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(238, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:56:01', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(239, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:56:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(240, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:56:44', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(241, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:03', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(242, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:04', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(243, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:05', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(244, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:06', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(245, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:07', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(246, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(247, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:18', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(248, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:19', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(249, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:19', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(250, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:19', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(251, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:20', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(252, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:47', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(253, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:48', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(254, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:49', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(255, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:49', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(256, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:50', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(257, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:50', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(258, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:51', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(259, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:57:52', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(260, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:58:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(261, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:58:03', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(262, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:58:42', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(263, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:58:43', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(264, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:58:44', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(265, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:58:45', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(266, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:58:52', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(267, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:58:53', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(268, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:58:53', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(269, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:58:53', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(270, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 20:58:54', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(271, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:00:46', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(272, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:00:47', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(273, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:00:48', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(274, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:01:21', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(275, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:01:22', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(276, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:01:23', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(277, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:01:23', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(278, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:01:24', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(279, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:01:24', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(280, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:01:24', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(281, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:01:49', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(282, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:05:22', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(283, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:05:23', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(284, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:05:24', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(285, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:05:24', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(286, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:05:48', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(287, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:06:35', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(288, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:06:36', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(289, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:06:37', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(290, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:06:50', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(291, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:07:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(292, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:07:03', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(293, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:07:04', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(294, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:07:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(295, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:07:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(296, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:07:22', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(297, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:07:23', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(298, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:08:16', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(299, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:08:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(300, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:08:18', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(301, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:08:19', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(302, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:08:48', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(303, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:09', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(304, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:22', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(305, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:23', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(306, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:30', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(307, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:31', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(308, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:32', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(309, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:41', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(310, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:42', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(311, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:48', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(312, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:48', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(313, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:53', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(314, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:54', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(315, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:58', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(316, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:09:59', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(317, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:06', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(318, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:07', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(319, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:08', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(320, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:11', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(321, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:12', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(322, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:12', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(323, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:19', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(324, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:20', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(325, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:27', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(326, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:28', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(327, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:49', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(328, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:50', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(329, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:55', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(330, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:56', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(331, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:10:58', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(332, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:11:03', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(333, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:11:05', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(334, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:11:14', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(335, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:11:15', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(336, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:11:35', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(337, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:11:36', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(338, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:11:47', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(339, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:13:40', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(340, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:13:47', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(341, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:13:53', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(342, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:13:54', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(343, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:14:01', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(344, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:14:01', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(345, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:14:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(346, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:15:30', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(347, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:17:11', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(348, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:18:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(349, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:19:59', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(350, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:20:55', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(351, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:21:27', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(352, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:21:33', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(353, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:21:34', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(354, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:21:51', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(355, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:22:12', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(356, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:22:17', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(357, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:22:18', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(358, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:22:20', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(359, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 21:23:02', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(360, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-04-12 22:59:14', 'brayanbasurto007@gmail.com', '41.50', 'pendiente'),
(361, 'leekmbdjhl6ncrh8n3fnmcif1s', '', '2022-05-02 22:16:38', 'brayanbasurto007@gmail.com', '25.00', 'pendiente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1066;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
