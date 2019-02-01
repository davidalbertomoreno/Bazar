-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-02-2019 a las 00:38:06
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juego_pokemon`
--
CREATE DATABASE IF NOT EXISTS `juego_pokemon` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `juego_pokemon`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bazares`
--

CREATE TABLE `bazares` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bazares`
--

INSERT INTO `bazares` (`id`, `nombre`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'Poción', 'Cura a un Pokémon!', 300, 'https://vignette.wikia.nocookie.net/es.pokemon/images/9/95/Poci%C3%B3n_%28Dream_World%29.png/revision/latest?cb=20110130140443'),
(2, 'Súperpoción', 'Súper-cura a un Pokémon!', 700, 'https://vignette.wikia.nocookie.net/es.pokemon/images/b/b9/Superpoci%C3%B3n_%28Dream_World%29.png/revision/latest?cb=20110130141027'),
(3, 'Hiperpoción', 'Hiper-cura a un Pokémon!', 1200, 'https://vignette.wikia.nocookie.net/es.pokemon/images/e/e4/Hiperpoci%C3%B3n_%28Dream_World%29.png/revision/latest?cb=20110130134606'),
(4, 'Pokéball', 'Captura a los Pokémons salvajes!', 200, 'https://vignette.wikia.nocookie.net/es.pokemon/images/0/02/Pok%C3%A9_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20090125150654'),
(5, 'Súperball', 'Súper-captura a los Pokémons salvajes!', 600, 'https://vignette.wikia.nocookie.net/es.pokemon/images/5/57/Super_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20160831125614'),
(6, 'Ultraball', 'Ultra-captura a los Pokémons salvajes!', 1200, 'https://vignette.wikia.nocookie.net/es.pokemon/images/c/c9/Ultra_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20090125150713'),
(7, 'Masterball', 'Captura sin chances de falla a un Pokémon salvaje!', 20000, 'https://vignette.wikia.nocookie.net/es.pokemon/images/a/a9/Master_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20120802225204'),
(8, 'Restaurar Todo', 'Restaura completamente estado y salud a un Pokémon!', 3000, 'https://vignette.wikia.nocookie.net/es.pokemon/images/e/ec/Restaurar_todo_%28Dream_World%29.png/revision/latest?cb=20110130140741'),
(9, 'Antídoto', 'Cura estado ENVENENADO a un Pokémon!', 300, 'https://vignette.wikia.nocookie.net/es.pokemon/images/1/17/Ant%C3%ADdoto_%28Dream_World%29.png/revision/latest?cb=20110130120414'),
(10, 'Antiparalizador', 'Cura estado PARALIZADO a un Pokémon!', 300, 'https://vignette.wikia.nocookie.net/es.pokemon/images/d/d8/Antiparalizador_%28Dream_World%29.png/revision/latest?cb=20110130120415'),
(11, 'Antihielo', 'Cura estado CONGELADO a un Pokémon!', 300, 'https://vignette.wikia.nocookie.net/es.pokemon/images/9/92/Antihielo_%28Dream_World%29.png/revision/latest?cb=20110130120414'),
(12, 'Antiquemar', 'Cura estado QUEMÁNDOSE a un Pokémon!', 300, 'https://vignette.wikia.nocookie.net/es.pokemon/images/6/63/Antiquemar_%28Dream_World%29.png/revision/latest?cb=20110130120416'),
(13, 'Despertar', 'Despierta a un Pokémon dormido!', 300, 'https://vignette.wikia.nocookie.net/es.pokemon/images/d/d7/Despertar_%28Dream_World%29.png/revision/latest?cb=20110130120820'),
(14, 'Cuta Total', 'Cura todos los estados a un Pokémon!', 600, 'https://vignette.wikia.nocookie.net/es.pokemon/images/0/07/Cura_total_%28Dream_World%29.png/revision/latest?cb=20110130120819'),
(15, 'Éter', 'Restaura 10 puntos de poder de una habilidad de un Pokémon!', 600, 'https://vignette.wikia.nocookie.net/es.pokemon/images/a/af/%C3%89ter_%28Dream_World%29.png/revision/latest?cb=20110130121036'),
(16, 'Eter Máximo', 'Restaura todos los puntos de poder de una habilidad de un Pokémon!', 1000, 'https://vignette.wikia.nocookie.net/es.pokemon/images/8/89/%C3%89ter_m%C3%A1ximo_%28Dream_World%29.png/revision/latest?cb=20110130121036'),
(17, 'Elixir', 'Restaura 10 puntos de poder de todas las habilidades de un Pokémon!', 1500, 'https://vignette.wikia.nocookie.net/es.pokemon/images/5/57/Elixir_%28Dream_World%29.png/revision/latest?cb=20110130121034'),
(18, 'Elixir Máximo', 'Restaura todos los puntos de poder de todas las habilidades de un Pokémon!', 2250, 'https://vignette.wikia.nocookie.net/es.pokemon/images/f/f9/M%C3%A1ximo_elixir_%28Dream_World%29.png/revision/latest?cb=20110130121035'),
(19, 'Revivir', 'Revive a un Pokémon debilitado!', 1500, 'https://vignette.wikia.nocookie.net/es.pokemon/images/3/3e/Revivir_%28Dream_World%29.png/revision/latest?cb=20110130140741');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mochila`
--

CREATE TABLE `mochila` (
  `id` int(11) NOT NULL,
  `fk_objeto` int(11) NOT NULL,
  `fk_personaje` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mochila`
--

INSERT INTO `mochila` (`id`, `fk_objeto`, `fk_personaje`, `cantidad`) VALUES
(1, 1, 1, 6),
(2, 4, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `nivel` int(11) DEFAULT '1',
  `fk_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `nivel`, `fk_usuario`) VALUES
(1, 'POKE_JOSHE', 1, 7),
(2, 'POKENIEL', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokedexs`
--

CREATE TABLE `pokedexs` (
  `id` int(11) NOT NULL,
  `alias` varchar(30) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `fk_pokemon` int(11) NOT NULL,
  `fk_personaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokedexs`
--

INSERT INTO `pokedexs` (`id`, `alias`, `nivel`, `fk_pokemon`, `fk_personaje`) VALUES
(1, NULL, NULL, 3, 2),
(2, NULL, NULL, 4, 2),
(3, NULL, NULL, 1, 2),
(4, NULL, NULL, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons`
--

CREATE TABLE `pokemons` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `especie` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokemons`
--

INSERT INTO `pokemons` (`id`, `nombre`, `tipo`, `especie`) VALUES
(1, 'bulbasour', 'planta/veneno', 'semilla'),
(2, 'charmander', 'fuego', 'lagartija'),
(3, 'squirtle', 'agua', 'tortuguita'),
(4, 'pikachu', 'electrico', 'raton');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `contraseña` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `contraseña`, `email`, `fecha_creacion`, `telefono`) VALUES
(1, 'Daniel Villanueva', '2005', 'dvillanueva40@gmail.com', '2019-01-03 20:11:32', 949952608),
(2, 'Luis Galleguillos', 'DLE1401', 'lgalleguillos21.lg@gmail.com', '2019-01-03 20:11:32', 951334088),
(3, 'Roberto Torres', 'ketepaloco13', 'rob_atb@hotmail.com', '2019-01-03 20:11:32', 994437124),
(4, 'Zenen Canales', '2019', 'zenefox@gmail.com', '2019-01-03 20:11:32', 990665950),
(5, 'Katherine Berríos', 'kathy341', 'berkathy@gmail.com', '2019-01-03 20:11:32', 990700264),
(6, 'Mauricio Sarmiento', 'ContraseñaOriginal', 'mauriciosm221@gmail.com', '2019-01-03 20:11:32', 993856993),
(7, 'joshe ramirez', '1234', 'joseinformatico2015@gmail.com', '2019-01-03 20:11:32', 983916160),
(8, 'Miguel Ocque', '0412', 'migueocque@gmail.com', '2019-01-03 20:11:32', 944795895),
(9, 'David Moreno', '2019', 'davidalbertomoreno@outlook.com', '2019-01-03 20:11:32', 951780458),
(10, 'María Gutierrez Flores', 'maru123', 'gutierrez.mariau@gmail.com', '2019-01-03 20:11:32', 989320004);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bazares`
--
ALTER TABLE `bazares`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mochila`
--
ALTER TABLE `mochila`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_objeto` (`fk_objeto`),
  ADD KEY `fk_personaje` (`fk_personaje`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario` (`fk_usuario`);

--
-- Indices de la tabla `pokedexs`
--
ALTER TABLE `pokedexs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pokemon` (`fk_pokemon`),
  ADD KEY `fk_personaje` (`fk_personaje`);

--
-- Indices de la tabla `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bazares`
--
ALTER TABLE `bazares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `mochila`
--
ALTER TABLE `mochila`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pokedexs`
--
ALTER TABLE `pokedexs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pokemons`
--
ALTER TABLE `pokemons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mochila`
--
ALTER TABLE `mochila`
  ADD CONSTRAINT `mochila_ibfk_1` FOREIGN KEY (`fk_objeto`) REFERENCES `bazares` (`id`),
  ADD CONSTRAINT `mochila_ibfk_2` FOREIGN KEY (`fk_personaje`) REFERENCES `personajes` (`id`);

--
-- Filtros para la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `personajes_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `pokedexs`
--
ALTER TABLE `pokedexs`
  ADD CONSTRAINT `pokedexs_ibfk_1` FOREIGN KEY (`fk_pokemon`) REFERENCES `pokemons` (`id`),
  ADD CONSTRAINT `pokedexs_ibfk_2` FOREIGN KEY (`fk_personaje`) REFERENCES `personajes` (`id`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"angular\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"juego_pokemon\",\"table\":\"usuarios\"},{\"db\":\"juego_pokemon\",\"table\":\"personajes\"},{\"db\":\"juego_pokemon\",\"table\":\"pokemons\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-02-01 23:37:20', '{\"lang\":\"es\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
