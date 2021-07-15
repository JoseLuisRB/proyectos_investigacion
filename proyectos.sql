-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2021 a las 06:15:18
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`, `deleted_at`, `departamento_id`) VALUES
(1, 'Area 1', 'nn', '2019-09-13 04:35:35', '2019-09-26 14:16:32', '2019-09-26 14:16:32', NULL),
(2, 'Tecnología', 'nn', '2019-09-13 04:35:48', '2019-09-26 14:20:23', '2019-09-26 14:16:29', NULL),
(3, 'Ciencias de la Vida', 'Área inmiscuidas en ciencias de la salud y bioquímica', '2019-09-26 14:16:24', '2019-10-21 15:33:25', '2019-10-21 15:33:25', NULL),
(4, 'Educación, gestión del conocimiento y formación de talentos', 'Formar recursos humanos locales para insertarlos en las áreas de investigación.', '2019-10-21 15:37:12', '2019-10-21 15:37:12', NULL, NULL),
(5, 'Salud y Ciencias de la Vida', 'Enfermedades tropicales y  potencial de la flora amazónica', '2019-10-21 15:53:30', '2019-10-21 15:53:30', NULL, NULL),
(6, 'Agropecuaria y Forestal', 'Investigaciones en potencial Ganadero , agrícola y forestal que contribuyan al desarrollo regional', '2019-10-21 15:58:42', '2019-10-21 15:58:42', NULL, NULL),
(7, 'Recursos Naturales, Medio Ambiente y Biodiversidad', 'Investigaciones sobre los recursos naturales, medio ambiente y biodiversidad', '2019-10-21 16:10:36', '2019-10-21 16:10:36', NULL, NULL),
(8, 'Mitigación y Adaptación al Cambio Climático', 'Investigaciones de carácter interdisciplinario para la mitigación  y adaptación al cambio climático', '2019-10-21 16:29:36', '2019-10-21 16:29:36', NULL, NULL),
(9, 'Economía, Desarrollo Social, Derecho, Estado y Sociedad', 'Investigaciones para el desarrollo socio económico sostenible del Beni .', '2019-10-21 16:36:05', '2019-10-21 16:36:05', NULL, NULL),
(10, 'Transporte, vialidad y comunicación', 'Investigaciones para diseñar modelos de infraestructura caminera vinculantes', '2019-10-21 16:38:39', '2019-10-21 16:38:39', NULL, NULL),
(11, 'Desarrollo industrial, tecnología e innovación', 'investigaciones para la industrialización de productos en base a nuevas tecnologías', '2019-10-21 16:45:47', '2019-10-21 16:45:47', NULL, NULL),
(12, 'Gestión Integral de Recursos Hídricos', 'Investigaciones sobre el potencial de las subcuencas y cuerpos de agua del departamento', '2019-10-22 13:16:07', '2019-10-22 13:16:07', NULL, NULL),
(13, 'Saberes Locales y Conocimiento Ancestrales', 'Investigaciones antropológicas y arqueológicas para rescatar los saberes locales y ancestrales', '2019-10-22 13:21:09', '2021-03-13 00:03:47', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ninguno', NULL, '2021-05-03 04:15:30', '2021-05-03 04:15:30', NULL),
(2, 'Director (a)', 'Director (a) de Carrera /  Centro de Investigación', '2019-10-22 13:35:30', '2019-10-22 13:42:23', NULL),
(3, 'Sub Director (a)', 'Instituto de Investigación Facultativo - Cargo académico - administrativo', '2019-10-22 13:41:53', '2019-10-22 13:41:53', NULL),
(4, 'Investigador - Técnico', 'Cargo administrativo', '2019-10-22 13:43:45', '2019-10-22 13:43:45', NULL),
(5, 'Investigador - Docente', 'Cargo Académico - Administrativo', '2019-10-22 13:44:22', '2019-10-22 13:44:22', NULL),
(6, 'Jefe (a) Departamento / Sección', 'Cargo Administrativo', '2019-10-22 13:46:43', '2019-10-22 13:46:43', NULL),
(8, 'Investigador - Externo', 'Investigador de convenio', '2019-10-22 13:50:36', '2019-10-22 13:50:36', NULL),
(9, 'Sub-Director (a) de Inst.  de Investigación', 'Cargo Académico- Administrativo', '2019-10-22 13:58:12', '2021-05-03 16:09:24', NULL),
(10, 'Docente', 'Educador Universitario', '2021-05-03 14:40:35', '2021-05-03 14:40:35', NULL),
(11, 'Estudiante', 'Estudiante que cursa un nivel academico universitario', '2021-05-03 14:42:32', '2021-05-03 14:42:32', NULL),
(12, 'Director (a) - Centro de Investigación', 'Director administrativo de centro de Investigación de la UABJB', '2021-05-03 16:07:02', '2021-05-03 16:07:02', NULL),
(13, 'Decano (a)', 'Maxima autoridad Facultativa de una unidad académica', '2021-05-03 16:08:31', '2021-05-03 16:08:31', NULL),
(14, 'Director de Carrera', 'Maxima autoridad dentro de una carrera academica de la UABJB', '2021-05-03 16:10:30', '2021-05-03 16:10:30', NULL),
(15, 'Investigador Administrativo', 'Investigador tecnico administrativo de la UABJB', '2021-05-03 16:15:31', '2021-05-03 16:15:31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detalle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facultade_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `detalle`, `facultade_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ingeniería de sistemas', NULL, 6, '2021-05-03 01:40:56', '2021-05-03 01:40:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(23, 4, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 2),
(24, 4, 'descripcion', 'text_area', 'Descripción', 0, 1, 1, 1, 1, 1, '{}', 4),
(25, 4, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 3),
(26, 4, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 7),
(27, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(28, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(29, 5, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(30, 5, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 2),
(31, 5, 'sigla', 'text', 'Sigla', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 3),
(32, 5, 'descripcion', 'text', 'Descripción', 0, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'logo', 'file', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 5),
(34, 5, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 6),
(35, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(36, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(37, 4, 'entidade_belongsto_facultade_relationship', 'relationship', 'facultades', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Facultade\",\"table\":\"facultades\",\"type\":\"belongsTo\",\"column\":\"facultad_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(38, 4, 'facultad_id', 'text', 'Facultad Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(39, 6, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(40, 6, 'nombre', 'text', 'Area o linea de Inv.', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 2),
(41, 6, 'descripcion', 'text_area', 'Descripciòn', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 3),
(42, 6, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 5),
(43, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(44, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(45, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(46, 7, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 2),
(47, 7, 'etiqueta', 'select_dropdown', 'Etiqueta', 0, 1, 1, 1, 1, 1, '{\"options\":{\"primary\":\"Azul\",\"success\":\"Verde\",\"info\":\"Celeste\",\"light\":\"Blanca\",\"dark\":\"Oscura\",\"warning\":\"Amarilla\",\"danger\":\"Roja\"}}', 3),
(48, 7, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 5),
(49, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(50, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(51, 8, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(52, 8, 'nombre', 'text', 'Nombre completo', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 3),
(54, 8, 'ci', 'text', 'CI', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|max:15\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 5),
(55, 8, 'movil', 'text', 'Movil', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"max:10\",\"messages\":{\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 6),
(56, 8, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"max:50\",\"messages\":{\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 7),
(57, 8, 'foto', 'image', 'Fotografía', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 8),
(58, 8, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 10),
(59, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(60, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 12),
(61, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 10, 'key', 'text', 'Key', 1, 1, 1, 1, 1, 1, '{}', 3),
(63, 10, 'table_name', 'text', 'Table Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(64, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 4),
(65, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(66, 11, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(67, 11, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 2),
(68, 11, 'descripcion', 'text_area', 'Descripción', 0, 1, 1, 1, 1, 1, '{}', 3),
(69, 11, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 4),
(70, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(71, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(72, 8, 'cargo_id', 'text', 'Cargo Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(73, 8, 'persona_belongsto_cargo_relationship', 'relationship', 'cargos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Cargo\",\"table\":\"cargos\",\"type\":\"belongsTo\",\"column\":\"cargo_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"areas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(74, 4, 'direccion', 'text_area', 'Dirección', 0, 1, 1, 1, 1, 1, '{}', 5),
(75, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 12, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6},\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 2),
(77, 12, 'descripcion', 'text_area', 'Descripción', 0, 1, 1, 1, 1, 1, '{}', 4),
(78, 12, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 5),
(79, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(80, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(81, 13, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(82, 13, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 2),
(83, 13, 'descripcion', 'text_area', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 3),
(85, 13, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 6),
(86, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(87, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(89, 13, 'departamento_belongsto_persona_relationship', 'relationship', 'personas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Persona\",\"table\":\"personas\",\"type\":\"belongsTo\",\"column\":\"persona_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"areas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(90, 13, 'persona_id', 'text', 'Persona Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(91, 6, 'area_belongsto_departamento_relationship', 'relationship', 'departamentos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Departamento\",\"table\":\"departamentos\",\"type\":\"belongsTo\",\"column\":\"departamento_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"areas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(92, 6, 'departamento_id', 'text', 'Departamento Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(93, 7, 'detalle', 'text_area', 'Detalle', 0, 1, 1, 1, 1, 1, '{}', 6),
(94, 7, 'icono', 'select_dropdown', 'Icono', 0, 1, 1, 1, 1, 1, '{\"options\":{\"glyphicon-check\":\"Check\",\"glyphicon-credit-card\":\"Card\",\"glyphicon-floppy-disk\":\"Save\",\"glyphicon-cog\":\"Settings\",\"glyphicon-thumbs-up\":\"Ok\",\"glyphicon-search\":\"Search\",\"glyphicon-eye-open\":\"Eye\",\"glyphicon-globe\":\"Globe\",\"glyphicon-send\":\"Send\",\"glyphicon-blackboard\":\"Blackboard\",\"glyphicon-book\":\"Book\"}}', 4),
(95, 8, 'documento', 'file', 'Documento', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 9),
(96, 12, 'tipo', 'select_dropdown', 'Tipo', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":6},\"options\":{\"investigaci\\u00f3n\":\"investigaci\\u00f3n\",\"acad\\u00e9mico\":\"acad\\u00e9mico\"}}', 3),
(97, 14, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(98, 14, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 2),
(99, 14, 'detalle', 'text_area', 'Detalles', 0, 1, 1, 1, 1, 1, '{}', 3),
(100, 14, 'facultade_id', 'text', 'Facultade Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(101, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(102, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(103, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(104, 14, 'carrera_belongsto_facultade_relationship', 'relationship', 'facultades', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Facultade\",\"table\":\"facultades\",\"type\":\"belongsTo\",\"column\":\"facultade_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"areas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-09-04 20:57:33', '2019-09-04 20:57:33'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-09-04 20:57:33', '2019-09-04 20:57:33'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-09-04 20:57:33', '2019-09-04 20:57:33'),
(4, 'entidades', 'entidades', 'Instituto de Investigación', 'Institutos de Investigación', 'voyager-home', 'App\\Entidade', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-05 06:13:44', '2019-10-04 17:03:04'),
(5, 'facultades', 'facultades', 'Facultad', 'Facultades', 'voyager-shop', 'App\\Facultade', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-05 06:19:52', '2019-09-12 04:39:20'),
(6, 'areas', 'areas', 'Línea de investigación', 'Líneas de investigación', 'voyager-data', 'App\\Area', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-05 06:27:36', '2021-03-13 00:03:11'),
(7, 'proyectos_estados', 'proyectos-estados', 'Estado de proyecto', 'Estados de proyecto', 'voyager-params', 'App\\ProyectosEstado', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"nombre\",\"order_display_column\":\"nombre\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-05 06:33:03', '2021-04-04 08:04:31'),
(8, 'personas', 'personas', 'Persona', 'Personas', 'voyager-person', 'App\\Persona', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-05 06:42:11', '2021-05-03 00:28:45'),
(10, 'permissions', 'permissions', 'Permission', 'Permissions', 'voyager-certificate', 'App\\Permission', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-12 05:11:22', '2019-09-12 05:29:11'),
(11, 'cargos', 'cargos', 'Cargo', 'Cargos', 'voyager-certificate', 'App\\Cargo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-04 16:32:45', '2019-10-04 16:32:45'),
(12, 'proyectos_tipos', 'proyectos-tipos', 'Tipo de Proyecto', 'Tipos de Proyecto', 'voyager-list', 'App\\ProyectosTipo', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-23 13:49:45', '2021-07-15 02:17:14'),
(13, 'departamentos', 'departamentos', 'Departamento', 'Departamentos', 'voyager-group', 'App\\Departamento', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-12 23:54:15', '2021-03-13 00:04:40'),
(14, 'carreras', 'carreras', 'Carrera', 'Carreras', 'voyager-trophy', 'App\\Carrera', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-03 01:36:29', '2021-05-03 01:48:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persona_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `descripcion`, `persona_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Investigación Cientifica', 'Jefatura de Investigación de Pregrado de la Universidad Autonoma del Beni', 7, '2021-03-13 00:01:02', '2021-05-03 15:34:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidades`
--

CREATE TABLE `entidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facultad_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entidades`
--

INSERT INTO `entidades` (`id`, `nombre`, `descripcion`, `logo`, `direccion`, `facultad_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Entidad 1', 'Ninguna', 'entidades/September2019/2L2FzXIMjXnysdmtPmvZ.jpg', NULL, NULL, '2019-09-12 04:16:38', '2019-09-26 13:14:45', '2019-09-26 13:14:45'),
(2, 'Instituto de Investigación de Ciencias Económicas', 'Instituto Facultativo de Investigación', NULL, NULL, 1, '2019-09-26 13:18:52', '2019-09-26 14:41:21', NULL),
(3, 'Instituto de Investigación Facultad de Ciencias de la Salud', 'Instituto Facultativo de Investigación', NULL, NULL, 2, '2019-09-26 15:09:05', '2019-09-26 15:10:01', NULL),
(4, 'Instituto de Investigación Facultad de Ciencias Pecuarias', 'Instituto de Investigación Facultativo', NULL, NULL, 5, '2019-09-26 15:11:32', '2019-09-26 15:11:32', NULL),
(5, 'Instituto de Investigación Facultad de Humanidades y ciencias de la Educación', 'Instituto de Investigación Facultativo', NULL, NULL, 3, '2019-09-26 15:13:13', '2019-09-26 15:13:13', NULL),
(6, 'Instituto de Investigación Facultad de Ciencias Agricolas', 'Instituto de Investigación Facultativo', NULL, NULL, 4, '2019-09-26 15:14:51', '2019-09-26 15:14:51', NULL),
(7, 'Instituto de Investigación Facultad de Ciencias Juridicas, Politicas y Sociales', 'Instituto de Investigación Facultativo', NULL, NULL, 7, '2019-09-26 15:17:06', '2019-09-26 15:17:06', NULL),
(8, 'Instituto de Investigación Facultad de Ingenieria y Tecnología', 'Instituto de Investigación  Facultativo', NULL, NULL, 6, '2019-09-26 15:19:19', '2019-09-26 15:19:19', NULL),
(9, 'CIRA', 'Centro de Investrigación de Recursos Acuáticos', NULL, NULL, NULL, '2019-09-27 13:07:11', '2019-09-27 13:07:11', NULL),
(10, 'C.N.M.G.B.', 'Centro Nacional de Mejoramiento de Ganado Bovino', NULL, NULL, NULL, '2019-09-27 13:08:30', '2019-09-27 13:08:30', NULL),
(11, 'CIBIOMA', 'Centro de Investigacion, Biodiversidad y Medio Ambiente', NULL, NULL, NULL, '2019-09-27 13:10:27', '2019-09-27 13:15:45', NULL),
(12, 'Instituto de Investigación - Facultad de Ciencias Forestales', 'Instituto de Investigación Facultativo , sede Riberalta', NULL, 'Riberalta', 8, '2019-10-22 14:51:01', '2019-10-22 14:51:01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sigla` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facultades`
--

INSERT INTO `facultades` (`id`, `nombre`, `sigla`, `descripcion`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FACULTAD DE CIENCIAS ECONOMICAS', 'FCE', 'Facultad Académica', '[]', '2019-09-26 13:14:32', '2019-09-26 14:55:26', NULL),
(2, 'FACULTAD DE CIENCIAS DE LA SALUD', 'FCS', 'Facultad Académica', '[]', '2019-09-26 14:35:56', '2019-09-26 14:55:01', NULL),
(3, 'FACULTAD DE HUMANIDADES Y CIENCIAS DE LA EDUCACIÓN', 'FHyCE', 'Facultad Académica', '[]', '2019-09-26 14:44:00', '2019-09-26 14:57:40', NULL),
(4, 'FACULTAD DE CIENCIAS AGRICOLAS', 'F.C.A', 'Facultad Académica', '[]', '2019-09-26 14:45:35', '2019-09-26 14:58:09', NULL),
(5, 'FACULTAD DE CIENCIAS PECUARIAS', 'F.C.P', 'Facultad Académica', '[]', '2019-09-26 14:48:52', '2019-09-26 14:57:16', NULL),
(6, 'FACULTAD DE INGENIERIA Y TECNOLOGIA', 'F.I.T.', 'Facultad Académica', '[]', '2019-09-26 14:52:08', '2019-09-26 14:57:03', NULL),
(7, 'FACULTAD DE CIENCIAS,JURIDICAS, POLITICAS Y SOCIALES', 'F.CS.J.P.S', 'Facultad Académica', '[]', '2019-09-26 14:54:01', '2019-09-26 14:57:57', NULL),
(8, 'FACULTAD CIENCIAS  FORESTAL', 'F.C.F.', 'Facultad Académica. ingeniería forestal', '[]', '2019-09-26 15:00:03', '2019-10-22 14:53:43', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-09-04 20:57:34', '2019-09-04 20:57:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Inicio', '', '_self', 'voyager-home', '#000000', NULL, 1, '2019-09-04 20:57:34', '2019-10-04 16:37:15', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 2, '2019-09-04 20:57:34', '2019-09-05 05:39:37', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 12, 1, '2019-09-04 20:57:34', '2019-09-05 05:39:33', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 12, 2, '2019-09-04 20:57:34', '2019-09-05 05:39:33', 'voyager.roles.index', NULL),
(5, 1, 'Herramientas', '', '_self', 'voyager-tools', '#000000', NULL, 6, '2019-09-04 20:57:34', '2021-05-03 01:38:14', NULL, ''),
(6, 1, 'Constructor de Menú', '', '_self', 'voyager-list', '#000000', 5, 1, '2019-09-04 20:57:34', '2019-09-05 05:41:02', 'voyager.menus.index', 'null'),
(7, 1, 'Base de datos', '', '_self', 'voyager-data', '#000000', 5, 3, '2019-09-04 20:57:34', '2021-03-12 23:56:04', 'voyager.database.index', 'null'),
(8, 1, 'Complementos', '', '_self', 'voyager-compass', '#000000', 5, 5, '2019-09-04 20:57:34', '2021-03-12 23:56:04', 'voyager.compass.index', 'null'),
(9, 1, 'Formularios', '', '_self', 'voyager-bread', '#000000', 5, 4, '2019-09-04 20:57:34', '2021-03-12 23:56:04', 'voyager.bread.index', 'null'),
(10, 1, 'Configuraciones', '', '_self', 'voyager-settings', '#000000', NULL, 7, '2019-09-04 20:57:34', '2021-05-03 01:38:14', 'voyager.settings.index', 'null'),
(12, 1, 'Seguridad', '', '_self', 'voyager-lock', '#000000', NULL, 5, '2019-09-05 05:39:16', '2021-05-03 01:37:58', NULL, ''),
(13, 1, 'Institutos de Investigación', '', '_self', 'voyager-home', '#000000', 21, 2, '2019-09-05 06:13:46', '2019-10-04 16:51:24', 'voyager.entidades.index', 'null'),
(14, 1, 'Facultades', '', '_self', 'voyager-shop', NULL, 21, 1, '2019-09-05 06:19:52', '2019-10-04 16:37:57', 'voyager.facultades.index', NULL),
(15, 1, 'Líneas de investigación', '', '_self', 'voyager-data', '#000000', 21, 4, '2019-09-05 06:27:36', '2021-03-12 23:56:04', 'voyager.areas.index', 'null'),
(16, 1, 'Estados de proyecto', '', '_self', 'voyager-params', NULL, 21, 8, '2019-09-05 06:33:04', '2021-05-03 01:37:49', 'voyager.proyectos-estados.index', NULL),
(17, 1, 'Personas', '', '_self', 'voyager-person', NULL, 22, 2, '2019-09-05 06:42:13', '2019-10-23 13:50:18', 'voyager.personas.index', NULL),
(18, 1, 'Investigaciones', '', '_self', 'voyager-browser', '#000000', 22, 1, '2019-09-12 04:34:13', '2019-10-23 13:50:18', 'proyectos.index', 'null'),
(19, 1, 'Permissions', '', '_self', 'voyager-certificate', '#000000', 12, 3, '2019-09-12 05:11:23', '2019-10-23 22:48:17', 'voyager.permissions.index', 'null'),
(20, 1, 'Cargos', '', '_self', 'voyager-certificate', NULL, 21, 7, '2019-10-04 16:32:45', '2021-05-03 01:37:49', 'voyager.cargos.index', NULL),
(21, 1, 'Parámetros', '', '_self', 'voyager-puzzle', '#000000', NULL, 3, '2019-10-04 16:35:25', '2019-10-04 16:37:47', NULL, ''),
(22, 1, 'Administración', '', '_self', 'voyager-dashboard', '#000000', NULL, 2, '2019-10-04 16:37:05', '2019-10-04 16:37:46', NULL, ''),
(23, 1, 'Tipos de investigaciones', '', '_self', 'voyager-list', '#000000', 21, 6, '2019-10-23 13:49:46', '2021-05-03 01:37:49', 'voyager.proyectos-tipos.index', 'null'),
(24, 1, 'Gráficos', '', '_self', 'voyager-calendar', '#000000', NULL, 4, '2019-10-23 16:04:02', '2021-05-03 01:37:54', NULL, ''),
(25, 1, 'Proyectos', '', '_self', 'voyager-pie-graph', '#000000', 24, 1, '2019-10-23 16:06:43', '2021-05-27 00:45:10', 'pie_index', 'null'),
(26, 1, 'Departamentos', '', '_self', 'voyager-group', NULL, 21, 3, '2021-03-12 23:54:15', '2021-03-12 23:56:04', 'voyager.departamentos.index', NULL),
(27, 1, 'Carreras', '', '_self', 'voyager-trophy', '#000000', 21, 5, '2021-05-03 01:36:29', '2021-05-03 01:43:53', 'voyager.carreras.index', 'null'),
(28, 1, 'Presupuestos', '', '_self', 'voyager-bar-chart', '#000000', 24, 2, '2021-05-27 00:43:05', '2021-05-27 00:43:18', 'line_index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(2, 'browse_bread', NULL, '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(3, 'browse_database', NULL, '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(4, 'browse_media', NULL, '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(5, 'browse_compass', NULL, '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(6, 'browse_menus', 'menus', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(7, 'read_menus', 'menus', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(8, 'edit_menus', 'menus', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(9, 'add_menus', 'menus', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(10, 'delete_menus', 'menus', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(11, 'browse_roles', 'roles', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(12, 'read_roles', 'roles', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(13, 'edit_roles', 'roles', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(14, 'add_roles', 'roles', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(15, 'delete_roles', 'roles', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(16, 'browse_users', 'users', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(17, 'read_users', 'users', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(18, 'edit_users', 'users', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(19, 'add_users', 'users', '2019-09-04 20:57:36', '2019-09-04 20:57:36'),
(20, 'delete_users', 'users', '2019-09-04 20:57:36', '2019-09-04 20:57:36'),
(21, 'browse_settings', 'settings', '2019-09-04 20:57:36', '2019-09-04 20:57:36'),
(22, 'read_settings', 'settings', '2019-09-04 20:57:36', '2019-09-04 20:57:36'),
(23, 'edit_settings', 'settings', '2019-09-04 20:57:36', '2019-09-04 20:57:36'),
(24, 'add_settings', 'settings', '2019-09-04 20:57:36', '2019-09-04 20:57:36'),
(25, 'delete_settings', 'settings', '2019-09-04 20:57:36', '2019-09-04 20:57:36'),
(26, 'browse_hooks', NULL, '2019-09-04 20:57:38', '2019-09-04 20:57:38'),
(27, 'browse_entidades', 'entidades', '2019-09-05 06:13:45', '2019-09-05 06:13:45'),
(28, 'read_entidades', 'entidades', '2019-09-05 06:13:45', '2019-09-05 06:13:45'),
(29, 'edit_entidades', 'entidades', '2019-09-05 06:13:45', '2019-09-05 06:13:45'),
(30, 'add_entidades', 'entidades', '2019-09-05 06:13:45', '2019-09-05 06:13:45'),
(31, 'delete_entidades', 'entidades', '2019-09-05 06:13:45', '2019-09-05 06:13:45'),
(32, 'browse_facultades', 'facultades', '2019-09-05 06:19:52', '2019-09-05 06:19:52'),
(33, 'read_facultades', 'facultades', '2019-09-05 06:19:52', '2019-09-05 06:19:52'),
(34, 'edit_facultades', 'facultades', '2019-09-05 06:19:52', '2019-09-05 06:19:52'),
(35, 'add_facultades', 'facultades', '2019-09-05 06:19:52', '2019-09-05 06:19:52'),
(36, 'delete_facultades', 'facultades', '2019-09-05 06:19:52', '2019-09-05 06:19:52'),
(37, 'browse_areas', 'areas', '2019-09-05 06:27:36', '2019-09-05 06:27:36'),
(38, 'read_areas', 'areas', '2019-09-05 06:27:36', '2019-09-05 06:27:36'),
(39, 'edit_areas', 'areas', '2019-09-05 06:27:36', '2019-09-05 06:27:36'),
(40, 'add_areas', 'areas', '2019-09-05 06:27:36', '2019-09-05 06:27:36'),
(41, 'delete_areas', 'areas', '2019-09-05 06:27:36', '2019-09-05 06:27:36'),
(42, 'browse_proyectos_estados', 'proyectos_estados', '2019-09-05 06:33:04', '2019-09-05 06:33:04'),
(43, 'read_proyectos_estados', 'proyectos_estados', '2019-09-05 06:33:04', '2019-09-05 06:33:04'),
(44, 'edit_proyectos_estados', 'proyectos_estados', '2019-09-05 06:33:04', '2019-09-05 06:33:04'),
(45, 'add_proyectos_estados', 'proyectos_estados', '2019-09-05 06:33:04', '2019-09-05 06:33:04'),
(46, 'delete_proyectos_estados', 'proyectos_estados', '2019-09-05 06:33:04', '2019-09-05 06:33:04'),
(47, 'browse_personas', 'personas', '2019-09-05 06:42:13', '2019-09-05 06:42:13'),
(48, 'read_personas', 'personas', '2019-09-05 06:42:13', '2019-09-05 06:42:13'),
(49, 'edit_personas', 'personas', '2019-09-05 06:42:13', '2019-09-05 06:42:13'),
(50, 'add_personas', 'personas', '2019-09-05 06:42:13', '2019-09-05 06:42:13'),
(51, 'delete_personas', 'personas', '2019-09-05 06:42:13', '2019-09-05 06:42:13'),
(52, 'browse_permissions', 'permissions', '2019-09-12 05:11:22', '2019-09-12 05:11:22'),
(53, 'read_permissions', 'permissions', '2019-09-12 05:11:22', '2019-09-12 05:11:22'),
(54, 'edit_permissions', 'permissions', '2019-09-12 05:11:22', '2019-09-12 05:11:22'),
(55, 'add_permissions', 'permissions', '2019-09-12 05:11:22', '2019-09-12 05:11:22'),
(56, 'delete_permissions', 'permissions', '2019-09-12 05:11:22', '2019-09-12 05:11:22'),
(57, 'browse_proyectos', 'proyectos', '2019-09-12 05:20:06', '2019-09-12 05:36:09'),
(58, 'add_proyectos', 'proyectos', '2019-09-12 05:30:33', '2019-09-12 05:36:22'),
(59, 'read_proyectos', 'proyectos', '2019-09-19 15:27:09', '2019-09-19 15:27:09'),
(60, 'edit_proyectos', 'proyectos', '2019-09-19 15:27:26', '2019-09-19 15:27:26'),
(61, 'delete_proyectos', 'proyectos', '2019-09-19 15:28:01', '2019-09-19 15:28:01'),
(62, 'browse_cargos', 'cargos', '2019-10-04 16:32:45', '2019-10-04 16:32:45'),
(63, 'read_cargos', 'cargos', '2019-10-04 16:32:45', '2019-10-04 16:32:45'),
(64, 'edit_cargos', 'cargos', '2019-10-04 16:32:45', '2019-10-04 16:32:45'),
(65, 'add_cargos', 'cargos', '2019-10-04 16:32:45', '2019-10-04 16:32:45'),
(66, 'delete_cargos', 'cargos', '2019-10-04 16:32:45', '2019-10-04 16:32:45'),
(67, 'browse_proyectos_tipos', 'proyectos_tipos', '2019-10-23 13:49:45', '2019-10-23 13:49:45'),
(68, 'read_proyectos_tipos', 'proyectos_tipos', '2019-10-23 13:49:45', '2019-10-23 13:49:45'),
(69, 'edit_proyectos_tipos', 'proyectos_tipos', '2019-10-23 13:49:45', '2019-10-23 13:49:45'),
(70, 'add_proyectos_tipos', 'proyectos_tipos', '2019-10-23 13:49:45', '2019-10-23 13:49:45'),
(71, 'delete_proyectos_tipos', 'proyectos_tipos', '2019-10-23 13:49:45', '2019-10-23 13:49:45'),
(72, 'browse_departamentos', 'departamentos', '2021-03-12 23:54:15', '2021-03-12 23:54:15'),
(73, 'read_departamentos', 'departamentos', '2021-03-12 23:54:15', '2021-03-12 23:54:15'),
(74, 'edit_departamentos', 'departamentos', '2021-03-12 23:54:15', '2021-03-12 23:54:15'),
(75, 'add_departamentos', 'departamentos', '2021-03-12 23:54:15', '2021-03-12 23:54:15'),
(76, 'delete_departamentos', 'departamentos', '2021-03-12 23:54:15', '2021-03-12 23:54:15'),
(77, 'browse_carreras', 'carreras', '2021-05-03 01:36:29', '2021-05-03 01:36:29'),
(78, 'read_carreras', 'carreras', '2021-05-03 01:36:29', '2021-05-03 01:36:29'),
(79, 'edit_carreras', 'carreras', '2021-05-03 01:36:29', '2021-05-03 01:36:29'),
(80, 'add_carreras', 'carreras', '2021-05-03 01:36:29', '2021-05-03 01:36:29'),
(81, 'delete_carreras', 'carreras', '2021-05-03 01:36:29', '2021-05-03 01:36:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(28, 2),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(33, 2),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(38, 2),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(43, 2),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(48, 2),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 2),
(62, 1),
(63, 1),
(63, 2),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(68, 2),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(10) UNSIGNED NOT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documento` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `cargo_id`, `nombre`, `ci`, `movil`, `email`, `foto`, `documento`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Leticia Balcázar Rodal', '4256984', '72815785', 'lbalcazarr@uabjb.edu.bo', 'personas/May2021/qF5A7z4SzybrRhRPGkNZ.png', '[]', '2021-05-03 04:14:51', '2021-05-03 16:45:10', NULL),
(2, 1, 'Ramiro Chavez', '65456464 LP', NULL, NULL, NULL, NULL, '2021-05-03 04:18:27', '2021-05-03 04:18:27', NULL),
(3, 1, 'Felipe Quispe', '76575676', '753423434', NULL, NULL, NULL, '2021-05-03 04:52:34', '2021-05-03 04:52:34', NULL),
(4, 1, 'Mariela Merubia', '4256984  bn', NULL, NULL, NULL, NULL, '2021-05-03 04:53:50', '2021-05-03 04:53:50', NULL),
(5, 1, 'Juan Perez', NULL, NULL, NULL, NULL, NULL, '2021-05-03 05:46:37', '2021-05-03 05:46:37', NULL),
(6, 1, 'Pedro Sanchez', NULL, NULL, NULL, NULL, NULL, '2021-05-03 05:47:02', '2021-05-03 05:47:02', NULL),
(7, 6, 'Alfonso Salas Russo', '1700496 be', '76872210', 'asalasr@uabjb.edu.bo', 'personas/May2021/famnG3g99nyPuUy3Fgcj.jpg', '[{\"download_link\":\"personas\\/May2021\\/ooXLDc4N5yvLIHIeeydO.pdf\",\"original_name\":\"CURRIC VITAE ASR abril 2020.pdf\"}]', '2021-05-03 15:32:44', '2021-05-03 15:32:44', NULL),
(8, 5, 'Armelinda Zonta', '3352152', '76866653', NULL, 'personas/May2021/FHOPcH5jImNacIMS6gsW.png', '[]', '2021-05-03 15:38:42', '2021-05-03 15:38:42', NULL),
(9, 1, 'Betzalele Paredes', '555555', '777777', 'bparedes@ubajb.du.bo', 'personas/May2021/35RD9XRSE82fpwG6WOgh.png', '[]', '2021-05-03 17:36:06', '2021-05-03 17:36:06', NULL),
(10, 1, 'Mariely Camacho', '444444', '666666', 'mcamacho@uabjb.edu.bo', 'personas/May2021/QjEcghH07duTsvmHaNk7.png', '[]', '2021-05-03 17:38:08', '2021-05-03 17:38:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(10) UNSIGNED NOT NULL,
  `proyecto_tipo_id` int(10) DEFAULT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsable` int(11) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `participantes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_actual` int(11) DEFAULT NULL,
  `area_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrera_id` int(11) DEFAULT NULL,
  `entidad_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avance` int(11) DEFAULT NULL,
  `observaciones` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `productos` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `proyecto_tipo_id`, `nombre`, `responsable`, `anio`, `participantes`, `estado_actual`, `area_id`, `carrera_id`, `entidad_id`, `avance`, `observaciones`, `archivo`, `monto`, `productos`, `inicio`, `fin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Sistema de apoyo al turismo de municipio de Trinidad', 1, NULL, '2', 6, '11', NULL, '8', 40, NULL, NULL, '200000.00', 'Software', '2020-12-01', '2023-06-01', '2021-05-03 04:20:48', '2021-05-03 05:33:05', NULL),
(2, 2, 'Modelo de pronostico electoral', 3, NULL, '4', 3, '', 1, '', 0, '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: #000000;\">What is Lorem Ipsum?</h2>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-weight: 400;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">1914 translation by H. Rackham</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-weight: 400;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', NULL, NULL, NULL, '2008-01-30', NULL, '2021-05-03 04:54:13', '2021-05-03 05:28:32', NULL),
(3, 2, 'Sistema informático de seguimiento a los titulados de la carrera de ingeniería de sistemas', 5, NULL, '6', 3, '', 1, '', 0, '<p>&nbsp;</p>\r\n<figure class=\"page-section__image g12-xs g3-md\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; margin: 8rem 0px 0px; padding: 0px 1rem; position: relative; flex: 0 1 auto; width: 339.75px; max-width: 25%; z-index: 1; color: #000000; font-family: sans-serif; font-size: medium; background-color: #556271;\">\r\n<figcaption style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\">\r\n<div class=\"page-section__squiggle\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; overflow: hidden; position: relative; width: 64px; height: 32px;\">\r\n<div class=\"page-section__squiggle-two\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; position: absolute; width: 64px; height: 16px; background: radial-gradient(12px, transparent, transparent 2px, #d3dbe4 2px, #d3dbe4 5px, transparent 5px) 0px -16px / 14px 32px; top: 16px; left: 7px;\">&nbsp;</div>\r\n</div>\r\n<h4 class=\"page-section__caption f5 cl-gray-1\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; margin: 0px; position: relative; width: calc(33.3333% - 1em); z-index: 1; color: #7b8898; font-size: 0.875em; font-family: \'Gotham SSm A\', \'Gotham SSm B\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.28571; letter-spacing: 0.075em; text-transform: uppercase;\">CICERO</h4>\r\n</figcaption>\r\n</figure>\r\n<div class=\"page-section__block g12-xs g9-md g6-xl\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; position: relative; flex: 0 1 auto; width: 679.5px; max-width: 50%; padding-left: 1rem; padding-right: 1rem; margin-top: 8rem; z-index: 2; color: #000000; font-family: sans-serif; font-size: medium; background-color: #556271;\">\r\n<h3 class=\"f5 cl-orange mb16\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; margin: 0px 0px 1em; color: #ff6a67; font-size: 0.875em; font-family: \'Gotham SSm A\', \'Gotham SSm B\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.28571; letter-spacing: 0.075em; text-transform: uppercase;\">RA&Iacute;CES HEDONISTAS</h3>\r\n<p class=\"f4 cl-white mt0\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; margin-top: 0px; margin-bottom: 1.5em; color: #ffffff; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5;\">El paso cl&aacute;sico&nbsp;<em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\">&ldquo;Lorem ipsum dolor sit amet&hellip;&rdquo;</em>&nbsp;se atribuye a una remixaci&oacute;n del texto de&nbsp;<em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\">De Finibus Bonorum et Malorum (&ldquo;En los extremos del bien y del mal&rdquo;)</em>, del fil&oacute;sofo romano&nbsp;<a style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; background-color: transparent; text-decoration-line: none; border-bottom: 1px solid #d3dbe4; transition: all 400ms cubic-bezier(0.16, 0.68, 0.43, 0.99) 0s;\" title=\"Marcus Tullius Cicero on Wikipedia\" href=\"https://en.wikipedia.org/wiki/Cicero\" target=\"_blank\" rel=\"noopener\">Cicer&oacute;n</a>, de 45 aC. M&aacute;s espec&iacute;ficamente, se piensa que el pasaje proviene de las secciones 1.10.32 - 33 de su texto, con la parte m&aacute;s notable extra&iacute;da a continuaci&oacute;n:</p>\r\n<blockquote class=\"page-section__blockquote\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; margin-left: -1rem; margin-right: 0px; padding-left: 1.375em; border-left: 0.375em solid #7b8898; color: #d3dbe4; font-size: 1.1875em; font-style: italic; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5;\">&ldquo;Neque porro quisquam est, qui&nbsp;<em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-weight: bold;\">dolorem ipsum</em>&nbsp;quia&nbsp;<em style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-weight: bold;\">dolor sit amet, consectetur, adipisci velit, sed</em>&nbsp;quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.&rdquo;</blockquote>\r\n<p class=\"f4 cl-white\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; margin-top: 1.5em; margin-bottom: 1.5em; color: #ffffff; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5;\">Una traducci&oacute;n inglesa de 1914 por&nbsp;<a style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; background-color: transparent; text-decoration-line: none; border-bottom: 1px solid #d3dbe4; transition: all 400ms cubic-bezier(0.16, 0.68, 0.43, 0.99) 0s;\" title=\"Lorem Ipsum English Translation on Wikipedia\" href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#English_translation\" target=\"_blank\" rel=\"noopener\">Harris Rackham</a>&nbsp;lee:</p>\r\n</div>', NULL, NULL, NULL, '2020-11-02', NULL, '2021-05-03 05:48:00', '2021-05-03 05:48:00', NULL);
INSERT INTO `proyectos` (`id`, `proyecto_tipo_id`, `nombre`, `responsable`, `anio`, `participantes`, `estado_actual`, `area_id`, `carrera_id`, `entidad_id`, `avance`, `observaciones`, `archivo`, `monto`, `productos`, `inicio`, `fin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 3, 'Optimizar el uso de cal dolomita en la recuperación de diferentes tipos de suelos degradados en la provincia Vaca Diez', 8, NULL, '8', 3, '6', NULL, '12', 0, '<p class=\"MsoListParagraph\" style=\"text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1; margin: 0cm 0cm 8.0pt 36.0pt;\"><span lang=\"ES\" style=\"font-family: \'Arial\',sans-serif;\">Optimizar el uso del cal dolomita en la correcci&oacute;n de la acidez de suelos degradados de tierra firme con <span style=\"mso-spacerun: yes;\">&nbsp;</span>laboreo mec&aacute;nico y sin uso de quema, en condiciones clim&aacute;ticas naturales en<span style=\"mso-spacerun: yes;\">&nbsp; </span>la Provincia Vaca Diez </span></p>\r\n<p class=\"MsoListParagraph\" style=\"text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1; margin: 0cm 0cm 8.0pt 36.0pt;\"><span lang=\"ES\" style=\"font-family: \'Arial\',sans-serif;\">Evaluar la productividad del arroz, ma&iacute;z y pl&aacute;tano<span style=\"mso-spacerun: yes;\">&nbsp; </span>en suelos de tierra firme degradados con y sin aplicaci&oacute;n de cal dolomita en la provincia Vaca Diez.</span></p>\r\n<p class=\"MsoListParagraph\" style=\"text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1; margin: 0cm 0cm 8.0pt 36.0pt;\"><span lang=\"ES\" style=\"font-family: \'Arial\',sans-serif;\">Fortalecer las capacidades de productores y productoras l&iacute;deres de comunidades para el uso adecuado de cal dolomita en suelos de tierra firme <span style=\"mso-spacerun: yes;\">&nbsp;</span>degradados en la Provincia Vaca Diez. </span></p>\r\n<p><!-- [if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:RelyOnVML/>\r\n  <o:AllowPNG/>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--><!-- [if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:HyphenationZone>21</w:HyphenationZone>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"/>\r\n   <m:brkBin m:val=\"before\"/>\r\n   <m:brkBinSub m:val=\"&#45;-\"/>\r\n   <m:smallFrac m:val=\"off\"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val=\"0\"/>\r\n   <m:rMargin m:val=\"0\"/>\r\n   <m:defJc m:val=\"centerGroup\"/>\r\n   <m:wrapIndent m:val=\"1440\"/>\r\n   <m:intLim m:val=\"subSup\"/>\r\n   <m:naryLim m:val=\"undOvr\"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!-- [if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\r\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"371\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"header\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footer\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of figures\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope return\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"line number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"page number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of authorities\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"macro\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"toa heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Closing\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Signature\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Message Header\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Salutation\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Date\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Note Heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Block Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"FollowedHyperlink\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Document Map\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Plain Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"E-mail Signature\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Top of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Bottom of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal (Web)\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Acronym\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Cite\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Code\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Definition\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Keyboard\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Preformatted\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Sample\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Typewriter\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Variable\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Table\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation subject\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"No List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Contemporary\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Elegant\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Professional\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Balloon Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Theme\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\r\n   Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\r\n   Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\r\n   Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\r\n   Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\r\n   Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\r\n   Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 6\"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!-- [if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Tabla normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin-top:0cm;\r\n	mso-para-margin-right:0cm;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",sans-serif;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-ansi-language:EN-US;\r\n	mso-fareast-language:EN-US;}\r\n</style>\r\n<![endif]--></p>', NULL, '46109.00', 'Desarrollar tecnologías para la recuperación de suelos degradados en condiciones de tierra firme con el propósito de producir alimentos.', '2021-06-03', '2022-04-29', '2021-05-03 17:19:18', '2021-05-03 17:19:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_archivos`
--

CREATE TABLE `proyectos_archivos` (
  `id` int(10) UNSIGNED NOT NULL,
  `proyecto_detalle_id` int(11) DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos_archivos`
--

INSERT INTO `proyectos_archivos` (`id`, `proyecto_detalle_id`, `titulo`, `tipo`, `archivo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'CONTENIDOS DE 4to.A-B pdf.pdf', 'pdf', 'proyectos/May2021/9NDeJcwcBbUYwCkFRevP.pdf', '2021-05-03 04:20:48', '2021-05-03 04:20:48', NULL),
(2, 2, 'planillacalificaciones(1).pdf', 'pdf', 'proyectos/May2021/O4lQNmre1FKQSycFGOvT.pdf', '2021-05-03 04:30:49', '2021-05-03 04:30:49', NULL),
(3, 5, 'CV-BFC.pdf', 'pdf', 'proyectos/May2021/t4FGLFXLYYL2CCK5oVBA.pdf', '2021-05-03 04:54:13', '2021-05-03 04:54:13', NULL),
(4, 6, 'pedido.pdf', 'pdf', 'proyectos/May2021/ypSuauZhd0vBU9N6yTQb.pdf', '2021-05-03 05:48:00', '2021-05-03 05:48:00', NULL),
(5, 7, 'optimizacion del uso de cal dolomita.pdf', 'pdf', 'proyectos/May2021/5YjOKvpq3kJWaL1fisg4.pdf', '2021-05-03 17:19:19', '2021-05-03 17:19:19', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_detalles`
--

CREATE TABLE `proyectos_detalles` (
  `id` int(10) UNSIGNED NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `proyectos_estado_id` int(11) DEFAULT NULL,
  `monto_ejecutado` decimal(10,2) DEFAULT NULL,
  `avance` int(11) DEFAULT NULL,
  `observaciones` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos_detalles`
--

INSERT INTO `proyectos_detalles` (`id`, `proyecto_id`, `proyectos_estado_id`, `monto_ejecutado`, `avance`, `observaciones`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '0.00', 0, 'Inicialización del proyecto', '2020-11-01', '2021-05-03 04:20:48', '2021-05-03 04:20:48'),
(2, 1, 4, '20000.00', 10, 'ninguna', '2021-01-31', '2021-05-03 04:30:49', '2021-05-03 04:30:49'),
(3, 1, 5, '10000.00', 12, NULL, '2021-02-19', '2021-05-03 04:45:06', '2021-05-03 04:45:06'),
(4, 1, 6, '50000.00', 40, NULL, '2021-05-03', '2021-05-03 04:46:22', '2021-05-03 04:46:22'),
(5, 2, 3, '0.00', 0, 'Inicialización del proyecto', '2008-01-30', '2021-05-03 04:54:13', '2021-05-03 04:54:13'),
(6, 3, 3, '0.00', 0, 'Inicialización del proyecto', '2020-11-02', '2021-05-03 05:48:00', '2021-05-03 05:48:00'),
(7, 4, 3, '0.00', 0, 'Inicialización del proyecto', '2021-06-03', '2021-05-03 17:19:18', '2021-05-03 17:19:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_estados`
--

CREATE TABLE `proyectos_estados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etiqueta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detalle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos_estados`
--

INSERT INTO `proyectos_estados` (`id`, `nombre`, `etiqueta`, `icono`, `detalle`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fase 1', 'primary', NULL, NULL, '2019-09-12 07:20:16', '2019-10-22 14:04:26', '2019-10-22 14:04:26'),
(2, 'Fase 2', 'success', NULL, NULL, '2019-09-12 07:20:33', '2019-10-22 14:04:35', '2019-10-22 14:04:35'),
(3, 'Fase 1 - Inicio', 'primary', 'glyphicon-check', NULL, '2019-10-22 14:30:54', '2021-04-04 08:14:36', NULL),
(4, 'Fase 2 - Planificación', 'success', 'glyphicon-credit-card', 'se requiere documentos, actas, planillas y ubicación', '2019-10-22 14:33:54', '2021-04-04 08:14:42', NULL),
(5, 'Fase 3 - Ejecución', 'warning', 'glyphicon-cog', NULL, '2019-10-22 14:34:46', '2021-04-04 08:14:50', NULL),
(6, 'Fase 4 - Seguimiento y Control', 'info', 'glyphicon-globe', NULL, '2019-10-22 14:39:16', '2021-04-04 08:15:00', NULL),
(7, 'Fase 5 -  Evaluación y Cierre', 'light', 'glyphicon-thumbs-up', NULL, '2019-10-22 14:40:44', '2021-04-04 08:15:07', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_observaciones`
--

CREATE TABLE `proyectos_observaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `proyectos_detalle_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detalle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_tipos`
--

CREATE TABLE `proyectos_tipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos_tipos`
--

INSERT INTO `proyectos_tipos` (`id`, `nombre`, `descripcion`, `tipo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Proyecto de grado', NULL, 'académico', '2019-10-23 14:06:13', '2021-07-15 02:19:08', NULL),
(2, 'Tesis', NULL, 'académico', '2019-10-23 14:06:25', '2021-07-15 02:19:03', NULL),
(3, 'Proyecto de investigación', NULL, 'investigación', '2021-05-03 01:29:02', '2021-05-03 01:29:02', NULL),
(5, 'Mongrafía', NULL, 'académico', '2021-07-15 02:03:04', '2021-07-15 02:18:55', NULL),
(6, 'Artículos', NULL, 'académico', '2021-07-15 02:14:29', '2021-07-15 02:18:47', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-09-04 20:57:35', '2019-09-04 20:57:35'),
(2, 'user', 'Normal User', '2019-09-04 20:57:35', '2019-09-04 20:57:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimientos`
--

CREATE TABLE `seguimientos` (
  `id` int(10) UNSIGNED NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `origen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destino` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `detalle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seguimientos`
--

INSERT INTO `seguimientos` (`id`, `proyecto_id`, `user_id`, `origen`, `destino`, `fecha`, `hora`, `detalle`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 4, 1, 'Dirección de finanzas', 'Dirección de RRHH', '2021-05-30', '17:39:00', 'nnn', '2021-05-30 21:39:15', '2021-05-30 21:39:15', NULL),
(3, 4, 1, 'Dirección de RRHH', 'Rectorado', '2021-05-30', '17:44:00', 'xzcgbdfbgfddgdfgdgdggsdgfdsgdgdgdfg', '2021-05-30 21:47:31', '2021-05-30 21:47:31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Investigaciones UAB-JB 1.0', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Administración de Investigaciones UAB', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/September2019/daDh12kcMIp84ddVSypF.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Proyectos', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Administración de proyectos UAB', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/September2019/vnqQYRC30quOTaPpzfQN.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/September2019/lmBU9mYecqHo53exmiiD.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'plantillas.seguimiento', 'Seguimiento', '<table style=\"width: 100%; height: 100hv; border-collapse: collapse;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 33.9074%;\"><img src=\"/img/docs/logo.png\" alt=\"\" width=\"100\" height=\"100\" /></td>\r\n<td style=\"width: 36.4909%; text-align: right;\">\r\n<h1 style=\"font-size: 30px;\">PROFORMA</h1>\r\n<p>Fecha: #fecha#</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 33.9074%;\">\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 18px; font-weight: bold;\">Server la Estrella</span> <br />4168207017 <br />71142010 - 60202107 <br />C/ 9 de abril casi Esq. Felix Pinto Nro 215 <br />Sant&iacute;sima Trinidad - Beni - Bolivia</p>\r\n</td>\r\n<td style=\"width: 36.4909%; text-align: right;\">\r\n<p><strong>Cliente:</strong> #razon_social#</p>\r\n<p><strong>NIT:</strong> #nit#</p>\r\n<p><strong>Cel:</strong> #celular#</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>#detalles#</p>\r\n<p>&nbsp;</p>\r\n<div style=\"position: fixed; bottom: 0px; width: 100%;\"><hr style=\"background-color: #770a0a;\" size=\"2\" />\r\n<table style=\"height: 39px; width: 98.6058%; border-collapse: collapse;\" border=\"0\" cellpadding=\"5\">\r\n<tbody>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 33.3333%; height: 13px;\">&nbsp;</td>\r\n<td style=\"width: 33.1217%; height: 13px;\"><strong>Total neto Bs.</strong></td>\r\n<td style=\"width: 33.4392%; height: 13px; text-align: right;\"><span style=\"font-size: 13px;\"><strong>#monto#</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 33.3333%; height: 13px;\">&nbsp;</td>\r\n<td style=\"width: 33.1217%; height: 13px;\">Total IVA (13%)</td>\r\n<td style=\"width: 33.4392%; height: 13px; text-align: right;\">0.00</td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"width: 33.3333%; height: 13px;\">&nbsp;</td>\r\n<td style=\"width: 33.1217%; height: 13px;\"><strong>Total Proforma Bs.</strong></td>\r\n<td style=\"width: 33.4392%; height: 13px; text-align: right;\"><span style=\"font-size: 15px;\"><strong>#monto#</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr style=\"background-color: #770a0a;\" size=\"6\" />\r\n<p>&Eacute;sta proforma tiene un periodo de valides de 15 d&iacute;as a partir de la fecha de emisi&oacute;n</p>\r\n</div>', NULL, 'rich_text_box', 6, 'Plantillas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/September2019/tGPq1JWyfykhderoLXcR.png', NULL, '$2y$10$XSdrEQn5ouVs9dFOCiu05uadzKG3Nm/fTkEktMdJrir1ialqSAPuy', 'VpMkGRxnj7OMIjkXA16oWd9oe04ZorBqjqPpaHf75Du2aJHVVeHpvDXCNQ8q', '{\"locale\":\"es\"}', '2019-09-04 21:06:04', '2019-09-26 13:12:43'),
(2, 2, 'usuario', 'usuario@usuario.com', 'users/default.png', NULL, '$2y$10$a6AYUFGewHo5ZqyFdizi4OLNwvrZM30xXEm5qRgcOzq9Gr1EdNmVW', NULL, '{\"locale\":\"es\"}', '2020-01-12 22:27:41', '2020-01-12 22:27:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entidades`
--
ALTER TABLE `entidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proyecto_tipo_id` (`proyecto_tipo_id`);

--
-- Indices de la tabla `proyectos_archivos`
--
ALTER TABLE `proyectos_archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos_detalles`
--
ALTER TABLE `proyectos_detalles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos_estados`
--
ALTER TABLE `proyectos_estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos_observaciones`
--
ALTER TABLE `proyectos_observaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos_tipos`
--
ALTER TABLE `proyectos_tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `seguimientos`
--
ALTER TABLE `seguimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `entidades`
--
ALTER TABLE `entidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `facultades`
--
ALTER TABLE `facultades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proyectos_archivos`
--
ALTER TABLE `proyectos_archivos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proyectos_detalles`
--
ALTER TABLE `proyectos_detalles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `proyectos_estados`
--
ALTER TABLE `proyectos_estados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `proyectos_observaciones`
--
ALTER TABLE `proyectos_observaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos_tipos`
--
ALTER TABLE `proyectos_tipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seguimientos`
--
ALTER TABLE `seguimientos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
