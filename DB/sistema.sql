CREATE TABLE `productos` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nombre` varchar(255) NOT NULL,
    `precio` decimal(20,2) NOT NULL,
    `stock` int(11) NOT NULL,
    `descripcion` text NOT NULL,
    `imagen` varchar(1000) NOT NULL,
    PRIMARY KEY (`id`)
)

CREATE TABLE `ventas` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `clavetransaccion` varchar(255) NOT NULL,
    `paypaldatos` text NOT NULL,
    `fecha` datetime NOT NULL,
    `correo` varchar(5000) NOT NULL,
    `total` decimal(60,2) NOT NULL,
    `status` varchar(200) NOT NULL,
    PRIMARY KEY (`id`)
) 

CREATE TABLE `detalleventa` (
    `ID` int(11) NOT NULL AUTO_INCREMENT,
    `IDVENTA` int(11) NOT NULL,
    `IDPRODUCTO` int(11) NOT NULL,
    `PRECIOUNITARIO` decimal(20,2) NOT NULL,
    `CANTIDAD` int(11) NOT NULL,
    `DESCARGADO` int(1) NOT NULL,
    PRIMARY KEY (`ID`),
    KEY `IDVENTA` (`IDVENTA`),
    KEY `IDPRODUCTO` (`IDPRODUCTO`),
    CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) 

