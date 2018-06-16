/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.31-MariaDB : Database - inventarioigniter
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`inventarioigniter` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `inventarioigniter`;

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `area` */

insert  into `area`(`id`,`nombre`,`created_at`,`updated_at`,`entry_by`) values (1,'Contabilidad','2018-06-06 08:00:16','2018-06-06 08:00:19',1),(2,'Recursos Humanos','2018-06-06 08:00:32','2018-06-06 08:00:34',1);

/*Table structure for table `cargo` */

DROP TABLE IF EXISTS `cargo`;

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCargo` varchar(50) NOT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT 'Activo',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `cargo` */

insert  into `cargo`(`id`,`nombreCargo`,`estado`,`created_at`,`updated_at`,`entry_by`) values (1,'Técnico','Activo','2018-06-06 07:58:22','2018-06-06 07:58:24',1),(2,'Profesional Universitario','Activo','2018-06-06 07:58:36','2018-06-06 07:58:46',1),(3,'Profesional Especializado','Activo','2018-06-06 07:59:02','2018-06-06 07:59:04',1),(4,'Jefe de Area','Activo','2018-06-06 07:59:38','2018-06-06 07:59:41',1),(5,'Gerente','Activo','2018-06-06 07:59:50','2018-06-06 07:59:52',1);

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(11) NOT NULL,
  `nombreCategoria` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Data for the table `categorias` */

insert  into `categorias`(`id`,`codigo`,`nombreCategoria`,`descripcion`,`estado`,`created_at`,`updated_at`,`entry_by`) values (1,'101','ACEITES','Todo Relacionado con  ACEITES, GRASAS Y LUBRICANTES','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(2,'102','COMBUSTIBLES','Todo Relacionado con COMBUSTIBLES LÍQUIDOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(3,'103','DROGAS -  LABORATORIO','Todo Relacionado con DROGAS, ELEMENTOS ODONTOLÓGICOS LABORATORIO','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(4,'104','ELEMENTOS PARA CONSTRUCCIÓN','Todo Relacionado con ELEMENTOS PARA CONSTRUCCIÓN','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(5,'105','EXPLOSIVOS','Todo Relacionado con EXPLOSIVOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(6,'106','FORRAJES Y ALIMENTOS PARA ANIMALES','Todo Relacionado con FORRAJES Y ALIMENTOS PARA ANIMALES','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(7,'107','INSECTICIDAS, FUNGICIDAS, HERBICIDAS, ROEDENTICIDA','Todo Relacionado con INSECTICIDAS, FUNGICIDAS, HERBICIDAS, ROEDENTICIDAS Y BACTERICIDAS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(8,'108','MATERIALES O MATERIAS PRIMAS PARA CONSTRUCCIÓN, IN','Todo Relacionado con MATERIALES O MATERIAS PRIMAS PARA CONSTRUCCIÓN, INSTALACIÓN CAMPO E INDUSTRIA, ','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(9,'109','SEMILLAS','Todo Relacionado con SEMILLAS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(10,'110','ÚTILES DE ESCRITORIO OFICINA, DIBUJO Y PAPELERÍA','Todo Relacionado con ÚTILES DE ESCRITORIO OFICINA, DIBUJO Y PAPELERÍA','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(11,'111','VÍVERES, RANCHO Y LICOR','Todo Relacionado con VÍVERES, RANCHO Y LICOR','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(12,'112','REPUESTOS PARA MÁQUINAS Y EQUIPOS','Todo Relacionado con REPUESTOS PARA MÁQUINAS Y EQUIPOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(13,'113','UTENSILIOS DE USO DOMESTICO O PERSONAL','Todo Relacionado con UTENSILIOS DE USO DOMESTICO O PERSONAL','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(14,'114','NO ESPECIFICADO','Todo Relacionado con NO ESPECIFICADO','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(15,'115','OTROS ELEMENTOS DE CONSUMO','Todo Relacionado con OTROS ELEMENTOS DE CONSUMO','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(16,'201','ARMAS, ACCESORIOS Y REPUESTOS','Todo Relacionado con ARMAS, ACCESORIOS Y REPUESTOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(17,'202','DISCOTECAS Y MUSICOTECAS','Todo Relacionado con DISCOTECAS Y MUSICOTECAS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(18,'203','ELEMENTOS DE CULTO','Todo Relacionado con ELEMENTOS DE CULTO','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(19,'204','ELEMENTOS DE MUSEO','Todo Relacionado con ELEMENTOS DE MUSEO','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(20,'205','ELEMENTOS Y EQUIPOS PARA ARNESES, ARREOS Y ATALAJE','Todo Relacionado con ELEMENTOS Y EQUIPOS PARA ARNESES, ARREOS Y ATALAJE Y SUS ACCESORIOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(21,'206','EQUIPOS Y  MAQUINAS PARA COMEDOR, COCINA, DESPENSA','Todo Relacionado con EQUIPOS Y  MAQUINAS PARA COMEDOR, COCINA, DESPENSA Y SUS ACCESORIOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(22,'207','EQUIPOS Y MAQUINAS PARA COMUNICACIÓN, DETECCIÓN, R','Todo Relacionado con EQUIPOS Y MAQUINAS PARA COMUNICACIÓN, DETECCIÓN, RADIO, TELEVISIÓN, SEÑA-LES, S','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(23,'208','EQUIPOS Y MAQUINA PARA CONSTRUCCIÓN, INSTALACIÓN, ','Todo Relacionado con EQUIPOS Y MAQUINA PARA CONSTRUCCIÓN, INSTALACIÓN, CAMPO, INDUSTRIA, TALLER Y LA','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(24,'209','EQUIPOS Y MAQUINAS PARA DEPORTES, GIMNASIA Y JUEGO','Todo Relacionado con EQUIPOS Y MAQUINAS PARA DEPORTES, GIMNASIA Y JUEGOS Y SUS ACCESORIOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(25,'210','EQUIPOS Y MAQUINAS PARA LAB.  PROFESIONES CIENTÍFI','Todo Relacionado con EQUIPOS Y MAQUINAS PARA LAB.  PROFESIONES CIENTÍFICAS Y ENSEÑANZA Y SUS ACCESOR','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(26,'211','EQUIPOS Y MAQUINAS DE MEDICINA ODONTOLOGÍA  VETERI','Todo Relacionado con EQUIPOS Y MAQUINAS DE MEDICINA ODONTOLOGÍA  VETERINARIA RAYOS X Y SANIDAD Y ACC','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(27,'212','EQUIPOS Y MAQUINAS PARA OFICINA, CONTABILIDAD Y DI','Todo Relacionado con EQUIPOS Y MAQUINAS PARA OFICINA, CONTABILIDAD Y DIBUJO Y SUS ACCESORIOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(28,'213','EQUIPOS Y MAQUINAS PARA TRANSPORTE Y SUS ACCESORIO','Todo Relacionado con EQUIPOS Y MAQUINAS PARA TRANSPORTE Y SUS ACCESORIOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(29,'214','HERRAMIENTAS Y ACCESORIOS','Todo Relacionado con HERRAMIENTAS Y ACCESORIOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(30,'215','INSTRUMENTOS MUSICALES Y SUS ACCESORIOS','Todo Relacionado con INSTRUMENTOS MUSICALES Y SUS ACCESORIOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(31,'216','LIBROS DE BIBLIOTECA, ESTUDIO, DOCUMENTOS, MAPOTEC','Todo Relacionado con LIBROS DE BIBLIOTECA, ESTUDIO, DOCUMENTOS, MAPOTECAS, PLANOTECAS, HEMERO-TECAS ','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(32,'217','LLANTAS Y NEUMÁTICOS','Todo Relacionado con LLANTAS Y NEUMÁTICOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(33,'218','MOBILIARIOS Y ENSERES','Todo Relacionado con MOBILIARIOS Y ENSERES','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(34,'219','SEMOVIENTES','Todo Relacionado con SEMOVIENTES','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(35,'220','VESTUARIO, ROPAS Y EQUIPOS','Todo Relacionado con VESTUARIO, ROPAS Y EQUIPOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(36,'221','AVISOS Y VALLAS','Todo Relacionado con AVISOS Y VALLAS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(37,'226','OTROS ELEMENTOS DEVOLUTIVOS','Todo Relacionado con OTROS ELEMENTOS DEVOLUTIVOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(38,'227','SUPERFICIE MESA PARA ESCRITORIO','Todo Relacionado con SUPERFICIE MESA PARA ESCRITORIO','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(39,'228','MUEBLES PARA LIBROS','Todo Relacionado con MUEBLES PARA LIBROS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(40,'229','BANDERA','Todo Relacionado con BANDERA','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(41,'230','ELEMENTOS ELECTRONICOS','Todo Relacionado con ELEMENTOS ELECTRONICOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(42,'231','EQUIPOS ELECTRONICOS','Todo Relacionado con EQUIPOS ELECTRONICOS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(43,'232','EQUIPOS DE COMPUTO','Todo Relacionado con EQUIPOS DE COMPUTO','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(44,'233','IMPRESORAS Y ESCANERS','Todo Relacionado con IMPRESORAS Y ESCANERS','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(45,'300','INVENTARIO','Todo Relacionado con INVENTARIO','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(46,'301','ANULADO','Todo Relacionado con ANULADO','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(47,'1231','ACLARATORIO','Todo Relacionado con ACLARATORIO','Activo','2018-06-04 10:00:00','2018-06-04 10:00:01',1),(48,'234','PRUEBA','PRUEBA - PRUEBA','Inactivo',NULL,NULL,NULL);

/*Table structure for table `ciudad` */

DROP TABLE IF EXISTS `ciudad`;

CREATE TABLE `ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `codDepartamento` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ciudad_departamento_idx` (`codDepartamento`),
  CONSTRAINT `fk_ciudad_departamento` FOREIGN KEY (`codDepartamento`) REFERENCES `departamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ciudad` */

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `id` int(11) DEFAULT NULL,
  `tipo_Documento` int(11) DEFAULT NULL,
  `numDocumento` varchar(15) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ciudad` int(11) DEFAULT NULL,
  `estado` enum('Activo','Inactvo') DEFAULT NULL,
  `creted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  KEY `ciudad` (`ciudad`),
  KEY `tipo_Documento` (`tipo_Documento`),
  KEY `id` (`id`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ciudad`) REFERENCES `ciudad` (`id`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`tipo_Documento`) REFERENCES `tiposdocumento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cliente` */

/*Table structure for table `comprobanteentrada` */

DROP TABLE IF EXISTS `comprobanteentrada`;

CREATE TABLE `comprobanteentrada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `numFactura` varchar(20) DEFAULT NULL,
  `codproveedor` int(11) DEFAULT NULL,
  `ValorTotal` double DEFAULT NULL,
  `codUserClient` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `codproveedor` (`codproveedor`),
  CONSTRAINT `comprobanteentrada_ibfk_1` FOREIGN KEY (`codproveedor`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comprobanteentrada` */

/*Table structure for table `departamento` */

DROP TABLE IF EXISTS `departamento`;

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `departamento` */

/*Table structure for table `dependencia` */

DROP TABLE IF EXISTS `dependencia`;

CREATE TABLE `dependencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreDependencia` varchar(50) DEFAULT NULL,
  `codArea` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dependencias_area1_idx` (`codArea`),
  CONSTRAINT `fk_dependencias_area1` FOREIGN KEY (`codArea`) REFERENCES `area` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `dependencia` */

insert  into `dependencia`(`id`,`nombreDependencia`,`codArea`,`created_at`,`updated_at`,`entry_by`) values (1,'Personal',2,'2018-06-06 08:01:04','2018-06-06 08:01:08',1),(2,'Nomina',2,'2018-06-06 08:01:44','2018-06-06 08:01:47',1),(3,'Facturación',1,'2018-06-07 08:03:21','2018-06-07 08:03:25',1),(4,'Pagos',1,'2018-06-07 08:03:55','2018-06-07 08:04:01',1);

/*Table structure for table `detalle_salidaventa` */

DROP TABLE IF EXISTS `detalle_salidaventa`;

CREATE TABLE `detalle_salidaventa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `id_ventasalida` int(11) NOT NULL,
  `precio` double DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detalle_productos_idx` (`producto_id`),
  KEY `fk_detalle_salidavents_idx` (`id_ventasalida`),
  CONSTRAINT `fk_detalle_productos` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_salidavents` FOREIGN KEY (`id_ventasalida`) REFERENCES `salidaventas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `detalle_salidaventa` */

/*Table structure for table `genero` */

DROP TABLE IF EXISTS `genero`;

CREATE TABLE `genero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `decripcion` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `genero` */

insert  into `genero`(`id`,`decripcion`,`created_at`,`updated_at`,`entry_by`) values (1,'Masculino','2018-06-06 07:57:08','2018-06-06 07:57:11',1),(2,'Femenino','2018-06-06 07:57:24','2018-06-06 07:57:27',1);

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `nombreProducto` varchar(250) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `valorUnitario` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `iva` char(5) DEFAULT '0',
  `idCategoria` int(11) NOT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT 'Activo',
  `unidadMedida` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `producto` */

insert  into `producto`(`id`,`codigo`,`nombreProducto`,`descripcion`,`valorUnitario`,`stock`,`iva`,`idCategoria`,`estado`,`unidadMedida`,`created_at`,`updated_at`,`entry_by`) values (1,'10101','ACEITE 400 MMLT','ACEITE 400 MMLT - ACEITES',17000,16,'19',1,'Activo',NULL,NULL,NULL,NULL),(3,'10201','FASOLINA','GASOLINA POR GALONES',15500,16,'19',2,'Inactivo',NULL,NULL,NULL,NULL);

/*Table structure for table `productos_has_comprobante` */

DROP TABLE IF EXISTS `productos_has_comprobante`;

CREATE TABLE `productos_has_comprobante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codComprobante` int(11) DEFAULT NULL,
  `codProducto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `codUnidadmedida` int(11) DEFAULT NULL,
  `iva` int(11) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `codComprobante` (`codComprobante`),
  KEY `codProducto` (`codProducto`),
  KEY `codUnidadmedida` (`codUnidadmedida`),
  CONSTRAINT `productos_has_comprobante_ibfk_1` FOREIGN KEY (`codComprobante`) REFERENCES `comprobanteentrada` (`id`),
  CONSTRAINT `productos_has_comprobante_ibfk_2` FOREIGN KEY (`codProducto`) REFERENCES `producto` (`id`),
  CONSTRAINT `productos_has_comprobante_ibfk_3` FOREIGN KEY (`codUnidadmedida`) REFERENCES `unidadmedida` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `productos_has_comprobante` */

/*Table structure for table `proveedor` */

DROP TABLE IF EXISTS `proveedor`;

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTipodocumento` int(11) NOT NULL,
  `documento` varchar(20) DEFAULT NULL,
  `nomEmpresa` varchar(100) DEFAULT NULL,
  `nomReplegal` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `proveedor` */

/*Table structure for table `salidaventas` */

DROP TABLE IF EXISTS `salidaventas`;

CREATE TABLE `salidaventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `subtotatl` double DEFAULT NULL,
  `iva` char(5) DEFAULT '0',
  `descuento` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_salidaventas_cliente_idx` (`cliente_id`),
  KEY `fk_salidaventas_tbuser_idx` (`usuario_id`),
  CONSTRAINT `fk_salidaventas_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_salidaventas_tbuser` FOREIGN KEY (`usuario_id`) REFERENCES `tb_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `salidaventas` */

/*Table structure for table `tb_group` */

DROP TABLE IF EXISTS `tb_group`;

CREATE TABLE `tb_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_group` */

insert  into `tb_group`(`id`,`nombre`,`description`) values (1,'Superadmin','Acceso total con código'),(2,'Admin','Acceso Total'),(3,'Usuario','Acceso restringido');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `group_id` int(11) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tb_user_tb_group1_idx` (`group_id`),
  CONSTRAINT `fk_tb_user_tb_group1` FOREIGN KEY (`group_id`) REFERENCES `tb_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`nombres`,`apellidos`,`avatar`,`email`,`username`,`password`,`group_id`,`estado`,`last_login`,`created_at`,`updated_at`,`remember_token`) values (1,'EDUBIN','TORRES PEÑA','edubin.png','edutorpe@gmail.com','edutorpe','f54cb76eb0c8e7fc2766053f49ca8e8108b66e85',1,1,'2018-05-29 23:57:06','2018-05-29 23:57:09','2018-05-29 23:57:12','f54cb76eb0c8e7fc2766053f49ca8e8108b66e85');

/*Table structure for table `tiposdocumento` */

DROP TABLE IF EXISTS `tiposdocumento`;

CREATE TABLE `tiposdocumento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `entry_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tiposdocumento` */

/*Table structure for table `unidadmedida` */

DROP TABLE IF EXISTS `unidadmedida`;

CREATE TABLE `unidadmedida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `unidadmedida` */

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dependencia_id` int(11) NOT NULL,
  `codUser` int(11) NOT NULL,
  `fechaNacimiento` datetime DEFAULT NULL,
  `codTipoDocumento` int(11) NOT NULL,
  `numeroDocumento` varchar(45) DEFAULT NULL,
  `codCiudad` int(11) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `extension` varchar(5) DEFAULT NULL,
  `codCargo` int(11) NOT NULL,
  `genero` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuarios_tiposdocumento1_idx` (`codTipoDocumento`),
  KEY `fk_usuarios_tb_user1_idx` (`codUser`),
  KEY `fk_usuarios_genero1_idx` (`genero`),
  KEY `fk_usuarios_cargo1_idx` (`codCargo`),
  KEY `fk_usuarios_dependencias1_idx` (`dependencia_id`),
  KEY `fk_usuarios_ciudad1_idx` (`codCiudad`),
  CONSTRAINT `fk_usuarios_cargo1` FOREIGN KEY (`codCargo`) REFERENCES `cargo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_ciudad1` FOREIGN KEY (`codCiudad`) REFERENCES `ciudad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_dependencias1` FOREIGN KEY (`dependencia_id`) REFERENCES `dependencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_genero1` FOREIGN KEY (`genero`) REFERENCES `genero` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_tb_user1` FOREIGN KEY (`codUser`) REFERENCES `tb_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_tiposdocumento1` FOREIGN KEY (`codTipoDocumento`) REFERENCES `tiposdocumento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
