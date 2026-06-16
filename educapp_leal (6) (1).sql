-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2026 a las 21:59:17
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
-- Base de datos: `educapp_leal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acudiente`
--

CREATE TABLE `acudiente` (
  `id_acudiente` int(11) NOT NULL,
  `numero_de_telefono` int(11) DEFAULT NULL,
  `correo_electronico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acudiente`
--

INSERT INTO `acudiente` (`id_acudiente`, `numero_de_telefono`, `correo_electronico`) VALUES
(113, 2147483647, 'karolramirez@gmail.com'),
(134, 2147483647, 'jhonylealq@gmail.com'),
(221, 2147483647, 'casallasgaitan@gmail.com'),
(234, 2147483647, 'argemirocrisiti@gmail.com'),
(331, 2147483647, 'paulasbastidas@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion_area` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `nombre`, `descripcion_area`) VALUES
(1, 'HUMANIDADES', 'sociales, etica, religion'),
(2, 'LENGUAS', 'español, ingles'),
(3, 'ARTES', 'danza, arte, musica'),
(4, 'HISTORIA', 'ciencias, sociales, politica'),
(5, 'TECNOLOGIAS', 'informatica, tecnologia, planchas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistente_administrativo`
--

CREATE TABLE `asistente_administrativo` (
  `id_asistente_administrativo` int(11) NOT NULL,
  `numero_de_telefono` int(11) DEFAULT NULL,
  `correo_electronico` varchar(50) DEFAULT NULL,
  `id_profesion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistente_administrativo`
--

INSERT INTO `asistente_administrativo` (`id_asistente_administrativo`, `numero_de_telefono`, `correo_electronico`, `id_profesion`) VALUES
(2, 2147483647, 'cristianortiz@gmail.com', 1),
(3, 2147483647, 'danielapardo@gmail.com', 2),
(4, 2147483647, 'jonathangrijalba@gmail.com', 3),
(5, 2147483647, 'mariacamila@gmail.com', 4),
(9, 2147483647, 'danielxua@gmail.com', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `id_barrio` int(11) NOT NULL,
  `estrato` int(11) DEFAULT NULL,
  `nombre_barrio` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `id_localidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `barrio`
--

INSERT INTO `barrio` (`id_barrio`, `estrato`, `nombre_barrio`, `direccion`, `id_localidad`) VALUES
(1, 2, 'estancia', 'cra74c #33-10sur', 1),
(2, 2, 'estancia', 'cra75b #21-44sur', 2),
(3, 2, 'estancia', 'cra 69a #23-13sur', 3),
(4, 2, 'estancia', 'cra 35 #27-12sur', 4),
(5, 2, 'estancia', 'calle 14sur #11-21', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletin`
--

CREATE TABLE `boletin` (
  `id_boletin` int(11) NOT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `observacion` varchar(200) DEFAULT NULL,
  `id_estudiante` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `boletin`
--

INSERT INTO `boletin` (`id_boletin`, `fecha_publicacion`, `periodo`, `observacion`, `id_estudiante`, `id_materia`) VALUES
(1, '0000-00-00', 1, 'nn', 23543, 5),
(2, '0000-00-00', 1, 'El chico presenta falta de entrega de trabajos en español', 24325, 11),
(3, '0000-00-00', 1, 'nn', 43768, 18),
(4, '0000-00-00', 3, 'Evasión de clase de español el día 01/02/2026', 53245, 22),
(5, '0000-00-00', 3, 'nn', 79544, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificado`
--

CREATE TABLE `certificado` (
  `id_certificado` int(11) NOT NULL,
  `nombre_certificado` varchar(50) DEFAULT NULL,
  `año` date DEFAULT NULL,
  `id_tipo_certificado` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `certificado`
--

INSERT INTO `certificado` (`id_certificado`, `nombre_certificado`, `año`, `id_tipo_certificado`, `id_usuario`) VALUES
(1, 'acta', '0000-00-00', 1, 1),
(2, 'diploma', '0000-00-00', 2, 2),
(3, 'notas', '0000-00-00', 3, 3),
(4, 'constancia', '0000-00-00', 4, 4),
(5, 'certificado', '0000-00-00', 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `año` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id_curso`, `año`, `nombre`, `id_docente`, `id_grado`) VALUES
(1, 2002, '1101', 11, 7),
(2, 2002, '1102', 12, 8),
(3, 2002, '1103', 14, 9),
(4, 2002, '1104', 24, 10),
(5, 2002, '1105', 31, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id_docente` int(11) NOT NULL,
  `numero_de_telefono` int(11) DEFAULT NULL,
  `correo_electronico` varchar(50) DEFAULT NULL,
  `id_profesion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id_docente`, `numero_de_telefono`, `correo_electronico`, `id_profesion`) VALUES
(11, 2124524451, 'elsagutierrez@gmail.com', 1),
(12, 2147483647, 'ramirezcundi@gmail.com', 2),
(14, 2147483647, 'cristinadiazz@gmail.com', 3),
(24, 2147483647, 'estebanolaya@gmai.com', 4),
(31, 1359671, 'keynerortiz@gmail.com', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

CREATE TABLE `eps` (
  `id_eps` int(11) NOT NULL,
  `nombre_eps` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`id_eps`, `nombre_eps`) VALUES
(1, 'compensar'),
(2, 'salud total'),
(3, 'sanitas'),
(4, ' nueva eps'),
(5, 'famisanar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int(11) NOT NULL,
  `id_usuarios` int(11) DEFAULT NULL,
  `id_acudiente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `id_usuarios`, `id_acudiente`) VALUES
(23543, 1, 113),
(24325, 2, 134),
(43768, 3, 221),
(53245, 4, 234),
(79544, 5, 331);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id_grado` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id_grado`, `nombre`) VALUES
(7, 'septimo'),
(8, 'octavo'),
(9, 'noveno'),
(10, 'decimo'),
(11, 'once');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_sanguineo`
--

CREATE TABLE `grupo_sanguineo` (
  `id_grupo_sanguineo` int(11) NOT NULL,
  `RH` varchar(5) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grupo_sanguineo`
--

INSERT INTO `grupo_sanguineo` (`id_grupo_sanguineo`, `RH`, `Nombre`) VALUES
(1, '+', 'o'),
(2, '-', 'a'),
(3, '+', 'b'),
(4, '+', 'a'),
(5, '-', 'b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_academico`
--

CREATE TABLE `horario_academico` (
  `id_horario_academico` int(11) NOT NULL,
  `dias_semana` varchar(30) DEFAULT NULL,
  `hora_inicio` int(11) DEFAULT NULL,
  `hora_final` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horario_academico`
--

INSERT INTO `horario_academico` (`id_horario_academico`, `dias_semana`, `hora_inicio`, `hora_final`, `id_curso`, `id_materia`) VALUES
(11, 'lunes', 6, 12, 1, 5),
(12, 'martes', 7, 12, 2, 11),
(13, 'miercoles', 6, 12, 3, 18),
(14, 'jueves', 6, 12, 4, 22),
(15, 'viernes', 8, 12, 5, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `Id_localidad` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`Id_localidad`, `nombre`) VALUES
(1, 'ciudad bolivar'),
(2, 'san cristobal'),
(3, 'engativa'),
(4, 'chapinero'),
(5, 'usmekistan0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre`, `id_area`, `id_nota`) VALUES
(5, 'ESPAÑOL', 1, 10),
(11, 'INGLES', 2, 11),
(18, 'MATEMATICAS', 3, 12),
(22, 'SOCIALES', 4, 13),
(32, 'EDU FISICA', 5, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `id_matricula` int(11) NOT NULL,
  `fecha_matricula` date DEFAULT NULL,
  `id_estudiante` int(11) DEFAULT NULL,
  `id_acudiente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `fecha_matricula`, `id_estudiante`, `id_acudiente`) VALUES
(2342323, '0000-00-00', NULL, NULL),
(2351353, '0000-00-00', NULL, NULL),
(3254364, '0000-00-00', NULL, NULL),
(4264264, '0000-00-00', NULL, NULL),
(5325235, '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `nota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`id_nota`, `nota`) VALUES
(10, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesion`
--

CREATE TABLE `profesion` (
  `id_profesion` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesion`
--

INSERT INTO `profesion` (`id_profesion`, `nombre`) VALUES
(1, 'profesor'),
(2, 'rector'),
(3, 'administrativo'),
(4, 'licenciado'),
(5, 'arquitecto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rector`
--

CREATE TABLE `rector` (
  `id_rector` int(11) NOT NULL,
  `numero_de_telefono` int(11) DEFAULT NULL,
  `correo_electronico` varchar(50) DEFAULT NULL,
  `id_profesion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rector`
--

INSERT INTO `rector` (`id_rector`, `numero_de_telefono`, `correo_electronico`, `id_profesion`) VALUES
(1, 2147483647, 'becerra@gmail.com', 1),
(3, 2147483647, 'jesuscalderon@gmail.com', 2),
(4, 2147483647, 'awrtcrsitian@gmail.com', 3),
(5, 2147483647, 'rectorwiliam@gmail.com', 4),
(8, 2147483647, 'valentinarodri@gmail.com', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`) VALUES
(1, 'estudiantess'),
(2, 'profesorr'),
(3, 'acudientee'),
(4, 'rectorr'),
(5, 'administrativoo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_certificado`
--

CREATE TABLE `tipo_certificado` (
  `id_tipo_certificado` int(11) NOT NULL,
  `nombre_certificado` varchar(50) DEFAULT NULL,
  `año` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_certificado`
--

INSERT INTO `tipo_certificado` (`id_tipo_certificado`, `nombre_certificado`, `año`) VALUES
(1, 'estudio', NULL),
(2, 'boletin', NULL),
(3, 'notas', NULL),
(4, 'diploma', NULL),
(5, 'acta', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `tipo_de_documento` varchar(30) DEFAULT NULL,
  `numero_de_documento` int(11) DEFAULT NULL,
  `fecha_de_nacimiento` varchar(30) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `id_grupo_sanguineo` int(11) DEFAULT NULL,
  `id_eps` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `apellido`, `tipo_de_documento`, `numero_de_documento`, `fecha_de_nacimiento`, `genero`, `id_rol`, `id_grupo_sanguineo`, `id_eps`) VALUES
(1, 'cristian', 'calderon', 'cc', 102334587, '1982', 'masculino', 1, 1, 1),
(2, 'diego', 'leal', 'ti', 1023373003, '1992', 'masculino', 2, 2, 2),
(3, 'carlos', 'gonzales', 'cc', 1024574352, '1991', 'masculino', 3, 3, 3),
(4, 'danna', 'salcedo', 'cc', 1035123423, '1988', 'femenino', 4, 4, 4),
(5, 'sebastian', 'suarez', 'ti', 102531245, '1986', 'masculino', 5, 5, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acudiente`
--
ALTER TABLE `acudiente`
  ADD PRIMARY KEY (`id_acudiente`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `asistente_administrativo`
--
ALTER TABLE `asistente_administrativo`
  ADD PRIMARY KEY (`id_asistente_administrativo`),
  ADD KEY `FK_id_profesion` (`id_profesion`);

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`id_barrio`),
  ADD KEY `id_localidad` (`id_localidad`);

--
-- Indices de la tabla `boletin`
--
ALTER TABLE `boletin`
  ADD PRIMARY KEY (`id_boletin`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD PRIMARY KEY (`id_certificado`),
  ADD KEY `id_tipo_certificado` (`id_tipo_certificado`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_grado` (`id_grado`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id_docente`),
  ADD KEY `id_profesion` (`id_profesion`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`id_eps`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `id_usuarios` (`id_usuarios`),
  ADD KEY `id_acudiente` (`id_acudiente`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `grupo_sanguineo`
--
ALTER TABLE `grupo_sanguineo`
  ADD PRIMARY KEY (`id_grupo_sanguineo`);

--
-- Indices de la tabla `horario_academico`
--
ALTER TABLE `horario_academico`
  ADD PRIMARY KEY (`id_horario_academico`),
  ADD KEY `fk_id_curso` (`id_curso`),
  ADD KEY `fk_id_materia` (`id_materia`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`Id_localidad`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_area` (`id_area`),
  ADD KEY `id_nota` (`id_nota`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `fk_matricula_estudiante` (`id_estudiante`),
  ADD KEY `fk_matricula_acudiente` (`id_acudiente`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indices de la tabla `profesion`
--
ALTER TABLE `profesion`
  ADD PRIMARY KEY (`id_profesion`);

--
-- Indices de la tabla `rector`
--
ALTER TABLE `rector`
  ADD PRIMARY KEY (`id_rector`),
  ADD KEY `fk_rector_profesion` (`id_profesion`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tipo_certificado`
--
ALTER TABLE `tipo_certificado`
  ADD PRIMARY KEY (`id_tipo_certificado`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_grupo_sanguineo` (`id_grupo_sanguineo`),
  ADD KEY `id_eps` (`id_eps`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistente_administrativo`
--
ALTER TABLE `asistente_administrativo`
  ADD CONSTRAINT `FK_id_profesion` FOREIGN KEY (`id_profesion`) REFERENCES `profesion` (`id_profesion`);

--
-- Filtros para la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD CONSTRAINT `id_localidad` FOREIGN KEY (`id_localidad`) REFERENCES `localidad` (`Id_localidad`);

--
-- Filtros para la tabla `boletin`
--
ALTER TABLE `boletin`
  ADD CONSTRAINT `id_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`),
  ADD CONSTRAINT `id_materia` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD CONSTRAINT `id_tipo_certificado` FOREIGN KEY (`id_tipo_certificado`) REFERENCES `tipo_certificado` (`id_tipo_certificado`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `id_docente` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docente`),
  ADD CONSTRAINT `id_grado` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`);

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `id_profesion` FOREIGN KEY (`id_profesion`) REFERENCES `profesion` (`id_profesion`);

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `id_acudiente` FOREIGN KEY (`id_acudiente`) REFERENCES `acudiente` (`id_acudiente`),
  ADD CONSTRAINT `id_usuarios` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Filtros para la tabla `horario_academico`
--
ALTER TABLE `horario_academico`
  ADD CONSTRAINT `fk_id_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`),
  ADD CONSTRAINT `fk_id_materia` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `id_area` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`),
  ADD CONSTRAINT `id_nota` FOREIGN KEY (`id_nota`) REFERENCES `nota` (`id_nota`);

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `fk_matricula_acudiente` FOREIGN KEY (`id_acudiente`) REFERENCES `acudiente` (`id_acudiente`),
  ADD CONSTRAINT `fk_matricula_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`);

--
-- Filtros para la tabla `rector`
--
ALTER TABLE `rector`
  ADD CONSTRAINT `fk_rector_profesion` FOREIGN KEY (`id_profesion`) REFERENCES `profesion` (`id_profesion`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `id_eps` FOREIGN KEY (`id_eps`) REFERENCES `eps` (`id_eps`),
  ADD CONSTRAINT `id_grupo_sanguineo` FOREIGN KEY (`id_grupo_sanguineo`) REFERENCES `grupo_sanguineo` (`id_grupo_sanguineo`),
  ADD CONSTRAINT `id_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
