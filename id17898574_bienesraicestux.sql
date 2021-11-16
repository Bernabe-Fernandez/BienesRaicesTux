-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-11-2021 a las 00:56:53
-- Versión del servidor: 10.5.12-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id17898574_bienesraicestux`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `idAdmin` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `correoElectronico` varchar(55) DEFAULT NULL,
  `contrasena` char(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`idAdmin`, `nombre`, `correoElectronico`, `contrasena`) VALUES
(12, 'Admin', 'admin@gmail.com', '$2y$10$LKBwOqVSszf9ov91aXVXlOUojCpFO5C1x6WidrZkZiKQsBVuqZwgO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compradores`
--

CREATE TABLE `compradores` (
  `idCompradores` int(11) NOT NULL,
  `nameUser` varchar(50) NOT NULL,
  `Nombres` varchar(45) DEFAULT NULL,
  `apellidoPaterno` varchar(25) DEFAULT NULL,
  `apellidoMaterno` varchar(25) NOT NULL,
  `correoElectronico` varchar(55) DEFAULT NULL,
  `contraseña` char(60) DEFAULT NULL,
  `numeroTelefonico` char(10) DEFAULT NULL,
  `codigoPostal` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idContacto` int(11) NOT NULL,
  `Nombres` varchar(45) NOT NULL,
  `correoElectronico` varchar(55) NOT NULL,
  `telefono` char(10) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `ocupacion` char(1) NOT NULL,
  `presupuesto` int(11) NOT NULL,
  `tipoContacto` char(1) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `idFavoritos` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion`
--

CREATE TABLE `informacion` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` char(10) NOT NULL,
  `mensaje` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE `propiedades` (
  `IdPropiedad` int(11) NOT NULL,
  `nombrePropiedad` varchar(60) NOT NULL,
  `ocupacion` char(1) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `tipoInmueble` varchar(30) NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `metrosTotales` int(11) NOT NULL,
  `metrosConstruidos` int(11) NOT NULL,
  `numHabitaciones` int(11) NOT NULL,
  `numBanos` int(11) NOT NULL,
  `numGarajes` int(11) NOT NULL,
  `Antiguedad` int(11) NOT NULL,
  `vendedores_IdVendedores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`IdPropiedad`, `nombrePropiedad`, `ocupacion`, `estado`, `tipoInmueble`, `precio`, `imagen`, `descripcion`, `direccion`, `metrosTotales`, `metrosConstruidos`, `numHabitaciones`, `numBanos`, `numGarajes`, `Antiguedad`, `vendedores_IdVendedores`) VALUES
(36, 'Casa en Venta Colonia Las Granjas', '1', 'disponible', 'Departamento', 600000, 'a9575d409ae807787367a389605bfc84.jpg', 'Bonita casa en venta con acabados de marmol, amplio jardin, alberca y excelente ubicacion. Tiene todos los servicios incluidos, cuenta con una sala-comedor muy amplio.', 'Colonia las Lomas', 100, 800, 5, 4, 2, 11, 11),
(37, 'Casa en Venta Fracc. La Reliquia', '1', 'disponible', 'Departamento', 2500000, '2f3477d7267b88884a2ec28caf7aafb8.jpg', 'Excelentes condiciones de areas verdes, alberca, vistas y acabados bien diseñados. Con un amplio patio trasero, con hermosa vista para divertirte con tu familia ', 'Fracc. La Reliquia', 1500, 800, 3, 2, 2, 15, 11),
(38, 'Casa en Venta Fracc. Real del Bosque', '1', 'disponible', 'Casa', 4000000, '2e0ab01cd5302804069cf4760fb90be2.jpg', 'Ubicado en Fracc. Real del bosque, con acabados de lujo muy amplia y en perfacta condiciones de alberca, jardin y vista a las montañas.', 'Fracc. Real del Bosque', 1000, 700, 2, 1, 1, 10, 6),
(39, 'Casa en Venta Fracc. Mactumatza', '1', 'disponible', 'Casa', 3000000, 'd6cf5df199ff1cad9cd7b4b6398cab09.jpg', 'Bella casa con una alberca muy amplia, patio amplio y ubicación cercana a laguna tiene una bonita vista hacia la ciudad con areas verdes muy bien cuidadas.', 'Fracc. Mactumatza', 1000, 650, 3, 2, 1, 11, 6),
(40, 'Casa en Venta Fracc. Casa Blanca', '1', 'disponible', 'Casa', 3150000, '961b1a7b54a64163513b8b0dc89a9650.jpg', 'Acabados de lujo, muy amplia con vista al mar se mantiene en buen estado, tiene una entrada amplia y habitaciones confortables y con bonitos acabados en madera.', 'Fracc. Casa Blanca', 1250, 1200, 4, 2, 1, 15, 6),
(41, 'Bonita Casa en Renta Fracc. Residencial Bonanza', '1', 'disponible', 'Casa', 14000000, 'ca754b457d9c731772fcfd4c87945b9f.jpg', 'Bonita Casa en renta lista para habitar con vista ala piscina, son dos niveles con tres recámaras dos de ellas con closet, Planta baja: Estacionamiento para tres autos Sala-comedor, cocina cubierta de granito equipada con estufa, campana y alacena, cuarto de lavado, secado.', 'Fracc. Residencial Bonanza', 1500, 1300, 4, 3, 2, 10, 6),
(42, 'Bonita Casa en Renta. Fracc. La Victoria', '2', 'disponible', 'sadas', 8000000, '8862a28d8fd55acbf170b7895824d35f.jpg', 'Cuenta con un buen diseño y decoración. La alberca es sencilla y se mantiene al nivel del piso, casi como un espejo de agua, lo que la hace refinada y elegante, en perfecta sintonía con el diseño general de la casa. Es amplia y luminoso inmueble de construcción moderna.', 'Fracc. La Victoria', 1000, 850, 2, 1, 1, 20, 6),
(43, 'Bonita Casa en Renta en Puerta de Hierro Residencial', '2', 'disponible', 'Casa', 15000000, '246b919cc9e20ff865f0c60456515615.jpg', 'Bonita Casa, cuenta con sala y comedor con techos de doble altura, la cocina totalmente equipada con acabados de alta calidad, alacena y cuarto de lavar, además el primer piso cuenta con una recamara con terraza y baño completo. En el segundo piso, tres recamaras, cada una con su baño completo .', 'Puerta de Hierro Residencial', 1200, 900, 3, 2, 1, 10, 6),
(44, 'Bonita Casa en Renta Fracc. Tres marias', '2', 'disponible', 'Casa', 6000000, 'd23506e7de2d7e740a9babadecccf4f1.jpg', 'Casa de cinco recámaras ubicada dentro de un complejo privado de acceso controlado. Habitación independiente con cama individual, closet, escritorio, frigo bar, baño completo propio. Incluye agua, luz, gas e internet.', 'Fracc. Tres marias', 800, 500, 2, 2, 1, 10, 6),
(45, 'Bonita Casa en Renta Fracc. Las aguilas, zona norte oriente ', '2', 'disponible', 'Casa', 11000000, 'bca7c8acf5a746994e526176189591b6.jpg', 'Bonita Casa cuenta con 10 metros de terreno, estacionamiento para 2 autos chicos, 2 recamaras con baño, una cama matrimonial y un colchón individual cada una, otra recamara con una cama matrimonial y un sofá cama matrimonial, 1 baño completo para servicio de la sala, comedor, cocina equipada, terraza con asador, amplio jardín, bonita alberca y jacuzzi', ' Fracc. Las aguilas', 1000, 950, 2, 3, 2, 10, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `IdVendedores` int(11) NOT NULL,
  `nameUser` varchar(50) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `apellidoPaterno` varchar(45) NOT NULL,
  `apellidoMaterno` varchar(45) NOT NULL,
  `correoElectronico` varchar(45) NOT NULL,
  `contraseña` char(60) NOT NULL,
  `numeroTelefonico` char(10) NOT NULL,
  `telefonoMovil` char(10) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `codigoPostal` char(5) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`idAdmin`),
  ADD UNIQUE KEY `correoElectronico` (`correoElectronico`);

--
-- Indices de la tabla `compradores`
--
ALTER TABLE `compradores`
  ADD PRIMARY KEY (`idCompradores`),
  ADD UNIQUE KEY `nameUser` (`nameUser`),
  ADD KEY `correoElectronico` (`correoElectronico`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idContacto`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`idFavoritos`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `informacion`
--
ALTER TABLE `informacion`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`IdPropiedad`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`IdVendedores`),
  ADD UNIQUE KEY `nameUser` (`nameUser`),
  ADD UNIQUE KEY `correoElectronico` (`correoElectronico`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `compradores`
--
ALTER TABLE `compradores`
  MODIFY `idCompradores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `idContacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `idFavoritos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `informacion`
--
ALTER TABLE `informacion`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `IdPropiedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `IdVendedores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
