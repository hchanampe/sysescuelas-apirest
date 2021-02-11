-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: gestionedudb:3306
-- Tiempo de generación: 10-02-2021 a las 23:40:36
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestionescuelas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add escuela', 7, 'add_escuela'),
(26, 'Can change escuela', 7, 'change_escuela'),
(27, 'Can delete escuela', 7, 'delete_escuela'),
(28, 'Can view escuela', 7, 'view_escuela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'gestionescuelas', 'escuela'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-10 11:52:25.577605'),
(2, 'auth', '0001_initial', '2021-02-10 11:52:26.136238'),
(3, 'admin', '0001_initial', '2021-02-10 11:52:27.422865'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-10 11:52:27.761734'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-10 11:52:27.777988'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-10 11:52:28.031598'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-10 11:52:28.196468'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-10 11:52:28.241982'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-10 11:52:28.260278'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-10 11:52:28.394030'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-10 11:52:28.406186'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-10 11:52:28.421890'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-10 11:52:28.600428'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-10 11:52:28.769710'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-10 11:52:28.809552'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-10 11:52:28.830896'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-02-10 11:52:28.993597'),
(18, 'gestionescuelas', '0001_initial', '2021-02-10 11:52:29.064115'),
(19, 'gestionescuelas', '0002_auto_20210210_1151', '2021-02-10 11:52:29.117644'),
(20, 'sessions', '0001_initial', '2021-02-10 11:52:29.195778');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuelas_primarias`
--

CREATE TABLE `escuelas_primarias` (
  `Id` int NOT NULL,
  `Cue` int DEFAULT NULL,
  `Anexo` int DEFAULT NULL,
  `Nombre` varchar(81) DEFAULT NULL,
  `Estado` varchar(6) DEFAULT NULL,
  `Sector` varchar(7) DEFAULT NULL,
  `Categoria` varchar(2) DEFAULT NULL,
  `Ambito` varchar(6) DEFAULT NULL,
  `Sede` varchar(8) DEFAULT NULL,
  `OfertaTipo` varchar(133) DEFAULT NULL,
  `Localidad` varchar(26) DEFAULT NULL,
  `Departamento` varchar(24) DEFAULT NULL,
  `Domicilio` varchar(56) DEFAULT NULL,
  `Teléfono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `escuelas_primarias`
--

INSERT INTO `escuelas_primarias` (`Id`, `Cue`, `Anexo`, `Nombre`, `Estado`, `Sector`, `Categoria`, `Ambito`, `Sede`, `OfertaTipo`, `Localidad`, `Departamento`, `Domicilio`, `Teléfono`) VALUES
(1, 4600001, 0, 'ESC.N°230 BAJO HONDO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'BAJO HONDO', 'CAPITAL', 'RUTA PCIAL.Nº25 KM.50 , (F5300)', ''),
(2, 4600002, 0, 'ESC.N°353 BATALLON DE ING. DE CONSTRUCCIONES 141', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  1F', 'Común - Primaria de 7 años', 'COLONIA FRUTIHORTICOLA', 'CAPITAL', 'RUTA PCIAL.N°5 KM.10 , (F5300)', ''),
(3, 4600006, 0, 'ESC.N°178 DIA DE LAS AMERICAS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1D', 'Común - Primaria de 7 años', 'TALAMUYUNA', 'CAPITAL', 'EX NAC.RUTA Nº38 KM.35 , (F5300)', ''),
(4, 4600007, 0, 'ESC.N°386', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1E', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA CAÑADA', 'CAPITAL', 'EX RUTA NAC.N°38 KM.6 , (F5300)', ''),
(5, 4600008, 0, 'ESC.N°162 PABLO VI', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SAN NICOLAS DEL RECREO', 'CAPITAL', 'RUTA PCIAL.N°25 KM.8 , (F5300)', '0380--4547177'),
(6, 4600009, 0, 'ESC.N°218 MERCEDES DE STIPANICCI', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA RAMADITA', 'CAPITAL', 'RUTA PCIAL.N°25 KM.30 , (F5300)', ''),
(7, 4600011, 0, 'COLEGIO PRIVADO WILLIAM MORRIS', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1C', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'LA RIOJA', 'CAPITAL', 'BENJAMIN DE LA VEGA 226, CENTRO (F5300)', '0380-4426086'),
(8, 4600016, 0, 'ESC.N°249 GENERAL MANUEL BELGRANO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'FRANCISCO ZELADA 50, MATADERO (F5300)', '0380-4468312'),
(9, 4600017, 0, 'ESC.N°252 BERNARDINO RIVADAVIA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'FRANCISCO ZELADA 50, MATADERO (F5300)', '0380-4468312'),
(10, 4600020, 0, 'ESC.N°191 SARMIENTO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1C', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'DARDO ROCHA 74, FERROVIARIO (F5300)', '0380-4427174'),
(11, 4600021, 0, 'ESC.N°395 MALVINAS ARGENTINAS', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1A', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'ESTEBAN ECHEVERRIA 272, ISLAS MALVINAS (F5300)', '0380-4425607'),
(12, 4600022, 0, 'ESC.N°287 MAESTRO ARMANDO HERRERA ROBLEDO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1A', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'ESTEBAN ECHEVERRIA 272, ISLAS MALVINAS (F5300)', '0380-4425607'),
(13, 4600026, 0, 'ESC.N°054 PROVINCIA DE BUENOS AIRES', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1F', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'AVDA.LEANDRO N.ALEM S/N°, VARGAS (F5300)', '0380-4439220'),
(14, 4600028, 0, 'ESC.N°308 DARDO DE LA VEGA DIAZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1E', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SAN LORENZO', 'CAPITAL', 'RUTA PCIAL.N°5 KM.50 , (F5300)', ''),
(15, 4600029, 0, 'ESC.N°167', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1C', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SAN BERNARDO', 'CAPITAL', 'RUTA PCIAL.N°6 KM.120 , (F5300)', ''),
(16, 4600030, 0, 'ESC.N°326 ESTAUROFILA LUNA DE GRANILLO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA LATA', 'CAPITAL', 'RUTA PCIAL.N°5 KM.80 , (F5300)', ''),
(17, 4600031, 0, 'ESC.N°201 JUAN FRANCISCO CARRIZO', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  1F', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL QUEBRACHO', 'CAPITAL', 'RUTA PCIAL.N°5 KM.92 , (F5300)', ''),
(18, 4600034, 0, 'ESC.N°309 GDOR.MANUEL V.BUSTOS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1D', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SAN PEDRO', 'CAPITAL', 'RUTA PCIAL.N°6 KM.13 , (F5300)', ''),
(19, 4600036, 0, 'ESC.N°202 ISLA NUEVA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1E', 'Común - Primaria de 7 años', 'EL CANTADERO', 'CAPITAL', 'RUTA NAC.N°38 KM.10 , (F5300)', '0380-4473001C/P'),
(20, 4600037, 0, 'ESC.N°232 BRIGIDA RAMIREZ DE DE LA VEGA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'PTO. DEL VALLE', 'CAPITAL', 'RUTA PCIAL.N°6 KM.100 , (F5300)', ''),
(21, 4600039, 0, 'ESC.N°314 DR.TOMAS MANUEL DE ANCHORENA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1C', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL BARREAL', 'CAPITAL', 'RUTA PCIAL.N°6 KM.53 , (F5300)', ''),
(22, 4600044, 0, 'ESC.N°174 PROVINCIA DE SALTAJ.C.', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'AIMOGASTA', 'ARAUCO', 'IMELDA ROMERO 694, TALACAN (F5310)', '03827-429019'),
(23, 4600045, 0, 'ESC.N°051 PROVINCIA DE JUJUY', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'ARAUCO', 'ARAUCO', 'RESISTENCIA S/Nº, SANTA ROSA (F5311)', '03827-429018'),
(24, 4600047, 0, 'ESC.N°365 PROVINCIA DE MISIONES', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1C', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'BENJAMIN MATIENZO S/Nº, ANTARTIDA III (F5300)', '0380-4428237'),
(25, 4600048, 0, 'ESC.N°299 JUAN JOSE PASO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1A', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'SAN NICOLAS DE BARI (E) S/N°, LA ERMITILLA (F5300)', '0380-4428663'),
(26, 4600050, 0, 'ESC.PRIVADA GABRIELA MISTRAL (EX-JORNADA COMPLETA)', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1A', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'LA RIOJA', 'CAPITAL', 'ADOLFO E.DAVILA 274, CENTRO (F5300)', '4421788'),
(27, 4600051, 0, 'ESC.N°369 MAESTRO HUMBERTO PEREYRA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1F', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'PUERTO ARGENTINO 206, HOSPITAL (F5300)', '0380-4429338'),
(28, 4600052, 0, 'ESC.N°245 PEDRO IGNACIO DE CASTRO BARROS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1E', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'DALMACIO VELEZ SARSFIELD 374, CENTRO (F5300)', '0380-4426918'),
(29, 4600055, 0, 'ESC.N°246 GENERAL ORTIZ DE OCAMPO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1C', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'DALMACIO VELEZ SARSFIELD 370, CENTRO (F5300)', '0380-4426918'),
(30, 4600056, 0, 'ESC.N°280 TAMBOR DE TACUARI', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1B', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'ISLA DECEPCION 672, ANTARTIDA ARGENTINA I (F5300)', '0380-4424828'),
(31, 4600059, 0, 'ESC.N°361 EXPEDICION AUXILIAR ZELADA DAVILA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1B', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'GUARANIES 1136, JUAN F.QUIROGA (F5300)', '0380-4432871'),
(32, 4600063, 0, 'ESC.N°394 SAN JOSE DE CALASANZ', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1B', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'AVDA.SAN FRANCISCO KM.3 1/2 , COCHANGASTA (F5300)', '4425628'),
(33, 4600065, 0, 'ESC.N°164 JUANA LORETO DE ARGUELLO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1F', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'AVDA.SAN FRANCISCO KM.8 1/2 , LA QUEBRADA (F5300)', '0380-4451648'),
(34, 4600067, 0, 'ESC.N°011 PROVINCIA DE TUCUMAN', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1F', 'Común - Primaria de 7 años', 'VILLA SANAGASTA', 'SANAGASTA', 'MARIA POZZOLI S/N°, 10 DE MAYO (F5301)', '0380-4492322'),
(35, 4600068, 0, 'ESC.N°175 GRAL.BELGRANO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1F', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'AVDA.PAMPLONA S/N°, SAN VICENTE (F5300)', '0380-4439652'),
(36, 4600069, 0, 'ESC.N°248 FRANCISCA GERONIMA BARROS', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'GRANADERO BAIGORRIA S/N°, LOS OLMOS (F5300)', '0380-4426595'),
(37, 4600070, 0, 'ESC.N°257 GRAL.JOSE DE SAN MARTIN', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  6', 'Común - Primaria de 7 años', 'AIMOGASTA', 'ARAUCO', '20 DE MAYO S/N°, CENTRO (F5310)', '03827-429017'),
(38, 4600072, 0, 'ESC.N°195 PROVINCIA DE CATAMARCA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  6', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'AIMOGASTA', 'ARAUCO', 'SARMIENTO 314, ESTACION (F5310)', '03827-429016'),
(39, 4600074, 0, 'ESC.PARROQUIAL N°336 INMACULADA CONCEPCION', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  6', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'AIMOGASTA', 'ARAUCO', 'SAN MARTIN 480, CENTRO (F5310)', '03827-420154'),
(40, 4600076, 0, 'ESC.N°010', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  6', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'MACHIGASTA', 'ARAUCO', 'PUBLICA S/N°, LA BANDA (F5311)', '03827-429006'),
(41, 4600078, 0, 'ESC.N°199 REPUBLICA DE VENEZUELA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1F', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'TRAMPA DEL TIGRE', 'CAPITAL', 'CAMINO VECINAL , (F5300)', ''),
(42, 4600079, 0, 'ESC.N°398 MONSEÑOR ANGELELLI', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1A', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'JULIO CAMPOS S/N°, 20 DE MAYO (F5300)', '0380-4439325'),
(43, 4600082, 0, 'ESC.N°190 GRAL.SAN MARTIN', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'BALTAZAR JARAMILLO 51, CENTRO (F5300)', '0380-4428626'),
(44, 4600083, 0, 'ESC.N°192 DR.NICOLAS AVELLANEDA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1C', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'DARDO ROCHA 42, CENTRO (F5300)', '0380-4427174'),
(45, 4600086, 0, 'INSTITUTO PRIVADO PESTALOZZI', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1B', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'ADOLFO E.DAVILA 343, CENTRO (F5300)', '0380-4435911'),
(46, 4600088, 0, 'ESC.N°055 JOSE SANTIAGO PIOLI', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1E', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LAS CATAS', 'CAPITAL', 'RUTA PCIAL.N°5 KM.89 , (F5300)', '0380-4437117C/P'),
(47, 4600089, 0, 'ESC.N°032 CAUDILLOS RIOJANOS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1D', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'CEBOLLAR', 'CAPITAL', 'EL CEBOLLAR , (F5300)', '0380-4426628C/P'),
(48, 4600090, 0, 'ESC.N°396 CAUDILLOS RIOJANOS', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1F', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'LAS CARRETAS 240, EL LIBERTADOR (F5300)', '4452461'),
(49, 4600091, 0, 'ESC.N°017 LA RIOJA ESPAÑOLA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1B', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'AVDA.SAN FRANCISCO KM.3 1/2 , COCHANGASTA (F5300)', '0380-4425628'),
(50, 4600094, 0, 'ESC.N°108', 'Activo', 'Estatal', '2°', 'R.D.', 'ZONA  6', 'Común - Primaria de 7 años', 'BAÑADO DE LOS PANTANOS', 'ARAUCO', 'ACCESO ESTEBAN MIRICIO , LA PLAZA (F5311)', ''),
(51, 4600096, 0, 'ESC.N°204', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  9', 'Común - Primaria de 7 años', 'ANGULOS', 'FAMATINA', 'ANGULOS , (F5361)', ''),
(52, 4600097, 0, 'ESC.N°235 LUIS PAPINUTTI', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  9', 'Común - Primaria de 7 años', 'EL POTRERILLO', 'FAMATINA', 'EL POTRERILLO , (F5361)', '03825-450890C/P'),
(53, 4600098, 0, 'ESC.N°200', 'Activo', 'Estatal', '3°', 'R.A. ', 'ZONA  9', 'Común - Primaria de 7 años', 'CHAÑARMUYO', 'FAMATINA', 'RUTA PCIAL.N°39 , (F5361)', ''),
(54, 4600099, 0, 'ESC.N°066 MTRO.ANTONIO OSVALDO VEGA', 'Activo', 'Estatal', '3°', 'R.A. ', 'ZONA  9', 'Común - Primaria de 7 años', 'SANTA CRUZ', 'FAMATINA', 'RUTA PCIAL.N°11 , (F5361)', ''),
(55, 4600100, 0, 'ESC.N°159 ESCUADRON 24 GENDARMERIA NACIONAL', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  9', 'Común - Primaria de 7 años', 'SANTO DOMINGO', 'FAMATINA', 'SANTO DOMINGO , (F5361)', '03825-450490'),
(56, 4600102, 0, 'ESC.N°063 MAESTRO GUILLERMO E.RIOS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  15', 'Común - Primaria de 7 años', 'SURIYACO', 'SAN BLAS DE LOS SAUCES', 'RUTA NAC.N°40 , (F5327)', ''),
(57, 4600105, 0, 'ESC.N°024 PROVINCIA DEL NEUQUENJ.C.', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  15', 'Común - Primaria de 7 años', 'SALICAS', 'SAN BLAS DE LOS SAUCES', 'RUTA NAC.N°40 , (F5327)', ''),
(58, 4600109, 0, 'ESC.N°142', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  15', 'Común - Primaria de 7 años', 'TUYUBIL', 'SAN BLAS DE LOS SAUCES', 'RUTA PCIAL.N°11 , (F5329)', ''),
(59, 4600111, 0, 'ESC.N°033 DR.PEDRO IGNACIO DE CASTRO BARROS', 'Activo', 'Estatal', '3°', 'R.A. ', 'ZONA  6', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'ESTACION MAZAN', 'ARAUCO', 'AVDA.CARLOS BRIZUELA DEL MORAL S/N°, (F5313)', ''),
(60, 4600113, 0, 'ESC.N°141 RICARDO ROJAS', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  6', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'VILLA MAZAN', 'ARAUCO', 'AVDA.CESAR VALLEJOS S/Nº, (F5313)', ''),
(61, 4600115, 0, 'ESC.N°233', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  6', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'TERMAS DE SANTA TERESITA', 'ARAUCO', 'TERMAS DE SANTA TERESITA , (F5313)', ''),
(62, 4600117, 0, 'ESC.N°036 ARMADA ARGENTINA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  9', 'Común - Primaria de 7 años', 'ANTINACO', 'FAMATINA', 'ANTINACO , (F5361)', ''),
(63, 4600118, 0, 'ESC.N°007 RAMON AGAPITO LUJAN', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  9', 'Común - Primaria de 7 años', 'BAJO CARRIZAL', 'FAMATINA', 'BAJO CARRIZAL , (F5361)', ''),
(64, 4600120, 0, 'ESC.N°004 PROVINCIA DE CORDOBAJ.C.', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  9', 'Común - Primaria de 7 años', 'PLAZA NUEVA', 'FAMATINA', 'AVDA.SAN PEDRO S/Nº, JARDIN (F5365)', '03825-493650'),
(65, 4600121, 0, 'ESC.N°005 DIRECTOR MIGUEL ROBADOR', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  9', 'Común - Primaria de 7 años', 'PLAZA VIEJA', 'FAMATINA', 'PLAZA VIEJA , CENTRO (F5361)', ''),
(66, 4600124, 0, 'ESC.N°137 VIRGEN DEL ROSARIO DE SAN NICOLAS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  6', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'SANTA VERA CRUZ', 'CASTRO BARROS', 'SANTA VERA CRUZ , (F5301)', '03827-420357C/P'),
(67, 4600125, 0, 'ESC.N°057 BERNARDINO RIVADAVIAJ.C.', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  6', 'Común - Primaria de 7 años', 'PINCHAS', 'CASTRO BARROS', 'RUTA PCIAL.N°75 , (F5301)', ''),
(68, 4600127, 0, 'ESC.N°023 VICTOR ARMANDO LEDESMA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  6', 'Común - Primaria de 7 años', 'LAS PEÑAS', 'CASTRO BARROS', 'RUTA PCIAL.N°75 , (F5301)', ''),
(69, 4600132, 0, 'ESC.N°256 GREGORIA MATORRAS DE SAN MARTIN', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  6', 'Común - Primaria de 7 años', 'AIMOGASTA', 'ARAUCO', 'HIPOLITO IRIGOYEN S/N°, INMACULADA II (F5310)', '03827-429001'),
(70, 4600135, 0, 'ESC.N°065 SRA.YLDA M.DE ROBLES JORNADA COMPLETA E.M.E.R.', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  9', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'CAMPANAS', 'FAMATINA', 'CAMPANAS , LA PLAZA (F5361)', ''),
(71, 4600139, 0, 'ESC.N°062 SOBERANIA ARGENTINAJ.C.', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  15', 'Común - Primaria de 7 años', 'LOS ROBLES', 'SAN BLAS DE LOS SAUCES', 'RUTA NAC.N°40 , (F5329)', ''),
(72, 4600141, 0, 'ESC.N°047 EJERCITO ARGENTINO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  9', 'Común - Primaria de 7 años', 'ALTO CARRIZAL', 'FAMATINA', 'ALTO CARRIZAL , (F5361)', ''),
(73, 4600142, 0, 'ESC.N°122 LEOPOLDO CAAMAÑO', 'Activo', 'Estatal', '2°', 'R.D.', 'ZONA  9', 'Común - Primaria de 7 años', 'BARRIO DE GALLI', 'FAMATINA', 'BARRIO DE GALLI , (F5365)', ''),
(74, 4600143, 0, 'ESC.N°019 DOMINGO MATHEUJ.C.', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  6', 'Común - Primaria de 7 años', 'AMINGA', 'CASTRO BARROS', 'AVDA.PEDRO I.DE CASTRO BARROS S/N°, (F5301)', '03827-494600'),
(75, 4600145, 0, 'ESC.N°103 CORONEL NICOLAS BARROSJ.C.', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  6', 'Común - Primaria de 7 años', 'ANILLACO', 'CASTRO BARROS', 'CORONEL NICOLAS BARROS S/N°, VIRGEN DE FATIMA (F5301)', '03827-482025'),
(76, 4600147, 0, 'ESC.N°270 BELINDO DE LA FUENTEJ.C.', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  6', 'Común - Primaria de 7 años', 'ANJULLON', 'CASTRO BARROS', 'JOAQUIN V.GONZALEZ S/N°, (F5303)', '03827-490555'),
(77, 4600149, 0, 'ESC.N°067 DOMINGA ESTHER FUNES', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  9', 'Común - Primaria de 7 años', 'LA CUADRA', 'FAMATINA', 'RUTA PCIAL.N°11 , (F5361)', ''),
(78, 4600150, 0, 'ESC.N°064 JUSTO JOSE DE URQUIZAJ.C.', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  9', 'Común - EGB 1 y 2 , Común - Primaria de 7 años', 'PITUIL', 'FAMATINA', 'SANTO DOMINGO S/N°, LA PLAZA (F5361)', '03825-C/P484090'),
(79, 4600151, 0, 'ESC.N°044 FILOMENA NAVARRO DE GONDOLOJ.C.', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  15', 'Común - Primaria de 7 años', 'CHAUPIHUASI', 'SAN BLAS DE LOS SAUCES', 'RUTA NAC.N°40 , (F5327)', '03827-497112'),
(80, 4600152, 0, 'ESC.N°277 FLAVIANO DE LA COLINAJ.C.', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  15', 'Común - Primaria de 7 años', 'SCHAQUI', 'SAN BLAS DE LOS SAUCES', 'RUTA NAC.N°40 , (F5329)', ''),
(81, 4600153, 0, 'ESC.N°118 EL RETIRO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  15', 'Común - Primaria de 7 años', 'EL RETIRO', 'SAN BLAS DE LOS SAUCES', 'EL RETIRO , (F5327)', ''),
(82, 4600157, 0, 'ESC.N°039 TIMOTEO GORDILLO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1C', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'BULNES 1140, EVITA (F5300)', '0380-4428527'),
(83, 4600160, 0, 'ESC.N°021 FRONTERAS ARGENTINAS', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SANTA CLARA (GUANDACOL)', 'CORONEL FELIPE VARELA', 'EMETERIO LAUSTRE S/N°, (F5351)', ''),
(84, 4600161, 0, 'ESC.N°071 DIRECTORA ANDREA PAEZ ORQUERA', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'BANDA FLORIDA', 'CORONEL FELIPE VARELA', 'ORTIZ DE OCAMPO S/N°, 2 DE ABRIL (F5351)', '03825-477799'),
(85, 4600163, 0, 'ESC.N°343 POLICIA FEDERAL ARGENTINA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'LAS CUEVAS', 'CORONEL FELIPE VARELA', 'LAS CUEVAS , (F5353)', ''),
(86, 4600164, 0, 'ESC.N°231 MAESTRO RAMON ELOY LOPEZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL MOLLE', 'CORONEL FELIPE VARELA', 'RUTA PCIAL.N°26 , (F5350)', '03825-470350C/P'),
(87, 4600165, 0, 'ESC.N°160 FELIPE LEONARDO DAVILA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'EL ZAPALLAR', 'CORONEL FELIPE VARELA', 'EL ZAPALLAR , (F5353)', ''),
(88, 4600166, 0, 'ESC.N°135 JOSE ARMANDO QUIROGA SOAJE', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Primaria de 7 años', 'LA MARAVILLA', 'CORONEL FELIPE VARELA', 'LA MARAVILLA , (F5351)', ''),
(89, 4600168, 0, 'CENTRO EDUCATIVO AICUÑA(EX-ESC.N°068ARSENIO SALINAS)', 'Activo', 'Estatal', '3°', 'R.A. ', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'AICUÑA', 'CORONEL FELIPE VARELA', 'PRINCIPAL S/N°, (F5361)', '03825-483001C/P'),
(90, 4600169, 0, 'ESC.N°069 DIRECTOR GERONIMO FLORES', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'PAGANCILLO', 'CORONEL FELIPE VARELA', 'AVDA.24 DE SEPTIEMBRE S/N°, COLEGIALES (F5369)', '03826-470115'),
(91, 4600171, 0, 'ESC.N°284 FRAY LUIS BELTRAN', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LOS PATILLOS', 'CORONEL FELIPE VARELA', 'LOS PATILLOS , (F5361)', ''),
(92, 4600172, 0, 'ESC.N°324 GRANADERO VARGAS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL CARDON', 'CORONEL FELIPE VARELA', 'EL CARDON , (F5350)', ''),
(93, 4600173, 0, 'ESC.N°209 CLUB ARGENTINO DE SERVICIOS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'VILLA ESTHER', 'CORONEL FELIPE VARELA', 'RUTA PCIAL.N°76 , (F5350)', ''),
(94, 4600174, 0, 'Esc Nº 278 MIGUEL ESTANISLAO SOLER', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Primaria de 7 años', 'PUERTO ALEGRE', 'CORONEL FELIPE VARELA', '', ''),
(95, 4600175, 0, 'ESC.N°261 9 DE JULIO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2B', 'Común - Primaria de 7 años', 'CHILECITO', 'CHILECITO', 'ALBERTO GABRIEL OCAMPO S/N°, (F5360)', '03825-429626'),
(96, 4600178, 0, 'ESC.N°003 JOAQUIN V.GONZALEZ', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2B', 'Común - Primaria de 7 años', 'NONOGASTA', 'CHILECITO', 'JOAQUIN V.GONZALEZ S/N°, EL PUEBLO (F5372)', '03825-499364'),
(97, 4600185, 0, 'ESC.N°263 PARROQUIAL PIO XII', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1E', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'BAZAN Y BUSTOS 459, URBANO (F5300)', '0380-4423341'),
(98, 4600189, 0, 'ESC.N°037 PROVINCIA DE SANTA FE', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1B', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'SAAVEDRA S/N°, PANGO (F5300)', '0380-4427472'),
(99, 4600190, 0, 'ESC.N°397 MERCEDITA DE SAN MARTIN', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'AVDA.ALICIA MOREAU DE JUSTO 775, 25 DE MAYO (F5300)', '0380-4439212'),
(100, 4600193, 0, 'ESC.N°392 PRIVADA BILINGUE DANTE ALIGHIERI', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1F', 'Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'LA RIOJA', 'CAPITAL', 'CAJA DE AHORRO S/N°, EVITA (F5300)', '0380-4422617'),
(101, 4600194, 0, 'ESC.N°127 CAPITAL FEDERAL', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1A', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'NAPOLES 301, SANTA JUSTINA (F5300)', '0380-4424812'),
(102, 4600196, 0, 'ESC.N°254 SAGRADO CORAZON DE JESUS', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1A', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'LA RIOJA', 'CAPITAL', 'BAZAN Y BUSTOS 923, CENTRO (F5300)', '0380-4426100'),
(103, 4600200, 0, 'ESC.N°125 ROSARIO VERA PEÑALOZA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LOS NACIMIENTOS', 'CORONEL FELIPE VARELA', 'LOS NACIMIENTOS , (F5353)', ''),
(104, 4600202, 0, 'ESC.N°352 GUILLERMO PAEZ', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'VILLA UNION', 'CORONEL FELIPE VARELA', 'SAN NICOLAS DE BARI S/N°, GUILLERMO PAEZ (F5350)', ''),
(105, 4600204, 0, 'ESC.N°018 ALICIA CARRIZO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  7', 'Común - Primaria de 7 años', 'VILLA UNION', 'CORONEL FELIPE VARELA', 'HONORATO GUERRERO SUR S/N°, LOS PALACIOS (F5350)', '03825-470201'),
(106, 4600206, 0, 'ESC.N°259 NICOLAS DAVILA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2A', 'Común - Primaria de 7 años', 'CHILECITO', 'CHILECITO', 'JOAQUIN V.GONZALEZ 93, CENTRO (F5360)', '03825-422897'),
(107, 4600207, 0, 'ESC.N°260 JUAN RAMIREZ DE VELASCO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2A', 'Común - Primaria de 7 años', 'CHILECITO', 'CHILECITO', 'ENCRUCIJADAS S/N, CENTRO (F5360)', '03825-429635'),
(108, 4600208, 0, 'ESC.NORMAL SUPERIOR DR.PEDRO IGNACIO DE CASTRO BARROS', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1A', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'LA RIOJA', 'CAPITAL', 'JULIO C.CORZO S/N°, SAN VICENTE (F5300)', '0380-4468526'),
(109, 4600209, 0, 'ESC.N°244 FRANCISCO TELECHEA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'DALMACIO VELEZ SARSFIELD 842, CENTRO (F5300)', '4426611'),
(110, 4600210, 0, 'ESC.N°243 GDOR.BENJAMIN DE LA VEGA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'DALMACIO VELEZ SARSFIELD 842, CENTRO (F5300)', '0380-4426611'),
(111, 4600212, 0, 'ESC.N°250 BARTOLOME MITRE', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1C', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'JUAN BAUTISTA ALBERDI 679, CENTRO (F5300)', '0380-4426401'),
(112, 4600215, 0, 'ESC.N°177 DR.MARIANO MORENO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'AVDA.LOS CAUDILLOS S/N°, CENTRO (F5300)', '0380-4426468'),
(113, 4600218, 0, 'INSTITUTO PRIVADO MANUEL BELGRANO', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1E', 'Común - Jardín maternal , Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'LA RIOJA', 'CAPITAL', '25 DE MAYO 475, MICROCENTRO (F5300)', '0380-4427597'),
(114, 4600219, 0, 'CENTRO EDUCATIVO SAN FRANCISCO DE ASIS (EX. ESCUELA 247)', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1E', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'LA RIOJA', 'CAPITAL', 'BAZAN Y BUSTOS 661, CENTRO (F5300)', '0380-4423820'),
(115, 4600220, 0, 'ESC.N°251 CEFERINO NAMUNCURA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1C', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'JUAN BAUTISTA ALBERDI 679, CENTRO (F5300)', '0380-4426401'),
(116, 4600224, 0, 'ESC.N°166 RODOLFO N.CARMONA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2B', 'Común - Primaria de 7 años', 'CHILECITO', 'CHILECITO', 'LA PLATA 850, EL PARQUE (F5360)', '03825-422890'),
(117, 4600225, 0, 'ESC.N°370 MAESTRO FERMIN MORALES', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2B', 'Común - Primaria de 7 años', 'CHILECITO', 'CHILECITO', 'SAN NICOLAS S/N°, POMAN (F5360)', '03825-429628'),
(118, 4600226, 0, 'ESC.NORMAL SUPERIOR JOAQUIN V.GONZALEZ', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2A', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'CHILECITO', 'CHILECITO', 'ALBERTO GABRIEL OCAMPO 48, CENTRO (F5360)', '03825-422515'),
(119, 4600227, 0, 'ESC.N°028 HUMBERTO ALEJANDRO HERRERA ROBLEDO', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  7', 'Común - Primaria de 7 años', 'GUANDACOL', 'CORONEL FELIPE VARELA', 'SAN MARTIN S/N°, (F5353)', '03825-492853'),
(120, 4600228, 0, 'ESC.N°070 WOLF SCHCOLNIK', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LOS PALACIOS', 'CORONEL FELIPE VARELA', 'LOS PALACIOS , (F5351)', '03825-470289'),
(121, 4600229, 0, 'ESC.N°109 LUIS CAMILO SCIDA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LOS TAMBILLOS', 'CORONEL FELIPE VARELA', 'RUTA NAC.N°40 KM.55 , (F5361)', '03825-470444'),
(122, 4600232, 0, 'ESC.N°262 MERCEDES BUSTAMANTE DE DINKLAGE', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2B', 'Común - Primaria de 7 años', 'CHILECITO', 'CHILECITO', 'SAN MARTIN S/N°, CABLE CARRIL (F5360)', '03825-429639'),
(123, 4600235, 0, 'ESC.N°334 MARIA LUISA DAVILA DE LARGUIA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  2B', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL TRIANGULO', 'CHILECITO', 'EL TRIANGULO , (F5372)', ''),
(124, 4600238, 0, 'ESC.N°194 BARTOLOME MITRE', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2B', 'Común - Primaria de 7 años', 'NONOGASTA', 'CHILECITO', 'JOAQUIN V.GONZALEZ S/N°, ESTACION (F5372)', '03825-499342'),
(125, 4600239, 0, 'ESC.N°189 EMILIO ALFREDO HUNICKEN', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2B', 'Común - Primaria de 7 años', 'CHILECITO', 'CHILECITO', 'DR.SANTIAGO BAZAN 348, EL PUQUIAL (F5360)', '03825-422468'),
(126, 4600241, 0, 'ESC.N°123 ENZO ALDO CORDOBA', 'Activo', 'Estatal', '3°', 'R.A. ', 'ZONA  2A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'TILIMUQUI', 'CHILECITO', 'VICENTE GIGENA S/N°, (F5361)', ''),
(127, 4600242, 0, 'ESC.N°107 JUAN DOMINGO PERON', 'Activo', 'Estatal', '2°', 'R.D.', 'ZONA  2A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SAN MIGUEL', 'CHILECITO', 'DEL CARMEN 48, (F5361)', '03825-429613'),
(128, 4600243, 0, 'ESC.N°378 MARIA ANGELICA WALT', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  2A', 'Común - Primaria de 7 años', 'SAN NICOLAS', 'CHILECITO', 'EX RUTA NAC.N°40 , (F5360)', ''),
(129, 4600244, 0, 'ESC.N°372 NEREO NIEVAS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  2A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'COLONIA ANGUINAN', 'CHILECITO', 'COLONIA ANGUINAN , (F5363)', ''),
(130, 4600245, 0, 'ESC.N°169 UNIVERSIDAD NACIONAL DE LA PLATA', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  2A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'COLONIA ANGUINAN', 'CHILECITO', 'SAN NICOLAS S/N°, (F5363)', ''),
(131, 4600246, 0, 'ESC.N°001 PABLO PIZZURNO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LOS SARMIENTOS', 'CHILECITO', 'DR.CHAVEZ 150, (F5361)', '03825-422157'),
(132, 4600247, 0, 'ESC.N°106 MARIA DE LAS MERCEDES LAUTRE DE SILVANO', 'Activo', 'Estatal', '3°', 'R.A. ', 'ZONA  2B', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'GUANCHIN', 'CHILECITO', 'PRINCIPAL S/N°, (F5367)', '03825-424600C/P'),
(133, 4600248, 0, 'ESC.N°029 PROVINCIA DE MENDOZA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SAÑOGASTA', 'CHILECITO', 'PRINCIPAL S/N°, LA CALLE (F5367)', '03825-495295'),
(134, 4600249, 0, 'ESC.N°179 ALEJANDRO DE LA VEGA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  2A', 'Común - Primaria de 7 años', 'MIRANDA', 'CHILECITO', 'RUTA NAC.N°40 , (F5367)', '03825-499234C/P'),
(135, 4600250, 0, 'ESC.N°008 PROVINCIA DE FORMOSA', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  7', 'Común - Primaria de 7 años', 'VILLA CASTELLI', 'GENERAL LAMADRID', 'SAN MARTIN S/N°, CENTRO (F5355)', '03825-497801'),
(136, 4600253, 0, 'ESC.N°072 DOMINGO FAUSTINO SARMIENTO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA BANDA', 'VINCHINA', 'AVDA.CARLOS SAUL MENEM S/N°, LA BANDA (F5357)', '03825-494057'),
(137, 4600254, 0, 'ESC.N°301 GENDARMERIA NACIONALJ.C.', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'POTRERO GRANDE', 'VINCHINA', 'PRINCIPAL S/N°, (F5359)', '03825-450201C/P'),
(138, 4600255, 0, 'ESC.N°212 CASA PINTADA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Primaria de 7 años', 'VALLE HERMOSO', 'VINCHINA', 'VALLE HERMOSO , (F5357)', ''),
(139, 4600258, 0, 'ESC.N°349', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años', 'LOS BORDOS', 'CHAMICAL', 'LOS BORDOS , (F5380)', ''),
(140, 4600259, 0, 'ESC.N°075 DELINA ELIZONDO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años', 'POLCO', 'CHAMICAL', 'NUESTRA SEÑORA DEL ROSARIO DE POLCO S/N°, POLCO (F5380)', ''),
(141, 4600260, 0, 'ESC.N°286 GDOR.FRANCISCO SOLANO GOMEZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'SANTA BARBARA', 'CHAMICAL', 'SANTA BARBARA , (F5380)', '499999'),
(142, 4600261, 0, 'ESC.N°031 PABLO MARTIN LEAL', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años', 'CHULO', 'CHAMICAL', 'CHULO , (F5380)', ''),
(143, 4600262, 0, 'ESC.N°319 MAIPU', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años', 'VILLA CARMELA', 'CHAMICAL', 'RUTA PCIAL.N°25 , (F5380)', ''),
(144, 4600263, 0, 'ESC.N°182 GRAL.SAN MARTIN', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL QUEBRACHAL', 'CHAMICAL', 'EL QUEBRACHAL , (F5380)', ''),
(145, 4600264, 0, 'ESC.N°300 MAESTRO ALILO NUÑEZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años', 'LA AGUADITA', 'CHAMICAL', 'LA AGUADITA , (F5380)', ''),
(146, 4600265, 0, 'ESC.N°329', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'EL MOLLAR', 'CHAMICAL', 'EL MOLLAR , (F5381)', ''),
(147, 4600266, 0, 'ESC.N°306 20 DE MAYO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años', 'LAS TALAS', 'CHAMICAL', 'LAS TALAS , (F5329)', ''),
(148, 4600267, 0, 'ESC.N°197 CABO PRINC.JULIO CESAR FUENTES', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años', 'LA CAÑADA', 'CHAMICAL', 'LA CAÑADA , (F5380)', ''),
(149, 4600268, 0, 'ESC.N°217 CABO PRINCIPAL DARIO VERA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA SERENA', 'CHAMICAL', 'PARAJE LA SERENA , (F5380)', ''),
(150, 4600270, 0, 'ESC.N°312 DR.JOSE E.COLOMBRES', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA RESISTENCIA', 'CHAMICAL', 'LA RESISTENCIA , (F5380)', ''),
(151, 4600272, 0, 'ESC.N°307 VICENTE ALMANDOS ALMONACID', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años', 'BAJO DE LUCAS', 'CHAMICAL', 'RUTA NAC.N°38 , (F5380)', ''),
(152, 4600274, 0, 'ESC.N°092 MANUEL DE LA CRUZ PIZARRO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  13', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'CHAÑAR', 'GENERAL BELGRANO', 'CHAÑAR VIEJO , (F5276)', ''),
(153, 4600276, 0, 'ESC.N°153 DOMINGO ORONA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  13', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL SIMBOLAR', 'GENERAL BELGRANO', 'RUTA PCIAL.N°28 , (F5276)', ''),
(154, 4600277, 0, 'ESC.N°154 MATEO JORGE GOMEZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'BALDE DE PACHECO', 'GENERAL BELGRANO', 'BALDE DE PACHECO , (F5276)', ''),
(155, 4600278, 0, 'ESC.N°026', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'CORTADERAS', 'GENERAL BELGRANO', 'CORTADERAS , (F5381)', ''),
(156, 4600279, 0, 'ESC.N°325 FRAY JUSTO SANTA MARIA DE ORO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Primaria de 7 años', 'EL CONSUELO', 'GENERAL BELGRANO', 'EL CONSUELO , (F5383)', ''),
(157, 4600280, 0, 'ESC.N°043', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Primaria de 7 años', 'LA AGUADA', 'GENERAL BELGRANO', 'RUTA NAC.N°79 KM.202 , (F5470)', ''),
(158, 4600281, 0, 'ESC.N°381 ANTONIO GONZALEZ BALCARCE', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años', 'S.DE LAS HIGUERAS', 'GENERAL ANGEL V PEÑALOZA', 'S. DE LAS HIGUERAS , (F5385)', ''),
(159, 4600282, 0, 'ESC.N°134 MAESTRO NARCISO ALBERTO CHACHO LEAL', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA CORTADA', 'CHAMICAL', 'LA CORTADA , (F5380)', ''),
(160, 4600283, 0, 'ESC.N°048', 'Activo', 'Estatal', '3°', 'R.A. ', 'ZONA  12', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'BELLA VISTA', 'CHAMICAL', 'BELLA VISTA , (F5381)', ''),
(161, 4600284, 0, 'ESC.N°076 PROVINCIA DE LA RIOJA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años', 'ESQUINA DEL NORTE', 'CHAMICAL', 'ESQUINA DEL NORTE , (F5380)', ''),
(162, 4600285, 0, 'ESC.N°236', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años', 'SANTA RITA DE LA ZANJA', 'CHAMICAL', 'STA.RITA DE LAS ZANJAS , (F5380)', ''),
(163, 4600287, 0, 'ESC.N°210 RAMON ANIBAL OLIVERA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  13', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'MONTE GRANDE', 'GENERAL BELGRANO', 'RUTA NAC.N°77 KM.10 , (F5383)', ''),
(164, 4600288, 0, 'ESC.N°147 CLOTILDE MERCADO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'MIRAFLORES', 'GENERAL BELGRANO', 'MIRAFLORES , (F5383)', ''),
(165, 4600290, 0, 'ESC.N°214 PEDRO CELESTINO ROBADOR', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  13', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'BAJO HONDO', 'GENERAL BELGRANO', 'BAJO HONDO , (F5383)', ''),
(166, 4600291, 0, 'ESC.N°387', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SANTA CRUZ', 'GENERAL BELGRANO', 'SANTA CRUZ , (F5383)', ''),
(167, 4600292, 0, 'ESC.N°077', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'TALVA', 'GENERAL BELGRANO', 'TALVA , (F5381)', ''),
(168, 4600293, 0, 'ESC.N°155 PREBISTERO ANTONIO CONRRERO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'CORRAL DEL NEGRO', 'GENERAL BELGRANO', 'CORRAL DE NEGRO , (F5383)', ''),
(169, 4600294, 0, 'ESC.N°022 JUAN FACUNDO SOTOMAYOR', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'ESQUINA DEL SUD', 'GENERAL BELGRANO', 'ESQUINA DEL SUR , (F5383)', ''),
(170, 4600295, 0, 'ESC.N°289', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  13', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA HUERTA', 'GENERAL BELGRANO', 'LA HUERTA , (F5383)', ''),
(171, 4600296, 0, 'ESC.N°041 BERNARDINO RIVADAVIA', 'Activo', 'Estatal', '2°', 'R.D.', 'ZONA  7', 'Común - Primaria de 7 años', 'VILLA CASTELLI', 'GENERAL LAMADRID', 'BERNARDINO RIVADAVIA S/N°, RIVADAVIA (F5355)', '03825-497977'),
(172, 4600302, 0, 'ESC.N°136 NICOLASA VERA LUNA DE VERA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  12', 'Común - Primaria de 7 años', 'CHAMICAL', 'CHAMICAL', 'CONSTANTINO CARBEL 430, LOS PARAISOS (F5380)', '03826-429680'),
(173, 4600303, 0, 'ESC.N°258 ROSARIO VERA PEÑALOZA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  12', 'Común - Primaria de 7 años', 'CHAMICAL', 'CHAMICAL', 'ROSARIO VERA PEÑALOZA 37, CENTRO (F5380)', '03826-422160'),
(174, 4600304, 0, 'ESC.N°012 MAESTRO FRANCISCO TORRES MOLINA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Primaria de 7 años', 'SANTA LUCIA', 'CHAMICAL', 'SANTA LUCIA , (F5380)', ''),
(175, 4600305, 0, 'ESC.N°014 JUSTO JOSE DE URQUIZA', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  13', 'Común - Primaria de 7 años', 'CHAÑAR', 'GENERAL BELGRANO', 'AVDA.SAN MARTIN 665, SAN CAYETANO (F5276)', '03826-495932'),
(176, 4600308, 0, 'ESC.N°170 GRAL.MARTIN MIGUEL DE GUEMES', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  2B', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SANTA FLORENTINA', 'CHILECITO', 'RUTA PCIAL.N°14 , (F5360)', ''),
(177, 4600309, 0, 'ESC.N°345', 'Activo', 'Estatal', '3°', 'R.A. ', 'ZONA  2A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'COLONIA MALLIGASTA', 'CHILECITO', 'CARLOS WILLIAMK S/N°, (F5361)', ''),
(178, 4600310, 0, 'ESC.N°002 TIMOTEO GORDILLO', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  2A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'MALLIGASTA', 'CHILECITO', 'CAMINO DEL PEREGRINO S/Nº, (F5361)', '03825-498726'),
(179, 4600314, 0, 'ESC.N°188', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  2A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SAÑOGASTA', 'CHILECITO', 'NICOLASA PERAFAN S/N°, LA PUNTILLA (F5367)', ''),
(180, 4600315, 0, 'ESC.N°129 MUNICIPALIDAD DE LA CIUDAD DE BUENOS AIRES', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  2B', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'VICHIGASTA', 'CHILECITO', 'VICENTA ZALAZAR DE ORTIZ S/N°, LA PLAZA (F5374)', '03825-490052'),
(181, 4600318, 0, 'ESC.N°006 SARGENTO JUAN BAUTISTA CABRAL', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  2B', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'VICHIGASTA', 'CHILECITO', 'AVDA.SAN BUENAVENTURA S/N°, CHIMA (F5374)', '03825-490025'),
(182, 4600322, 0, 'ESC.N°073 VICENTE CALDERONJ.C.', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'VILLA SAN JOSE DE VINCHINA', 'VINCHINA', 'AVDA.CARLOS SAUL MENEM S/N°, LA PUNILLA (F5357)', '03825-494830'),
(183, 4600323, 0, 'ESC.N°074 PROVINCIA SANTIAGO DEL ESTERO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'ALTO JAGUE', 'VINCHINA', 'ALTO JAGUE S/N°, (F5359)', '03825-450101C/P'),
(184, 4600324, 0, 'ESC.N°009 HIPOLITO IRIGOYEN', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'DISTRITO PUEBLO', 'VINCHINA', 'AVDA.CARLOS SAUL MENEM S/N°, ANDINO (F5357)', '03825-494214'),
(185, 4600327, 0, 'ESC.N°110 PROVINCIA DEL CHACO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  7', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'BAJO JAGUE', 'VINCHINA', 'BAJO JAGUE S/N°, (F5357)', ''),
(186, 4600329, 0, 'ESC.N°151 PROVINCIA DE CORRIENTES (DE JORNADA COMPLETA)', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  12', 'Común - Primaria de 7 años', 'CHAMICAL', 'CHAMICAL', 'RUTA NACIONAL N°38 520, ARGENTINO (F5380)', '03826-422130'),
(187, 4600331, 0, 'ESC.N°294 JOSE DARRAGUEIRA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  12', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL RETAMO', 'CHAMICAL', 'EL RETAMO , (F5380)', ''),
(188, 4600333, 0, 'ESC.N°320 HIPOLITO IRIGOYEN', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  13', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'TALA VERDE', 'GENERAL BELGRANO', 'TALA VERDE , (F5383)', ''),
(189, 4600334, 0, 'ESC.N°344 FERNANDO GODOY', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL VIRQUE', 'GENERAL BELGRANO', 'EL VIRQUE , (F5383)', ''),
(190, 4600337, 0, 'ESC.N°172', 'Activo', 'Estatal', '3°', 'R.A. ', 'ZONA  13', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'CASTRO BARROS', 'GENERAL BELGRANO', 'ESTACION CASTRO BARROS , (F5276)', ''),
(191, 4600338, 0, 'ESC.N°121', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'LAS HUERTAS', 'GENERAL ANGEL V PEÑALOZA', 'LAS HUERTAS , (F5385)', ''),
(192, 4600339, 0, 'ESC.N°228', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años', 'PACATALA', 'GENERAL ANGEL V PEÑALOZA', 'PARAJE PATACALA , (F5385)', ''),
(193, 4600340, 0, 'ESC.N°317 JUAN AGUSTIN MAZA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'LA SUSPENSION', 'GENERAL SAN MARTIN', 'LA SUSPENSION , (F5473)', ''),
(194, 4600341, 0, 'ESC.N°150', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'BAJO HONDO', 'GENERAL SAN MARTIN', 'BAJO HONDO , (F5473)', ''),
(195, 4600343, 0, 'ESC.N°187 EL CADILLO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL CADILLO', 'GENERAL SAN MARTIN', 'EL CADILLO , (F5473)', '2652452000'),
(196, 4600344, 0, 'ESC.N°272 VICENTE LOPEZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años', 'EL BALDECITO', 'GENERAL SAN MARTIN', 'EL BALDECITO , (F5473)', ''),
(197, 4600345, 0, 'NUCLEO ESC.N°205(Esc.N°205,Esc.N°303 y Esc.N°355)', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años', 'AGUAYO', 'GENERAL SAN MARTIN', 'AGUAYO , (F5473)', '499999'),
(198, 4600347, 0, 'ESC.N°356 YAPEYU', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años', 'LA INDUSTRIA', 'GENERAL SAN MARTIN', 'RUTA PCIAL.N°33 , (F5473)', ''),
(199, 4600348, 0, 'ESC.N°042 SANTISIMA VIRGEN DEL ROSARIO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años', 'SAN SOLANO', 'GENERAL SAN MARTIN', 'CALLE PUBLICA S/N, (F5473)', ''),
(200, 4600349, 0, 'ESC.N°046 MARIA MERCEDES COUCEIRO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años', 'PUESTO LOS CORNEJOS', 'GENERAL SAN MARTIN', 'PUESTO LOS CORNEJOS , (F5473)', ''),
(201, 4600350, 0, 'ESC.N°112 DELIA DURAN DE GATICA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'VILLA NIDIA', 'GENERAL SAN MARTIN', 'VILLA NIDIA , (F5473)', '03821-491001C/P'),
(202, 4600351, 0, 'ESC.N°226 MANUEL TEóFILO IBAÑEZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años', 'PUESTO DICHOSO', 'GENERAL SAN MARTIN', 'PUESTO DICHOSO , (F5471)', ''),
(203, 4600352, 0, 'ESC.N°165 PETRONA ROSA IBAÑEZ', 'Activo', 'Estatal', '3º', 'R.D.', 'ZONA  4', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA REPRESA', 'GENERAL SAN MARTIN', 'LA REPRESA , (F5471)', '99999'),
(204, 4600353, 0, 'ESC.N°119 TTE.PEDRO E.ARAMBURU', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años', 'TUIZON', 'GENERAL ANGEL V PEÑALOZA', 'RUTA PCIAL.N°30 KM.7 , (F5385)', ''),
(205, 4600354, 0, 'ESC.N°279 NIÑAS DE AYOHUMA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años', 'TASQUIN', 'GENERAL ANGEL V PEÑALOZA', 'TASQUIN , (F5385)', ''),
(206, 4600356, 0, 'ESC.N°078', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años', 'ALCAZAR', 'GENERAL ANGEL V PEÑALOZA', 'ALCAZAR , (F5385)', ''),
(207, 4600357, 0, 'ESC.N°335', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años', 'REPRESA DE LA PUNTA', 'INDEPENDENCIA', 'RUTA PCIAL.Nº150 KM.64 , (F5386)', ''),
(208, 4600358, 0, 'ESC.N°368 ANGELA DEL ROSARIO DIAZ DE GORDILLO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'PAGANZO', 'INDEPENDENCIA', 'RUTA PCIAL.N°150 KM.46 , (F5386)', ''),
(209, 4600359, 0, 'ESC.N°296 FRAY CAYETANO RODRIGUEZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'AGUANGO', 'INDEPENDENCIA', 'AGUANGO , (F5386)', ''),
(210, 4600360, 0, 'ESC.N°193 JUAN RAMON CARRIZO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'LA TORRE', 'INDEPENDENCIA', 'LA TORRE , (F5386)', ''),
(211, 4600361, 0, 'ESC.N°020 AZUCENA DE LAS MERCEDES BAZAN DE AQUINES', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  8', 'Común - Primaria de 7 años', 'PATQUIA', 'INDEPENDENCIA', 'INDEPENDENCIA S/N°, (F5386)', '0380-4491805'),
(212, 4600362, 0, 'ESC.N°376 MARIA ANTONIETA NORIEGA DE LEDO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'SALINA DE BUSTO', 'INDEPENDENCIA', 'SALINAS DE BUSTO , (F5386)', ''),
(213, 4600364, 0, 'ESC.N°366', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LAS AGUADITAS', 'GENERAL ANGEL V PEÑALOZA', 'LAS AGUADITAS DE CARRIZAL , (F5385)', ''),
(214, 4600365, 0, 'ESC.N°346 GRAL.ANGEL VICENTE PEÑALOZA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'BAJO VERDE', 'GENERAL ANGEL V PEÑALOZA', 'BAJO VERDE , (F5385)', ''),
(215, 4600366, 0, 'ESC.N°391', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LAS LOMITAS', 'GENERAL ANGEL V PEÑALOZA', 'LAS LOMITAS , (F5385)', ''),
(216, 4600367, 0, 'ESC.N°168 DE JORNADA COMPLETA CON ORIENTACION LABORAL DR. ALBERTO PAREDES URQUIZA', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  8', 'Común - Primaria de 7 años', 'PUNTA DE LOS LLANOS', 'GENERAL ANGEL V PEÑALOZA', 'PUBLICA 12, (F5384)', '429687'),
(217, 4600368, 0, 'ESC.N°171 SAN NICOLAS DE BARI', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'CARRIZAL', 'GENERAL ANGEL V PEÑALOZA', 'CARRIZAL , (F5385)', ''),
(218, 4600369, 0, 'ESC.N°311 DOCTOR MANUEL ANTONIO ACEVEDO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'EL MONTE', 'GENERAL ANGEL V PEÑALOZA', 'RUTA PCIAL.N°29 , (F5385)', ''),
(219, 4600370, 0, 'ESC.N°318 CHACHO PEÑALOZA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'SAN RAMON', 'GENERAL ANGEL V PEÑALOZA', 'RUTA PCIAL.N°27 Y RUTA PCIAL.N°28 , (F8385)', ''),
(220, 4600372, 0, 'ESC.N°149 ING.JUAN MELIS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'EL ABRA', 'GENERAL SAN MARTIN', 'EL ABRA , (F5473)', ''),
(221, 4600374, 0, 'ESC.N°357', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'ENTRE RIOS', 'GENERAL SAN MARTIN', 'ENTRE RIOS , (F5471)', ''),
(222, 4600375, 0, 'ESC.N°374', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'LA REPRESITA', 'GENERAL SAN MARTIN', 'LA REPRESITA , (F5471)', ''),
(223, 4600376, 0, 'ESC.N°148 FRANCISCA CEBALLOS DE AZCURRA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'CORRAL DE ISAAC', 'GENERAL SAN MARTIN', 'CORRAL DE ISAAC , (F5471)', ''),
(224, 4600377, 0, 'ESC.N°116 HORTENCIA OLIVERA DE MERCADO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'NUEVA ESPERANZA', 'GENERAL SAN MARTIN', 'NUEVA ESPERANZA , (F5473)', ''),
(225, 4600378, 0, 'ESC.N°229', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años', 'EL BUEN RETIRO', 'GENERAL SAN MARTIN', 'EL BUEN RETIRO , (F5473)', ''),
(226, 4600379, 0, 'ESC.N°283 DAMAS MENDOCINAS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años', 'EL BALDE DE LA VIUDA', 'GENERAL SAN MARTIN', 'EL BALDE DE LA VIUDA , (F5473)', ''),
(227, 4600382, 0, 'ESC.N°094 EDUARDO DE LA FUENTE', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años', 'SAN RAFAEL', 'GENERAL SAN MARTIN', 'SAN RAFAEL , (F5471)', '');
INSERT INTO `escuelas_primarias` (`Id`, `Cue`, `Anexo`, `Nombre`, `Estado`, `Sector`, `Categoria`, `Ambito`, `Sede`, `OfertaTipo`, `Localidad`, `Departamento`, `Domicilio`, `Teléfono`) VALUES
(228, 4600383, 0, 'ESC.N°390', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'TRES DE MAYO', 'GENERAL SAN MARTIN', 'TRES DE MAYO , (F5473)', ''),
(229, 4600384, 0, 'ESC.N°216', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA CONSULTA', 'ROSARIO VERA PEÑALOZA', 'LA CONSULTA , (F5470)', ''),
(230, 4600385, 0, 'ESC.N°213', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'EL DIVISADERO', 'ROSARIO VERA PEÑALOZA', 'EL DIVISADERO , (F5471)', ''),
(231, 4600386, 0, 'ESC.N°096 17 DE AGOSTO DE 1850', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'LA JARILLA', 'ROSARIO VERA PEÑALOZA', 'LA JARILLA , (F5471)', ''),
(232, 4600388, 0, 'ESC.N°180 ELVA ANGELA AGUILAR DE AGUILAR', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SAN JOSE', 'ROSARIO VERA PEÑALOZA', 'SAN JOSE , (F5470)', ''),
(233, 4600389, 0, 'ESC.N°099 MAESTRO ANGEL MANUEL GRANILLO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SAN ISIDRO', 'ROSARIO VERA PEÑALOZA', 'SAN ISIDRO S/N°, (F5471)', ''),
(234, 4600390, 0, 'ESC.N°097 NELLY CABRAL DE AGUILAR', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'EL TALA', 'ROSARIO VERA PEÑALOZA', 'EL TALA , (F5470)', ''),
(235, 4600391, 0, 'ESC.N°173', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'AGUA BLANCA', 'ROSARIO VERA PEÑALOZA', 'AGUA BLANCA , (F5471)', ''),
(236, 4600392, 0, 'ESC.N°098', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Primaria de 7 años', 'EL TOTORAL', 'ROSARIO VERA PEÑALOZA', 'RUTA PCIAL.N°29 , (F5471)', ''),
(237, 4600394, 0, 'ESC.N°115 MARIA TERESITA AZCURRA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA CALLANA', 'ROSARIO VERA PEÑALOZA', 'LA CALLANA , (F5470)', ''),
(238, 4600395, 0, 'ESC.N°227', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'EL CARDON', 'ROSARIO VERA PEÑALOZA', 'EL CARDON , (F5470)', ''),
(239, 4600396, 0, 'ESC.N°131', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'ALTO BAYO', 'ROSARIO VERA PEÑALOZA', 'ALTO BAYO , (F5470)', ''),
(240, 4600397, 0, 'ESC.N°163 MARIA MERCEDES ACHAVAL DE GODOY', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Primaria de 7 años', 'VALLE HERMOSO', 'ROSARIO VERA PEÑALOZA', 'VALLE HERMOSO , (F5471)', ''),
(241, 4600398, 0, 'ESC.N°016 JUAN RAMIREZ DE VELASCO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Primaria de 7 años', 'CHEPES', 'ROSARIO VERA PEÑALOZA', 'VILLA CHEPES , (F5471)', ''),
(242, 4600399, 0, 'ESC.N°184', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SANTA CRUZ', 'ROSARIO VERA PEÑALOZA', 'RUTA NAC.N°141 , (F5471)', ''),
(243, 4600400, 0, 'ESC.N°120 MAESTRA DE LA PATRIA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'ATILES', 'GENERAL JUAN F QUIROGA', 'RUTA PCIAL.N°29 , (F5385)', ''),
(244, 4600401, 0, 'ESC.N°090', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LOMA LARGA', 'GENERAL JUAN F QUIROGA', 'RUTA PCIAL.N°28 , (F5385)', ''),
(245, 4600402, 0, 'ESC.N°315 DR.TEODORO SANCHEZ DE BUSTAMANTE', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'UNQUILLAL', 'GENERAL JUAN F QUIROGA', 'RUTA PCIAL.N°31 , (F5385)', ''),
(246, 4600403, 0, 'ESC.N°388', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'RIO DE LAS CAÑAS', 'GENERAL JUAN F QUIROGA', 'RIO DE LAS CAÑAS , (F5385)', ''),
(247, 4600405, 0, 'ESC.N°183 EL CHACHO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Primaria de 7 años', 'LAS BARRANCAS', 'GENERAL JUAN F QUIROGA', 'LAS BARRANCAS , (F5475)', ''),
(248, 4600406, 0, 'ESC.N°219', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'RODEO GRANDE', 'ROSARIO VERA PEÑALOZA', 'RODEO GRANDE , (F5470)', ''),
(249, 4600407, 0, 'ESC.N°310 DR.ESTEBAN A.GASCON', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SAN PEDRO', 'GENERAL JUAN F QUIROGA', 'SAN PEDRO , (F5385)', ''),
(250, 4600408, 0, 'ESC.N°105 ANFILOQUIA VELARDEZ DE GOMEZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'TUANI', 'GENERAL JUAN F QUIROGA', 'TUANI , (F5385)', ''),
(251, 4600410, 0, 'ESC.N°161 DR.FRANCISCO BAIGORRI', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  5', 'Común - Primaria de 7 años', 'DESIDERIO TELLO', 'ROSARIO VERA PEÑALOZA', 'JUAN FACUNDO QUIROGA S/N°, (F5474)', ''),
(252, 4600411, 0, 'ESC.N°384', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL TOTORAL', 'ROSARIO VERA PEÑALOZA', 'PARAJE EL TOTORAL , (F5470)', ''),
(253, 4600418, 0, 'ESC.N°223', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'SAN PEDRO', 'GENERAL OCAMPO', 'SAN PEDRO , (F5274)', ''),
(254, 4600419, 0, 'ESC.N°222 HERIBERTO GONZALEZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  13', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'SAN JOSE', 'GENERAL OCAMPO', 'SAN JOSE , (F5275)', ''),
(255, 4600420, 0, 'ESC.N°087 SERGIO SIMEON ROSA SOSA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LOS ALANIZ', 'GENERAL OCAMPO', 'LOS ALANICES , (F5275)', ''),
(256, 4600421, 0, 'ESC.N°102', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'EL FRAILE', 'GENERAL OCAMPO', 'EL FRAILE S/Nº, (F5274)', ''),
(257, 4600422, 0, 'ESC.N°360', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'LA RIPIEDRA', 'GENERAL OCAMPO', 'LA RIPIERA , (F5274)', ''),
(258, 4600423, 0, 'ESC.N°234', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'AGUADITA DE LOS PERALTA', 'GENERAL OCAMPO', 'AGUADITA DE LOS PERALTA , (F5275)', ''),
(259, 4600425, 0, 'ESC.N°100', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'LA ISLA', 'GENERAL OCAMPO', 'LA ISLA , (F5274)', ''),
(260, 4600426, 0, 'ESC.N°093', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'LOS TELLOS', 'GENERAL OCAMPO', 'LOS TELLOS , (F5274)', ''),
(261, 4600427, 0, 'ESC.N°220', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'LAS CORTADERAS', 'GENERAL OCAMPO', 'LAS CORTADERAS , (F5275)', ''),
(262, 4600431, 0, 'ESC.N°111', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'LA PLAYA', 'GENERAL OCAMPO', 'LA PLAYA , (F5385)', ''),
(263, 4600432, 0, 'ESC.N°101 ROSENDO ROMERO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'LA DORADA', 'GENERAL OCAMPO', 'LA DORADA , (F5275)', ''),
(264, 4600433, 0, 'ESC.N°156 DIRECTORA VITALIA B.DE LLANOS J.C.', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'AMBIL', 'GENERAL OCAMPO', 'AMBIL , (F5475)', '03826-496054C/P'),
(265, 4600434, 0, 'ESC.N°152', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'LOS MISTOLES', 'GENERAL OCAMPO', 'LOS MISTOLES , (F5383)', ''),
(266, 4600435, 0, 'ESC.N°196', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'EL CERCO', 'GENERAL OCAMPO', 'EL CERCO , (F5274)', ''),
(267, 4600436, 0, 'ESC.N°133', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL QUEMADO', 'GENERAL OCAMPO', 'EL QUEMADO , (F5275)', ''),
(268, 4600439, 0, 'ESC.N°385', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'RIO GRANDE', 'GENERAL OCAMPO', 'PARAJE RIO GRANDE , (F5274)', ''),
(269, 4600440, 0, 'ESC.N°013 ROSARIO VERA PEÑALOZA', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  3', 'Común - Primaria de 7 años', 'SANTA RITA DE CATUNA', 'GENERAL OCAMPO', 'SAN MARTIN S/N°, (F5275)', '03826-496309'),
(270, 4600441, 0, 'ESC.N°273 ALMIRANTE GUILLERMO BROWN', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'LA MARUJA', 'GENERAL OCAMPO', 'LA MARUJA , (F5275)', ''),
(271, 4600442, 0, 'ESC.N°211 MAESTRO RAMON EULOGIO BAZAN', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'SAN CRISTOBAL', 'GENERAL OCAMPO', 'SAN CRISTOBAL S/N°, (F5274)', ''),
(272, 4600443, 0, 'ESC.N°130', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'TORRECITAS', 'GENERAL OCAMPO', 'TORRECITAS , (F5275)', ''),
(273, 4600444, 0, 'ESC.N°086', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LOS AGUIRRES', 'GENERAL OCAMPO', 'LOS AGUIRRES , (F5275)', ''),
(274, 4600446, 0, 'ESC.N°081', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'ESQUINA GRANDE', 'GENERAL OCAMPO', 'ESQUINA GRANDE , (F5275)', ''),
(275, 4600447, 0, 'ESC.N°241', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'LOS BARRIALITOS', 'GENERAL OCAMPO', 'RUTA PCIAL N°31 , (F5274)', ''),
(276, 4600448, 0, 'ESC.N°158 POZO DEL MEDIO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'POZO DEL MEDIO', 'GENERAL OCAMPO', 'POZO DEL MEDIO , (F5274)', ''),
(277, 4600449, 0, 'ESC.N°113', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'REAL DEL CADILLO', 'ROSARIO VERA PEÑALOZA', 'RUTA NAC.N°141 , (F5470)', ''),
(278, 4600450, 0, 'ESC.N°035 MARIA ROSA TAPIA DE OROPEL', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Primaria de 7 años', 'VILLA CASANA', 'ROSARIO VERA PEÑALOZA', 'VILLA CASANA , (F5471)', ''),
(279, 4600451, 0, 'ESC.N°117 WOLF SCHCOLNIK', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'AGUA DE LA PIEDRA', 'ROSARIO VERA PEÑALOZA', 'AGUA DE LA PIEDRA , (F5470)', ''),
(280, 4600452, 0, 'ESC.N°138', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'MASCASIN', 'ROSARIO VERA PEÑALOZA', 'RUTA NAC.N°141 , (F5470)', ''),
(281, 4600453, 0, 'ESC.N°146', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'QUEBRADA DEL VALLECITO', 'ROSARIO VERA PEÑALOZA', 'QUEBRADA DEL VALLECITO , (F5470)', ''),
(282, 4600454, 0, 'ESC.N°332', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'CASAS VIEJAS', 'ROSARIO VERA PEÑALOZA', 'CASAS VIEJAS , (F5471)', ''),
(283, 4600455, 0, 'ESC.N°095 JOSE EUSEBIO TOLEDO VERA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'ÑOQUEVE', 'ROSARIO VERA PEÑALOZA', 'ÑOQUEVE , (F5470)', ''),
(284, 4600456, 0, 'ESC.N°126 EL BARRIAL', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'EL BARRIAL', 'ROSARIO VERA PEÑALOZA', 'EL BARRIAL , (F5470)', ''),
(285, 4600457, 0, 'ESC.N°034 ANGEL CUSTODIO PEREZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Primaria de 7 años', 'CHELCOS', 'ROSARIO VERA PEÑALOZA', 'JUAN FLORENTINO CACERES S/N°, (F5470)', ''),
(286, 4600458, 0, 'ESC.N°239 AGUEDA PIZARRO CUENCA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'LA CALERA', 'ROSARIO VERA PEÑALOZA', 'LA CALERA , (F5471)', ''),
(287, 4600459, 0, 'ESC.N°045', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Primaria de 7 años', 'EL POTRERILLO', 'ROSARIO VERA PEÑALOZA', 'EL POTRERILLO , (F5475)', ''),
(288, 4600460, 0, 'ESC.N°132', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'EL RODEO', 'ROSARIO VERA PEÑALOZA', 'EL RODEO , (F5470)', '03821-15667404'),
(289, 4600460, 1, 'ESC.N°132 EL RODEO ANEXO LA AGUADA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'LA AGUADA', 'ROSARIO VERA PEÑALOZA', 'LA AGUADA , (F5470)', ''),
(290, 4600461, 0, 'ESC.N°128', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA LAGUNA', 'ROSARIO VERA PEÑALOZA', 'LA LAGUNA , (F5470)', ''),
(291, 4600463, 0, 'ESC.N°221 JULIAN NOÉ AGUILAR', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  5', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'AGUA DE AGUIRRE', 'ROSARIO VERA PEÑALOZA', 'AGUA DE AGUIRRE , (F5470)', ''),
(292, 4600464, 0, 'ESC.N°322 JOSE IGNACIO THAMES', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'VIRGEN DEL VALLE', 'GENERAL SAN MARTIN', 'VIRGEN DEL VALLE , (F5473)', '03821-627672'),
(293, 4600466, 0, 'ESC.N°208 EVA PERON', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'PATQUIA VIEJO', 'INDEPENDENCIA', 'PATQUIA VIEJO , (F5386)', ''),
(294, 4600471, 0, 'ESC.N°114 NICOLAS LANZILLOTTO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  5', 'Común - Primaria de 7 años', 'CHEPES', 'ROSARIO VERA PEÑALOZA', 'HUGO ANGEL LLANOS S/N°, SANTA RITA (F5470)', '03821-429020'),
(295, 4600474, 0, 'ESC.N°104', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Primaria de 7 años', 'LOS ALGARROBOS', 'GENERAL JUAN F QUIROGA', 'LOS ALGARROBOS , (F5385)', '-481001 C.P'),
(296, 4600475, 0, 'ESC.N°347 JUAN MANUEL DE ROSAS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'ILLISCA', 'GENERAL JUAN F QUIROGA', 'ILLISCA , (F5471)', ''),
(297, 4600476, 0, 'ESC.N°050', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'SALANA', 'GENERAL JUAN F QUIROGA', 'SALANA , (F5385)', ''),
(298, 4600477, 0, 'ESC.N°255 DR.JOAQUIN V.GONZALEZ', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  14', 'Común - Primaria de 7 años', 'CHEPES', 'ROSARIO VERA PEÑALOZA', 'ROQUE SAENZ PEÑA S/N°, KOLPING (F5470)', '03821-429136'),
(299, 4600479, 0, 'ESC.NORMAL SUPERIOR JUAN FACUNDO QUIROGA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  14', 'Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'CHEPES', 'ROSARIO VERA PEÑALOZA', 'CASTRO BARROS 550, LAS TOSCAS (F5470)', '03821-429110'),
(300, 4600485, 0, 'ESC.N°015 PCIA.DE SAN LUIS', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  3', 'Común - Primaria de 7 años', 'MILAGRO', 'GENERAL OCAMPO', 'GRAL.PAZ 249, (F5274)', '03826-497603'),
(301, 4600486, 0, 'ESC.N°207 CAUDILLOS RIOJANOS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años', 'CUATRO ESQUINAS', 'GENERAL SAN MARTIN', 'CUATRO ESQUINAS , (F5473)', ''),
(302, 4600487, 0, 'ESC.N°080 PROVINCIA DE LA PAMPAJ.C.', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  8', 'Común - Primaria de 7 años', 'TAMA', 'GENERAL ANGEL V PEÑALOZA', '7 DE OCTUBRE S/N, CENTRO (F5385)', '03826-490334'),
(303, 4600489, 0, 'ESC.N°327 DR.ARTURO M.BASS', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'COLOZOCAN', 'GENERAL ANGEL V PEÑALOZA', 'COLOZACAN , (F5385)', ''),
(304, 4600490, 0, 'ESC.N°079 AMIGO DEVOTO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años', 'CHILA', 'GENERAL ANGEL V PEÑALOZA', 'RUTA PCIAL.N°30 , (F5385)', ''),
(305, 4600493, 0, 'ESC.N°186 CORONEL FELIPE VARELAJ.C.', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  11', 'Común - Primaria de 7 años', 'LOMA BLANCA', 'GENERAL BELGRANO', 'EX.RUTA 79.AVDA.ANGEL VICENTE PEÑALOZA , (F5383)', ''),
(306, 4600494, 0, 'ESC.NORMAL SUPERIOR REPUBLICA DE HAITI', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  11', 'Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años , Común - Itinerario formativo', 'OLTA', 'GENERAL BELGRANO', 'JOSE S.SALINAS 388, INDUSTRIA (F5383)', '03826-491364'),
(307, 4600496, 0, 'ESC.N°040', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Primaria de 7 años', 'AMANA', 'INDEPENDENCIA', 'AMANA , (F5386)', '0380-4471001C/P'),
(308, 4600497, 0, 'ESC.N°285 MARIA SANCHEZ DE THOMPSON', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'LOS COLORADOS', 'INDEPENDENCIA', 'LOS COLORADOS , (F5386)', ''),
(309, 4600498, 0, 'ESC.N°027 GOBERNACION DE STA.CRUZJ.C.', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  4', 'Común - Primaria de 7 años', 'ULAPES', 'GENERAL SAN MARTIN', 'AVDA.SAN MARTIN S/N°, CENTRO (F5473)', '0380-4491830'),
(310, 4600499, 0, 'ESC.N°139', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  4', 'Común - Primaria de 7 años', 'KILOMETRO 14', 'GENERAL SAN MARTIN', 'KILOMETRO 14 , (F5473)', ''),
(311, 4600500, 0, 'ESC.N°354', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  14', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'LAS TOSCAS', 'ROSARIO VERA PEÑALOZA', 'SAN ANTONIO DE LAS TOSCAS , (F5470)', ''),
(312, 4600501, 0, 'ESC.N°091 GOBERNACION DEL CHUBUT', 'Activo', 'Estatal', '2°', 'R.A. ', 'ZONA  10', 'Común - Primaria de 7 años', 'PORTEZUELO', 'GENERAL JUAN F QUIROGA', 'RUTA PCIAL.N°28 , (F5385)', ''),
(313, 4600503, 0, 'ESC.N°089', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'LA CHIMENEA', 'GENERAL JUAN F QUIROGA', 'LA CHIMENEA , (F5385)', ''),
(314, 4600504, 0, 'ESC.N°351', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'CASANGATE', 'GENERAL JUAN F QUIROGA', 'CASANGATE , (F5385)', ''),
(315, 4600505, 0, 'ESC.N°030 MAESTRO CARLOS DARIO TORRES', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SOLCA', 'GENERAL JUAN F QUIROGA', 'SOLCA , (F5385)', '482001 C/P'),
(316, 4600506, 0, 'ESC.N°380', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'TRES CRUCES', 'GENERAL JUAN F QUIROGA', 'TRES CRUCES , (F5385)', ''),
(317, 4600507, 0, 'ESC.N°181 NOGAL AGUERO CISTERNA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'EL POTRERO', 'GENERAL JUAN F QUIROGA', 'EL POTRERO , (F5385)', ''),
(318, 4600508, 0, 'ESC.N°082 RAUL ORIHUELA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Primaria de 7 años', 'NACATE', 'GENERAL JUAN F QUIROGA', 'PASAJE NIÑO ALCALDE S/N°, SANTA ROSA (F5385)', '481001 C/P'),
(319, 4600509, 0, 'ESC.N°083', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Primaria de 7 años', 'MOLLACO', 'GENERAL JUAN F QUIROGA', 'MOLLACO , (F5385)', ''),
(320, 4600510, 0, 'ESC.N°145 AMELIA RAMONA TORRES', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Primaria de 7 años', 'EL RETAMAL', 'GENERAL JUAN F QUIROGA', 'EL RETAMAL , (F5389)', ''),
(321, 4600511, 0, 'ESC.N°393', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Primaria de 7 años', 'BALDE DE AMAYA', 'GENERAL JUAN F QUIROGA', 'BALDE DE AMAYA , (F5385)', ''),
(322, 4600512, 0, 'ESC.N°274 MARCOS SASTRE', 'Activo', 'Estatal', '3°', 'R.A. ', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'PULUCHAN', 'GENERAL JUAN F QUIROGA', 'PULUCHAN , (F5385)', ''),
(323, 4600513, 0, 'ESC.N°049 BRIGADIER JUAN FACUNDO QUIROGA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'SAN ANTONIO', 'GENERAL JUAN F QUIROGA', 'SAN ANTONIO , (F5385)', ''),
(324, 4600514, 0, 'ESC.N°313 MARIANO BOEDO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'TOSQUEA', 'GENERAL JUAN F QUIROGA', 'TOSQUEA , (F5385)', ''),
(325, 4600518, 0, 'ESC.N°269 BRIGADIER JUAN FACUNDO QUIROGA', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  10', 'Común - Primaria de 7 años', 'MALANZAN', 'GENERAL JUAN F QUIROGA', 'AVDA.LOS CAUDILLOS S/N°, ANAJUACIO (F5385)', '480150'),
(326, 4600520, 0, 'ESC.N°085 FRAY MAMERTO ESQUIU', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  11', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'OLPAS', 'GENERAL OCAMPO', 'CASTRO BARROS S/N°, (F5275)', ''),
(327, 4600523, 0, 'ESC.N°281 25 DE MAYOJ.C.', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'COLONIA ORTIZ DE OCAMPO', 'GENERAL OCAMPO', 'PUBLICA S/N°, (F5275)', '03826-496054C/P'),
(328, 4600524, 0, 'ESC.N°267 GRAL.ANGEL VICENTE PEÑALOZAJ.C.', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  11', 'Común - Primaria de 7 años', 'OLTA', 'GENERAL BELGRANO', 'SAN MARTIN 150, LA PLAZA (F5383)', ''),
(329, 4600530, 0, 'ESC.PRIVADA GABRIELA MISTRAL', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  2A', 'Común - Jardín maternal , Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'CHILECITO', 'CHILECITO', 'PELAGIO B.LUNA 166, CENTRO (F5360)', '03825-422553'),
(330, 4600532, 0, 'ESC.N°364', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1D', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'EL TALA', 'CAPITAL', 'EX RUTA NAC.N°38 KM.30 , (F5300)', ''),
(331, 4600533, 0, 'ESC.N°088 ANDREA PICON ZALAZAR', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'SAN RAMON', 'GENERAL OCAMPO', 'SAN RAMON , (F5274)', ''),
(332, 4600534, 0, 'ESC.N°206', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  3', 'Común - Primaria de 7 años', 'LA BANDERITA', 'GENERAL OCAMPO', 'LA BANDERITA , (F5274)', ''),
(333, 4600535, 0, 'ESC.N°056 GRAL.MANUEL BELGRANO', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1B', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'TALAMUYUNA', 'CAPITAL', 'PUBLICA S/N°, (F5300)', '0380-4431100'),
(334, 4600536, 0, 'ESC.N°140 MARIA ESTELA TORRES DE SUFAN', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  6', 'Común - Primaria de 7 años', 'AGUA BLANCA', 'CASTRO BARROS', 'RUTA PCIAL.N°75 KM.72 , (F5301)', ''),
(335, 4600537, 0, 'ESC.N°367', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SANTA MARIA', 'GENERAL JUAN F QUIROGA', 'SANTA MARIA S/N°, (F5385)', ''),
(336, 4600538, 0, 'ESC.N°400', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  8', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'LA MESADA', 'INDEPENDENCIA', 'LA MESADA , (F5386)', ''),
(337, 4600570, 0, 'INSTITUTO SUPERIOR ALBERT EINSTEIN', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1E', 'Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años , Común - Itinerario formativo , Adultos - Formación Profesional', 'LA RIOJA', 'CAPITAL', 'ALBERT EINSTEIN S/N°, VARGAS (F5300)', '0380-4434663'),
(338, 4600578, 0, 'ESC.PRIVADA FEDERALITO', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1D', 'Común - Jardín maternal , Común - Jardín de infantes , Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'SANTIAGO DEL ESTERO 259, CENTRO (F5300)', '0380-4462137'),
(339, 4600580, 0, 'ESC.PRIVADA I.A.E.S. (NIVEL INICIAL Y EGB 1Y2)', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1B', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'BAZAN Y BUSTOS 735, CENTRO (F5300)', '0380-4436056'),
(340, 4600581, 0, 'ESC.N°316 ANTONIO GONZALEZ BALCARCE', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1A', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'SAN NICOLAS', 'CAPITAL', 'RUTA NAC.N°25 KM.80 , (F5300)', ''),
(341, 4600583, 0, 'ESC.MUNICIPAL N°1JUAN MANUEL FANGIO', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1A', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'NICOLAS DAVILA S/N°, HOSPITAL (F5300)', '0380-4474256'),
(342, 4600696, 0, 'INSTITUTO PRIVADO CRECER', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  6', 'Común - Jardín maternal , Común - Jardín de infantes , Común - Primaria de 7 años', 'AIMOGASTA', 'ARAUCO', 'HIGINIO ALBINI 458, CENTRO (F5310)', '0380-4383138'),
(343, 4600699, 0, 'ESC.MUNICIPAL N°2JUAN DOMINGO PERON', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  1F', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'RUTA NAC.N°75 KM 15 , LA QUEBRADA (F5300)', ''),
(344, 4600700, 0, 'ESC.N°401 SAN ANTONIO', 'Activo', 'Estatal', '2°', 'URBANA', 'ZONA  6', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'AIMOGASTA', 'ARAUCO', 'CASIMIRO GODOY S/Nº, SAN ANTONIO (F5310)', '03827-429021'),
(345, 4600721, 0, 'ESC.PRIVADA GABRIELA MISTRAL (JORNADA SIMPLE)', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1F', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'LA RIOJA', 'CAPITAL', 'ADOLFO E.DAVILA 264, CENTRO (F5300)', '0380-4463035'),
(346, 4600742, 0, 'ESC.N°358 JUAN JULIO IBAÑEZ', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  1C', 'Común - Primaria de 7 años', 'ESTANCIA SAN JOSE', 'CAPITAL', 'RUTA PCIAL.N°5 KM.70 , (F5300)', '0380-4455705'),
(347, 4600744, 0, 'COLEGIO PRIVADO SANTO TOMAS DE AQUINO', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1D', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'AVDA.JUAN DOMINGO PERON 635, CENTRO (F5300)', '0380-4435206'),
(348, 4600746, 0, 'ESC.N°291 PROF.SIXTO ALCIRO BRIZUELA', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  2A', 'Común - Primaria de 7 años', 'LAS HIGUERITAS', 'CHILECITO', 'PARAJE LAS HIGUERITAS , (F5360)', ''),
(349, 4600748, 0, 'COLEGIO PRIVADO SAN ANTONIO DE PADUA', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1B', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'ITUZAINGO S/N°, VARGAS (F5300)', '0380-4501738'),
(350, 4600750, 0, 'ESC. DE GESTION COMUNITARIA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1E', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'AVDA.LUIS VERNET S/N°, LUIS VERNET (F5300)', '0380-4427069'),
(351, 4600761, 0, 'COLEGIO TECNOLOGICO PROVINCIAL ING. LUIS AUGUSTO HUERGO', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1F', 'Común - Jardín maternal , Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'LA RIOJA', 'CAPITAL', 'SAN NICOLAS DE BARI (E) 1100, JOAQUIN V.GONZALEZ (F5300)', '0380-4430680/52'),
(352, 4600764, 0, 'ESC.N°403', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1A', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'CLODULFA OSAN S/N°, PARQUE INDUSTRIAL (F5300)', '0380-4468309'),
(353, 4600778, 0, 'ESC.PRIVADA JEAN PIAGET', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  2A', 'Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'CHILECITO', 'CHILECITO', 'BELISARIO LOBOS 67, (F5360)', '03825-424401'),
(354, 4600791, 0, 'ESC.N°402 MASCASIN', 'Activo', 'Estatal', '3°', 'R.D.', 'ZONA  10', 'Común - Primaria de 7 años , Común - Solo Secundaria Básica req. 7 años', 'MASCASIN', 'GENERAL JUAN F QUIROGA', 'RUTA PCIAL.N°28 , (F5300)', ''),
(355, 4600799, 0, 'CENTRO EDUCATIVO N°406 ROSARIO OCAMPO DE IRIBARREN', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2B', 'Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años , Adultos - Formación Profesional', 'NONOGASTA', 'CHILECITO', '21 DE SETIEMBRE S/N°, HIPODROMO (F5372)', '03825-499712'),
(356, 4600800, 0, 'ESC.N°405 PADRE ARMANDO AMIRATI', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1A', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'CIUDAD DE RAWSON S/N°, NUEVO ARGENTINO (F5300)', '4468494'),
(357, 4600814, 0, 'ESC.N°407 ROFESOR DELFOR TAPIA', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1E', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'PROYECTADA N°5 , ALUNAI (F5300)', '0380-4452464'),
(358, 4600822, 0, 'ESC.N°408', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1F', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'EL CARDON S/N°, FALDEO DEL VELASCO SUR (F5300)', '0380-4480580'),
(359, 4600823, 0, 'ESC.N°409', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'LOMA BLANCA S/N°, INFANTERIA II (F5300)', '4468523'),
(360, 4600824, 0, 'INSTITUTO PRIVADO ARCO IRIS', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  1B', 'Común - Jardín maternal , Común - Jardín de infantes , Común - Primaria de 7 años , Común - Secundaria Completa req. 7 años', 'LA RIOJA', 'CAPITAL', 'SAN NICOLAS DE BARI (O) 1089, CENTRO (F5300)', '4372950'),
(361, 4600828, 0, 'ESC.N°264 PBRO.LUIS TORRES MOLINA', 'Activo', 'Privado', '1°', 'URBANA', 'ZONA  12', 'Común - Jardín de infantes , Común - Primaria de 7 años', 'CHAMICAL', 'CHAMICAL', 'CARLOS DE DIOS MURIAS 176, CENTRO (F5380)', '03826-423526'),
(362, 4600832, 0, 'ESC.N°410', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1C', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'SIN NOMBRE , LOS BULEVARES (F5300)', ''),
(363, 4600843, 0, 'ESC.N°412', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1B', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'AVDA.RAMON NAVARRO Y JARILLA , URBANO I (F5300)', ''),
(364, 4600845, 0, 'ESC.N°413', 'Activo', 'Estatal', '1°', 'R.A. ', 'ZONA  4', 'Común - Primaria de 7 años', 'ULAPES', 'GENERAL SAN MARTIN', 'MARIANO MORENO S/N, (F5300)', ''),
(365, 4600848, 0, 'ESC.N°411', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1C', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'LUIS AMAYA S/N°, ASODIMO (F5300)', ''),
(366, 4600851, 0, 'ESC.N°414', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  2A', 'Común - Primaria de 7 años', 'CHILECITO', 'CHILECITO', '7 DE AGOSTO S/N°, ALTOS DE CHILECITO (F5360)', ''),
(367, 4600859, 0, 'Esc.N°415', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  12', 'Común - Primaria de 7 años', 'CHAMICAL', 'CHAMICAL', 'Publica , VICTORIA ROMERO (5380)', ''),
(368, 4600880, 0, 'ESC.N°416', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1D', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'PROYECTADA S/N° , URBANO 40', ''),
(369, 4600890, 0, 'ESC.417', 'Activo', 'Estatal', '1°', 'URBANA', 'ZONA  1F', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'MANZANA 1278 , NESTOR KIRCHNER (5300)', ''),
(370, 4600896, 0, 'ESCUELA RURAL MUNICIPAL N°3', 'Activo', 'Estatal', '3º', 'R.D.', 'ZONA  1A', 'Común - Primaria de 7 años', 'PUERTO ALEGRE', 'CAPITAL', ',', ''),
(371, 4600901, 0, 'ESCUELA N°418 B°LOS OBREROS', 'Activo', 'Estatal', '1º', 'URBANA', 'ZONA  1E', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'CARLOS CARBALLO S/N , LOS OBREROS (5300)', '4798256'),
(372, 4600908, 0, 'ESCUELA COMÚN PARA EL NIVEL PRIMARIO DE GESTIÓN PRIVADA LILIANA AGRA', 'Activo', 'Privado', '1º', 'URBANA', 'ZONA  1B', 'Común - Primaria de 7 años', 'LA RIOJA', 'CAPITAL', 'JUJUY 155, CENTRO (5300)', '4782168');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituciones`
--

CREATE TABLE `instituciones` (
  `id` int NOT NULL,
  `tipo` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `categoria` varchar(2) DEFAULT NULL,
  `cue` varchar(7) DEFAULT NULL,
  `nombre` varchar(47) DEFAULT NULL,
  `domicilio` varchar(55) DEFAULT NULL,
  `turno` varchar(5) DEFAULT NULL,
  `localidad` varchar(23) DEFAULT NULL,
  `porcentaje_zona` varchar(5) DEFAULT NULL,
  `zona` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instituciones`
--

INSERT INTO `instituciones` (`id`, `tipo`, `categoria`, `cue`, `nombre`, `domicilio`, `turno`, `localidad`, `porcentaje_zona`, `zona`) VALUES
(1, '', '', '', 'CASA CENTRAL', '\'', 'M-T', 'LA RIOJA', '', 'B'),
(2, 'P.H.', '1º', '4600246', 'PABLO PIZZURNO', 'GREGORIO CHAVEZ Nº 150 ', 'M-T', 'LOS SARMIENTOS', '10', 'D'),
(3, '', '1º', '4600310', 'TIMOREO GORDILLO', 'CAMINO DEL PEREGRINO S/N', 'M-T', 'MALLIGASTA', '30', 'D'),
(4, 'P.H.', '1º', '4600178', 'JOAQUIN V. GONZALEZ', 'JOAQUIN VICTOR GONZALEZ S/N', 'M-T', 'NONOGASTA', '30', 'D'),
(5, 'J.C.', '1º', '4600120', 'PCIA. DE CORDOBA', 'AVDA. SAN PEDRO S/N', 'M-T', 'FAMATINA', '30', 'E'),
(6, 'EMER', '3º', '4600121', 'DIRECTOR MIGUEL ROBADOR', 'CALLE PRINCIPAL S/N', 'M-T', 'PLAZA VIEJA', '70', 'E'),
(7, '', '1º', '4600318', 'SARGENTO JUAN B. CABRAL', 'AVDA. SAN BUENAVENTURA ', 'M-T', 'VICHIGASTA', '30', 'D'),
(8, 'EMER', '3º', '4600118', 'RAMON A. LUJAN', 'BAJO CARRIZAL', 'M-T', 'BAJO CARRIZAL', '55', 'E'),
(9, '', '1º', '4600250', 'PCIA. DE FORMOSA', 'SAN MARTIN S/N ', 'M', 'VILLA CASTELLI', '70', 'G'),
(10, '', '1º', '4600324', 'HIPOLITO IRIGOYEN', 'CARLOS SAUL MENEM', 'M', 'VINCHINA', '55', 'K'),
(11, '', '1º', '4600076', 'GREGORIA M. DE SAN MARTIN', 'CALLE PUBLICA S/N', 'M', 'MACHIGASTA', '30', 'A'),
(12, '', '1º', '4600067', 'PCIA. DE TUCUMAN', 'MARIA POZZOLI Bº 10 DE MAYO', 'M-T', 'SANAGASTA', '30', 'P'),
(13, '', '3º', '4600304', 'MAESTRO FRANCISCO TORRES MOLINA', 'SANTA LUCIA', 'M', 'SANTA LUCIA', '70', 'L'),
(14, '', '1º', '4600440', 'ROSARIO VERA PEÑALOZA', 'SAN MARTIN S/N ', 'M', 'CATUNA', '40', 'I'),
(15, '', '1º', '4600305', 'JUSTO JOSE DE URQUIZA', 'SAN MARTIN Nº 665 ', 'M', 'CHAÑAR', '40', 'F'),
(16, '', '1º', '4600485', 'PCIA. DE SAN LUIS', 'GENERAL PAZ Nº 279', 'M-T', 'MILAGRO', '40', 'I'),
(17, '', '3º', '4600398', 'JUAN R. DE VELAZCO', 'VILLA CHEPES', 'M', 'VILLA CHEPES', '55', 'O'),
(18, '', '1º', '4600091', 'LA RIOJA ESPAÑOLA', 'AVDA. SAN FRANCISCO KM 3 1/2 ', 'M', 'LA RIOJA', '', 'B'),
(19, '', '1º', '4600204', 'ALICIA CARRIZO ', 'HONORATO GUERRERO SUR Bº LOS PALACIOS', 'M-T', 'VILLA UNION', '40', 'H'),
(20, 'J.C.', '1º', '4600143', 'DOMINGO MATHEU', 'AVDA. CASTRO BARROS S/N ', 'M-T', 'AMINGA', '30', 'C'),
(21, '', '1º', '4600361', 'AZUCENA DE LAS M. BAZAN DE AQUINES', 'INDEPENDENCIA S/N', 'M-T', 'PATQUIA', '30', 'H'),
(22, '', '2º', '4600160', 'FRONTERAS ARGENTINAS', 'EMETERIO LAUTRE', 'M', 'SANTA CLARA', '100', 'H'),
(23, 'EMER', '3º', '4600294', 'JUAN FACUNDO SOTOMAYOR', 'ESQUINA DEL SUD', 'M', 'ESQUINA DEL SUD', '100', 'F'),
(24, '', '3º', '4600127', 'VICTOR ARMANDO LEDEZMA', 'RUTA NAC. Nº 75', 'M', 'LAS PEÑAS', '70', 'C'),
(25, 'J.C.', '1º', '4600105', 'PCIA. DEL NEUQUEN', 'SALICAS', 'M-T', 'SALICAS', '30', 'R'),
(26, '', '', '', '', '', '', 'COMANDANTE LEAL', '55', 'B'),
(27, 'EMER', '3º', '4600278', 'ESCUELA 26', 'CORTADERAS', 'M', 'CORTADERAS', '70', 'F'),
(28, 'J.C.', '1º', '4600498', 'GOBERNADOR SANTA CRUZ', 'SAN MARTIN S/N ', 'M-T', 'ULAPES', '30', 'J'),
(29, '', '1º', '4600227', 'HUMBRETO ALEJANDRO HERRERA ROBLEDO', 'CALLE SIN NOMBRE', 'M-T', 'GUANDACOL', '100', 'H'),
(30, '', '1º', '4600248', 'PCIA. DE MENDOZA', 'Bº LA CALLE S/N', 'M', 'SAÑOGASTA', '30', 'D'),
(31, '', '3º', '4600505', 'ESCUELA 30', 'SOLCA', 'M', 'SOLCA', '70', 'N'),
(32, '', '3º', '4600261', 'PABLO M. LEAL', 'S/N', 'M-T', 'CHULO', '100', 'L'),
(33, '', '3º', '4600089', 'CAUDILLOS RIOJANOS', 'EL CEBOLLAR', 'M', 'EL CEBOLLAR', '55', 'B'),
(34, '', '3º', '4600111', 'PEDRO I. DE CASTRO BARROS', 'AVDA. CARLOS B. DEL MORAL S/N', 'M', 'ESTACION MAZAN', '40', 'A'),
(35, '', '3º', '4600457', 'ANGEL C. PEREZ', 'JUAN FLORENTINO CACERES S/N', 'M', 'CHELCOS', '55', 'O'),
(36, '', '3º', '4600450', 'MARIA ROSA TAPIA DE OROPEL', 'VILLA CASANA', 'M', 'VILLA CASANA', '100', 'O'),
(37, '', '3º', '4600117', 'ARMADA ARGENTINA', 'ANTINACO', 'M', 'ANTINACO', '100', 'E'),
(38, '', '1º', '4600189', 'PCIA. DE SANTA FE', 'CALLE SAAVEDRA S/N', 'M-T', 'LA RIOJA', '', 'B'),
(39, '', '', '', '', '', '', 'LA FLORIDA', '100', 'F'),
(40, '', '1º', '4600157', 'TIMOTEO GORDILLO', 'BULNES Nº 1140', 'M-T', 'LA RIOJA', '', 'B'),
(41, '', '3º', '4600496', 'MIS MONTAÑAS MINERAS', 'AMANA', 'M', 'AMANA', '100', 'M'),
(42, '', '2º', '4600296', 'BERNARDINO RIVADAVIA', 'RIVADAVIA S/N', 'M', 'VILLA CASTELLI', '70', 'G'),
(43, '', '3º', '4600348', 'STMA. VIRGEN DEL ROSARIO', 'SAN SOLANO', 'M', 'SAN SOLANO', '120', 'J'),
(44, 'EMER', '3º', '4600280', 'DIP. PROV. RICARDO C. FARIAS ', 'RUTA Nº 79 KM 202', 'M', 'LA AGUADA', '100', 'F'),
(45, 'J.C.', '2º', '4600151', 'FILOMENA NAVARRO DE GONDOLO', 'CHAUPIHUASI', 'M-T', 'CHAUPIHUASI', '30', 'R'),
(46, '', '3º', '4600459', 'ANTONIO HUGO CAMARGO', 'EL POTRERILLO', 'M', 'EL POTRERILLO', '120', 'O'),
(47, '', '3º', '4600349', 'MARIA MERCEDES COUCEIRO', 'PTO LOS CORNEJOS', 'M', 'PTO. DE LOS CORNEJOS', '100', 'J'),
(48, 'EMER', '3º', '4600141', 'EJERCITO ARGENTINO', 'ALTO CARRIZAL', 'M-T', 'ALTO CARRIZAL', '100', 'E'),
(49, 'EMER', '3º', '4600283', 'CANDELARIA ROSEMARY DIAZ', 'BELLA VISTA', 'M-T', 'BELLA VISTA', '70', 'L'),
(50, '', '3º', '4600513', 'BRIGADIER J.F. QUIROGA', 'SAN ANTONIO', 'M', 'SAN ANTONIO', '70', 'N'),
(51, '', '3º', '4600476', 'ESCUELA 50', 'S/N', 'M', 'SALANA', '120', 'N'),
(52, '', '2º', '4600045', 'PCIA. DE JUJUY', 'RESISTENCIA S/N ', 'M', 'ARAUCO', '30', 'A'),
(53, '', '', '', '', '', '', 'PASO SAN ISIDRO', '100', 'H'),
(54, '', '', '', '', '', '', 'EL CONDADO', '', 'B'),
(55, '', '1º', '4600026', 'PCIA. DE BUENOS AIRES', 'AVDA. LEANDRO N. ALEM S/N ', 'M-T', 'LA RIOJA', '', 'B'),
(56, '', '3º', '4600088', 'JOSE SANTIAGO PIOLI', 'RUTA 5 KM 80', 'M', 'LAS CATAS', '100', 'B'),
(57, '', '3º', '4600535', 'MANUEL BELGRANO', 'PUBLICA S/N ', 'M', 'ESTACION TALAMUYUNA', '70', 'B'),
(58, 'J.C.', '2º', '4600125', 'BERNARDINO RIVADAVIA', 'RUTA NACIONAL Nº 75 KM 771/2', 'M-T', 'PINCHAS', '30', 'C'),
(59, '', '', '', '', '', '', '', '', ''),
(60, '', '', '', '', '', '', '', '', ''),
(61, '', '', '', '', '', '', '', '', ''),
(62, '', '', '', '', '', '', 'UDPINANGO', '100', 'A'),
(63, 'J.C.', '1º', '4600139', 'SOBERANIA ARGENTINA', 'RUTA NACIONA Nº 40', 'M-T', 'LOS ROBLES', '30', 'R'),
(64, '', '3º', '4600102', 'MAESTRO GUILLERMO E.RIOS', 'SURIYACO', 'M', 'SURIYACO', '40/60', 'R'),
(65, 'J.C.', '1º', '4600150', 'JUSTO JOSE DE URQUIZA', 'SANTO DOMINGO S/N', 'M-T', 'PITUIL', '55', 'E'),
(66, 'J.C.', '1º', '4600135', 'YLDA MORENO DE ROBLES', 'B° LA PLAZA', 'M-T', 'CAMPANAS', '55', 'E'),
(67, 'EMER', '3º', '4600099', 'MAESTRO ANTONIO VEGA', 'RUTA NAC. Nº 78', 'M-T', 'SANTA CRUZ', '100', 'E'),
(68, 'EMER', '3º', '4600149', 'DOMINGA E. FUNES', 'RUTA N° 1', 'M-T', 'LA CUADRA', '100', 'E'),
(69, '', '3º', '4600168', 'ARTEMIO SALINAS', 'CALLE PRINCIPAL S/N', 'M', 'AICUÑA', '100', 'H'),
(70, '', '1º', '4600169', 'GERONIMO FLORES', 'AVDA. 24 DE SEPTIEMBRE', 'T', 'PAGANCILLO', '55', 'H'),
(71, '', '2º', '4600228', 'WOLF SCHOLNIK', 'LOS PALACIOS', 'M', 'LOS PALACIOS', '55', 'H'),
(72, '', '2º', '4600161', 'ANDREA PAEZ ORQUERA', 'ORTIZ DE OCAMPO S/N', 'M', 'BANDA FLORIDA', '70', 'H'),
(73, '', '3º', '4600253', 'DOMINGO F. SARMIENTO', 'LA BANDA', 'M', 'LA BANDA', '70', 'K'),
(74, 'J.C.', '1º', '4600322', 'VICENTE CALDERON', 'C.S. MENEM S/N', 'M-T', 'VINCHINA', '55', 'K'),
(75, '', '3º', '4600323', 'PCIA. DE SANTIAGO DEL ESTERO', 'ALTO JAGUE', 'M', 'ALTO JAGUE', '120', 'K'),
(76, '', '3º', '4600259', 'DELINA ELIZONDO', 'POLCA', 'M', 'POLCO', '40', 'L'),
(77, '', '3º', '4600284', 'PCIA. DE LA RIOJA', 'S/N', 'M', 'ESQUINA DEL NORTE', '100', 'L'),
(78, 'EMER', '3º', '4600292', 'ESCUELA 77', 'TALVA', 'M', 'TALVA', '100', 'F'),
(79, '', '3º', '4600356', 'ELVA FERNANDEZ DE SANCHEZ', 'PUBLICA S/N ', 'M', 'ALCAZAR', '70', 'S'),
(80, '', '3º', '4600490', 'AMIGO DEVOTO', 'RUTA PROVINCIAL Nº 30', 'M', 'CHILA', '70', 'S'),
(81, 'J.C.', '1º', '4600487', 'PCIA. DE LA PAMPA', '7 DE OCTUBRE S/N', 'M-T', 'TAMA', '30', 'S'),
(82, '', '3º', '4600446', 'ESCUELA 81', 'ESQUINA GRANDE', 'M', 'ESQUINA GRANDE', '100', 'I'),
(83, '', '3º', '4600508', 'RAUL ORIHUELA', 'PASAJE NIÑO ALCALDE S/N ', 'M', 'NACATE', '70', 'N'),
(84, '', '3º', '4600509', 'ESCUELA 83', 'S/N', 'M', 'MOLLACO', '100', 'N'),
(85, '', '', '', '', '', '', 'ANZULON', '70', 'I'),
(86, '', '3º', '4600520', 'FRAY M. ESQUIU', 'CASTRO BARROS S/N', 'M', 'OLPAS', '70', 'I'),
(87, '', '3º', '4600444', 'ESCUELA 86', 'LOS AGUIRRE', 'M', 'LOS AGUIRRE', '100', 'I'),
(88, '', '3º', '4600420', 'ESC.N°087 SERGIO SIMEON ROSA SOSA', 'LOS ALANICES', 'M', 'LOS ALANICES', '100', 'I'),
(89, '', '3º', '4600533', 'ANDREA RINCON ZALAZAR', 'S/N', 'M', 'EL MEDANITO', '120', 'I'),
(90, '', '3º', '4600503', 'ESCUELA 89', 'LA CHIMENEA', 'M', 'LA CHIMENEA', '120', 'N'),
(91, '', '3º', '4600401', 'ESCUELA 90', 'S/N', 'M', 'LOMA LARGA', '70', 'N'),
(92, '', '2º', '4600501', 'PCIA. DE CHUBUT', 'EL PORTEZUELO', 'M', 'EL PORTEZUELO', '55', 'N'),
(93, '', '3º', '4600274', 'MANUEL DE LA C. PIZARRO', 'PARAJE CHAÑAR VIEJO', 'M', 'CHAÑAR', '100', 'F'),
(94, '', '3º', '4600426', 'ESCUELA 93', 'LOS TELLOS', 'M', 'LOS TELLOS', '55', 'I'),
(95, '', '3º', '4600382', 'EDUARDO DE LA FUENTE', 'SAN RAFAEL', 'M', 'SAN RAFAEL', '100', 'J'),
(96, '', '3º', '4600455', 'JOSE E. TOLEDO VERA', 'ÑOQUEVE', 'M', 'ÑOQUEVES', '55', 'O'),
(97, '', '3º', '4600386', ' 17 DE AGOSTO DE 1850', 'LA JARILLA', 'M', 'LA JARILLA', '100', 'O'),
(98, '', '3º', '4600390', 'NELLY CABRAL DE AGUILAR', 'EL TALA', 'M', 'EL TALA', '100', 'O'),
(99, '', '3º', '4600392', 'ESCUELA 98', 'EL TOTORAL', 'M', 'EL TOTORAL', '100', 'O'),
(100, '', '3º', '4600389', 'ANGEL M. GRANILLO', 'SAN ISIDRO', 'M', 'SAN ISIDRO', '100', 'O'),
(101, '', '3º', '4600425', 'ESCUELA 100', 'LA ISLA', 'M', 'LA ISLA', '100', 'I'),
(102, '', '3º', '4600432', 'ROSENDO ROMERO', 'LA DORADA', 'M', 'LA DORADA', '100', 'I'),
(103, '', '3º', '4600421', 'ESCUELA 102', 'EL FRAILE', 'M', 'EL FRAILE', '55', 'I'),
(104, 'J.C.', '1º', '4600145', 'CORONEL NICOLAS BARROS', 'AVDA. CORONEL NICOLAS BARROS', 'M-T', 'ANILLACO', '30', 'C'),
(105, '', '3º', '4600474', 'ESCUELA 104', 'S/N', 'M', 'LOS ALGARROBOS', '120', 'N'),
(106, '', '3º', '4600408', 'ANFILOQUIA VALDEZ DE GOMEZ', 'TUANI', 'M', 'TUANI', '120', 'N'),
(107, '', '3º', '4600247', 'MARIA LAUTRE  DE SILVANO', 'CALLE PRINCIPAL S/N', 'M', 'GUANCHIN', '100', 'D'),
(108, '', '2º', '4600242', ' JUAN DOMINGO PERON', 'DEL CARMEN Nº 48', 'M', 'SAN MIGUEL', '30', 'D'),
(109, '', '2º', '4600094', 'ESCUELA 108', 'ACCESO ESTEBAN MIRIZIO S/N', 'M', 'BAÑADOS DE LOS PANTANOS', '70', 'A'),
(110, '', '3º', '4600229', 'LUIS CAMILO SCIDA', 'RUTA NACIONAL Nº 40 ', 'M', 'LOS TAMBILLOS', '100', 'H'),
(111, '', '3º', '4600327', 'PCIA. DEL CHACO', 'BAJO JAGUE', 'M', 'BAJO JAGUE', '120', 'K'),
(112, '', '3º', '4600431', 'ESCUELA 111', 'LA PLAYA', 'M', 'MILAGRO', '120', 'I'),
(113, '', '3º', '4600350', 'DELIA DURAN DE GATICA', 'VILLA NIDIA', 'M', 'VILLA NIDIA', '100', 'J'),
(114, '', '3º', '4600449', 'ESCUELA 113', 'REAL DEL CADILLO', 'M', 'R. DEL CADILLO', '70', 'O'),
(115, 'P.H.', '1º', '4600471', 'NICOLAS LANZILLOTTO', 'HUGO LLANOS - HEREO DE MALVINAS', 'M-T', 'CHEPES', '', 'O'),
(116, '', '3º', '4600394', 'MARIA TERESITA AZCURRA', 'LA CALLANA', 'M', 'LA CALLANA', '100', 'O'),
(117, '', '3º', '4600377', 'HORTENCIA D. DE MERCADO', 'NUEVA ESPERANZA', 'M', 'NUEVA ESPERANZA', '120', 'J'),
(118, '', '3º', '4600451', 'WOLF SCHOLNIK', 'AGUA DE LA PIEDRA', 'M', 'AGUA LA PIEDRA', '55', 'O'),
(119, '', '3º', '4600153', 'EL RETIRO', 'ALPASINCHE', 'M', 'EL RETIRO', '100', 'R'),
(120, '', '3º', '4600353', 'MERCEDES MERCADO DE MORENO', 'TUIZON', 'M', 'TUIZON', '70', 'S'),
(121, '', '3º', '4600400', 'ESCUELA 120', 'ATILES', 'M', 'ATILES', '70', 'N'),
(122, '', '3º', '4600338', 'ESCUELA 121', 'LAS HUERTAS', 'M', 'SIERRA DE LOS QUINTEROS', '120', 'S'),
(123, 'J.C.', '2º', '4600142', 'LEOPOLDO CAAMAÑO', 'BARRIO DE GALLI S/N', 'M-T', 'FAMATINA', '70', 'E'),
(124, '', '3º', '4600241', 'ENZO ALDO CORDOBA', 'VICENTE GIGENA S/N', 'M', 'TILIMUQUI', '40', 'D'),
(125, '', '', '', '', '', '', '', '', 'B'),
(126, '', '3º', '4600200', 'ROSARIO VERA PEÑALOZA', 'LOS NACIMIENTOS', 'M', 'FELIPE VARELA', '100', 'H'),
(127, '', '3º', '4600456', 'ESCUELA 126', 'EL BARRIAL', 'M', 'ROSARIO V PEÑALOZA', '55', 'O'),
(128, '', '1º', '4600194', 'CAPITAL FEDERAL', 'NAPOLES Nº 301', 'M-T', 'LA RIOJA', '', 'B'),
(129, '', '3º', '4600461', 'ESCUELA 128', 'LA LAGUNA', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(130, '', '1º', '4600315', 'MUNICIPALIDAD DE LA  CDAD DE BS.AS.', 'AVDA. SAN BUENAVENTURA ', 'M', 'VICHIGASTA', '30', 'D'),
(131, '', '3º', '4600443', 'ESCUELA 130', 'TORRECITAS', 'M', 'GRAL. OCAMPO', '100', 'I'),
(132, '', '3º', '4600396', 'ESCUELA 131', 'ALTO BAYO', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(133, '', '3º', '4600460', 'ESCUELA 132', 'EL RODEO', 'T', 'ROSARIO V PEÑALOZA', '120', 'O'),
(134, '', '3º', '4600436', 'EL QUEMADO', 'EL QUEMADO', 'M', 'GRAL. OCAMPO', '120', 'I'),
(135, '', '3º', '4600282', 'MAESTRO N.A.CHACHO LEAL', 'LA CORTADA', 'T', 'CHAMICAL', '100', 'L'),
(136, '', '3º', '4600166', 'JOSE ARMANDO QUIROGA SOAJE', 'LA MARAVILLA', 'M', 'FELIPE VARELA', '100', 'H'),
(137, 'P.H.', '1º', '4600302', 'NICOLASA VERA LUNA DE VERA', 'CONSTANTINO CARBEL Nº 430', 'M-T', 'CHAMICAL', '', 'L'),
(138, '', '3º', '4600124', 'VIRGEN DEL ROSARIO DE SAN NICOLAS', 'PUBLICA S/N ', 'M', 'SANTA VERA CRUZ', '70', 'O'),
(139, '', '3º', '4600452', 'ESCUELA 138', 'MASCASIN', 'M', 'ROSARIO V PEÑALOZA', '55', 'O'),
(140, '', '3º', '4600499', 'ESCUELA 139', 'KM 14', 'M', 'GRAL. SAN MARTIN', '100', 'J'),
(141, '', '3º', '4600536', 'MARIA ESTELA TORRES DE SUFAN', 'AGUA BLANCA', 'M', 'CASTRO BARROS', '70', 'C'),
(142, '', '1º', '4600113', 'RICARDO ROJAS', 'AVDA. CESAR VALLEJOS S/N', 'M', 'VILLA MAZAN', '30', 'A'),
(143, '', '3º', '4600109', 'ESCUELA 142', 'TUTYUBIL', 'M', 'SAN BLAS DE LOS SAUCES', '100', 'R'),
(144, '', '', '', '', '', '', '', '', 'B'),
(145, '', '', '', '', '', '', '', '', 'B'),
(146, '', '3º', '4600510', 'ESCUELA 145', 'EL RETAMAL', 'M', 'JUAN F. QUIROGA', '100', 'N'),
(147, '', '3º', '4600453', 'ESCUELA 146', 'QUEBRADA DEL VALLECITO', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(148, '', '3º', '4600288', 'CLOTILDE MERCADO', 'MIRAFLORES', 'M', 'GRAL. BELGRANO', '100', 'F'),
(149, '', '3º', '4600376', 'FRANCISCA D.C. DE AZCURRA', 'CARRAL DE ISSAC', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(150, '', '3º', '4600372', 'ING. JUAN MELIS', 'EL ABRA', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(151, '', '3º', '4600341', 'ESCUELA 150', 'BAJO HONDO', 'M', 'GRAL. SAN MARTIN', '100', 'J'),
(152, 'J.C.', '1º', '4600329', 'PCIA. DE CORRIENTES', 'B. DE LA COLINA Nº 520', 'M-T', 'CHAMICAL', '', 'L'),
(153, '', '3º', '4600434', ' ESCUELA 152', 'LOS MISTOLES', 'M', 'GRAL. OCAMPO', '100', 'I'),
(154, '', '3º', '4600276', 'DOMINGO ORONA', 'EL SIMBOLAR', 'M', 'GRAL. BELGRANO', '100', 'F'),
(155, 'EMER', '3º', '4600277', 'MATEO JORGE GOMEZ', 'BALDES DE PACHECO', 'M', 'GRAL. BELGRANO', '120', 'F'),
(156, 'EMER', '3º', '4600293', 'PRESBITERO ANTONIO CONRERO', 'CORRAL DE NEGRO', 'M', 'GRAL. BELGRANO', '100', 'F'),
(157, 'J.C.', '3º', '4600433', 'DIRECTORA VITALIA B. DE LLANOS', 'AMBIL', 'M-T', 'GRAL. OCAMPO', '70', 'I'),
(158, '', '', '', '', '', '', 'EL CIENAGO', '100', 'B'),
(159, '', '3º', '4600448', 'ESCUELA N° 158', 'POZO DEL MEDIO', 'M', 'GRAL. OCAMPO', '100', 'I'),
(160, 'EMER', '3º', '4600100', 'ESCUADRON 24 GMRIA NACIONAL', 'SANTO DOMINGO ', 'M-T', 'FAMATINA', '100', 'E'),
(161, '', '3º', '4600165', 'FELIPE LEANDRO DAVILA', 'EL ZAPALLAR', 'M', 'FELIPE VARELA', '120', 'H'),
(162, '', '2º', '4600410', 'DR. FRANCISCO BAIGORRI', 'JUAN FACUNDO QUIROGA ', 'M', 'DESIDERIO TELLO', '40', 'O'),
(163, '', '3º', '4600008', 'PAPA PABLO VI', 'RUTA Nº 25 KM 81/', 'M', 'SAN N. DEL RECREO', '70', 'B'),
(164, '', '3º', '4600397', 'MARIA MERCEDES ACHAVAL DE GODOY', 'VALLE HERMOSO', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(165, '', '1º', '4600065', 'JUANA L.V. DE ARGUELLO', 'AVDA. SAN FRANCISCO KM 8 1/2 ', 'M-T', 'PTA. LA QUEBRADA', '10', 'B'),
(166, '', '', '', 'ESCUELA 165 PETRONA ROSA IBAÑEZ', '', '', 'LA REPRESA', '120', 'J'),
(167, '', '1º', '4600224', 'RODOLFO CARMONA', 'LA PLATA Nº 850', 'M-T', 'CHILECITO', '', 'D'),
(168, '', '3º', '4600029', 'ESCUELA 167', 'RUTA Nº 6 KM 110', 'M', 'SAN BERNARDO', '100', 'B'),
(169, 'J.C.', '2º', '4600367', 'DR. ARBERTO PAREDES URQUIZA', 'MANUEL BELGRANO S/N', 'M-T', 'PTA DE LOS LLANOS', '30', 'S'),
(170, '', '1º', '4600245', 'UNIVERSIDAD NAC. DE LA PLATA', 'SAN NICOLAS Y MARTIN GUEMES', 'M-T', 'ANGUINAN', '30', 'D'),
(171, '', '3º', '4600308', 'GRAL. MARTIN MIGUEL DE GUEMES', 'SANTA FLORENTINA', 'M', 'CHILECITO', '40', 'D'),
(172, '', '3º', '4600368', 'SAN NICOLAS DE BARI', 'CARRIZAL', 'M', 'ANGEL V PEÑALOZA', '100', 'S'),
(173, '', '3º', '4600337', 'ESCUELA 172', 'ESTACION CASTRO BARROS', 'M', 'GRAL. BELGRANO', '55', 'F'),
(174, '', '3º', '4600391', 'ESCUELA 173', 'CHEPES', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(175, 'J.C.', '1º', '4600044', 'PCIA. DE SALTA', 'IMELDA ROMERO N° 694', 'M-T', 'AIMOGASTA', '', 'A'),
(176, '', '1º', '4600068', 'GENERAL BELGRANO', 'AVDA. JOSE JESUS OYOLA Y PAMPLONA', 'M-T', 'LA RIOJA', '', 'B'),
(177, '', '', '', '', '', '', '', '', 'B'),
(178, '', '1º', '4600215', 'DR. MARIANO MORENO', 'AVDA. LOS CAUDILOOS ESQ. 25 DE MAYO', 'M-T', 'LA RIOJA', '', 'B'),
(179, '', '3º', '4600006', 'DIA DE LAS AMERICAS', 'EX RUTA Nº 38 KM 35', 'M', 'TALAMUYUNA ARRIBA', '55', 'B'),
(180, '', '3º', '4600249', 'ALEJANDRO MORETA DE LA VEGA', 'RUTA NACIONAL Nº 40 ', 'M', 'MIRANDA', '40', 'D'),
(181, '', '3º', '4600388', 'ELVA ANGELA AGUILAR DE AGUILAR', 'SAN JOSE', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(182, '', '3º', '4600507', 'NOGAL AGÜERO CISTERNA', 'EL POTRERO', 'M', 'JUAN F. QUIROGA', '100', 'N'),
(183, 'EMER', '3º', '4600263', 'GRAL. SAN MARTIN', 'EL QUEBRACHAL', 'M', 'CHAMICAL', '100', 'L'),
(184, '', '3º', '4600405', 'EL CHACHO', 'LAS BARRANCAS', 'M', 'JUAN F. QUIROGA', '120', 'N'),
(185, '', '3º', '4600399', 'ESCUELA 184', 'DESVIO DE SANTA CRUZ', 'T', 'ROSARIO V PEÑALOZA', '70', 'O'),
(186, '', '', '', '', '', '', 'SIEMPRE VERDDE', '100', 'J'),
(187, 'J.C.', '2º', '4600493', 'CORONEL FELIPE VARELA', 'AVDA. ANGEL V. PEÑALOZA', 'M-T', 'LOMA BLANCA', '40', 'F'),
(188, '', '3º', '4600343', 'EL CADILLO', 'EL CADILLO', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(189, '', '2º', '4600314', 'GRAL. JOSE DE SAN MARTIN', 'Bº LA PUNTILLA', 'M', 'SAÑOGASTA', '30', 'D'),
(190, '', '1º', '4600239', 'EMILIO A. HUNICKEN', 'DR. SANTIAGO BAZAN Nº 348', 'M-T', 'CHILECITO', '', 'D'),
(191, '', '1º', '4600082', 'GRAL. SAN MARTIN', 'BALTAZAR JARAMILLO Nº 51', 'M-T', 'LA RIOJA', '', 'B'),
(192, '', '1º', '4600020', 'SARMIENTO', 'DARDO ROCHA Nº 74', 'M', 'LA RIOJA', '', 'B'),
(193, '', '1º', '4600083', 'DR. NICOLAS AVELLANEDA', 'DARDO ROCHA Nº 42', 'T', 'LA RIOJA', '', 'B'),
(194, '', '3º', '4600360', 'JUAN RAMON CARRIZO', 'LA TORRE', 'M', 'INDEPENDENCIA', '100', 'M'),
(195, '', '1º', '4600238', 'BARTOLOME MITRE', 'JOAQUIN V. GONZALEZ S/N ', 'M-T', 'NONOGASTA', '30', 'D'),
(196, '', '1º', '4600072', 'PCIA. DE CATAMARCA', 'SARMIENTO Nº 314', 'M-T', 'AIMOGASTA', '', 'A'),
(197, '', '3º', '4600435', 'ESCUELA 196', 'EL CERCO', 'M', 'GRAL. OCAMPO', '120', 'I'),
(198, '', '3º', '4600267', 'COBO 1º JULIO CESAR FUENTES', '', 'M', 'LA CAÑADA', '100', 'L'),
(199, '', '', '', '', '', '', '', '', 'B'),
(200, '', '3º', '4600078', 'REPUBLICA DE VENEZUELA', 'CAMINO VECINAL', 'M', 'TRAMPA DEL TIGRE', '120', 'B'),
(201, 'EMER', '3º', '4600098', 'SAGRADA FAMILIA', 'CHAÑARMUYO', 'M-T', 'FAMATINA', '100', 'E'),
(202, '', '3º', '4600031', 'JUAN F. CARRIZO', 'RUTA 5 KM 92 EL QUEBRACHO', 'M', 'CAPITAL', '100', 'B'),
(203, '', '3º', '4600036', 'ISLA NUEVA', 'EL CANTADERO', 'M', 'CAPITAL', '100', 'B'),
(204, '', '', '', '', '', '', '', '', ''),
(205, 'EMER', '3º', '4600096', 'ESCUELA 204', 'CALLE PRINCIPAL S/N', 'M', 'ANGULO', '100', 'E'),
(206, '', '3º', '4600345', 'ESCUELA 205', 'AGUAYO', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(207, '', '3º', '4600534', 'LA BANDERITA', 'LA BANDERITA', 'M', 'GRAL. OCAMPO', '120', 'I'),
(208, '', '3º', '4600486', 'CAUDILLOS RIOJANOS', 'CUATRO ESQUINAS', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(209, '', '3º', '4600466', 'EVA PERON', 'PATQUIA VIEJO', 'M', 'INDEPENDENCIA', '120', 'M'),
(210, '', '3º', '4600173', 'CLUB ARGENTINOS DE SERVICIOS', 'RUTA NACIONAL Nº 76 KM 202 VILLA ESTHER', 'T', 'FELIPE VARELA', '55', 'H'),
(211, '', '3º', '4600287', 'RAMON ANIBAL OLIVERA', 'MONTE GRANDE', 'M', 'GRAL. BELGRANO', '100', 'F'),
(212, 'J.C.', '3º', '4600442', 'RAMON EULOGIO BAZAN', 'AMBIL', 'M', 'GRAL. OCAMPO', '120', 'I'),
(213, '', '3º', '4600255', 'CASA PINTADA', 'VALLE HERMOSO', 'I', 'VINCHINA', '120', 'K'),
(214, '', '3º', '4600385', 'ESCUELA 213', 'EL DIVISADERO', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(215, '', '3º', '4600290', 'PERDRO CELESTINO ROBADOR', 'PARAJE  BAJO HONDO', 'M', 'GRAL. BELGRANO', '120', 'F'),
(216, '', '', '', '', '', '', 'EL CHUSCHO', '100', 'B'),
(217, '', '3º', '4600384', 'ESCUELA 216', 'LA CONSULTA', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(218, '', '3º', '4600268', 'CABO PRINCIPAL DARIO VERA', 'LA SERENA', 'M', 'CHAMICAL', '100', 'L'),
(219, '', '3º', '4600009', 'MERCEDES DE STIPANICIC', 'RUTA Nº 25', 'M', 'LA RAMADITA', '100', 'B'),
(220, '', '3º', '4600406', 'ESCUELA 219', 'RODEO GRANDE', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(221, '', '3º', '4600427', 'ESCUELA 220', 'LAS CORTADERAS', 'T', 'GRAL. OCAMPO', '100', 'I'),
(222, '', '3º', '4600463', 'JULIAN NOE AGUILAR', 'AGUA DE AGUIRRE', 'M', 'AGUA DE AGUIRRE', '120', 'O'),
(223, '', '3º', '4600419', 'HERIBERTO GONZALEZ', 'SAN JOSE', 'M', 'GRAL. OCAMPO', '120', 'I'),
(224, '', '3º', '4600418', 'ESCUELA 223', 'SAN PDRO', 'M', 'GRAL. OCAMPO', '100', 'I'),
(225, '', '', '', '', '', '', '', '', 'B'),
(226, '', '', '', '', '', '', 'FELIPE VARELA', '120', 'H'),
(227, '', '', '', '', '', '', '', '', ''),
(228, '', '3º', '4600351', 'MANUEL TEOFILO IBAÑEZ', 'PUESTO DICHOSO', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(229, '', '3º', '4600395', 'ESCUELA 227', 'EL CARDON', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(230, '', '3º', '4600339', 'JOSE DE LA CRUZ LUJAN', 'PACATALA', 'M', 'ANGEL V PEÑALOZA', '120', 'S'),
(231, '', '3º', '4600378', 'ESCUELA 229', 'EL BUEN RETIRO', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(232, '', '3º', '4600001', 'LILIANA CASAS DE ALBA', 'RUTA Nº 25 KM 50', 'M', 'BAJO HONDO', '100', 'B'),
(233, '', '3º', '4600164', 'HUMBRERTO MARTIN NIEVAS', 'RUTA NACIONAL N° 76 EL MOLLE', 'M', 'FELIPE VARELA', '55', 'H'),
(234, '', '3º', '4600037', 'BRIGADA RAMIREZ DE  DE LA VEGA', 'RUTA PROVINCIAL Nº 6 KM 100 PTO. DEL VALLE', 'M', 'CAPITAL', '100', 'B'),
(235, '', '3º', '4600115', 'ESCUELA 233', 'CALLE PUBLICA S/N ', 'M', 'TERMAS SANTA TERESITA', '70', 'A'),
(236, '', '3º', '4600423', 'ESCUELA 234', 'AGUADITA DE LOS PERALTA', 'M', 'GRAL. OCAMPO', '100', 'I'),
(237, 'EMER', '3º', '4600097', 'LUIS PAPINUTTI', 'EL POTRERILLO', 'M-T', 'FAMATINA', '120', 'E'),
(238, '', '3º', '4600285', 'ESCUELA 236', 'SANTA RITA DE LA ZANJA', 'M', 'CHAMICAL', '120', 'L'),
(239, '', '', '', '', '', '', 'EL ZAMPAL', '120', 'D'),
(240, '', '', '', '', '', '', 'EL CARRIZALILLO', '120', 'N'),
(241, '', '3º', '4600458', 'AGUEDA PIZARRO CUENCA', 'LA CALERA', 'M', 'CHEPES', '120', 'O'),
(242, '', '', '', '', '', '', 'LA CANCHITA', '120', 'A'),
(243, '', '3º', '4600447', 'LOS BARRIALITOS', 'RUTA PROVINCIAL Nº 31', 'M', 'GRAL. OCAMPO', '100', 'I'),
(244, '', '', '', '', '', '', '', '', 'B'),
(245, '', '1º', '4600210', 'BENJAMIN DE LA VEGA', 'DALMACIO VELEZ SARSFIELD Nº 842', 'T', 'LA RIOJA', '', 'B'),
(246, '', '1º', '4600209', 'FRANCISCO TELECHEA', 'DALMACIO VELEZ SARSFIELD Nº 842', 'M', 'LA RIOJA', '', 'B'),
(247, '', '1º', '4600052', 'CASTRO BARROS', 'DALMACIO VELEZ SARSFIELD Nº 274', 'T', 'LA RIOJA', '', 'B'),
(248, '', '1º', '4600055', 'ORTIZ DE OCAMPO', 'DALMACIO VELEZ SARSFIELD Nº 370', 'M', 'LA RIOJA', '', 'B'),
(249, '', '1º', '4600219', 'SAN FRANCISCO', 'BAZAN Y BUSTOS Nº 661', 'M-T', 'LA RIOJA', '', 'B'),
(250, '', '1º', '4600069', 'GERONIMA BARROS', 'AVDA. FACUNDO QUIROGA ESQ. BECCAR VARELA', 'M-T', 'LA RIOJA', '', 'B'),
(251, 'P.H.', '1º', '4600016', 'GENERAL MANUEL BELGRANO', 'FRANCISCO ZELADA Nº 50', 'T', 'LA RIOJA', '', 'B'),
(252, '', '1º', '4600212', 'BARTOLOME MITRE', 'ALBERDI Nº 679', 'M', 'LA RIOJA', '', 'B'),
(253, 'P.H.', '1º', '4600220', 'CEFERINO NAMUNCURA', 'ALBERDI Nº 679', 'T', 'LA RIOJA', '', 'B'),
(254, 'P.H.', '1º', '4600017', 'BERNARDINO RIVADAVIA', 'FRANCISCO ZELADA Nº 50', 'M', 'LA RIOJA', '', 'B'),
(255, '', '', '4600693', 'PATRICIO DEL SACRAMENTO', 'DALMACIO VELEZ SARSFIELD Nº 374', 'N', 'LA RIOJA', '', 'B'),
(256, '', '1º', '4600196', 'SAGRADO CORAZON DE JESUS', 'BAZAN Y BUSTOS Nº 923', 'M', 'LA RIOJA', '', 'B'),
(257, 'P.H.', '1º', '4600477', 'JOAQUIN V. GONZALEZ', 'ROQUE SAENZ PEÑA ESQ. DONBOSCO Y COLON', 'M-T', 'CHEPES', '', 'O'),
(258, '', '1º', '4600132', 'GREGORIA M. DE SAN MARTIN', 'CALLE HIPOLITO IRIGOYEN S/N', 'M', 'AIMOGASTA ', '', 'A'),
(259, 'P.H.', '1º', '4600070', 'GRAL. JOSE DE SAN MARTIN', '20 DE MAYO Y DARDO DE LA VEGA DIAZ', 'M-T', 'AIMOGASTA ', '', 'A'),
(260, 'P.H.', '1º', '4600303', 'ROSARIO V. PEÑALOZA', 'R.V. PEÑALOZA Nº 37', 'M-T', 'CHAMICAL', '', 'L'),
(261, 'P.H.', '1º', '4600206', 'NICOLAS DAVILA', 'JOAQUIN V. GONZALEZ Nº 93', 'M-T', 'CHILECITO', '', 'D'),
(262, 'P.H.', '1º', '4600207', 'JUAN R. DE VELAZCO', 'ENCHUCIJADAS Y CIRCUNVALACION', 'M-T', 'CHILECITO', '', 'D'),
(263, '', '1º', '4600175', '9 DE JULIO', 'ALBERTO G. OCAMPO ESQ. TIMOTEO GORDILLO', 'M', 'CHILECITO', '', 'D'),
(264, '', '1º', '4600232', 'MERCEDES BUSTAMANTE DE DINKLAGE', 'LA MEJIANA Y SAN MARTIN', 'M-T', 'CHILECITO', '', 'D'),
(265, '', '1º', '4600185', 'COLEGIO PARROQUIAL PIO XII', 'BAZAN Y BUSTOS Nº 459', 'M', 'LA RIOJA', '', 'B'),
(266, 'P.H.', '1º', '4600828', 'PTRO. LUIS TORRES MOLINA', 'CARLOS DE DIOS MURIAS Nº 176', 'T', 'CHAMICAL', '', 'L'),
(267, '', '', '', '', '', '', '', '', 'B'),
(268, '', '2º', '4600307', 'NOCTURNA DOMINGO FAUSTINO SARMIENTO', 'SANTIAGO BAZAN Nº 348', 'N', 'CHILECITO', '', 'D'),
(269, 'J.C.', '1º', '4600524', 'GRAL. ANGEL V. PEÑALOZA', 'SAN MARTIN Nº 50', 'M-T', 'OLTA', '10', 'F'),
(270, '', '', '', '', '', '', '', '', 'B'),
(271, '', '1º', '4600518', 'BRIG. JUAN F. QUIROGA', 'AVDA. LOS CAUDILLOS S/N', 'M', 'MALANZAN', '40', 'N'),
(272, 'J.C.', '1º', '4600147', 'BELINDO DE LA FUENTE', 'JOAQUIN V. GONZALEZ S/N ', 'M-T', 'ANJULLON', '30', 'O'),
(273, '', '', '', '', '', '', '', '', 'B'),
(274, '', '3º', '4600344', 'VICENTE LOPEZ', 'EL BALDECITO', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(275, '', '3º', '4600441', 'ALMIRANTE GUILLERMO BROWN', 'LA MARUJA', 'M', 'GRAL. OCAMPO', '100', 'I'),
(276, '', '3º', '4600512', 'MARCOS SASTRE', 'PULUCHAN', 'M', 'JUAN F. QUIROGA', '120', 'N'),
(277, '', '3º', '4600404', 'OLEGARIO VICTOR  ANDRADE', 'EL PORONGO', 'M', 'JUAN F. QUIROGA', '120', 'N'),
(278, '', '', '', '', '', '', '', '', 'B'),
(279, 'J.C.', '1º', '4600152', 'FLAVIANO DE LA COLINA', 'RUTA NACIONAL Nº 40 SCHAQUI', 'M-T', 'SAN BLAS DE LOS SAUCES', '30', 'R'),
(280, '', '3º', '4600174', 'MIGUEL E. SOLER', 'RUTA NACIONAL Nº 40  KM 3800 PUERTO ALEGRE', 'M', 'FELIPE VARELA', '100', 'H'),
(281, '', '3º', '4600354', 'NIÑAS DE AYOHUMA', 'TASQUIN ', 'M', 'ANGEL V PEÑALOZA', '100', 'S'),
(282, '', '1º', '4600056', 'TAMBOR DE TACUARI', 'ISLA DECEPCION Nº 672 Bº ANTARTICA I', 'M-T', 'LA RIOJA', '', 'B'),
(283, 'J.C.', '3º', '4600523', '25 DE MAYO', 'CALLE Nº2 LA COLONIA', '', 'GRAL. OCAMPO', '55', 'I'),
(284, '', '', '', '', '', '', 'HUACO', '120', 'P'),
(285, '', '3º', '4600379', 'DAMAS MENDOCINAS', 'PARAJE EL BALDE DE LA VIUDA', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(286, '', '3º', '4600171', 'FRAY LUIS BELTRAN', 'CALLE PRINCIPAL S/N LOS PATILLOS', 'M', 'FELIPE VARELA', '100', 'H'),
(287, '', '3º', '4600497', 'MARIA SANCHEZ DE THOMPSON', 'LOS COLORADOS', 'M', 'INDEPENDENCIA', '100', 'M'),
(288, 'EMER', '3º', '4600260', 'GDOR. FRANCISCO  SOLANO GOMEZ', 'SANTA BARBARA', 'M', 'CHAMICAL', '100', 'F'),
(289, 'P.H.', '1º', '4600022', 'MAESTRO ARMANDO H. ROBLEDO', 'ESTEBAN ECHEVERRIA', 'M', 'LA RIOJA', '', 'B'),
(290, '', '', '', '', '', '', 'LA LOMITA', '120', 'J'),
(291, '', '3º', '4600295', 'ESCUELA 289', 'LA HUERTA', 'M', 'GRAL. BELGRANO', '100', 'F'),
(292, '', '', '', '', '', '', 'EL RUMIACO', '120', 'B'),
(293, '', '3º', '4600746', 'SIXTO ALCIRO BRIZUELA', 'PARAJE LAS HIGUERITAS', 'T', 'SANTA FLORENTINA', '199', 'D'),
(294, '', '', '', '', '', '', '', '', 'B'),
(295, '', '', '', '', '', '', 'PUERTO ALEGRE', '40', 'B'),
(296, '', '3º', '4600331', 'JOSE DARRAGUEIRA', 'PJE. EL RETAMO', 'M', 'CHAMICAL', '120', 'L'),
(297, '', '', '', '', '', '', 'SAN AMBROSIO', '120', 'M'),
(298, '', '3º', '4600359', 'FRAY CAYETANO RODRIGUEZ', 'AGUANGO', 'M', 'INDEPENDENCIA', '120', 'M'),
(299, '', '3º', '4600138', 'PEDRO LEON GALLO', 'PJE. LA CIMBRITA', 'M', 'ARAUCO', '120', 'A'),
(300, '', '', '', '', '', '', 'AG. DE LOS BALDES', '120', 'B'),
(301, '', '1º', '4600048', 'JUAN JOSE PASO', 'AVDA. SAN NICOLAS DE BARI ESQ. PORTEZUELA', 'M-T', 'LA RIOJA', '', 'B'),
(302, '', '3º', '4600264', 'MAESTRO ALILO NUÑEZ', 'PJE. LA AGUADITA', 'M', 'CHAMICAL', '55', 'L'),
(303, 'J.C.', '3º', '4600254', 'GENDARMERIA NACIONAL', 'POTRERO GRANDE', 'M-T', 'VINCHINA', '120', 'K'),
(304, '', '', '', '', '', '', '', '', 'B'),
(305, '', '3º', '4600346', 'JOSE ANTONIO CABRERA', 'AGUYO', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(306, '', '3º', '4600271', 'JOSE DE UGARTECHE', 'EL CARMEN - LA INVERNADA', 'M', 'CHAMICAL', '120', 'L'),
(307, '', '3º', '4600038', 'DR. PEDRO MIGUEL ARAOZ', 'RUTA Nº 6  KM 120 LA ANTIGUA', 'T', 'CAPITAL', '100', 'B'),
(308, '', '3º', '4600266', '20 DE MAYO', 'LOS TALAS', 'M-T', 'CHAMICAL', '120', 'L'),
(309, '', '3º', '4600272', ' VICENTE A. ALMONACID', 'PJE. BAJO DE LUCAS', 'M-T', 'CHAMICAL', '120', 'L'),
(310, '', '3º', '4600028', 'DARDO DE LA VEGA DIAZ', 'RUTA Nº 5 KM 50', 'M', 'SAN LORENZO', '100', 'B'),
(311, '', '3º', '4600034', 'GDOR. MANUEL V. BUSTOS', 'RUTA Nº 6 KM 13', 'M', 'SAN PEDRO', '100', 'B'),
(312, '', '3º', '4600407', 'DR. ESTEBAN A.GASCON', 'SAN PEDRO', 'M', 'JUAN F. QUIROGA', '100', 'N'),
(313, '', '3º', '4600369', 'DR. MANUEL A. ACEVEDO', 'EL MONTE KM 38', 'M', 'ANGEL V PEÑALOZA', '120', 'S'),
(314, '', '3º', '4600270', 'JOSE EUSEBIO COLOMBES', 'PJE. LA RESISTENCIA', 'M', 'CHAMICAL', '120', 'L'),
(315, '', '3º', '4600514', 'MARIANO BOEDO', 'TOSQUEA', 'M', 'JUAN F. QUIROGA', '120', 'N'),
(316, '', '3º', '4600039', 'DR. TOMAS DE ANCHORENA', 'RUTA Nº 6 EL BARRIAL', 'M', 'CAPITAL', '100', 'B'),
(317, '', '3º', '4600402', 'DR. TEODORO S. DE BUSTAMANTE', 'RUTA PROVINCIAL Nº 31 EL UNQUILLAR', 'M', 'JUAN F. QUIROGA', '100', 'N'),
(318, '', '3º', '4600581', 'ANTONIO GONZALEZ BALCARCE', 'RUTA Nº 25 KM 80', 'M', 'ESTANCIA SAN NICOLAS', '100', 'B'),
(319, '', '3º', '4600340', 'JUAN AGUSTIN MAZA', 'LA SUSPENSIÓN', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(320, '', '3º', '4600370', 'CHACHO PEÑALOZA', 'RUTA PROVINCIAL Nº 27 Y 28', 'M', 'SAN RAMON', '100', 'S'),
(321, '', '3º', '4600262', 'MAIPU', 'VILLA CARMELA', 'M', 'CHAMICAL', '100', 'L'),
(322, '', '3º', '4600333', 'HIPOLITO IRIGOYEN', 'RUTA PROVINCIAL TALA VERDE', 'M', 'GRAL. BELGRANO', '100', 'F'),
(323, '', '3º', '4600336', 'EDUARDO PEREZ BULNES', 'PJE. POZO DE LA VACA', 'M', 'CHAMICAL', '120', 'L'),
(324, '', '3º', '4600464', 'JOSE IGNACIO THAMES', 'VIRGEN DEL VALLE - ULAPES', 'M', 'CHEPES', '120', 'J'),
(325, '', '', '', '', '', '', 'EL CINCUENTA', '100', 'B'),
(326, '', '3º', '4600172', 'GRANADERO VARGAS', 'EL CARDON', 'M', 'FELIPE VARELA', '120', 'H'),
(327, 'EMER', '3º', '4600279', 'FRAY JUSTO STA. MARIA DE ORO', 'EL CONSUELO', 'M', 'GRAL. BELGRANO', '100', 'F'),
(328, '', '3º', '4600030', 'ESTAUROFILA L. DE GRANILLO', 'RUTA Nº 5 KM 80 LA LATA', 'M', 'LA RIOJA', '100', 'B'),
(329, '', '3º', '4600489', 'JUAN FRANCISCO OVIEDO', 'COLOZACAN', 'M', 'ANGEL V PEÑALOZA', '120', 'S'),
(330, '', '3º', '4600269', 'CORONEL PRINGLES', 'EL GARABATO', 'M', 'CHAMICAL', '120', 'L'),
(331, '', '3º', '4600265', 'ABRAHAM RUADES', 'EL MOLLAR', 'M', 'CHAMICAL', '100', 'L'),
(332, '', '', '', '', '', '', 'SANTA C. DE LAS  S.', '120', 'S'),
(333, '', '', '', '', '', '', 'SANTA TERESITA', '120', 'B'),
(334, '', '3º', '4600454', 'ESCUELA 332', 'CASAS VIEJAS', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(335, '', '', '', '', '', '', '', '', 'B'),
(336, '', '3º', '4600235', 'MARIA LUISA DE LARGUIA', 'PARAJE EL TRIANGULO', 'M', 'NONOGASTA', '70', 'D'),
(337, '', '3º', '4600357', 'ESCUELA 335', 'REPRESA DE LA PUNTA', 'M', 'INDEPENDENCIA', '120', 'M'),
(338, '', '1º', '4600074', 'PARROQUIAL INMACULADA CONCEPCION', 'SAN MARTIN Nº 480', 'M', 'AIMOGASTA', '', 'A'),
(339, '', '3º', '4600692', 'MANUELA O. DE MABRAGAÑA', 'CONT. 8 DE DICIEMBRE Y NBARCELONA', 'T-N', 'LA RIOJA', '', 'B'),
(340, 'DIFERENCIAL', '1º', '4600043', 'FRAY MAMERTO ESQUIU', 'CABO PRIMERO RODRIGUEZ S/N', 'T', 'LA RIOJA', '', 'B'),
(341, '', '3º', '4600688', 'HILADOS Y TEJIDOS', 'S/N', 'T', 'CHAMICAL', '', 'L'),
(342, '', '', '', '', '', '', 'BAJO VERDE', '', 'B'),
(343, '', '1º', '4600084', 'FRAY LAURENCIO TORRES', 'DARDO ROCHA Nº 42', 'N', 'LA RIOJA', '', 'B'),
(344, '', '', '', '', '', '', '', '', 'B'),
(345, '', '3º', '4600163', 'POLICIA FEDERAL ARGENTINA', 'LA CUEVAS', 'M', 'FELIPE VARELA', '120', 'H'),
(346, 'EMER', '3º', '4600334', 'FERNANDO GODOY', 'EL VIRQUE', 'M', 'GRAL. BELGRANO', '100', 'F'),
(347, '', '3º', '4600309', 'ESCUELA 345', 'CARLOS WILIAMK S/N ', 'M', 'COLONIA MALLIGASTA', '100', 'D'),
(348, '', '3º', '4600365', 'GRAL. ANGEL VICENTE PEÑALOZA', 'CALLE PUBILCA S/N  BAJO VERDE', 'M', 'ANGEL V PEÑALOZA', '120', 'S'),
(349, '', '3º', '4600475', 'BGADIER JAUN M. DE ROSAS', 'ILLISCA', 'M', 'JUAN F. QUIROGA', '70', 'N'),
(350, '', '3º', '4600286', 'ESCUELA 348', 'POZO REDONDO', 'M', 'CHAMICAL', '120', 'L'),
(351, '', '3º', '4600258', 'ESCUELA 349', 'LOS BORDOS', 'M', 'CHAMICAL', '100', 'L'),
(352, '', '', '', '', '', '', 'SAN RAFAEL', '100', 'B'),
(353, '', '3º', '4600504', 'ESCUELA 351', 'CASANGATE', 'M', 'JUAN F. QUIROGA', '120', 'N'),
(354, '', '1º', '4600202', 'GUILLERMO PAEZ', 'SAN NICOLAS DE BARI', 'M-T', 'VILLA UNION', '40', 'H'),
(355, '', '', '4600002', 'BATALLON DE INGENIEROS 141', 'RUTA N° 5 KM 10 COLONIA FRUTIHORTICOLA', 'M', 'LA RIOJA', '40', 'B'),
(356, '', '3º', '4600500', 'ESCUELA 354', 'SAN ANTONIO - LAS TOSCAS', 'M', 'ROSARIO V PEÑALOZA', '120', 'O'),
(357, '', '3º', '4600342', 'ESCUELA 355', 'AGUAYO', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(358, '', '3º', '4600347', 'YAPEYU', 'RUTA Nº 33 - LA INDUSTRIA', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(359, '', '3º', '4600374', 'PARAJE ENTRE RIOS', 'PJE. ENTRE RIOS - ULAPES', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(360, '', '3º', '4600742', 'JUAN JULIO IBAÑEZ', 'RUTA Nº 5 - SAN JOSE', 'M', 'LA RIOJA', '100', 'B'),
(361, '', '', '', '', '', '', 'ANCHICO', '100', 'B'),
(362, '', '3º', '4600422', 'LA RIPIERA', 'LA RIPIERA', 'M', 'GRAL. OCAMPO', '120', 'I'),
(363, 'P.H.', '1º', '4600059', 'EXPEDICION AUX. ZELADA DAVILA', 'GUARANIES Nº 1136 Bº FACUNDO QUIROGA', 'M-T', 'LA RIOJA', '', 'B'),
(364, '', '', '', '', '', '', 'LAS CAÑAS', '100', 'B'),
(365, 'CIERRE DEFINITIVO MEDIANTE RESOLUCION MINISTERIAL N° 2454/19', '', '', '', '', '', 'LA LILIA', '120', 'J'),
(366, '', '3º', '4600532', 'ESCUELA 364', 'EX RUTA Nº 33', 'M', 'LA RIOJA', '70', 'B'),
(367, '', '1º', '4600047', 'PCIA. DE MISIONES', 'BENJAMIN MATIENZZO Bº ANTARTIDA III', 'M-T', 'LA RIOJA', '', 'B'),
(368, '', '3º', '4600364', 'ESCUELA 366', 'AGUADITA DE CARRIZAL', 'M', 'ANGEL V PEÑALOZA', '', 'S'),
(369, '', '3º', '4600537', 'ESCUELA 367', 'SANTA MARIA ', 'M', 'JUAN F. QUIROGA', '120', 'N'),
(370, '', '3º', '4600358', 'ANGELA DEL ROSARIO DIAZ DE GORDILLO', 'RUTA Nº 150 KM 46 - PAGANZO', 'T', 'INDEPENDENCIA', '120', 'M'),
(371, '', '1º', '4600051', 'MAESTRO HUMBERTO PEREYRA', 'ASCASUBI Y PUERTO ARGENTINO', 'M-T', 'LA RIOJA', '', 'B'),
(372, '', '1º', '4600225', 'MAESTRO FERMIN MORALES', 'SAN NICOLAS S/N', 'M-T', 'CHILECITO', '', 'D'),
(373, 'DIFERENCIAL', '1º', '4600211', 'MARIA MADRE DEL BUEN CAMINO', 'MARGARITA DIAZ DE DIAS Nº 632', 'M-T', 'LA RIOJA', '', 'B'),
(374, '', '3º', '4600244', 'NEREO NIEVAS', 'COLONIAS DE ANGUINAN', 'M', 'CHILECITO', '', 'D'),
(375, '', '', '', '', '', '', 'MONTE NEGRO', '100', 'F'),
(376, '', '3º', '4600375', 'ESCUELA 374', 'LA REPRESITA', 'M', 'GRAL. SAN MARTIN', '100', 'J'),
(377, 'DIFERENCIAL', '1º', '4600181', 'SOY FELIZ', '9 DE JULIO Nº 535', 'M-T', 'LA RIOJA', '', 'B'),
(378, '', '3º', '4600362', 'MARAI A. NORIEGA DE LEDO', 'SALINAS DE BUSTOS', 'M-T', 'INDEPENDENCIA', '', 'M'),
(379, 'DIFERENCIAL', '3º', '4600077', 'OBISPO ENRIQUE ANGELELLI ', 'Bº INMACULADA I', 'T', 'AIMOGASTA', '', 'A'),
(380, '', '3º', '4600243', 'ANGELA CORTEZ DE  WOL', 'EX RUTTA Nº 40 - SAN NICOLAS ', 'M', 'CHILECITO', '', 'D'),
(381, 'DIFERENCIAL', '1º', '4600205', 'AMOR Y ESPERANZA', 'GUILLERMO IRIBARREN - CASTRO Y BAZAN', 'M-T', 'CHILECITO', '', 'D'),
(382, '', '3º', '4600506', 'ESCUELA 380', 'TRES CRUCES', 'M', 'JUAN F. QUIROGA', '', 'N'),
(383, '', '3º', '4600281', 'ESCUELA 381', 'SIERRA DE LOS QUINTEROS- LAS HIGUERAS', 'M', 'JUAN F. QUIROGA', '120', 'S'),
(384, 'DIFERENCIAL', '1º', '4600041', 'ALELUYA', 'EX HOSPITAL PLAZA CONT. RIVADAVIA S/N', 'M', 'LA RIOJA', '', 'B'),
(385, 'DIFERENCIAL', '1º', '4600192', 'ESPECIAL DE FORMACION LABORAL', 'CONTINUACION AVDA. ANGELILLI S/N Bº STA.CECILIA', 'T', 'LA RIOJA', '', 'B'),
(386, '', '3º', '4600411', 'ESCUELA 384', 'PARAJE EL TOTORAL', 'T', 'ROSARIO V PEÑALOZA', '120', 'O'),
(387, '', '3º', '4600439', 'ESCUELA 385', 'PARAJE RIO GRANDE', 'M', 'GRAL. OCAMPO', '120', 'I'),
(388, '', '3º', '4600007', 'ESCUELA 386 PARAJE LA CAÑADA', 'ES RUTA NACIONAL Nº 38 KM 7 1/2 LA CAÑADA', 'M-T', 'LA RIOJA', '70', 'B'),
(389, '', '', '', '', '', '', '', '', ''),
(390, '', '3º', '4600291', 'CANUTO REYES FARIAS', 'SANTA CRUZ', 'M', 'GRAL. BELGRANO', '120', 'F'),
(391, '', '3º', '4600403', 'ESCUELA 388', 'RIO DE LAS CAÑAS', 'M', 'JUAN F. QUIROGA', '120', 'N'),
(392, 'DIFERENCIAL', '1º', '4600213', 'TINKUNACO', 'CABO  1º RODRIGUEZ S/N Bº ALTA RIOJA', 'M', 'LA RIOJA', '', 'B'),
(393, '', '3º', '4600383', 'ESCUELA 390', 'TRES DE MAYO', 'M', 'GRAL. SAN MARTIN', '120', 'J'),
(394, '', '3º', '4600366', 'ESCUELA 391', 'LAS LOMITAS', 'M', 'ANGEL V PEÑALOZA', '100', 'S'),
(395, '', '1º', '4600193', 'DANTE ALIGHIERI', 'ARTIGAS Y CAJA DE AHORRO', 'M', 'LA RIOJA', '', 'B'),
(396, '', '3º', '4600511', 'ESCUELA 393', 'BALDE DE AMAYA', 'M', 'JUAN F. QUIROGA', '120', 'N'),
(397, '', '1º', '4600063', 'SAN JOSE DE CALASANZ', 'AVDA. SAN FRANCISCO KM 3 1/2 ', 'T', 'LA RIOJA', '', 'B'),
(398, 'P.H.', '1º', '4600021', 'MALVINAS ARGENTINAS', 'ECHEVERRIA Nº 272', 'T', 'LA RIOJA', '', 'B'),
(399, '', '1º', '4600090', 'CAUDILLOS RIOJANOS', 'LAS CARRETAS Nº 247 Bº LIBERTADOR', 'M-T', 'LA RIOJA', '', 'B'),
(400, '', '1º', '4600190', 'MERCEDITAS DE SAN MARTIN', 'ALICIA MOREAU DE JUSTO Nº 775', 'M', 'LA RIOJA', '', 'B'),
(401, '', '1º', '4600079', 'MONSEÑOR ENRIQUE ANGELLELI', 'JULIO CAMPOS S/N Bº 20 DE MAYO', 'M-T', 'LA RIOJA', '10', 'B'),
(402, '', '3º', '4600576', 'ESCUELA 399', 'RUTA 6 KM 100PJE POZO DE LA YEGUA', 'M', 'LA RIOJA', '120', 'S'),
(403, '', '3º', '4600538', 'ESCUELA 400', 'PUBLICA S/N  LA MESADA', 'M', 'INDEPENDENCIA', '120', 'M'),
(404, '', '2º', '4600700', 'SAN ANTONIO', 'CASIMIRO GODOY S/N', 'M', 'AIMOGASTA', '', 'A'),
(405, '', '3º', '4600791', 'ESCUELA 402', 'PJE. MASCASIN', 'M', 'JUAN F. QUIROGA', '70', 'N'),
(406, '', '1º', '4600764', 'ESCUELA 403', 'CLODULFA OZAN S/N', 'M-T', 'LA RIOJA', '', 'B'),
(407, '', '', '', '', '', '', '', '', ''),
(408, '', '', '', '', '', '', 'EL POTRERILLO', '120', 'N'),
(409, '', '1º', '4600800', 'PADRE ARMANDO  AMIRATI', 'RAWSON S/N', 'M-T', 'LA RIOJA', '', 'B'),
(410, 'P.H.', '1º', '4600799', 'ROSA OCAMPO DE IRIBARREN', '21 DE SEPTIEMBRE S/N  B° HIPODROMO', 'M', 'NONOGASTA', '30', 'D'),
(411, '', '1º', '4600814', 'PROF. RAUL DELFOR TAPIA', 'PROYECTADA N° 5 ENTRE CEPEDA Y HERMOSA', 'M-T', 'LA RIOJA', '', 'B'),
(412, '', '1º', '4600822', 'ESCUELA 408', 'CARDON S/N Bº FALDEO DEL VELAZCO SUR', 'M-T', 'LA RIOJA', '', 'B'),
(413, '', '1º', '4600823', 'ESCUELA 409', 'LOMA BLANCA ENTRE CALLE 20 Y 22', 'M', 'LA RIOJA', '', 'B'),
(414, '', '1º', '4600832', 'LOS BOULEVARES', 'RINO BOLOGNESI', 'M-T', 'LA RIOJA', '', 'B'),
(415, '', '1º', '4600848', 'DR. RENE FAVALORO', 'LUIS AMAYA S/N Bº ASODIMO', 'M', 'LA RIOJA', '', 'B'),
(416, '', '1º', '4600843', 'PAPA FRANCISCO', 'AVDA. RAMON NAVARRO Y JARILLA Bº URBANO I', 'M-T', 'LA RIOJA', '', 'B'),
(417, '', '1º', '4600845', 'ESCUELA 413', 'ULAPES', 'M', 'GRAL. SAN MARTIN', '30', 'J'),
(418, '', '1º', '4600851', 'JULIAN AMATTE', '7 DE AGOSTO  LOS ALTOS', 'M-T', 'CHILECITO', '', 'D'),
(419, '', '1º', '4600859', 'CARLOS DE DIOS MURIAS', 'CALLE PUBLICA', 'M', 'CHAMICAL', '', 'L'),
(420, '', '1º', '4600880', 'ESCUELA 416', 'CALLE PROYECTADA B° URBANO 40', 'M-T', 'LA RIOJA', '', 'B'),
(421, '', '1º', '4600890', 'ESCUELA 417', 'MANZANA 1278 B° NESTOR KIRCHNER', 'T', 'LA RIOJA', '', 'B'),
(422, '', '1º', '4600901', 'ESCUELA 418', 'B° LOS OBREROS', 'M-T', 'LA RIOJA', '', 'B'),
(423, '', '', '', '', '', '', '', '', 'B'),
(424, '', '', '', 'CASA CENTRAL', 'Catmarca N° 65', 'M-T', 'LA RIOJA', '', 'B'),
(425, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', '', '', ''),
(426, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', 'CHILECITO', '', ''),
(427, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', '', '', ''),
(428, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', '', '', ''),
(429, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', 'LA RIOJA', '', 'B'),
(430, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', 'ULAPES', '30', 'J'),
(431, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', 'MALANZAN', '40', 'N'),
(432, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', 'CHEPES ', '', 'O'),
(433, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', 'VILLA UNION', '', 'H'),
(434, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', 'CHILECITO ', '', 'D'),
(435, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', 'CHAMICAL', '', 'L'),
(436, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', 'CASTRO BARROS', '', 'C'),
(437, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', 'FAMATINA', '', 'E'),
(438, 'MODALIDADES ESPECIALES', '', '', 'CENTRO DE ADULTO', '', '', 'CATUNA', '', 'F'),
(439, '', '', '', '', '', '', 'LA RIOJA', '', 'B'),
(440, '', '', '4600257', 'ESC. ESPECIAL Nº 2 EL SALVADOR', 'EL CHACHO Y GABRIEL LONGUEVILLE', 'M', 'CHAMICAL', '', 'L'),
(441, '', '', '4600107', 'ESC. ESPECIAL Nº 3 DIVINO NIÑO DE JESUS', 'RUTA NACIONAL Nº 40 ', 'M', 'SAN BLAS DE LOS SAUCES', '', 'R'),
(442, '', '', '', '', '', '', 'LA RIOJA', '', 'B'),
(443, '', '3°', '4600412', 'ESC. ESPECIAL Nº 5 ROBERTO SAUL', 'JUAN DOMINGO PERON ESQ. GUEMES Bº 3 DE JULIO', 'M', 'CHEPES', '', 'O'),
(444, '', '3°', '4600148', 'ESC. ESPECIAL Nº 6 NIÑO ALCALDE', 'BELGRANO S/N ', 'M-T', 'CASTRO BARROS', '', 'C'),
(445, 'P.H.', '1°', '4600208', 'ESCUELA NORMAL 1', 'SAN NICOLAS DE BARI (O) ESQ. JULIO CESAR CORZO', 'M-T', 'LA RIOJA', '', 'B'),
(446, 'P.H.', '1°', '4600226', 'ESCUELA NORMAL 2', 'ALBERTOO G. OCAMPO N° 48', 'T', 'CHILECITO ', '', 'D'),
(447, 'P.H.', '1°', '4600479', 'ESCUELA NORMAL 3', 'CASTRO BARROS N° 555', 'M', 'CHEPES', '', 'O'),
(448, 'P.H.', '1°', '4600494', 'ESCUELA NORMAL 4', 'JOSE S. SALINAS N°328', 'T', 'OLTA', '10', 'F'),
(449, '', '', '', 'SEDE SUPERVISION MUSICA', '', 'M-T', 'CHILECITO ', '', 'D'),
(450, '', '', '', 'SEDE SUPERVISION ZONA 2', '', 'M-T', 'CHILECITO ', '', 'D'),
(451, 'inicial', '', '', '', '', '', '', '', ''),
(452, '', '1º', '4600004', 'FEDERICO FROEBEL', 'SAN NICOLAS DE BARI Y PUERTO ARGENTINO', 'M-T', 'LA RIOJA', '', 'B'),
(453, '', '1º', '4600054', 'MARIA MONTESSORI', 'ADOLFO E. DAVILA Y DALMACIO V. SARFIELD', 'M-T', 'LA RIOJA', '', 'B'),
(454, '', '1º', '4600080', 'CONSTANCIO C. VIGIL', 'CALLE OLTA ESQ. PORTEZUELA ', 'M-T', 'LA RIOJA', '', 'B'),
(455, '', '1º', '4600195', 'OVIEDO DECROLY', 'MILAN Y TURIN Bº SANTA JUSTINA', 'M-T', 'LA RIOJA', '', 'B'),
(456, '', '1º', '4600093', 'SARA ECLESTON', 'BECCAR VARELA Y LAS ACACIAS S/N', 'M-T', 'LA RIOJA', '', 'B'),
(457, '', '1º', '4600183', 'ROSARIO VERA PEÑALOZA', 'HOIPOLITO IRIGOYEN S/N', 'M-T', 'LA RIOJA', '', 'B'),
(458, '', '1º', '4600300', 'ALITAS ARGENTINAS', 'CASTRO BARROS ESQ. GABRIEL LONGUEVILLE', 'M-T', 'CHAMICAL', '', 'L'),
(459, '', '1º', '4600409', 'YEAN PLAGET', 'JUAQUIN V. GONZALEZ', 'M-T', 'R. VERA PEÑALOZA', '', 'O'),
(460, '', '2º', '4600445', 'GABRIELA MISTRAL', 'JUAN ZACARIAS AGÜERO VERA S/N', 'M-T', 'ORTIZ DE OCAMPO', '30', 'I'),
(461, '', '3º', '', 'M.S.M. DE BAL…..', '', '', '', '30', 'R'),
(462, '', '1º', '4600306', '28 DE MAYO', 'CORRIENTES Nº 71 Bº MAYO', 'M-T', 'CHILECITO', '', 'D'),
(463, '', '1º', '', 'DR. PEDRO I. DE CASTRO BARROS', '', '', '', '30', 'O'),
(464, '', '1º', '4600085', 'ROSA VERA BARROS', 'ECHEVERRIA Nº 226 Bº ISLAS MALVINAS', 'M-T', 'LA RIOJA', '', 'B'),
(465, '', '1º', '4600575', 'PIO XII', 'BAZAN Y BUSTOS Nº 460', 'M-T', 'LA RIOJA', '', 'B'),
(466, '', '1º', '4600024', 'HERMANAS AGAZZI', 'TIMOTES Nº 1136', 'M-T', 'LA RIOJA', '', 'B'),
(467, '', '1º', '4600042', 'MARIA DE LA COLINA', 'PAMPLONA S/N', 'M-T', 'LA RIOJA', '', 'B'),
(468, '', '1º', '4600155', 'EUGENIA TOS DE ACIAR', 'AVDA. ORTIZ DE OCAMPO S/N', 'M-T', 'LA RIOJA', '', 'B'),
(469, '', '1º', '', 'DOLORES DE LA VEGA', '', '', '', '40', 'R'),
(470, '', '1º', '4600203', 'ROSARITO', 'HONORATO GUERRERO Y J.V. GONZALEZ ', 'M-T', 'FELIPE VARELA', '40', 'H'),
(471, '', '3º', '', 'MIGUEL ROBERTO MORENO', '', '', '', '', 'F'),
(472, '', '1º', '4600092', 'MIRIAN H. DE ANDERS', 'ADDA SAN FRANCISCO KM 3 1/2', 'M-T', 'LA RIOJA', '', 'B'),
(473, '', '1º', '4600214', 'GREGORIA BRAVO DE SORIA', 'BELGRANO Nº 337 Bº CENTRO', 'M-T', 'LA RIOJA', '', 'B'),
(474, '', '1º', '', 'MARIA LIDIA VILLAFAÑE', '', '', '', '', 'A'),
(475, '', '2º', '', 'JARDIN N° 24', '', '', '', '', 'D'),
(476, '', '1º', '4600025', 'CARLOS MARIA QUIROGA', 'ISLA DE LOS ESTADOS S/N Bº ANTARTIDA I', 'M-T', 'LA RIOJA', '', 'B'),
(477, '', '1º', '4600012', 'ARLECHINO', 'RIVADAVIA Nº 137', 'M-T', 'LA RIOJA', '', 'B'),
(478, '', '1º', '4600040', 'ROSARIO VERA PEÑALOZA', 'SAN NICOLAS S/N ', 'M-T', 'SANAGASTA', '30', 'P'),
(479, '', '2º', '', 'JARDIN N°28', '', '', '', '30', 'J'),
(480, '', '1º', '4600062', 'NIÑO JESUS ALCALDE', 'AVDA. SAN FRANCISCO KM 8 1/2', 'M-T', 'LA RIOJA', '10', 'B'),
(481, '', '1º', '4600222', 'PROFESORA PATRICIA SCHALLER', 'BELGRANO Y AVDA LOS CAUDILLO ', 'M-T', 'LA RIOJA', '', 'B'),
(482, '', '1º', '', 'CARLOS M. HIJO', '', '', '', '30', 'O'),
(483, '', '3º', '4600522', 'JARDIN 32', 'SAN MARTIN S/N', 'M', 'CATUNA', '40', 'I'),
(484, '', '2º', '4600023', 'LILIANA ALBARACIN', 'AVDA. FACUNDO QUIROGA S/N ', 'M-T', 'LA RIOJA', '', 'B'),
(485, '', '1º', '4600015', 'MERCEDITAS DE SAN MARTIN', 'BRASIL ESQ. ANDRADE Bº LOS OLIVARES', 'M-T', 'LA RIOJA', '', 'B'),
(486, '', '1º', '4600010', 'ESTELA PEÑALOZA DE CAME', 'AVDA. HEROES DE MALVINAS Y CERRO AMBATO', 'M-T', 'LA RIOJA', '', 'B'),
(487, '', '2º', '4600057', 'NICOLAS LANZZILLOTTO', 'ACONCAGUA Y COSTA RICA', 'M-T', 'LA RIOJA', '', 'B'),
(488, '', '1º', '4600158', 'PROF. PAOLA A. GAITAN', 'SANTA RITA Nº 30 Bº EL PARQUE ', 'M-T', 'CHILECITO', '', 'O'),
(489, '', '1º', '', 'ROSARIO VERA PEÑALOZA', '', '', '', '30', 'C'),
(490, '', '1º', '4600003', 'RINCON DE LUZ', 'GUILLERMO IRIBARREN S/N', 'M-T', 'LA RIOJA', '', 'B'),
(491, '', '2º', '', 'JARDIN Nº 40', '', '', '', '30', 'D'),
(492, '', '3º', '4600638', 'JARDIN ANEXO ESC 353', 'RUTA NAC. Nº 5 KM 10', 'M-T', 'LA RIOJA', '40', 'B'),
(493, '', '1º', '4600697', 'ROSARIO VERA PEÑALOZA', 'LIBERTAD Y J.V. GONZALEZ', 'M-T', 'INDEPENDENCIA', '30', 'H'),
(494, '', '1º', '4600789', 'JARDIN Nº 44', 'CIUDAD DE RESISTENCIA S/N Bº ARGENTINO', 'M-T', 'LA RIOJA', '', 'B'),
(495, '', '1º', '4600788', 'ROSARIO OCAMPO DE IRIBARREN', '21 DE SEPTIEMBRE Bº HIPODROMO', 'M-T', 'CHILECITO', '', 'D'),
(496, '', '2º', '4600813', 'LIC. MARIA CRISTINA CORTES ALDONOTE', 'CARDON Y JARILLA Bº FALDO DE V. SUR', 'M-T', 'LA RIOJA', '', 'B'),
(497, '', '1º', '4600745', 'JARDIN Nº 47', 'PADRE MARTIN GOMES Y FDO. QUIROGA ', 'M-T', 'CHAMICAL', '', 'L'),
(498, '', '2º', '4600815', 'BURBUJITAS DE ALEGRIAS', 'VIDALERAS BARROS ESQ. SAN FANCISCO', 'M-T', 'CHILECITO', '', 'D'),
(499, '', '1º', '4600812', 'IRMA OTAÑEZ DE SOLER', 'BAHIA MARGARITA Y BASE MATIENZO S/N Bº ANTARTIDA III', 'M-T', 'LA RIOJA', '', 'B'),
(500, '', '2º', '4600816', 'JARDNI Nº 50', 'CAPDELIVA Y PORTEZUELAO ', 'M-T', 'LA RIOA', '', 'B'),
(501, '', '2º', '4600825', 'JARDIN Nº 51', 'SAN MARTIN S/N ', 'M-T', 'GUNADACOL', '100', 'H'),
(502, '', '2º', '4600833', 'JARDIN Nº 52', 'PUERTO SANTA CRUZ', 'M-T', 'LA RIOJA', '', 'B'),
(503, '', '1º', '4600842', 'JARDIN Nº 53', 'RETAMA Y JARILLA Bº URBANO I', 'M-T', 'LA RIOJA', '', 'B'),
(504, '', '1º', '4600855', 'VIRGEN DEL CAMPANARIO', 'LAS ENCRUCIJADAS S/N ', 'M-T', 'CHILECITO', '', 'D'),
(505, '', '1º', '4600850', 'JARDIN Nº 55', 'Bº LOS BOULEVARES', 'M-T', 'LA RIOJA', '', 'D'),
(506, '', '2º', '4600858', 'VICTOR R. GALLARDO', 'V. LUIS VERNET S/N', 'M-T', 'LA RIOJA', '', 'B'),
(507, '', '2º', '4600853', 'JARDIN Nº 57', 'C.PUBLICA S/N ENTRE CHILE Y LUIS AMAYA Bº ASODISMO', 'M-T', 'LA RIOJA', '', 'B'),
(508, '', '2º', '4600854', 'JARDIN Nº 58', 'ARTEMIO ORTIZ Y CARDON Bº MIS MONTAÑAS', 'M-T', 'LA RIOJA', '', 'B'),
(509, '', '2º', '4600868', 'ALTOS DE CHILECITO', '15 DE JUNIO S/N', 'M-T', 'CHILECITO', '', 'D'),
(510, '', '2º', '4600857', 'JARDIN Nº 60', 'CALLE PUBLICA S/N', 'M-T', 'CHAMICAL', '', 'l'),
(511, '', '2º', '4600862', 'JARDIN Nº 61', 'LUCENA Y CACIQUE SANAGUA  B° YACAMPIS', 'M-T', 'LA RIOJA', '', 'B'),
(512, '', '2º', '4600863', 'PADRE ERI PRAOLINI', 'TILCARA Y LO A BLANCA', 'M-T', 'LA RIOJA', '', 'B'),
(513, '', '2º', '4600861', 'JARDIN Nº 63', 'J.C. CARBALLO S/N B° LOS OBREROS', 'M-T', 'LA RIOJA', '', 'B'),
(514, '', '2º', '4600867', 'GLADYS TOMASA JUSTA ROMERO CANDIDA DE PALMA', 'LAS CARRETAS S/N B° LIBERTADOR', 'M-T', 'LA RIOJA', '', 'B'),
(515, '', '2º', '4600871', 'JARDIN Nº 65', 'CALLE 20 DE JUNIO ESQ. ALBERDI', 'M-T', 'ROSARIO V. PEÑALOZA', '', 'O'),
(516, '', '2º', '4600877', 'ALTO DE LA RODADERA', 'CONTINUACION CALLE TUCUMAN S/N ', 'M-T', 'LA RIOJA ', '', 'B'),
(517, '', '2º', '4600873', 'JARDIN Nº 67', 'LA RIOJA ESPAÑOLA Y FELIPEIBARRA', 'M-T', 'LA RIOJA', '', 'B'),
(518, '', '2º', '4600884', 'JARDIN Nº 68', 'CALLE SAN JUAN', 'M', 'SAN MARTIN', '', ''),
(519, '', '2º', '4600879', 'JARDIN Nº 69', 'CARLOS JOAQUIN PEÑALOZA', 'M-T', 'LA RIOJA', '', 'B'),
(520, '', '2º', '4600883', 'JARDIN Nº 70', 'MANZANA 1277 B° NESTOR KIRCHNER', 'M-T', 'LA RIOJA', '', 'B'),
(521, '', '2º', '4600881', 'JARDIN Nº 71', 'MIXTO MERCADO DE GONZALEZ ESQ. RAQUEL TEJADA', 'M-T', 'LA RIOJA', '', 'B'),
(522, '', '2º', '4600887', 'JARDIN Nº 72', 'PASO DE LA PATRIA S/N', 'M-T', 'LA RIOJA', '', 'B');
INSERT INTO `instituciones` (`id`, `tipo`, `categoria`, `cue`, `nombre`, `domicilio`, `turno`, `localidad`, `porcentaje_zona`, `zona`) VALUES
(523, '', '2º', '4600891', 'JARDIN Nº 73', 'CALEDONIA ROMERO B° COOPERATIVA I', 'M', 'ARAUCO', '', 'A'),
(524, '', '2º', '4600892', 'JARDIN Nº 74', 'SAN NICOLAS ', 'M', 'CHILECITO', '', 'D'),
(525, '', '2º', '4600888', 'JARDIN Nº 75', 'B° FRANCISCO I MANZANA 1003', 'M-T', 'LA RIOJA', '', 'B'),
(526, '', '2º', '4600897', 'JARDIN Nº 78', 'CALLE PUBLICA S/N B° LA BANDERITA', 'M-T', 'LA RIOJA', '', 'B'),
(527, '', '2º', '4600830', 'JARDIN Nº 81 GREGORIO CAVERO', 'LA PUNTILLA -CHILECITO', 'M-T', 'CHILECITO', '', 'D'),
(528, '', '2º', '4600898', 'JARDIN Nº 82', 'PUBLICA S/N B°CIUDAD NUEVA', 'M', 'CHAMICAL', '', 'L'),
(529, '', '2º', '4600903', 'JARDIN Nº 83', 'CALLE PUBLICA S/N B° EL ALTO', 'M-T', 'R. V. PEÑALOZA', '', 'O'),
(530, '', '1º', '4600874', 'Ce.S.S.E.R. SEMILLITA', 'RUTA N° 5 - KM 10 - LAS PARCELAS', 'M-T', 'LA RIOJA', '40', 'B'),
(531, '', '1º', '4600747', 'SAN PIO DE PIETRELCINA ', 'DEL RIO S/N  B° ALUNAI', 'M-T', 'LA RIOJA ', '', 'B'),
(532, '', '1º', '4600208', 'ESCUELA NORMAL', 'JULIO C. CORZO Y SAN  NICOLAS DE BARI O', 'M-T', 'LA RIOJA', '', 'B'),
(533, '', '1º', '4600226', 'ESCUELA NORMAL', 'ALBERTO G. OCAMPO Nº 48 ', 'T', 'CHILECITO', '', 'D'),
(534, '', '1º', '', 'ESCUELA NORMAL', 'CASTRO BARROS Nº 555', 'M-T', 'R. V. PEÑALOZA', '', 'O'),
(535, '', '1º', '', 'ESCUELA NORMAL', 'JOSE S. SALINAS Nº 328', 'M-T', 'OLTA', '10', 'F'),
(536, '', '2º', '4600572', 'JARDIN NUCLEO 1', 'JUAN DOMINGO PERON S/N', 'M-T', 'GRAL. LAMADRID', '70', 'G'),
(537, '', '2º', '4600573', 'JARDIN NUCLEO 2', 'AVDA. SAN PEDRO S/N', 'M-T', 'FAMATINA', '', 'E'),
(538, '', '1º', '4600373', 'JARDIN NUCLEO 3', 'JUAN FDO. QUIROGA S/N', 'M-T', 'SAN MARTIN', '30', 'J'),
(539, '', '1º', '4600539', 'JARDIN NUCLEO 4', 'JOAQUIN V. GONZALEZ', 'M-T', 'CHILECITO', '30', 'D'),
(540, '', '1º', '4600413', 'JARDIN NUCLEO 5 ', 'ROSARIO V. PEÑALOZA T 2 DE ABRIL', 'M-T', 'R.V. PEÑALOZA', '', 'O'),
(541, '', '1º', '4600525', 'JARDIN NUCLEO 6 MIGUEL ROBERTO MORENO', 'AVDA. MANUEL BELGRANO Nº 551', 'M-T', 'OLTA', '', 'F'),
(542, '', '1º', '4600131', 'JARDIN NUCLEO 7', 'CORONEL NICOLAS BARROS S/N', 'M-T', 'CASTRO BARROS', '30', 'C'),
(543, '', '1º', '4600104', 'JARDIN NUCLEO 8', 'RUTA NACIONAL Nº 40 ', 'M', 'S. BLAS DE LOS SAUCES', '30', 'R'),
(544, '', '1º', '4600075', 'JARDIN NUCLEO 9  M.L.V. DE DIAZ LUNA', 'LUIS MANSUETO DE LA FUENTE S/N', 'M-T', 'ARAUCO', '', 'A'),
(545, '', '1º', '4600905', 'JARDIN NUCLEO 10', 'TAMA', 'M-T', 'ANGEL V. PEÑALOZA', '30', 'S'),
(546, '', '1º', '', 'JARDIN NUCLEO 11', '', '', 'CAMPANA', '55', 'E'),
(547, '', '1º', '4600760', 'JARDIN NUCLEO 13 ', 'CAPIANGO DE QUIROGA S/N', 'M', 'EL PORTEZUELO', '55', 'N'),
(548, '', '2º', '4600759', 'JARDIN NUCLO 17 ', 'MENDOZA S/N', 'M-T', 'CHAMICAL', '', 'L'),
(549, 'medio', '', '', '', '', '', '', '', ''),
(550, '', '', '4600777', 'Centro de Educación Física N° 4', '', '', 'Villa Unión', '40', 'H'),
(551, '', '', '4600199', 'Colegio Pcial. R.V. Peñaloza', 'AV. PERON S/N', '', 'Villa Unión', '40', 'H'),
(552, '', '', '4600320', 'Escuela Profesional Mixta', 'LAS CARRERAS Bº TROYANOS', '', 'Vinchina', '55', 'K'),
(553, '', '', '4600319', 'Colegio Secundario ', 'CARLOS SAUL MENEN Bº LAS PIEDRITAS', '', 'Vinchina', '55', 'K'),
(554, '', '', '4600251', 'Colegio Secund. Agrotécnico Dr. Carlos S. Menem', '18 DE NOVIEMBRE S/N', '', 'Villa Castelli', '70', 'G'),
(555, '', '', '4600754', 'Centro de Educacion Física N° 7', '', '', 'Guandacol', '100', 'H'),
(556, '', '', '4600159', 'Colegio Secundario Mons. E. Angelelli', 'SAN MARTIN S/N', '', 'Guandacol', '100', 'H'),
(557, '', '', '4600755', 'Centro de Educacion Física N° 8', '', '', 'Pagancillo', '55', 'H'),
(558, '', '', '4600540', 'Colegio Secundario Prof. Ana Maria Morales', 'AV. 24 DE SEPTIEMBRE', '', 'Pagancillo', '55', 'H'),
(559, '', '', '4600168', 'Colegio Secundario Arsenio Salinas', 'CALLE PRINCIPAL S/N', '', 'Aicuña', '100', 'H'),
(560, '', '', '4600177', 'CEJA (Bachillerato para Adultos)', '', '', 'Villa Unión', '40', 'H'),
(561, '', '', '4600758', 'CASC (Cent. Animac. Soc. Cultural)', '', '', 'Villa Unión', '40', 'H'),
(562, '', '', '4600762', 'Cent. Animac. Soc. Cultural', '', '', 'Villa Castelli', '70', 'G'),
(563, '', '', '4600252', 'CEJA (Bachillerato para Adultos)', '', '', 'Villa Castelli', '70', 'G'),
(564, '', '', '4600804', 'Cent. Animac. Soc. Cultural', '', '', 'Guandacol', '100', 'H'),
(565, '', '', '4600240', 'Centro Polivalente de Arte', 'ADOLFO E. DAVILA 195', '', 'Chilecito', '', 'D'),
(566, '', '', '4600198', 'Escuela Pcial. De Comercio', 'Maxino Martinez y  Castro Barros', '', 'Chilecito', '', 'D'),
(567, '', '', '4600207', 'Cent. de Educacion Física N°2', 'Vicente Almonacid N° 351', '', 'Chilecito', '', 'D'),
(568, '', '', '4600233', 'E. P. E. T.  N° 2', 'ANGEL V. PEÑALOZA 92', '', 'Chilecito', '', 'D'),
(569, '', '', '4600231', 'E. P. E. T.  N° 1', 'Leovino D. Martinez esq. Alb. Cavero', '', 'Chilecito', '', 'D'),
(570, '', '', '4600226', 'Escuela Normal Superior', 'ALBERTO G. OCAMPO 48', '', 'Chilecito', '', 'D'),
(571, '', '', '4600237', 'Colegio Secundario', 'Bolivar S/N', '', 'Nonogasta', '30', 'D'),
(572, '', '', '4600179', 'Escuela Pcial. De Comercio', 'Joaquin V. Gonzalez S/N', '', 'Nonogasta', '30', 'D'),
(573, '', '', '4600119', 'Escuela Pcial. De Comercio', 'CALLE PRINCIPAL S/N', '', 'Famatina', '30', 'E'),
(574, '', '', '4600689', 'Misión Monotecnica N° 1', '', '', 'Famatina', '30', 'E'),
(575, '', '', '4600137', 'Escuela Agropecuaria', 'RUTA NAC. Nº 40 S/N', '', 'Famatina', '30', 'E'),
(576, '', '', '4600663', 'Centro de Educacion Agrícola', '', '', 'Famatina', '30', 'E'),
(577, '', '', '4600313', 'Colegio Pcial. Jose Manuel Estrada', 'Barrio Juan D. Peron S/N', '', 'Vichigasta', '30', 'D'),
(578, '', '', '4600177', 'Colegio Secundario', 'Gral. San Martin de Guemes N° 85', '', 'Anguinan', '30', 'D'),
(579, '', '', '4600134', 'Colegio Secundario San Jose de Capmanas', 'Calle Principal S/N B° san Nicolas', '', 'Campanas', '55', 'E'),
(580, '', '', '4600136', 'Colegio Secundario', 'SANTO DOMINGO S/N', '', 'Pituil', '55', 'E'),
(581, '', '', '4600311', 'Colegio Secundario', 'CAMINO DEL PEREGRINO S/N', '', 'Malligasta', '30', 'D'),
(582, '', '', '4600136', 'Coleg. Secund. Anexo Pituil', 'SANTO DOMINGO S/N', '', 'Santa Cruz', '100', 'E'),
(583, '', '', '4600799', 'Cent. Educ.Rosario Ocampo de Iribarren', 'Calle 21 de Septiembre S/N', '', 'Nonogasta', '30', 'D'),
(584, '', '', '4600866', 'Colegio Sec.Pcial. Nº 16', '24 DE ABRIL Y 15 DE JUNIO B° ALTOS DE Chilecito', '', 'Chilecito', '', 'D'),
(585, '', '', '4600886', 'Taller de Espec. “Mi Nuevo Sueño” ', '', '', 'Campanas', '55', 'E'),
(586, '', '', '4600234', 'CEJA (EVA DUARTE DE PERON)', '', '', 'Chilecito', '', 'D'),
(587, '', '', '4600236', 'CEJA (Bachillerato para Adultos)', '', '', 'Nonogasta', '30', 'D'),
(588, '', '', '4600794', 'Cent. Educ. Jov. Y Adulto', '', '', 'Famatina', '70', 'E'),
(589, '', '', '4600794', 'Cent. Educ. Jov. Y Adulto', '', '', 'Pituil', '55', 'E'),
(590, '', '', '4600133', 'Escuela Agrotécnica', 'SEVERO CHUMBITA S/Nº', '', 'Machigasta', '30', 'A'),
(591, '', '', '4600790', 'Esc. De Enseñanza Artística', '', '', 'Aimogasta', '30', 'A'),
(592, '', '', '4600073', 'Colegio Pcial. Sánchez Oviedo', '20 DE MAYO 650', '', 'Aimogasta', '30', 'A'),
(593, '', '', '4600839', 'Colegio Provincial', 'JOAQUÍN V. G S/N ', '', 'Anjullón', '30', 'C'),
(594, '', '', '4600128', 'Escuela Agropecuaria', 'RUTA 75 KM 72', '', 'Pinchas', '30', 'C'),
(595, '', '', '4600116', 'Colegio Provincial', 'AV. CESAR VALLEJO S/N', '', 'Villa Mazan', '30', 'A'),
(596, '', '', '4600146', 'Colegio Provincial', 'LA PLATA S/Nº ANILLACO', '', 'Anillaco', '30', 'C'),
(597, '', '', '4600490', 'Centro Educativo', '', '', 'Villa Mazan', '30', 'A'),
(598, '', '', '4600885', 'Anexo Sánchez Oviedo “Pcia de Salta”', 'ver tena colegio', '', 'Aimogasta', '', 'A'),
(599, '', '', '4600803', 'Colegio Provincial', 'AV. PEDRO I. DE CASTRO BARROS', '', 'Aminga', '30', 'C'),
(600, '', '', '4600885', 'Colegio Provincial N° 17', 'Aimogasta', '', 'Talacan', '', 'A'),
(601, '', '', '4600046', 'CEJA (Bachillerato para Adultos)', '', '', 'Aimogasta', '', 'A'),
(602, '', '', '4600763', 'Cent. Anim. Socio Cultural', '', '', 'Los Sauces', '30', 'R'),
(603, '', '', '4600765', 'Cent. Anim. Socio Cultural', '', '', 'Los Molinos', '40', 'C'),
(604, '', '', '4600108', 'CEJA (Bachillerato para Adultos)', '', '', 'Los Sauces', '30', 'R'),
(605, '', '', '', '', '', '', '', '', ''),
(606, '', '', '4600066', 'Colegio Básico Secundario', 'CARLOS ALVAREZ S/Nº ', '', 'Sanagasta', '30', 'P'),
(607, '', '', '4600061', 'Colegio Provincial N° 1', 'SAN NICOLAS DE BARI (O)N° 763', 'M-T-N', 'Capital', '', 'B'),
(608, '', '', '4600058', 'Colegio Provincial N° 2', 'BASE MARGARITA Y 2 DE ABRIL', '', 'Capital', '', 'B'),
(609, '', '', '4600064', 'Colegio Provincial N° 3', '30 DE SEPTIEMBRE S/N', '', 'Capital', '', 'B'),
(610, '', '', '4600156', 'Colegio Provincial Nº 4', 'BONDEMBENDER Y LAS HERAS S/N Bº 12 DE JUNIO', '', 'Capital', '', 'B'),
(611, '', '', '4600221', 'Colegio Pcial. Politécnico', 'JOAQUIN V. GONZALEZ 230', '', 'Capital', '', 'B'),
(612, '', '', '4600187', 'E.P.E.T. N° 1', 'AVDA. JUAN D. PERON Nº 1117', 'M-T', 'Capital', '', 'B'),
(613, '', '', '4600223', 'E.P.E.T. N° 2 ', 'AVDA. JUAN D.PERON Nº 820', 'M-T', 'Capital', '', 'B'),
(614, '', '', '4600049', 'Escuela Pcial. Comercio N° 1', '25 DE MAYO ESQ SAN ISIDRO', 'M-T-N', 'Capital', '', 'B'),
(615, '', '', '4600197', 'Escuela Pcial. Comercio N° 2', 'JOSE OYOLA ESQ. BAZAN Y BUSTOS B° SAN VICENTE', 'M-T', 'Capital', '', 'B'),
(616, '', '', '4600645', 'Centro Formación Prof. N° 2', '', '', 'Capital', '', 'B'),
(617, '', '', '4600766', 'Centro Educación Física N° 5', '', '', 'Capital', '', 'B'),
(618, '', '', '4600208', 'Esc. Normal Sup. P.I. Castro B', 'RIVADAVIA Y TAJAMAR', 'M-T', 'Capital', '', 'B'),
(619, '', '', '4600186', 'Escuela de Operadores Topog', 'Cabo 1° Pérez y Jeréz B° Alta Rioja ', '', 'Capital', '', 'B'),
(620, '', '', '4600081', 'Centro Polivalente de Arte', 'SECTOR 5 PEATONAL 500 Bº HOSPITAL', 'M-T', 'Capital', '', 'B'),
(621, '', '', '4600809', 'Colegio Provincial N° 8', 'JULIO CAMPOS S/Nº Bº 20 DE MAYO', '', 'Capital', '', 'B'),
(622, '', '', '4600810', 'Colegio Provincial N° 9', 'AVDA. SAN FRANCISCO LA QUEBRADA', '', 'Capital', '10', 'B'),
(623, '', '', '4600811', 'Colegio Provincial N° 10', 'APOSTOL PEDRO Y APOSTOL SAN JUDAS TADEO B° SAN CAYETANO', '', 'Capital', '', 'B'),
(624, '', '', '4600838', 'Colegio Provincial N° 14', 'CHEPES S/N B° SAN JOSÉ OBRERO', '', 'Capital', '', 'B'),
(625, '', '', '4600865', 'Colegio Provincial Nº 15', 'Indio Sanagua esq. Lucena - B° YACAMPIS', '', 'Capital', '', 'B'),
(626, '', '', '4600219', 'Esc. N° 247 “San Francisco”', 'Bazan y Bustos N° 661', '', 'Capital', '', 'B'),
(627, '', '', '4600819', 'Colegio Provincial Nº 12', 'Felipe Ibarra S/N B° Nueva Rioja', '', 'Capital', '', 'B'),
(628, '', '', '4600831', 'Colegio Provincial N° 7', 'AVDA. SAN NICOLAS DE BARI ESTE', '', 'Capital', '', 'B'),
(629, '', '', '4600528', 'Coleg. Secund. “Alberto Breyer”', 'AVDA. PERON', '', 'Patquia', '30', 'M'),
(630, '', '', '4600818', 'Colegio Provincial N° 11', 'RUTA Nº 5 Km 10 Colonia Frutihortícola', '', 'Capital', '40', 'B'),
(631, '', '', '4600820', 'Colegio Provincial N° 13', 'Ramón Navarro S/N Bº FALDEO DEL VELAZCO SUR', '', 'Capital', '', 'B'),
(632, '', '', '', 'Escuela I. R. S.', '', '', 'Capital', '', 'B'),
(633, '', '', '4600807', 'Colegio Provincial N° 5', 'CALLE 26 ESQ. LOMA BLANCA S/Nº', '', 'Capital', '', 'B'),
(634, '', '', '4600808', 'Colegio Provincial N° 6', 'CALLE PÚBLICA Bº MARIA AUGUSTA', '', 'Capital', '10', 'B'),
(635, '', '', '4600882', 'Colegio Provincial N° 18', 'RICARDO QUIROGA S/N URBANO 40', '', 'Capital', '', 'B'),
(636, '', '', '4600889', 'Colegio Provincial N° 19', 'B° NESTOR KIRCHNER', '', 'Capital', '', 'B'),
(637, '', '', '4600900', 'Colegio Provincial N° 20', 'B° LAS AGAVES', '', 'Capital', '', 'B'),
(638, '', '', '4600904', 'Colegio Provincial N° 21', 'RUTA Nº 5 KM 50', '', 'san lorenzo', '100', 'B'),
(639, '', '', '4600904', 'Colegio Provincial N° 21', 'RUTA Nº 6 EL BARRIAL', '', 'el barrial', '100', 'B'),
(640, '', '', '', 'EQUIPOS TECNICOS - CASA CENTRAL', 'Catamarca N° 65', 'M-T', 'Capital', '', 'B'),
(641, '', '', '', 'EQUIPOS TECNICOS - CASA CENTRAL', 'Catamarca N° 65', 'M-T', 'Capital', '', 'B'),
(642, '', '', '', 'EQUIPOS TECNICOS - CASA CENTRAL', 'Catamarca N° 65', 'M-T', 'Capital', '', 'B'),
(643, '', '', '4600216', 'C.E.N.S. N° 150', '', '', 'Capital', '', 'B'),
(644, '', '', '4600191', 'C.E.J.A. N° 187', '', '', 'Capital', '', 'B'),
(645, '', '', '4600154', 'C.E.N.S. N° 326', '', '', 'Capital', '', 'B'),
(646, '', '', '4600779', 'Centro de Formación Laboral', '', '', 'Capital', '', 'B'),
(647, '', '', '', 'Formación y Empleo p/ Jóvenes', '', '', 'Capital', '', 'B'),
(648, '', '', '4600328', 'Escuela Tecnica Agropecuaria EMETA', 'RUTA N° 25 KM 4 - PARAJE SAN BARTOLO', '', 'Chamical', '40', 'L'),
(649, '', '', '4600752', 'Centro de Educacion Física N° 1 ', '', '', 'Chamical', '', 'L'),
(650, '', '', '4600301', 'Escuela Polivalente de Arte', 'CARLOS DE DIOS MURIAS Nº 169', '', 'Chamical', '', 'L'),
(651, '', '', '4600298', 'Escuela Provincial de Comercio', 'GABRIEL LONGUIVILLE Nº 69', '', 'Chamical', '', 'L'),
(652, '', '', '4600299', 'E. P. E. T.  N° 1', 'Córdoba N° 445', '', 'Chamical', '', 'L'),
(653, '', '', '4600757', 'Misión Monotécnica n°58', '', '', 'Olta', '10', 'F'),
(654, '', '', '4600773', 'Centro de Educacion Física N° 6', '', '', 'Olta', '10', 'F'),
(655, '', '', '4600494', 'Esc. Normal Sup. “Rep.de Haiti”', 'JOSE SALINAS Nº 348', '', 'Olta', '10', 'F'),
(656, '', '', '4600527', 'Coleg. Provincial Abel Bazán Y Bustos', 'RUTA Nº 29 ACCESO NORTE', 'M-T', 'Tama', '30', 'S'),
(657, '', '', '4600469', 'Colegio secundario', 'PUNTA DE LOS LLANOS', '', 'P. de los Llanos', '30', 'S'),
(658, '', '', '4600492', 'Colegio Secundario', 'AV. ÁNGEL V. PEÑALOZA S/N LOMA BLANCA', '', 'Loma Blanca', '40', 'F'),
(659, '', '', '4600876', 'CASC (centro de Anim. Soc Cultural)', '', '', 'Olta', '', 'F'),
(660, '', '', '4600875', 'CEJA ( Bachillerato para Adultos)', '', '', 'Olta', '', 'F'),
(661, '', '', '4600895', 'Instituto de Educación Técnica N° 1', '', '', 'Olta', '10', 'F'),
(662, '', '', '4600256', 'Bachillerato Para Adultos', '', '', 'Chamical', '', 'L'),
(663, '', '', '4600876', 'CASC (centro de Anim. Soc Cultural)', '', '', 'Olta', '', 'F'),
(664, '', '', '4600875', 'CEJA ( Bachillerato para Adultos)', '', '', 'Olta', '', 'F'),
(665, '', '', '4600753', 'Centro de Educacion Física N°3', '', '', 'Chepes', '', 'O'),
(666, '', '', '4600480', 'E. P. E. T.  N° 1', 'ROQUE SAENZ PEÑA S/N', '', 'Chepes', '', 'O'),
(667, '', '', '4600417', 'Colegio Provincial', 'JOAQUÍN V. GONZÁLEZ N° 255', '', 'Chepes', '', 'O'),
(668, '', '', '4600479', 'Escuela Normal Superior', 'CASTRO BARROS Nº 550', '', 'Chepes', '', 'O'),
(669, '', '', '4600519', 'Colegio Secundario', 'CALLE PUBLICA S/Nº ', '', 'El Portezuelo', '55', 'N'),
(670, '', '', '4600515', 'Colegio Provincial J.Z. Agüero Vera', 'MOSEÑOR ANGELELLI S/N', '', 'Malanzan', '40', 'N'),
(671, '', '', '4600516', 'Colegio Secundario', 'PARAJE NIÑO ALCALDE', '', 'Nacate', '70', 'N'),
(672, '', '', '4600387', 'Escuela Agrotécnica', 'ELTOTORAL', '', 'El Totoral', '120', 'O'),
(673, '', '', '', 'Exp. Pilot. Itinerante', '', '', 'Nacate', '70', 'N'),
(674, '', '', '4600794', 'Prog. De Educ. A Distancia Adul', '', '', 'San Martin', '30', 'J'),
(675, '', '', '', 'Centro Cultural Joaquín V González', '', '', 'Chepes', '', 'O'),
(676, '', '', '4600479', 'Escuela Normal extension aulica villacasana', 'VILLA CASANA', '', 'Villa Casana', '100', 'O'),
(677, '', '', '4600470', 'Escuela de Comercio', 'AV. SAN MARTIN', '', 'Ulapes', '30', 'O'),
(678, '', '', '4600468', 'Escuela Agropecuaria GRAL. MANUEL BELGRANO', 'AV. SAN MARTÍN', '', 'Ulapes', '30', 'O'),
(679, '', '', '4600468', 'ver nombre institucion', 'AV. SAN MARTÍN', '', 'Ulapes', '30', 'J'),
(680, '', '', '4600826', 'COLEGIO SECUNDARIO EL CADILLO ', 'EL CADILLO', '', 'Ulapes', '120', 'J'),
(681, '', '', '4600481', 'CEJA (Bachillerato para Adultos)', '', '', 'Chepes', '', 'O'),
(682, '', '', '4600517', 'CEJA (Bachillerato Para Adultos)', '', '', 'El Portezuelo', '55', 'N'),
(683, '', '', '4600483', 'Colegio Secundario', 'SARMIENTO N° 126', '', 'Milagro', '30', 'I'),
(684, '', '', '4600484', 'Escuela Pcial. De Comercio', 'SARMIENTO Nº 126', '', 'Milagro', '30', 'I'),
(685, '', '', '4600430', 'Colegio Secundario', 'SANTA RITA DE CATUNA', '', 'Catuna', '40', 'I'),
(686, '', '', '4600478', 'Colegio Secundario', 'FACUNDO QUIROGA S/Nº', '', 'Desiderio Tello', '40', 'O'),
(687, '', '', '4600521', 'Colegio Secundario', 'CASTRO BARROS S/Nº', '', 'Olpas', '70', 'I'),
(688, '', '', '4600437', 'Colegio Secundario', 'AMBIL', '', 'Ambil', '70', 'I'),
(689, '', '', '4600424', 'Bachillerato para Adultos', '', '', 'Milagro', '30', 'I'),
(690, '', '', '4600429', 'CEJA (Centro Educ. para Jov. Y Adultos', '', '', 'Catuna', '40', 'I'),
(691, '', '', '', 'C.A.S.C', '', '', 'Milagro', '30', 'I'),
(692, 'superior', '', '', '', '', '', '', '', ''),
(693, '', '', '', 'SEDE SUPERVISION ZONA I', '', '', 'VILLA UNION', '40', 'H'),
(694, '', '', '4600201', 'I.S.F.D.” Dr. Eusebio N. Páez”', '', '', 'Villa Unión', '40', 'H'),
(695, '', '', '4600321', 'I.S.F.D. Y T. P.', '', '', 'Vinchina', '55', 'K'),
(696, '', '', '4600325', 'I.S.F.D Prof. Victor Mauricio Quintero', '18 de noviembre s/n', '', 'Villa Castelli', '70', 'G'),
(697, '', '', '4600846', 'I.S.F.D. Y T. Gral Felipe Varela', '', '', 'Guandacol', '100', 'H'),
(698, '', '', '', 'SEDE SUPERVISION ZONA II', '', '', 'CHILECITO', '', 'D'),
(699, '', '', '4600230', 'I.S.F.D. “Alberto G. Cavero', 'Leovino D. Martinez N° 160', '', 'Chilecito', '', 'D'),
(700, '', '', '4600817', 'I.S.F.D. “Joaquín V. González”', 'Alberto G. Ocampo N° 48', '', 'Chilecito', '', 'D'),
(701, '', '', '4600140', 'I.S.F.D. Y T.', '19 de Abril S/N', '', 'Famatina', '30', 'E'),
(702, '', '', '4600317', 'I.S.F.T.', '', '', 'Nonogasta', '30', 'D'),
(703, '', '', '4600316', 'I.S.F.D.', '', '', 'Sañogasta', '30', 'D'),
(704, '', '', '4600847', 'I.S.F.T.P ', 'Victoria Romero S/N', '', 'Pituil', '55', 'E'),
(705, '', '', '', 'SEDE SUPERVISION ZONA III', '', '', 'AIMOGASTA', '', 'A'),
(706, '', '', '4600950', 'I.S.F.D. Lengua e Historia(Severo Chumbita)', '', '', 'Aimogasta', '', 'A'),
(707, '', '', '4600122', 'I.S.F.D. “Madre Teresa de Calcuta”', '', '', 'Anjullon', '30', 'C'),
(708, '', '', '4600106', 'I.S.F.D', '', '', 'Los Robles', '30', 'R'),
(709, '', '', '', '', '', '', '', '', ''),
(710, '', '', '', 'MIEMBROS DE JUNTA ', 'Bulnes y Caja de Ahorro B° Evita', 'M-T', 'Capital', '', 'B'),
(711, '', '', '4600467', 'ISFD Alberto Cavero', '', '', 'Patquía', '30', 'B'),
(712, '', '', '4600188', 'I.S.F.D. “Prof. Ricardo Viñas”', '', 'M-T', 'Capital', '', 'B'),
(713, '', '', '4600053', 'I.S.F.D. “Albino S.  Barros”', '', 'M-T-N', 'Capital', '', 'B'),
(714, '', '', '4600060', 'I.S.F.D Y T. Prof. Alberto Mario Crulcich', 'Santa Fe esq. Hipolito Irigoyen', 'M-T-N', 'Capital', '', 'B'),
(715, '', '', '4600182', 'I.S.F.D. “Dra. Carolina T. García”', 'Avda. Facundo Quiroga ', 'M-T', 'Capital', '', 'B'),
(716, '', '', '4600740', 'I.S.F.T “Otto Krausse”', '', '', 'Capital', '', 'B'),
(717, '', '', '4600821', 'I.S.F.D. “P. I. Castro Barros', '', '', 'Capital', '', 'B'),
(718, '', '', '4600740', 'I.S.F.T “BRIGADIER JUAN F. QUIROGA”', '', 'M-T', 'Capital', '', 'B'),
(719, '', '', '', 'EQUIPOS TECNICOS - CASA CENTRAL', 'Catamarca N° 65', 'M-T', 'Capital', '', 'B'),
(720, '', '', '', 'EQUIPOS TECNICOS - CASA CENTRAL', 'Catamarca N° 65', 'M-T', 'Capital', '', 'B'),
(721, '', '', '', 'EQUIPOS TECNICOS - CASA CENTRAL', 'Catamarca N° 65', 'M-T', 'Capital', '', 'B'),
(722, '', '', '', 'SEDE SUPERVISION ZONA V', '', '', 'Chamical', '', 'L'),
(723, '', '', '4600330', 'I.S.F.D. “Teresa Cavero”', '', '', 'Chamical', '', 'L'),
(724, '', '', '4600491', 'I.S.F.D. “Artemio Moreno”', '', '', 'Olta', '10', 'F'),
(725, '', '', '4600488', 'I.S.F.T. “Victoria Romero”', '', '', 'Tama', '30', 'S'),
(726, '', '', '4600332', 'I.S.F.D. “Marta Estela Barrera de Artaza”', '', '', 'Chañar', '40', 'F'),
(727, '', '', '4600732', 'I.S.F.D “José Salinas”', '', '', 'Olta', '10', 'F'),
(728, '', '', '', 'SEDE SUPERVISION ZONA VI', '', '', 'CHEPES', '', 'O'),
(729, '', '', '4600415', 'I.S.F.T.P. “Brigadier Juan F. Quiroga', '', '', 'Chepes', '', 'O'),
(730, '', '', '4600472', 'I.S.F.D.de Educacion Inicial', '', '', 'Chepes', '', 'O'),
(731, '', '', '4600416', 'I.S.F.D. De Lengua e Historia', '', '', 'Chepes', '', 'O'),
(732, '', '', '4600502', 'I.S.F.T. y D. PRESBITERO LUIS PRADELLA', '', '', 'Malanzan', '40', 'N'),
(733, '', '', '4600733', 'I.S.F.D. “Juan F. Quiroga”', '', '', 'Chepes', '', 'O'),
(734, '', '', '4600465', 'ISFD Ariel Ferraro', '', '', 'Ulapes', '30', 'J'),
(735, '', '', '', 'SEDE SUPERVISION ZONA VII', '', '', 'MILAGRO', '40', 'I'),
(736, '', '', '4600482', 'I.S.F.D. “Ceferino Quintiero”', '', '', 'Milagro', '30', 'I'),
(737, '', '', '4600428', 'I.S.F.T. (TECNICATURA)', '', '', 'Catuna', '40', 'I'),
(738, '', '', '4600140', 'I.S.F.T', '', '', 'Desiderio Tello', '40', 'O'),
(739, '', '', '4600777', 'Centro de Educación Física N° 4', '', '', 'Villa Unión', '40', 'H'),
(740, '', '', '4600199', 'Colegio Pcial. R.V. Peñaloza', 'AV. PERON S/N', '', 'Villa Unión', '40', 'H'),
(741, '', '', '4600320', 'Escuela Profesional Mixta', 'LAS CARRERAS Bº TROYANOS', '', 'Vinchina', '55', 'K'),
(742, '', '', '4600319', 'Colegio Secundario ', 'CARLOS SAUL MENEN Bº LAS PIEDRITAS', '', 'Vinchina', '55', 'K'),
(743, '', '', '4600251', 'Colegio Secund. Agrotécnico Dr. Carlos S. Menem', '18 DE NOVIEMBRE S/N', '', 'Villa Castelli', '70', 'G'),
(744, '', '', '4600754', 'Centro de Educacion Física N° 7', '', '', 'Guandacol', '100', 'H'),
(745, '', '', '4600159', 'Colegio Secundario Mons. E. Angelelli', 'SAN MARTIN S/N', '', 'Guandacol', '100', 'H'),
(746, '', '', '4600755', 'Centro de Educacion Física N° 8', '', '', 'Pagancillo', '55', 'H'),
(747, '', '', '4600540', 'Colegio Secundario Prof. Ana Maria Morales', 'AV. 24 DE SEPTIEMBRE', '', 'Pagancillo', '55', 'H'),
(748, '', '', '4600168', 'Colegio Secundario Arsenio Salinas', 'CALLE PRINCIPAL S/N', '', 'Aicuña', '100', 'H'),
(749, '', '', '4600325', 'I.S.F.D Prof. Victor Mauricio Quintero', '18 de noviembre s/n', '', 'Villa Castelli', '70', 'G'),
(750, '', '', '4600177', 'CEJA (Bachillerato para Adultos)', '', '', 'Villa Unión', '40', 'H'),
(751, '', '', '4600758', 'CASC (Cent. Animac. Soc. Cultural)', '', '', 'Villa Unión', '40', 'H'),
(752, '', '', '4600762', 'Cent. Animac. Soc. Cultural', '', '', 'Villa Castelli', '70', 'G'),
(753, '', '', '4600252', 'CEJA (Bachillerato para Adultos)', '', '', 'Villa Castelli', '70', 'G'),
(754, '', '', '4600804', 'Cent. Animac. Soc. Cultural', '', '', 'Guandacol', '100', 'H'),
(755, '', '', '4600240', 'Centro Polivalente de Arte', 'ADOLFO E. DAVILA 195', '', 'Chilecito', '', 'D'),
(756, '', '', '4600198', 'Escuela Pcial. De Comercio', 'Maxino Martinez y  Castro Barros', '', 'Chilecito', '', 'D'),
(757, '', '', '4600207', 'Cent. de Educacion Física N°2', 'Vicente Almonacid N° 351', '', 'Chilecito', '', 'D'),
(758, '', '', '4600233', 'E. P. E. T.  N° 2', 'ANGEL V. PEÑALOZA 92', '', 'Chilecito', '', 'D'),
(759, '', '', '4600231', 'E. P. E. T.  N° 1', 'Leovino D. Martinez esq. Alb. Cavero', '', 'Chilecito', '', 'D'),
(760, '', '', '4600226', 'Escuela Normal Superior', 'ALBERTO G. OCAMPO 48', '', 'Chilecito', '', 'D'),
(761, '', '', '4600237', 'Colegio Secundario', 'Bolivar S/N', '', 'Nonogasta', '30', 'D'),
(762, '', '', '4600179', 'Escuela Pcial. De Comercio', 'Joaquin V. Gonzalez S/N', '', 'Nonogasta', '30', 'D'),
(763, '', '', '4600119', 'Escuela Pcial. De Comercio', 'CALLE PRINCIPAL S/N', '', 'Famatina', '30', 'E'),
(764, '', '', '4600689', 'Misión Monotecnica N° 1', '', '', 'Famatina', '30', 'E'),
(765, '', '', '4600137', 'Escuela Agropecuaria', 'RUTA NAC. Nº 40 S/N', '', 'Famatina', '30', 'E'),
(766, '', '', '4600663', 'Centro de Educacion Agrícola', '', '', 'Famatina', '30', 'E'),
(767, '', '', '4600313', 'Colegio Pcial. Jose Manuel Estrada', 'Barrio Juan D. Peron S/N', '', 'Vichigasta', '30', 'D'),
(768, '', '', '4600177', 'Colegio Secundario', 'Gral. San Martin de Guemes N° 85', '', 'Anguinan', '30', 'D'),
(769, '', '', '4600134', 'Colegio Secundario San Jose de Capmanas', 'Calle Principal S/N B° san Nicolas', '', 'Campanas', '55', 'E'),
(770, '', '', '4600136', 'Colegio Secundario', 'SANTO DOMINGO S/N', '', 'Pituil', '55', 'E'),
(771, '', '', '4600311', 'Colegio Secundario', 'CAMINO DEL PEREGRINO S/N', '', 'Malligasta', '30', 'D'),
(772, '', '', '4600136', 'Coleg. Secund. Anexo Pituil', 'SANTO DOMINGO S/N', '', 'Santa Cruz', '100', 'E'),
(773, '', '', '4600799', 'Cent. Educ.Rosario Ocampo de Iribarren', 'Calle 21 de Septiembre S/N', '', 'Nonogasta', '30', 'D'),
(774, '', '', '4600866', 'Colegio Sec.Pcial. Nº 16', '24 DE ABRIL Y 15 DE JUNIO B° ALTOS DE Chilecito', '', 'Chilecito', '', 'D'),
(775, '', '', '4600886', 'Taller de Espec. “Mi Nuevo Sueño” ', '', '', 'Campanas', '55', 'E'),
(776, '', '', '4600230', 'I.S.F.D. “Alberto G. Cavero', 'Leovino D. Martinez N° 160', '', 'Chilecito', '', 'D'),
(777, '', '', '4600817', 'I.S.F.D. “Joaquín V. González”', 'Alberto G. Ocampo N° 48', '', 'Chilecito', '', 'D'),
(778, '', '', '4600140', 'I.S.F.D. Y T.', '19 de Abril S/N', '', 'Famatina', '30', 'E'),
(779, '', '', '4600847', 'I.S.F.T.P ', 'Victoria Romero S/N', '', 'Pituil', '55', 'E'),
(780, '', '', '4600234', 'CEJA (EVA DUARTE DE PERON)', '', '', 'Chilecito', '', 'D'),
(781, '', '', '4600236', 'CEJA (Bachillerato para Adultos)', '', '', 'Nonogasta', '30', 'D'),
(782, '', '', '4600794', 'Cent. Educ. Jov. Y Adulto', '', '', 'Famatina', '70', 'E'),
(783, '', '', '4600794', 'Cent. Educ. Jov. Y Adulto', '', '', 'Pituil', '55', 'E'),
(784, '', '', '4600133', 'Escuela Agrotécnica', 'SEVERO CHUMBITA S/Nº', '', 'Machigasta', '30', 'A'),
(785, '', '', '4600790', 'Esc. De Enseñanza Artística', '', '', 'Aimogasta', '30', 'A'),
(786, '', '', '4600073', 'Colegio Pcial. Sánchez Oviedo', '20 DE MAYO 650', '', 'Aimogasta', '30', 'A'),
(787, '', '', '4600839', 'Colegio Provincial', 'JOAQUÍN V. G S/N ', '', 'Anjullón', '30', 'C'),
(788, '', '', '4600128', 'Escuela Agropecuaria', 'RUTA 75 KM 72', '', 'Pinchas', '30', 'C'),
(789, '', '', '4600116', 'Colegio Provincial', 'AV. CESAR VALLEJO S/N', '', 'Villa Mazan', '30', 'A'),
(790, '', '', '4600146', 'Colegio Provincial', 'LA PLATA S/Nº ANILLACO', '', 'Anillaco', '30', 'C'),
(791, '', '', '4600490', 'Centro Educativo', '', '', 'Villa Mazan', '30', 'A'),
(792, '', '', '4600885', 'Anexo Sánchez Oviedo “Pcia de Salta”', '', '', 'Aimogasta', '', 'A'),
(793, '', '', '4600803', 'Colegio Provincial', 'AV. PEDRO I. DE CASTRO BARROS', '', 'Aminga', '30', 'C'),
(794, '', '', '4600885', 'Colegio Provincial N° 17', 'Aimogasta', '', 'Talacan', '', 'A'),
(795, '', '', '4600046', 'CEJA (Bachillerato para Adultos)', '', '', 'Aimogasta', '', 'A'),
(796, '', '', '4600763', 'Cent. Anim. Socio Cultural', '', '', 'Los Sauces', '30', 'R'),
(797, '', '', '4600765', 'Cent. Anim. Socio Cultural', '', '', 'Los Molinos', '40', 'C'),
(798, '', '', '4600108', 'CEJA (Bachillerato para Adultos)', '', '', 'Los Sauces', '30', 'R'),
(799, '', '', '4600066', 'Colegio Básico Secundario', 'CARLOS ALVAREZ S/Nº ', '', 'Sanagasta', '30', 'P'),
(800, '', '', '4600061', 'Colegio Provincial N° 1', 'SAN NICOLAS DE BARI (O)N° 763', 'M-T-N', 'Capital', '', 'B'),
(801, '', '', '4600058', 'Colegio Provincial N° 2', 'BASE MARGARITA Y 2 DE ABRIL', '', 'Capital', '', 'B'),
(802, '', '', '4600064', 'Colegio Provincial N° 3', '30 DE SEPTIEMBRE S/N', '', 'Capital', '', 'B'),
(803, '', '', '4600156', 'Colegio Provincial Nº 4', 'BONDEMBENDER Y LAS HERAS S/N Bº 12 DE JUNIO', '', 'Capital', '', 'B'),
(804, '', '', '4600221', 'Colegio Pcial. Politécnico', 'JOAQUIN V. GONZALEZ 230', '', 'Capital', '', 'B'),
(805, '', '', '4600187', 'E.P.E.T. N° 1', 'AVDA. JUAN D. PERON Nº 1117', 'M-T', 'Capital', '', 'B'),
(806, '', '', '4600223', 'E.P.E.T. N° 2 ', 'AVDA. JUAN D.PERON Nº 820', 'M-T', 'Capital', '', 'B'),
(807, '', '', '4600049', 'Escuela Pcial. Comercio N° 1', '25 DE MAYO ESQ SAN ISIDRO', 'M-T-N', 'Capital', '', 'B'),
(808, '', '', '4600197', 'Escuela Pcial. Comercio N° 2', 'JOSE OYOLA ESQ. BAZAN Y BUSTOS B° SAN VICENTE', 'M-T', 'Capital', '', 'B'),
(809, '', '', '4600645', 'Centro Formación Prof. N° 2', '', '', 'Capital', '', 'B'),
(810, '', '', '4600766', 'Centro Educación Física N° 5', '', '', 'Capital', '', 'B'),
(811, '', '', '4600208', 'Esc. Normal Sup. P.I. Castro B', 'RIVADAVIA Y TAJAMAR', 'M-T', 'Capital', '', 'B'),
(812, '', '', '4600186', 'Escuela de Operadores Topog', 'Cabo 1° Pérez y Jeréz B° Alta Rioja ', '', 'Capital', '', 'B'),
(813, '', '', '4600081', 'Centro Polivalente de Arte', 'SECTOR 5 PEATONAL 500 Bº HOSPITAL', 'M-T', 'Capital', '', 'B'),
(814, '', '', '4600809', 'Colegio Provincial N° 8', 'JULIO CAMPOS S/Nº Bº 20 DE MAYO', '', 'Capital', '', 'B'),
(815, '', '', '4600810', 'Colegio Provincial N° 9', 'AVDA. SAN FRANCISCO LA QUEBRADA', '', 'Capital', '10', 'B'),
(816, '', '', '4600811', 'Colegio Provincial N° 10', 'APOSTOL PEDRO Y APOSTOL SAN JUDAS TADEO B° SAN CAYETANO', '', 'Capital', '', 'B'),
(817, '', '', '4600838', 'Colegio Provincial N° 14', 'CHEPES S/N B° SAN JOSÉ OBRERO', '', 'Capital', '', 'B'),
(818, '', '', '4600865', 'Colegio Provincial Nº 15', 'Indio Sanagua esq. Lucena - B° YACAMPIS', '', 'Capital', '', 'B'),
(819, '', '', '4600219', 'Esc. N° 247 “San Francisco”', 'Bazan y Bustos N° 661', '', 'Capital', '', 'B'),
(820, '', '', '4600819', 'Colegio Provincial Nº 12', 'Felipe Ibarra S/N B° Nueva Rioja', '', 'Capital', '', 'B'),
(821, '', '', '4600831', 'Colegio Provincial N° 7', 'AVDA. SAN NICOLAS DE BARI ESTE', '', 'Capital', '', 'B'),
(822, '', '', '4600528', 'Coleg. Secund. “Alberto Breyer”', 'AVDA. PERON', '', 'Patquia', '30', 'M'),
(823, '', '', '4600818', 'Colegio Provincial N° 11', 'RUTA Nº 5 Km 10 Colonia Frutihortícola', '', 'Capital', '40', 'B'),
(824, '', '', '4600820', 'Colegio Provincial N° 13', 'Ramón Navarro S/N Bº FALDEO DEL VELAZCO SUR', '', 'Capital', '', 'B'),
(825, '', '', '', 'Escuela I. R. S.', '', '', 'Capital', '', 'B'),
(826, '', '', '4600807', 'Colegio Provincial N° 5', 'CALLE 26 ESQ. LOMA BLANCA S/Nº', '', 'Capital', '', 'B'),
(827, '', '', '4600808', 'Colegio Provincial N° 6', 'CALLE PÚBLICA Bº MARIA AUGUSTA', '', 'Capital', '10', 'B'),
(828, '', '', '4600882', 'Colegio Provincial N° 18', 'RICARDO QUIROGA S/N URBANO 40', '', 'Capital', '', 'B'),
(829, '', '', '4600889', 'Colegio Provincial N° 19', 'B° NESTOR KIRCHNER', '', 'Capital', '', 'B'),
(830, '', '', '4600900', 'Colegio Provincial N° 20', 'B° LAS AGAVES', '', 'Capital', '', 'B'),
(831, '', '', '4600904', 'Colegio Provincial N° 21', 'rutammmmmm', '', '', '', ''),
(832, '', '', '', 'MIEMBROS DE JUNTA ', 'Bulnes y Caja de Ahorro B° Evita', 'M-T', 'Capital', '', 'B'),
(833, '', '', '4600060', 'I.S.F.D Y T. Prof. Alberto Mario Crulcich', 'Santa Fe esq. Hipolito Irigoyen', 'M-T-N', 'Capital', '', 'B'),
(834, '', '', '4600182', 'I.S.F.D. “Dra. Carolina T. García”', 'Avda. Facundo Quiroga ', 'M-T', 'Capital', '', 'B'),
(835, '', '', '', 'EQUIPOS TECNICOS - CASA CENTRAL', 'Catamarca N° 65', 'M-T', 'Capital', '', 'B'),
(836, '', '', '', 'EQUIPOS TECNICOS - CASA CENTRAL', 'Catamarca N° 65', 'M-T', 'Capital', '', 'B'),
(837, '', '', '', 'EQUIPOS TECNICOS - CASA CENTRAL', 'Catamarca N° 65', 'M-T', 'Capital', '', 'B'),
(838, '', '', '4600216', 'C.E.N.S. N° 150', '', '', 'Capital', '', 'B'),
(839, '', '', '4600191', 'C.E.J.A. N° 187', '', '', 'Capital', '', 'B'),
(840, '', '', '4600154', 'C.E.N.S. N° 326', '', '', 'Capital', '', 'B'),
(841, '', '', '4600779', 'Centro de Formación Laboral', '', '', 'Capital', '', 'B'),
(842, '', '', '', 'Formación y Empleo p/ Jóvenes', '', '', 'Capital', '', 'B'),
(843, '', '', '4600328', 'Escuela Tecnica Agropecuaria EMETA', 'RUTA N° 25 KM 4 - PARAJE SAN BARTOLO', '', 'Chamical', '40', 'L'),
(844, '', '', '4600752', 'Centro de Educacion Física N° 1 ', '', '', 'Chamical', '', 'L'),
(845, '', '', '4600301', 'Escuela Polivalente de Arte', 'CARLOS DE DIOS MURIAS Nº 169', '', 'Chamical', '', 'L'),
(846, '', '', '4600298', 'Escuela Provincial de Comercio', 'GABRIEL LONGUIVILLE Nº 69', '', 'Chamical', '', 'L'),
(847, '', '', '4600299', 'E. P. E. T.  N° 1', 'Córdoba N° 445', '', 'Chamical', '', 'L'),
(848, '', '', '4600757', 'Misión Monotécnica n°58', '', '', 'Olta', '10', 'F'),
(849, '', '', '4600773', 'Centro de Educacion Física N° 6', '', '', 'Olta', '10', 'F'),
(850, '', '', '4600494', 'Esc. Normal Sup. “Rep.de Haiti”', 'JOSE SALINAS Nº 348', '', 'Olta', '10', 'F'),
(851, '', '', '4600527', 'Coleg. Provincial Abel Bazán Y Bustos', 'RUTA Nº 29 ACCESO NORTE', '', 'Tama', '30', 'S'),
(852, '', '', '4600469', 'Colegio secundario', 'PUNTA DE LOS LLANOS', '', 'P. de los Llanos', '30', 'S'),
(853, '', '', '4600492', 'Colegio Secundario', 'AV. ÁNGEL V. PEÑALOZA S/N LOMA BLANCA', '', 'Loma Blanca', '40', 'F'),
(854, '', '', '4600876', 'CASC (centro de Anim. Soc Cultural)', '', '', 'Olta', '', 'F'),
(855, '', '', '4600875', 'CEJA ( Bachillerato para Adultos)', '', '', 'Olta', '', 'F'),
(856, '', '', '4600256', 'Bachillerato Para Adultos', '', '', 'Chamical', '', 'L'),
(857, '', '', '4600876', 'CASC (centro de Anim. Soc Cultural)', '', '', 'Olta', '', 'F'),
(858, '', '', '4600875', 'CEJA ( Bachillerato para Adultos)', '', '', 'Olta', '', 'F'),
(859, '', '', '4600753', 'Centro de Educacion Física N°3', '', '', 'Chepes', '', 'O'),
(860, '', '', '4600417', 'Colegio Provincial', 'JOAQUÍN V. GONZÁLEZ N° 255', '', 'Chepes', '', 'O'),
(861, '', '', '4600479', 'Escuela Normal Superior', 'CASTRO BARROS Nº 550', '', 'Chepes', '', 'O'),
(862, '', '', '4600519', 'Colegio Secundario', 'CALLE PUBLICA S/Nº ', '', 'El Portezuelo', '55', 'N'),
(863, '', '', '4600515', 'Colegio Provincial J.Z. Agüero Vera', 'MOSEÑOR ANGELELLI S/N', '', 'Malanzan', '40', 'N'),
(864, '', '', '4600516', 'Colegio Secundario', 'PARAJE NIÑO ALCALDE', '', 'Nacate', '70', 'N'),
(865, '', '', '4600387', 'Escuela Aerotécnica', 'ELTOTORAL', '', 'El Totoral', '120', 'O'),
(866, '', '', '', 'Exp. Pilot. Itinerante', '', '', 'Nacate', '70', 'N'),
(867, '', '', '4600451', 'Esc. N° 117', 'AGUA DE LA PIEDRA', '', 'Agua de la Pied', '55', 'O'),
(868, '', '', '4600461', 'Esc. N° 128', 'LA LAGUNA', '', 'La Laguna', '120', 'O'),
(869, '', '', '4600460', 'Esc. N° 132', 'EL RODEO', '', 'La Aguada', '120', 'O'),
(870, '', '', '4600376', 'Esc. N° 148', 'CARRAL DE ISSAC', '', 'Corral de Isaac', '120', 'J'),
(871, '', '', '4600463', 'Esc. N° 221', 'AGUA DE AGUIRRE', '', 'Agua de Aguirre', '120', 'O'),
(872, '', '', '4600340', 'Esc. N° 317', 'LA SUSPENSIÓN', '', 'La Suspensión', '120', 'J'),
(873, '', '', '4600450', 'Esc. N° 35', 'VILLA CASANA', '', 'Villa Casana', '100', 'O'),
(874, '', '', '4600396', 'Esc. N° 131', 'ALTO BAYO', '', 'Alto Valle', '120', 'O'),
(875, '', '', '4600794', 'Prog. De Educ. A Distancia Adul', '', '', 'San Martin', '30', 'J'),
(876, '', '', '4600481', 'CEJA (Bachillerato para Adultos)', '', '', 'Chepes', '', 'O'),
(877, '', '', '4600517', 'CEJA (Bachillerato Para Adultos)', '', '', 'El Portezuelo', '55', 'N'),
(878, '', '', '4600483', 'Colegio Secundario', 'SARMIENTO N° 126', '', 'Milagro', '30', 'I'),
(879, '', '', '4600484', 'Escuela Pcial. De Comercio', 'SARMIENTO Nº 126', '', 'Milagro', '30', 'I'),
(880, '', '', '4600430', 'Colegio Secundario', 'SANTA RITA DE CATUNA', '', 'Catuna', '40', 'I'),
(881, '', '', '4600478', 'Colegio Secundario', 'FACUNDO QUIROGA S/Nº', '', 'Desiderio Tello', '40', 'O'),
(882, '', '', '4600521', 'Colegio Secundario', 'CASTRO BARROS S/Nº', '', 'Olpas', '70', 'I'),
(883, '', '', '4600437', 'Colegio Secundario', 'AMBIL', '', 'Ambil', '70', 'I'),
(884, '', '', '4600424', 'Bachillerato para Adultos', '', '', 'Milagro', '30', 'I'),
(885, '', '', '4600429', 'CEJA (Centro Educ. para Jov. Y Adultos)', '', '', 'Catuna', '40', 'I'),
(886, '', '', '', 'C.A.S.C', '', '', 'Milagro', '30', 'I');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `escuelas_primarias`
--
ALTER TABLE `escuelas_primarias`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `escuelas_primarias`
--
ALTER TABLE `escuelas_primarias`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT de la tabla `instituciones`
--
ALTER TABLE `instituciones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=887;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
