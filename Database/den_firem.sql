-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 24. led 2024, 15:54
-- Verze serveru: 10.4.28-MariaDB
-- Verze PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `den_firem`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `auth_permission`
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
(25, 'Can add ucebny', 7, 'add_ucebny'),
(26, 'Can change ucebny', 7, 'change_ucebny'),
(27, 'Can delete ucebny', 7, 'delete_ucebny'),
(28, 'Can view ucebny', 7, 'view_ucebny'),
(29, 'Can add super', 8, 'add_super'),
(30, 'Can change super', 8, 'change_super'),
(31, 'Can delete super', 8, 'delete_super'),
(32, 'Can view super', 8, 'view_super'),
(33, 'Can add firmy', 9, 'add_firmy'),
(34, 'Can change firmy', 9, 'change_firmy'),
(35, 'Can delete firmy', 9, 'delete_firmy'),
(36, 'Can view firmy', 9, 'view_firmy'),
(37, 'Can add obory', 10, 'add_obory'),
(38, 'Can change obory', 10, 'change_obory'),
(39, 'Can delete obory', 10, 'delete_obory'),
(40, 'Can view obory', 10, 'view_obory');

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$NxPxwC7TOn2b8ikAeWBEZB$UNL6Is2l0FngU77ndpNxAJtWSVz7EbwOWWCtO8zkDLw=', '2023-10-16 15:54:41.486666', 1, 'david', '', '', '', 1, 1, '2023-10-16 15:54:17.945304'),
(2, 'pbkdf2_sha256$600000$pA0E8Cx9oeWgnGVuZnFgLO$ERlHgA6l50Jxp7isrUDN/HytP+vnOiKITixr0+M9Kgs=', '2024-01-19 19:12:37.659778', 1, 'admin', '', '', 'krestan.david@gmail.com', 1, 1, '2023-12-15 22:14:59.411539');

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-16 15:55:04.981999', '1', 'Ucebny object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-10-19 08:22:21.333810', '1', 'Ucebny object (1)', 2, '[]', 7, 1),
(3, '2023-10-19 08:22:45.579356', '2', 'Ucebny object (2)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-10-19 08:23:33.875561', '0', 'Ucebny object (0)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-10-19 08:24:36.740273', '0', 'Ucebny object (0)', 3, '', 7, 1),
(6, '2023-10-19 08:24:40.367105', '1', 'Ucebny object (1)', 3, '', 7, 1),
(7, '2023-10-19 08:24:43.116913', '2', 'Ucebny object (2)', 3, '', 7, 1),
(8, '2023-10-19 08:24:52.319698', '0', 'Ucebny object (0)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-10-19 08:30:34.781543', '0', 'Ucebny object (0)', 1, '[{\"added\": {}}]', 7, 1),
(10, '2023-10-19 08:31:22.280577', '2', 'Ucebny object (2)', 1, '[{\"added\": {}}]', 7, 1),
(11, '2023-10-19 08:31:31.867781', '3', 'Ucebny object (3)', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-10-19 08:31:53.752979', '3', 'Ucebny object (3)', 3, '', 7, 1),
(13, '2023-10-19 08:31:53.753979', '2', 'Ucebny object (2)', 3, '', 7, 1),
(14, '2023-10-19 08:32:07.147618', '4', 'Ucebny object (4)', 1, '[{\"added\": {}}]', 7, 1),
(15, '2023-10-19 08:32:22.190112', '5', 'Ucebny object (5)', 1, '[{\"added\": {}}]', 7, 1),
(16, '2023-10-19 08:32:49.285029', '6', 'Ucebny object (6)', 1, '[{\"added\": {}}]', 7, 1),
(17, '2023-10-19 08:45:50.897329', '1', 'Super object (1)', 1, '[{\"added\": {}}]', 8, 1),
(18, '2023-10-19 08:45:57.465317', '2', 'Super object (2)', 1, '[{\"added\": {}}]', 8, 1),
(19, '2024-01-19 20:17:53.791506', '5', 'sadfasdf', 3, '', 9, 2),
(20, '2024-01-19 20:38:36.838748', '2', 'Informační Technologie --- ID: 2', 1, '[{\"added\": {}}]', 10, 2),
(21, '2024-01-19 20:40:55.524042', '2', 'Informační Technologie --- ID: 2', 3, '', 10, 2),
(22, '2024-01-19 20:40:59.328896', '1', 'Informační Technologie --- ID: 1', 1, '[{\"added\": {}}]', 10, 2),
(23, '2024-01-19 20:41:21.404852', '3', 'Sociální činnost --- ID: 3', 1, '[{\"added\": {}}]', 10, 2),
(24, '2024-01-19 20:41:29.532676', '3', 'Sociální činnost --- ID: 3', 3, '', 10, 2),
(25, '2024-01-19 20:41:32.436327', '1', 'Informační Technologie --- ID: 1', 3, '', 10, 2),
(26, '2024-01-19 20:41:42.932766', '1', 'Informační Technologie --- ID: 1', 1, '[{\"added\": {}}]', 10, 2),
(27, '2024-01-19 20:41:53.109700', '4', 'Sociální činnost --- ID: 4', 1, '[{\"added\": {}}]', 10, 2);

-- --------------------------------------------------------

--
-- Struktura tabulky `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'myapp', 'firmy'),
(10, 'myapp', 'obory'),
(8, 'myapp', 'super'),
(7, 'myapp', 'ucebny'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktura tabulky `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-16 15:52:07.458740'),
(2, 'auth', '0001_initial', '2023-10-16 15:52:07.821822'),
(3, 'admin', '0001_initial', '2023-10-16 15:52:07.893839'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-16 15:52:07.899840'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-16 15:52:07.905841'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-16 15:52:07.959854'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-16 15:52:07.995862'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-16 15:52:08.041872'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-16 15:52:08.050875'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-16 15:52:08.086883'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-16 15:52:08.089883'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-16 15:52:08.095885'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-16 15:52:08.110888'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-16 15:52:08.124891'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-16 15:52:08.160900'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-16 15:52:08.166900'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-16 15:52:08.181904'),
(18, 'myapp', '0001_initial', '2023-10-16 15:52:08.192906'),
(19, 'myapp', '0002_ucebny_delete_ucebna', '2023-10-16 15:52:08.211911'),
(20, 'sessions', '0001_initial', '2023-10-16 15:52:08.233916'),
(21, 'myapp', '0003_super_alter_ucebny_id_ucebny_firmy', '2023-10-19 08:44:40.186237'),
(22, 'myapp', '0004_remove_firmy_ucebna_delete_ucebny', '2024-01-19 20:04:21.941174'),
(23, 'myapp', '0005_alter_firmy_nazev_firmy_alter_firmy_nazev_prezentace_and_more', '2024-01-19 20:29:39.415246'),
(24, 'myapp', '0006_remove_obory_firma', '2024-01-19 20:38:20.774142');

-- --------------------------------------------------------

--
-- Struktura tabulky `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3lf26yr2uixn8f90i9w1jy2ym49b31rg', '.eJxVjM0OwiAQhN-FsyFAU348evcZyLK7SNVAUtqT8d2VpAe9Teb7Zl4iwr6VuHde40LiLIw4_XYJ8MF1ALpDvTWJrW7rkuRQ5EG7vDbi5-Vw_w4K9DLWmDNZ0BMYtD6YWbPBoFGZnKxTk3WOfA6Os-dEKszaGnRJMSSVv0m8P_k0OGc:1rEGSl:OuQFpw5l489Ppi3dnwjHNDQxnZzAbe7DzN_pDP_LXQA', '2023-12-29 22:15:19.925184'),
('64hz9cto4zm6ktfc85ijkk4dt8l4761a', '.eJxVjM0OwiAQhN-FsyFAU348evcZyLK7SNVAUtqT8d2VpAe9Teb7Zl4iwr6VuHde40LiLIw4_XYJ8MF1ALpDvTWJrW7rkuRQ5EG7vDbi5-Vw_w4K9DLWmDNZ0BMYtD6YWbPBoFGZnKxTk3WOfA6Os-dEKszaGnRJMSSVv0m8P_k0OGc:1rQuI9:CgSF7BfPMrCRc8wI1vaBmzWfuej-J1VtUErQaL2WCIA', '2024-02-02 19:12:37.660778'),
('m97uwtl90x3dyd8msn9e7giw6lekkdbc', '.eJxVjDsOwjAQBe_iGln-hdiU9DmDtfbu4gCypTipEHeHSCmgfTPzXiLCtpa4dVrijOIitDj9bgnyg-oO8A711mRudV3mJHdFHrTLqSE9r4f7d1Cgl2_N2jgMQwJwCdkrnTkkffZEzipvGYxKSKNVCBQMexoxs8KMAykNTOL9AQqEOXQ:1qsPvV:QlRq_WohnvkXl856JHWgcqrMOfgxMtFB-oClZrQ4-gg', '2023-10-30 15:54:41.488667');

-- --------------------------------------------------------

--
-- Struktura tabulky `myapp_firmy`
--

CREATE TABLE `myapp_firmy` (
  `id_firmy` int(11) NOT NULL,
  `nazev_firmy` varchar(45) NOT NULL,
  `o_firme` varchar(100) NOT NULL,
  `nazev_prezentace` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `myapp_firmy`
--

INSERT INTO `myapp_firmy` (`id_firmy`, `nazev_firmy`, `o_firme`, `nazev_prezentace`) VALUES
(6, 'IBM', 'Nadnárodní IT společnost', 'Práce v IBM');

-- --------------------------------------------------------

--
-- Struktura tabulky `myapp_obory`
--

CREATE TABLE `myapp_obory` (
  `id_oboru` int(11) NOT NULL,
  `nazev_oboru` varchar(45) NOT NULL
  `zkratka_oboru` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `myapp_obory`
--

INSERT INTO `myapp_obory` (`id_oboru`, `nazev_oboru`) VALUES
(1, 'Informační Technologie'),
(4, 'Sociální činnost');

-- --------------------------------------------------------

--
-- Struktura tabulky `myapp_super`
--

CREATE TABLE `myapp_super` (
  `id` bigint(20) NOT NULL,
  `login` varchar(45) NOT NULL,
  `heslo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `myapp_super`
--

INSERT INTO `myapp_super` (`id`, `login`, `heslo`) VALUES
(1, 'KLAL', 'admin'),
(2, 'admin', 'admin');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexy pro tabulku `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexy pro tabulku `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexy pro tabulku `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexy pro tabulku `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexy pro tabulku `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexy pro tabulku `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexy pro tabulku `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexy pro tabulku `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexy pro tabulku `myapp_firmy`
--
ALTER TABLE `myapp_firmy`
  ADD PRIMARY KEY (`id_firmy`);

--
-- Indexy pro tabulku `myapp_obory`
--
ALTER TABLE `myapp_obory`
  ADD PRIMARY KEY (`id_oboru`);

--
-- Indexy pro tabulku `myapp_super`
--
ALTER TABLE `myapp_super`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pro tabulku `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pro tabulku `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pro tabulku `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pro tabulku `myapp_firmy`
--
ALTER TABLE `myapp_firmy`
  MODIFY `id_firmy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pro tabulku `myapp_obory`
--
ALTER TABLE `myapp_obory`
  MODIFY `id_oboru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `myapp_super`
--
ALTER TABLE `myapp_super`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Omezení pro tabulku `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Omezení pro tabulku `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Omezení pro tabulku `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Omezení pro tabulku `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
