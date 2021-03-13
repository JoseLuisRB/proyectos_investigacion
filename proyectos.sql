-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2021 a las 01:07:25
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
(2, 'Director (a)', 'Director (a) de Carrera /  Centro de Investigación', '2019-10-22 13:35:30', '2019-10-22 13:42:23', NULL),
(3, 'Sub Director (a)', 'Instituto de Investigación Facultativo - Cargo académico - administrativo', '2019-10-22 13:41:53', '2019-10-22 13:41:53', NULL),
(4, 'Investigador - Técnico', 'Cargo administrativo', '2019-10-22 13:43:45', '2019-10-22 13:43:45', NULL),
(5, 'Investigador - Docente', 'Cargo Académico - Administrativo', '2019-10-22 13:44:22', '2019-10-22 13:44:22', NULL),
(6, 'Jefe (a) Departamento / Sección', 'Cargo Administrativo', '2019-10-22 13:46:43', '2019-10-22 13:46:43', NULL),
(7, 'Investigador - Externo', 'Investigador de convenio', '2019-10-22 13:50:35', '2019-10-22 13:50:35', NULL),
(8, 'Investigador - Externo', 'Investigador de convenio', '2019-10-22 13:50:36', '2019-10-22 13:50:36', NULL),
(9, 'Responsable Inst.  Inv.  de Carrera', 'Cargo Académico- Administrativo', '2019-10-22 13:58:12', '2019-10-22 13:58:12', NULL);

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
(45, 7, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(46, 7, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 2),
(47, 7, 'etiqueta', 'select_dropdown', 'Etiqueta', 0, 1, 1, 1, 1, 1, '{\"options\":{\"primary\":\"Azul\",\"success\":\"Verde\",\"info\":\"Celeste\",\"light\":\"Blanca\",\"dark\":\"Oscura\",\"warning\":\"Amarilla\",\"danger\":\"Roja\"}}', 3),
(48, 7, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 4),
(49, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(50, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(51, 8, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(52, 8, 'nombre', 'text', 'Nombre completo', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 3),
(54, 8, 'ci', 'text', 'CI', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|max:15\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 6),
(55, 8, 'movil', 'text', 'Movil', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"max:10\",\"messages\":{\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 7),
(56, 8, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"max:50\",\"messages\":{\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 8),
(57, 8, 'foto', 'image', 'Fotografía', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 9),
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
(75, 12, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(76, 12, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 2),
(77, 12, 'descripcion', 'text_area', 'Descripción', 0, 1, 1, 1, 1, 1, '{}', 3),
(78, 12, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 4),
(79, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(80, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(81, 13, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(82, 13, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:100\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El campo :attribute debe tener al menos :max.\"}}}', 2),
(83, 13, 'descripcion', 'text_area', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 3),
(85, 13, 'created_at', 'timestamp', 'Creado', 0, 1, 1, 0, 0, 0, '{}', 6),
(86, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(87, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(89, 13, 'departamento_belongsto_persona_relationship', 'relationship', 'personas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Persona\",\"table\":\"personas\",\"type\":\"belongsTo\",\"column\":\"persona_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"areas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(90, 13, 'persona_id', 'text', 'Persona Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(91, 6, 'area_belongsto_departamento_relationship', 'relationship', 'departamentos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Departamento\",\"table\":\"departamentos\",\"type\":\"belongsTo\",\"column\":\"departamento_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"areas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(92, 6, 'departamento_id', 'text', 'Departamento Id', 0, 1, 1, 1, 1, 1, '{}', 8);

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
(7, 'proyectos_estados', 'proyectos-estados', 'Estado de proyecto', 'Estados de proyecto', 'voyager-params', 'App\\ProyectosEstado', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-05 06:33:03', '2019-09-12 04:40:07'),
(8, 'personas', 'personas', 'Persona', 'Personas', 'voyager-person', 'App\\Persona', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-05 06:42:11', '2021-03-13 00:06:29'),
(10, 'permissions', 'permissions', 'Permission', 'Permissions', 'voyager-certificate', 'App\\Permission', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-12 05:11:22', '2019-09-12 05:29:11'),
(11, 'cargos', 'cargos', 'Cargo', 'Cargos', 'voyager-certificate', 'App\\Cargo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-04 16:32:45', '2019-10-04 16:32:45'),
(12, 'proyectos_tipos', 'proyectos-tipos', 'Tipo de Proyecto', 'Tipos de Proyecto', 'voyager-list', 'App\\ProyectosTipo', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-23 13:49:45', '2019-10-23 13:49:45'),
(13, 'departamentos', 'departamentos', 'Departamento', 'Departamentos', 'voyager-group', 'App\\Departamento', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-12 23:54:15', '2021-03-13 00:04:40');

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
(1, 'Tecnología', NULL, 14, '2021-03-13 00:01:02', '2021-03-13 00:01:02', NULL);

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
(5, 1, 'Herramientas', '', '_self', 'voyager-tools', '#000000', NULL, 4, '2019-09-04 20:57:34', '2019-10-23 22:47:50', NULL, ''),
(6, 1, 'Constructor de Menú', '', '_self', 'voyager-list', '#000000', 5, 1, '2019-09-04 20:57:34', '2019-09-05 05:41:02', 'voyager.menus.index', 'null'),
(7, 1, 'Base de datos', '', '_self', 'voyager-data', '#000000', 5, 3, '2019-09-04 20:57:34', '2021-03-12 23:56:04', 'voyager.database.index', 'null'),
(8, 1, 'Complementos', '', '_self', 'voyager-compass', '#000000', 5, 5, '2019-09-04 20:57:34', '2021-03-12 23:56:04', 'voyager.compass.index', 'null'),
(9, 1, 'Formularios', '', '_self', 'voyager-bread', '#000000', 5, 4, '2019-09-04 20:57:34', '2021-03-12 23:56:04', 'voyager.bread.index', 'null'),
(10, 1, 'Configuraciones', '', '_self', 'voyager-settings', '#000000', NULL, 7, '2019-09-04 20:57:34', '2019-10-23 22:48:17', 'voyager.settings.index', 'null'),
(12, 1, 'Seguridad', '', '_self', 'voyager-lock', '#000000', NULL, 6, '2019-09-05 05:39:16', '2019-10-23 22:48:17', NULL, ''),
(13, 1, 'Institutos de Investigación', '', '_self', 'voyager-home', '#000000', 21, 2, '2019-09-05 06:13:46', '2019-10-04 16:51:24', 'voyager.entidades.index', 'null'),
(14, 1, 'Facultades', '', '_self', 'voyager-shop', NULL, 21, 1, '2019-09-05 06:19:52', '2019-10-04 16:37:57', 'voyager.facultades.index', NULL),
(15, 1, 'Líneas de investigación', '', '_self', 'voyager-data', '#000000', 21, 4, '2019-09-05 06:27:36', '2021-03-12 23:56:04', 'voyager.areas.index', 'null'),
(16, 1, 'Estados de proyecto', '', '_self', 'voyager-params', NULL, 21, 7, '2019-09-05 06:33:04', '2021-03-12 23:56:04', 'voyager.proyectos-estados.index', NULL),
(17, 1, 'Personas', '', '_self', 'voyager-person', NULL, 22, 2, '2019-09-05 06:42:13', '2019-10-23 13:50:18', 'voyager.personas.index', NULL),
(18, 1, 'Investigaciones', '', '_self', 'voyager-browser', '#000000', 22, 1, '2019-09-12 04:34:13', '2019-10-23 13:50:18', 'proyectos.index', 'null'),
(19, 1, 'Permissions', '', '_self', 'voyager-certificate', '#000000', 12, 3, '2019-09-12 05:11:23', '2019-10-23 22:48:17', 'voyager.permissions.index', 'null'),
(20, 1, 'Cargos', '', '_self', 'voyager-certificate', NULL, 21, 6, '2019-10-04 16:32:45', '2021-03-12 23:56:04', 'voyager.cargos.index', NULL),
(21, 1, 'Parámetros', '', '_self', 'voyager-puzzle', '#000000', NULL, 3, '2019-10-04 16:35:25', '2019-10-04 16:37:47', NULL, ''),
(22, 1, 'Administración', '', '_self', 'voyager-dashboard', '#000000', NULL, 2, '2019-10-04 16:37:05', '2019-10-04 16:37:46', NULL, ''),
(23, 1, 'Tipos de investigaciones', '', '_self', 'voyager-list', '#000000', 21, 5, '2019-10-23 13:49:46', '2021-03-12 23:56:04', 'voyager.proyectos-tipos.index', 'null'),
(24, 1, 'Gráficos', '', '_self', 'voyager-calendar', '#000000', NULL, 5, '2019-10-23 16:04:02', '2019-10-23 22:48:17', NULL, ''),
(25, 1, 'Torta', '', '_self', 'voyager-pie-graph', '#000000', 24, 1, '2019-10-23 16:06:43', '2019-10-23 16:06:48', 'pie_index', NULL),
(26, 1, 'Departamentos', '', '_self', 'voyager-group', NULL, 21, 3, '2021-03-12 23:54:15', '2021-03-12 23:56:04', 'voyager.departamentos.index', NULL);

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
(76, 'delete_departamentos', 'departamentos', '2021-03-12 23:54:15', '2021-03-12 23:54:15');

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
(76, 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `cargo_id`, `nombre`, `ci`, `movil`, `email`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Juan', '3453454', '7565755', NULL, NULL, '2019-09-12 07:09:23', '2019-10-22 13:26:15', '2019-10-22 13:26:15'),
(2, NULL, 'Jose', '465464', '45654', NULL, NULL, '2019-09-12 07:09:42', '2019-10-22 13:26:10', '2019-10-22 13:26:10'),
(3, NULL, 'Maria', '67575675', NULL, NULL, NULL, '2019-09-12 07:09:57', '2019-10-22 13:26:07', '2019-10-22 13:26:07'),
(4, NULL, 'Marcelo', '1343434', NULL, NULL, NULL, '2019-09-20 13:10:47', '2019-10-22 13:26:02', '2019-10-22 13:26:02'),
(5, NULL, 'PErsona de prueba', '3456345345454', NULL, NULL, 'personas/September2019/vg6WQhjcZAAdh53Em7EU.jpeg', '2019-09-20 13:13:07', '2019-09-20 13:13:23', '2019-09-20 13:13:23'),
(6, NULL, 'dfgdfddfg', '46546456', NULL, NULL, 'personas/September2019/pADOp4SlHXtcXbZ83trt.jpg', '2019-09-20 13:14:35', '2019-09-26 14:31:45', '2019-09-26 14:31:45'),
(7, NULL, 'Alejandro', '55466bn', '789798', 'aleja@gmail.com', 'personas/September2019/jzsz8zWa4KxYOSHLh5tN.png', '2019-09-20 13:16:34', '2019-09-26 13:22:54', '2019-09-26 13:22:54'),
(8, NULL, 'Marcelo', '6546546', NULL, NULL, NULL, '2019-10-05 05:07:37', '2019-10-22 13:25:57', '2019-10-22 13:25:57'),
(9, NULL, 'Maria', '567567', '756756756', NULL, NULL, '2019-10-05 05:15:15', '2019-10-22 13:25:52', '2019-10-22 13:25:52'),
(10, NULL, 'Jose manuel', '465464645', '75675675', 'administrador@loginweb.net', NULL, '2019-10-05 05:20:16', '2019-10-22 13:25:46', '2019-10-22 13:25:46'),
(11, NULL, 'dfgdfgdgdfg', '75675675', NULL, NULL, NULL, '2019-10-05 05:22:13', '2019-10-22 13:25:22', '2019-10-22 13:25:22'),
(12, NULL, 'Jorge', '67567675', NULL, NULL, NULL, '2019-10-05 05:27:58', '2019-10-22 13:25:15', '2019-10-22 13:25:15'),
(13, 1, 'yrtyrty', '7567567', '6867867867', 'cajero@admin.com', NULL, '2019-10-05 05:44:02', '2019-10-22 13:25:10', '2019-10-22 13:25:10'),
(14, 2, 'Rebeca', '44444', '777777', 'rebeca@gmail.com', NULL, '2019-10-22 16:36:03', '2019-10-22 16:36:03', NULL),
(15, 2, 'Federico', '33333', '666666', 'federico@gmail.com', NULL, '2019-10-22 16:45:52', '2019-10-22 16:45:52', NULL),
(16, 2, 'Luis Fernando', '22222', '77777777', 'luis@gmail.com', NULL, '2019-10-22 16:55:20', '2019-10-22 16:55:20', NULL),
(17, 4, 'Daniel dfgdfgg', '1111', '265', 'zubieta@gmail.com', NULL, '2019-10-22 17:05:52', '2021-03-13 00:07:01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(10) UNSIGNED NOT NULL,
  `proyecto_tipo_id` int(11) DEFAULT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsable` int(11) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `participantes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_actual` int(11) DEFAULT NULL,
  `area_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entidad_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avance` int(11) DEFAULT NULL,
  `observaciones` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `proyecto_tipo_id`, `nombre`, `responsable`, `anio`, `participantes`, `estado_actual`, `area_id`, `entidad_id`, `avance`, `observaciones`, `archivo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 1, 'Titulo del poyecto', 1, 2019, '2,3', 1, '1', NULL, NULL, '<h1 style=\"text-align: center;\">Observaciones</h1>', NULL, '2019-09-12 15:00:14', '2019-09-19 16:00:20', '2019-09-19 16:00:20'),
(5, 1, 'Proyecto de prueba 2', 1, 2018, '2,3', 1, '2', NULL, NULL, '<h1>Observaciones de prueba</h1>', NULL, '2019-09-12 15:14:28', '2019-09-19 16:03:01', '2019-09-19 16:03:01'),
(6, 1, 'Proyecto de pueba', 1, 2015, '1,2', 1, '2', NULL, 10, NULL, NULL, '2019-09-13 04:50:48', '2019-09-20 05:05:55', '2019-09-20 05:05:55'),
(7, 1, 'Proyecto de prueba 3', 3, 2019, '1,2', 2, '2', NULL, 20, NULL, 'proyectos/September2019/b1WE4gprt9vqeUcOSpW3.pdf', '2019-09-13 05:33:56', '2019-10-22 13:22:38', '2019-10-22 13:22:38'),
(8, 1, 'Proyecto de prueba 3', 2, 2018, '3', 2, '1', NULL, 25, NULL, 'proyectos/September2019/GYkrawO5A5qC5nZRXkMz.pdf', '2019-09-13 05:36:29', '2019-10-22 13:22:33', '2019-10-22 13:22:33'),
(9, 1, 'proyecto de prueba', 1, 2019, '1,2', 1, '2', NULL, 12, '<p>actually you can use raw form like your question. but i dont recomended it. dan itulah salah satu alasan agan belajar framework, simple, dan cepat. so kenapa pake raw form kalo ada yang lebih mudah. hehe. proud to be indonesian.</p>\r\n<p>reference (laravel blade form)[<a href=\"http://laravel-recipes.com/recipes/124/opening-a-new-html-form]\" rel=\"nofollow\">http://laravel-recipes.com/recipes/124/opening-a-new-html-form]</a></p>', 'proyectos/September2019/LmH4iHNO1ZyqbzXbATyt.pdf', '2019-09-19 06:39:21', '2019-10-22 13:21:48', '2019-10-22 13:21:48'),
(10, 1, 'Arroz rojo', 3, 2019, '3,4', 1, '1', NULL, 10, '<p>Se pretende llevar acabo bajo riego</p>', 'proyectos/September2019/nPzvTVLxe79qRmxksIi2.jpeg', '2019-09-25 11:16:12', '2019-10-22 13:21:43', '2019-10-22 13:21:43'),
(11, 1, 'Contribución del Área Protegida Municipal IbareMamoré y del Municipio de Trinidad a la Meta Aichi 1', 14, 2019, '17', 7, '7', NULL, 100, '<p><strong>RECONOCIMIENTOS</strong></p>\r\n<p><strong>Menci&oacute;n especial - III Congreso Nacional de Bot&aacute;nica, Sucre&nbsp; 2015</strong></p>', '', '2019-10-22 17:08:11', '2019-10-22 17:08:11', NULL),
(12, 1, 'Línea base estudio forestal Área Protegida Municipal IbareMamoré   CIBIOMA UABJB, WWF.', 14, 2019, '17', 7, '6', NULL, 100, '<p><strong>RECONOCIMIENTO</strong></p>\r\n<p><strong>Ganador Fexpo Ciencia 2015- UABJB, Trinidad</strong></p>', '', '2019-10-22 17:14:44', '2019-10-22 17:14:44', NULL),
(13, 1, 'Línea base estudio Agroforestal Área Protegida Municipal IbareMamoré  CIBIOMA UABJB, WWF.', 14, 2019, '17', 7, '6', NULL, 100, '<p><strong>RECONOCIMIENTO</strong></p>\r\n<p><strong>Ganador Feria Nacional Cient&iacute;fica Buenas Ideas- CEUB, 2018, Cochabamba</strong></p>', '', '2019-10-22 17:30:46', '2019-10-22 17:30:46', NULL),
(14, 1, 'Flavours, Culture and Biodiversity: Past and Present in Amazonian Wetlands and Forests” WCS- CIBIOMA UABJB. The consortium integrates European and Bolivian leaders in archaeology, sociology, anthropology, botany, ecology/paleoecology, remote sensing and vegetation dynamics of lowland South America', 14, 2019, '17', 7, '7', NULL, 100, '<p><strong>Reconocimiento</strong></p>\r\n<p><strong>Ganador Fexpo Ciencia 2019- UABJB, Trinidad</strong></p>', '', '2019-10-22 17:40:43', '2019-10-22 17:40:43', NULL),
(15, 1, 'Contribución económica y ambiental de los sistemas agro-forestales a la economía familiar de indígenas en las comunidades de la provincia mojos, Beni.   CIBIOMA UABJB-CIPCA.', 14, 2018, '17', 7, '6', NULL, 100, '<p><strong>Modalidad de graduaci&oacute;n:</strong></p>\r\n<p>Trabajo Dirigido</p>', '', '2019-10-22 17:45:08', '2019-10-22 17:45:08', NULL),
(16, 1, 'Prácticas agroecológicas para mejorar los rendimiento y calidad del grano de cacao (Theobroma cacao L.) silvestre y cultivado en la provincia Mojos- Beni.  CIBIOMA UABJB-', 14, 2018, '17', 7, '8', NULL, 100, NULL, '', '2019-10-22 17:56:10', '2019-10-22 17:56:10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_estados`
--

CREATE TABLE `proyectos_estados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etiqueta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos_estados`
--

INSERT INTO `proyectos_estados` (`id`, `nombre`, `etiqueta`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fase 1', 'primary', '2019-09-12 07:20:16', '2019-10-22 14:04:26', '2019-10-22 14:04:26'),
(2, 'Fase 2', 'success', '2019-09-12 07:20:33', '2019-10-22 14:04:35', '2019-10-22 14:04:35'),
(3, 'Fase 1 - Inicio', 'primary', '2019-10-22 14:30:54', '2019-10-22 14:33:02', NULL),
(4, 'Fase 2 - Planificación', 'success', '2019-10-22 14:33:54', '2019-10-22 14:33:54', NULL),
(5, 'Fase 3 - Ejecución', 'warning', '2019-10-22 14:34:46', '2019-10-22 14:34:46', NULL),
(6, 'Fase 4 - Seguimiento y Control', 'info', '2019-10-22 14:39:16', '2019-10-22 14:39:16', NULL),
(7, 'Fase 5 -  Evaluación y Cierre', 'light', '2019-10-22 14:40:44', '2019-10-22 14:40:44', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_tipos`
--

CREATE TABLE `proyectos_tipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos_tipos`
--

INSERT INTO `proyectos_tipos` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Proyecto de grado', NULL, '2019-10-23 14:06:13', '2019-10-23 14:06:13', NULL),
(2, 'Tesis', NULL, '2019-10-23 14:06:25', '2019-10-23 14:06:25', NULL);

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
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

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
(1, 1, 'Admin', 'admin@admin.com', 'users/September2019/tGPq1JWyfykhderoLXcR.png', NULL, '$2y$10$XSdrEQn5ouVs9dFOCiu05uadzKG3Nm/fTkEktMdJrir1ialqSAPuy', 'qprAW0KUUGh0Wj4rivRTNsdbKl42lksrHKcDuiLb8uyYNB6s6hDp1tfTjYCX', '{\"locale\":\"es\"}', '2019-09-04 21:06:04', '2019-09-26 13:12:43'),
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
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos_estados`
--
ALTER TABLE `proyectos_estados`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `proyectos_estados`
--
ALTER TABLE `proyectos_estados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `proyectos_tipos`
--
ALTER TABLE `proyectos_tipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
