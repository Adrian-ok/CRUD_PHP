-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-08-2022 a las 10:41:42
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `institutos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campo`
--

DROP TABLE IF EXISTS `campo`;
CREATE TABLE IF NOT EXISTS `campo` (
  `id_campo` int(6) NOT NULL AUTO_INCREMENT,
  `campo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `obs` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_campo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `campo`
--

INSERT INTO `campo` (`id_campo`, `campo`, `obs`) VALUES
(1, 'Formación General', ''),
(2, 'Formación Especifica ', ''),
(3, 'Formación en la Practica Profesional', ''),
(4, 'Instancia de Definición Institucional', ''),
(5, 'Formación de Fundamento', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

DROP TABLE IF EXISTS `carrera`;
CREATE TABLE IF NOT EXISTS `carrera` (
  `id_carrera` int(6) NOT NULL AUTO_INCREMENT,
  `carrera` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `ano` varchar(4) COLLATE utf8_spanish2_ci NOT NULL,
  `resol` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `resolc` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cm` int(6) NOT NULL,
  `duracion` int(4) DEFAULT NULL,
  `rm` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `validez` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cohortes` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipo_c` int(2) NOT NULL,
  PRIMARY KEY (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id_carrera`, `carrera`, `ano`, `resol`, `resolc`, `cm`, `duracion`, `rm`, `validez`, `cohortes`, `tipo_c`) VALUES
(1, 'Profesorado de Danza con orientación en danzas folklóricas argentinas', '2015', '3399/15', '225/17', 37, 4, '282/15', '1994/17', '2016 a 2020', 0),
(2, 'Profesorado de Danza con orientación en danza clásica', '2015', '3398/15', '225/17', 36, 4, '281/15', '2026/17', '2016 a 2020', 0),
(18, 'Profesorado de Música', '2015', '3397/15', '225/17', 40, 4, '277/15', '758/17', '2016 a 2019', 0),
(62, 'Tecnicatura Superior en Producción Musical Aplicada a la Comunicación Multimedial', '2011', '6116/11', '00', 29, 3, '00', '667/18', '00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

DROP TABLE IF EXISTS `materia`;
CREATE TABLE IF NOT EXISTS `materia` (
  `id_materia` int(6) NOT NULL AUTO_INCREMENT,
  `id_carrera` int(6) NOT NULL,
  `id_campo` int(6) NOT NULL,
  `id_tipo` int(6) NOT NULL,
  `materia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cuatrimestre` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `ma` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `ano` int(2) NOT NULL,
  `horas_sem` int(6) NOT NULL,
  `horas_anual` int(6) NOT NULL,
  KEY `id_materia` (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=10029 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `id_carrera`, `id_campo`, `id_tipo`, `materia`, `cuatrimestre`, `ma`, `ano`, `horas_sem`, `horas_anual`) VALUES
(1, 1, 1, 2, 'Taller de Oralidad, Lectura y Escritura', 'ANUAL', 'Promocional', 1, 4, 128),
(2, 1, 1, 1, 'Pedagogía', 'ANUAL', 'Examen Final', 1, 4, 128),
(3, 1, 1, 1, 'Filosofía ', '1 CUAT', 'Examen Final', 1, 4, 64),
(4, 1, 2, 1, 'Anatomía y Movimiento', 'ANUAL', 'Examen Final', 1, 3, 96),
(5, 1, 2, 3, 'Historia y Estética de la danza', 'ANUAL', 'Examen Final', 1, 4, 128),
(6, 1, 2, 2, 'Introducción a la Danza', 'ANUAL', 'Promocional', 1, 6, 192),
(7, 1, 2, 2, 'Lenguaje Musical y Danza', 'ANUAL', 'Promocional', 1, 2, 64),
(8, 1, 3, 2, 'Practica I', 'ANUAL', 'Promocional', 1, 4, 128),
(9, 1, 4, 5, 'UC 1', 'ANUAL', 'Promocional', 1, 2, 64),
(10, 1, 1, 1, 'Didáctica General', 'ANUAL', 'Examen Final', 2, 3, 96),
(11, 1, 1, 1, 'Psicología Educacional', '1 CUAT', 'Examen Final', 2, 6, 96),
(12, 1, 1, 2, 'Tecnología de la Información y la Comunicación', '2 CUAT', 'Promocional', 2, 4, 64),
(13, 1, 2, 3, 'Antecedentes Históricos de las Danzas Folclóricas ', 'ANUAL', 'Examen Final', 2, 2, 64),
(14, 1, 2, 2, 'Danzas Folklóricas Argentinas I', 'ANUAL', 'Promocional', 2, 5, 160),
(15, 1, 2, 1, 'Didáctica de la Danza I. Nivel Inicial y Nivel Pri', 'ANUAL', 'Examen Final', 2, 4, 128),
(16, 1, 2, 2, 'Zapateo ', 'ANUAL', 'Promocional', 2, 3, 96),
(17, 1, 2, 1, 'Sujeto del Nivel Inicial y Primario', '1 CUAT', 'Examen Final', 2, 3, 48),
(18, 1, 3, 2, 'Practica II', 'ANUAL', 'Promocional', 2, 4, 128),
(19, 1, 4, 5, 'UC 2', 'ANUAL', 'Promocional', 2, 2, 64),
(20, 1, 1, 1, 'Historia y Política de la Educación Argentina', '1 CUAT', 'Promocional', 3, 4, 64),
(21, 1, 1, 1, 'Sociologia de la Educación', '2 CUAT', 'Examen Final', 3, 4, 64),
(22, 1, 2, 2, 'Danzas Folklóricas Argentinas II ', 'ANUAL', 'Promocional', 3, 6, 192),
(23, 1, 2, 1, 'Didáctica de la Danza II.  Nivel Secundario', 'ANUAL', 'Examen Final', 3, 4, 128),
(24, 1, 2, 2, 'Tango I', 'ANUAL', 'Promocional', 3, 3, 96),
(25, 1, 2, 1, 'Sujeto de nivel secundario y Adulto', '1 CUAT', 'Examen Final', 3, 3, 48),
(26, 1, 2, 2, 'Improvisación y composición coreográfica', '2 CUAT', 'Promocional', 3, 3, 48),
(27, 1, 3, 4, 'Practica III', 'ANUAL', 'Promocionals', 3, 5, 160),
(28, 1, 4, 5, 'UC 3', 'ANUAL', 'Promocional', 3, 2, 64),
(29, 1, 1, 2, 'ESI', '2 CUAT', 'Promocional', 4, 4, 64),
(30, 1, 1, 1, 'Formación Ética y Ciudadana', '1 CUAT', 'Promocional', 4, 3, 48),
(31, 1, 2, 2, 'Danzas Folclóricas Argentinas III', 'ANUAL', 'Promocional', 4, 6, 192),
(32, 1, 2, 1, 'Didáctica de la Danza III. Educación Artística', 'ANUAL', 'Examen Final', 4, 4, 128),
(33, 1, 2, 2, 'Recursos Didácticos para enseñanza de la Danza', '2 CUAT', 'Promocional', 4, 2, 32),
(34, 1, 2, 2, 'Tango II', 'ANUAL', 'Promocional', 4, 3, 96),
(35, 1, 3, 4, 'Residencia Pedagógica', 'ANUAL', 'Promocionals', 4, 8, 256),
(36, 1, 4, 5, 'UC 4', 'ANUAL', 'Promocional', 4, 2, 64),
(195, 2, 1, 2, 'Taller de Oralidad, Lectura y Escritura ', 'ANUAL', 'Promocional', 1, 4, 128),
(196, 2, 1, 1, 'Pedagogía', 'ANUAL', 'Examen Final', 1, 4, 128),
(197, 2, 1, 1, 'Filosofía', '1 CUAT', 'Examen Final', 1, 4, 64),
(198, 2, 2, 1, 'Anatomia y Movimiento', 'ANUAL', 'Examen Final', 1, 3, 96),
(199, 2, 2, 3, 'Historia y Estética de la Danza', 'ANUAL', 'Promocional', 1, 4, 128),
(200, 2, 2, 2, 'Introducción a la Danza', 'ANUAL', 'Examen Final', 1, 6, 192),
(201, 2, 2, 2, 'Lenguaje Musical', 'ANUAL', 'Promocional', 1, 2, 64),
(202, 2, 3, 2, 'Practica I', 'ANUAL', 'Promocional', 1, 4, 128),
(203, 2, 4, 5, 'UC I', 'ANUAL', 'Promocional', 1, 2, 64),
(204, 2, 1, 1, 'Didáctica General', 'ANUAL', 'Examen Final', 2, 3, 96),
(205, 2, 2, 3, 'Historia del Ballet', 'ANUAL', 'Examen Final', 2, 2, 64),
(206, 2, 2, 1, 'Danza Clásica I', 'ANUAL', 'Examen Final', 2, 5, 160),
(207, 2, 2, 2, 'Danza Contemporánea I', 'ANUAL', 'Promocional', 2, 3, 96),
(208, 2, 2, 1, 'Didáctica de la danza I. Nivel Inicial y Nivel Pri', 'ANUAL', 'Examen Final', 2, 4, 128),
(209, 2, 3, 2, 'Práctica II', 'ANUAL', 'Promocional', 2, 4, 128),
(210, 2, 4, 5, 'UCDI 2 ', 'ANUAL', 'Promocional', 2, 2, 64),
(211, 2, 1, 1, 'Psicología Educacional', '1 CUAT', 'Examen Final', 2, 6, 96),
(212, 2, 1, 2, 'Tecnología de la Información y la Comunicación', '2 CUAT', 'Promocional', 2, 4, 64),
(213, 2, 2, 1, 'Sujeto de Nivel Inicial y Primario', '1 CUAT', 'Examen Final', 2, 3, 48),
(214, 2, 1, 1, 'Historia y Política de la Educación Argentina', '1 CUAT', 'Promocional', 3, 4, 64),
(215, 2, 1, 1, 'Sociología de la Educación', '2 CUAT', 'Examen Final', 3, 4, 64),
(216, 2, 2, 1, 'Danza Clásica II', 'ANUAL', 'Examen Final', 3, 6, 192),
(217, 2, 2, 2, 'Danza Contemporánea II', 'ANUAL', 'Promocional', 3, 3, 96),
(218, 2, 2, 1, 'Didáctica de la Danza II. Nivel Secundario', 'ANUAL', 'Examen Final', 3, 4, 128),
(219, 2, 2, 1, 'Sujeto de Nivel Secundario', '1 CUAT', 'Examen Final', 3, 3, 48),
(220, 2, 2, 2, 'Improvisación y Composición coreográfica', '2 CUAT', 'Promocional', 3, 3, 48),
(221, 2, 1, 2, 'ESI', '2 CUAT', 'Promocional', 4, 4, 64),
(222, 2, 1, 1, 'Formación Ética y Ciudadana', '1 CUAT', 'Examen Final', 4, 3, 48),
(223, 2, 2, 1, 'Danza Clásica III', 'ANUAL', 'Examen Final', 4, 6, 192),
(224, 2, 2, 2, 'Danza Contemporánea III ', 'ANUAL', 'Promocional', 4, 3, 96),
(225, 2, 2, 1, 'Didáctica de la Danza III. Educación Artística', 'ANUAL', 'Examen Final', 4, 4, 128),
(226, 2, 2, 2, 'Recursos Didácticos para la Enseñanza de Danza', '2 CUAT', 'Promocional', 4, 2, 32),
(227, 2, 3, 4, 'Practica III', 'ANUAL', 'Promocionals', 3, 5, 160),
(228, 2, 4, 5, 'UCDI  3', 'ANUAL', 'Promocional', 3, 2, 64),
(229, 2, 3, 4, 'Residencia Pedagógica', 'ANUAL', 'Promocionals', 4, 8, 256),
(230, 2, 4, 5, 'UCDI 4', 'ANUAL', 'Promocional', 4, 2, 64),
(231, 18, 1, 2, 'Taller de oralidad, lectura y escritura', 'ANUAL', 'Promocional', 1, 4, 0),
(232, 18, 1, 1, 'Pedagogía', 'ANUAL', 'Promocional', 1, 4, 0),
(233, 18, 1, 1, 'Didáctica General', '2 CUAT', 'Promocional', 1, 6, 0),
(234, 18, 2, 1, 'Instrumento Principal I', 'ANUAL', 'Examen Final', 1, 2, 0),
(235, 18, 2, 2, 'Taller de Producción Musical', 'ANUAL', 'Promocional', 1, 3, 0),
(236, 18, 2, 2, 'Canto Coral', 'ANUAL', 'Promocional', 1, 4, 0),
(237, 18, 2, 2, 'Educación Auditiva I', '1 CUAT', 'Promocional', 1, 4, 0),
(238, 18, 2, 2, 'Educación Auditiva II', '2 CUAT', 'Promocional', 1, 4, 0),
(239, 18, 3, 2, 'Práctica I', 'ANUAL', 'Promocional', 1, 4, 0),
(240, 18, 4, 2, 'UCDI - Unidad Curricular I', 'ANUAL', 'Promocional', 1, 2, 0),
(241, 18, 1, 1, 'Filosofía', 'ANUAL', 'Examen Final', 2, 4, 0),
(242, 18, 2, 2, 'Tecnologías de la Información y la Comunicación', '1 CUAT', 'Promocional', 2, 6, 0),
(243, 18, 1, 1, 'Psicología Educacional', '1 CUAT', 'Promocional', 2, 6, 0),
(244, 18, 2, 1, 'Instrumento Principal II', 'ANUAL', 'Examen Final', 2, 2, 0),
(245, 18, 2, 2, 'Canto y Dirección Coral', 'ANUAL', 'Promocional', 2, 6, 0),
(246, 18, 2, 1, 'Didáctica de la Música para Nivel Inicial y Escuel', 'ANUAL', 'Promocional', 2, 4, 0),
(247, 18, 2, 1, 'Historia y estética de la Música I', '1 CUAT', 'Examen Final', 2, 4, 0),
(248, 18, 2, 1, 'Historia y estética de la Música II', '2 CUAT', 'Examen Final', 2, 4, 0),
(249, 18, 2, 1, 'Música y Movimiento', '2 CUAT', 'Promocional', 2, 3, 0),
(250, 18, 3, 2, 'Práctica II', 'ANUAL', 'Promocional', 2, 2, 0),
(251, 18, 4, 1, 'UCDI - Unidad Curricular II', 'ANUAL', 'Promocional', 2, 2, 0),
(252, 18, 1, 1, 'Historia y Política de la Educación Argentina', '1 CUAT', 'Promocional', 3, 6, 0),
(253, 18, 1, 1, 'Sociología de la Educación', '2 CUAT', 'Promocional', 3, 5, 0),
(254, 18, 2, 1, 'Instrumento Principal III', 'ANUAL', 'Examen Final', 3, 2, 0),
(255, 18, 2, 1, 'Coro Escolar y su Didáctica', 'ANUAL', 'Examen Final', 3, 3, 0),
(256, 18, 2, 1, 'Didáctica de la Música para la Escuela Secundaria', 'ANUAL', 'Examen Final', 3, 4, 0),
(257, 18, 2, 1, 'Armonía y Análisis Musical I', 'ANUAL', 'Examen Final', 3, 3, 0),
(258, 18, 2, 1, 'Sujeto de Aprendizaje Música y Contexto', '1 CUAT', 'Promocional', 3, 3, 0),
(259, 18, 2, 2, 'Medios Electroacústicos para la Música', '2 CUAT', 'Promocional', 3, 6, 0),
(260, 18, 3, 4, 'Práctica III', 'ANUAL', 'Promocionals', 3, 5, 0),
(261, 18, 4, 2, 'UCDI - Unidad Curricular III', 'ANUAL', 'Promocional', 3, 2, 0),
(262, 18, 1, 2, 'ESI', '1 CUAT', 'Promocional', 4, 4, 0),
(263, 18, 1, 1, 'Formación Ética y Ciudadana', '2 CUAT', 'Promocional', 4, 5, 0),
(264, 18, 2, 1, 'Instrumento Principal IV', 'ANUAL', 'Examen Final', 4, 4, 0),
(265, 18, 2, 2, 'Didáctica y Taller del Conjunto Instrumental', 'ANUAL', 'Promocional', 4, 4, 0),
(266, 18, 2, 1, 'Estética de la Música Contemporánea', '1 CUAT', 'Examen Final', 4, 4, 0),
(267, 18, 2, 1, 'Historia y estética de la Música Arg. y Lat.', '2 CUAT', 'Examen Final', 4, 4, 0),
(268, 18, 2, 1, 'Armonía y Análisis Musical II', '1 CUAT', 'Examen Final', 4, 6, 0),
(269, 18, 3, 4, 'Residencia Pedagógica', 'ANUAL', 'Promocionals', 4, 8, 0),
(270, 18, 4, 2, 'UCDI - Unidad Curricular IV', 'ANUAL', 'Promocional', 4, 2, 0),
(10000, 62, 1, 1, 'Comunicación Sonora y Audiovisual', 'ANUAL', 'Promocional', 1, 2, 64),
(10001, 62, 1, 1, 'Comunicación social y evolución de los medios de c', 'ANUAL', 'Promocional', 1, 2, 64),
(10002, 62, 1, 1, 'Inglés', 'ANUAL', 'Promocional', 1, 2, 64),
(10003, 62, 5, 1, 'Instrumento Piano I', '2 CUAT', 'Promocional', 1, 3, 48),
(10004, 62, 5, 1, 'Instrumento Guitarra I', '1 CUAT', 'Promocional', 1, 3, 48),
(10005, 62, 5, 1, 'Géneros y Estilos de la Música Académica', '1 CUAT', 'Promocional', 1, 3, 48),
(10006, 62, 5, 1, 'Géneros y Estilos de la Música Popular', '2 CUAT', 'Promocional', 1, 3, 48),
(10007, 62, 5, 1, 'Gramática del lenguaje Musical', 'ANUAL', 'Promocional', 1, 3, 96),
(10008, 62, 2, 2, 'Medios Electrónicos para la Música I', 'ANUAL', 'Promocional', 1, 3, 96),
(10009, 62, 2, 2, 'Informática Aplicada a la Música I', 'ANUAL', 'Promocional', 1, 3, 96),
(10010, 62, 3, 2, 'Producción Musical I', 'ANUAL', 'Promocional', 1, 2, 64),
(10011, 62, 5, 1, 'Gramática del Lenguaje Musical II', 'ANUAL', 'Promocional', 2, 3, 96),
(10012, 62, 5, 1, 'Análisis de la Imagen', '2 CUAT', 'Promocional', 2, 3, 48),
(10013, 62, 5, 1, 'Géneros y Estilos de la Música Contemporánea', '2 CUAT', 'Promocional', 2, 3, 48),
(10014, 62, 5, 1, 'Instrumento Piano II', 'ANUAL', 'Promocional', 2, 4, 128),
(10015, 62, 5, 1, 'Instrumento Guitarra  II', 'ANUAL', 'Promocional', 2, 4, 128),
(10016, 62, 2, 2, 'Medios Electrónicos para la Música II', 'ANUAL', 'Promocional', 2, 3, 96),
(10017, 62, 2, 2, 'Informática Aplicada a la Música II', 'ANUAL', 'Promocional', 2, 3, 96),
(10018, 62, 2, 1, 'Comunicación Musical y Multimedial', 'ANUAL', 'Promocional', 2, 2, 64),
(10019, 62, 2, 2, 'Radio Integral y Televisión', 'ANUAL', 'Promocional', 2, 3, 96),
(10020, 62, 3, 2, 'Producción Musical II', 'ANUAL', 'Promocional', 2, 3, 96),
(10021, 62, 3, 1, 'Producción Audiovisual I', 'ANUAL', 'Promocional', 2, 2, 64),
(10022, 62, 1, 1, 'Marketing', 'ANUAL', 'Promocional', 3, 2, 64),
(10023, 62, 1, 1, 'Organización y gestión de Espectáculos ', 'ANUAL', 'Promocional', 3, 2, 64),
(10024, 62, 5, 1, 'Géneros y estilos de la música folklórica Argentin', '1 CUAT', 'Promocional', 3, 3, 48),
(10025, 62, 2, 1, 'Puesta en escena', '2 CUAT', 'Promocional', 3, 3, 48),
(10026, 62, 3, 1, 'Proyecto Final', 'ANUAL', 'Examen Final', 3, 2, 64),
(10027, 62, 3, 1, 'Producción Audiovisual II', 'ANUAL', 'Promocional', 3, 3, 96),
(10028, 62, 3, 8, 'Prácticas Profesionalizantes', 'ANUAL', 'Examen Final', 3, 10, 320);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_materia`
--

DROP TABLE IF EXISTS `tipo_materia`;
CREATE TABLE IF NOT EXISTS `tipo_materia` (
  `id_tipo` int(6) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `ref` varchar(3) COLLATE utf8_spanish2_ci NOT NULL,
  `obs` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_materia`
--

INSERT INTO `tipo_materia` (`id_tipo`, `tipo`, `ref`, `obs`) VALUES
(1, 'Asignatura', 'A', ''),
(2, 'Taller', 'T', ''),
(3, 'Seminario', 'S', ''),
(4, 'Practica Docente', 'PD', ''),
(5, 'A Definir por la Institución', 'A/D', ''),
(6, 'Unidad Curricular', 'UC', ''),
(7, 'Ateneo', 'AT', ''),
(8, 'Practica Profesionalizante', 'P', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
