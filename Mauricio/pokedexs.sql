# Host: localhost  (Version 5.5.5-10.1.37-MariaDB)
# Date: 2019-02-07 21:52:25
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "pokedexs"
#

DROP TABLE IF EXISTS `pokedexs`;
CREATE TABLE `pokedexs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(30) DEFAULT NULL,
  `nivel` int(11) DEFAULT '1',
  `fk_pokemon` int(11) NOT NULL,
  `fk_personaje` int(11) NOT NULL,
  `salud` int(11) DEFAULT '15',
  `estado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_pokemon` (`fk_pokemon`),
  KEY `fk_personaje` (`fk_personaje`),
  CONSTRAINT `pokedexs_ibfk_1` FOREIGN KEY (`fk_pokemon`) REFERENCES `pokemons` (`id`),
  CONSTRAINT `pokedexs_ibfk_2` FOREIGN KEY (`fk_personaje`) REFERENCES `personajes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

#
# Data for table "pokedexs"
#

INSERT INTO `pokedexs` VALUES (2,'Ignus',1,2,1,15,1),(3,'Tortuguita',1,3,1,15,0),(7,'Inflamate',1,2,1,15,0),(11,'Garden',1,1,1,15,0),(18,'Macaco',1,5,1,15,0),(28,'Basura',1,6,1,15,0),(29,'No',1,7,1,15,0),(34,'Diabolo',1,6,1,15,0),(35,'Bicho',1,6,1,15,1);
