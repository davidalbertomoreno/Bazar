# Host: localhost  (Version 5.5.5-10.1.37-MariaDB)
# Date: 2019-02-07 21:52:33
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "personajes"
#

DROP TABLE IF EXISTS `personajes`;
CREATE TABLE `personajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `nivel` int(11) DEFAULT '1',
  `fk_usuario` int(11) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `raza` varchar(30) NOT NULL,
  `equipo` varchar(30) NOT NULL,
  `color_ojos` varchar(30) NOT NULL,
  `color_pelo` varchar(30) NOT NULL,
  `medalla1` tinyint(1) DEFAULT '0',
  `medalla2` tinyint(1) DEFAULT '0',
  `medalla3` tinyint(1) DEFAULT '0',
  `pokemoneda` int(11) DEFAULT '1000',
  `experiencia` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `fk_usuario` (`fk_usuario`),
  CONSTRAINT `personajes_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

#
# Data for table "personajes"
#

INSERT INTO `personajes` VALUES (1,'Ask',1,2,'Mujer','Europ','Rub','Marr','Negr',0,0,0,1000,0),(7,'Mau',1,28,'Hombr','Latin','Rub','Marr','Negr',0,0,0,1000,0),(11,'PokéJoshe',1,6,'Hombr','Europ','Zaf','Marr','Rubi',0,0,0,1000,0);
