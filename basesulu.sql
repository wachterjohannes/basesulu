-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Erstellungszeit: 22. Jun 2019 um 19:08
-- Server-Version: 10.2.22-MariaDB-1:10.2.22+maria~bionic-log
-- PHP-Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ca_categories`
--

CREATE TABLE `ca_categories` (
  `id` int(11) NOT NULL,
  `category_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCategoriesParent` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ca_category_meta`
--

CREATE TABLE `ca_category_meta` (
  `id` int(11) NOT NULL,
  `meta_key` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idCategories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ca_category_translations`
--

CREATE TABLE `ca_category_translations` (
  `id` int(11) NOT NULL,
  `translation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCategories` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ca_category_translation_keywords`
--

CREATE TABLE `ca_category_translation_keywords` (
  `idKeywords` int(11) NOT NULL,
  `idCategoryTranslations` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ca_category_translation_medias`
--

CREATE TABLE `ca_category_translation_medias` (
  `idCategoryTranslations` int(11) NOT NULL,
  `idMedia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ca_keywords`
--

CREATE TABLE `ca_keywords` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_accounts`
--

CREATE TABLE `co_accounts` (
  `id` int(11) NOT NULL,
  `logo` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `externalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corporation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registerNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeOfJurisdiction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainPhone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainFax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idContactsMain` int(11) DEFAULT NULL,
  `idAccountsParent` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_addresses`
--

CREATE TABLE `co_account_addresses` (
  `id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `idAddresses` int(11) NOT NULL,
  `idAccounts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_bank_accounts`
--

CREATE TABLE `co_account_bank_accounts` (
  `idAccounts` int(11) NOT NULL,
  `idBankAccounts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_categories`
--

CREATE TABLE `co_account_categories` (
  `idAccounts` int(11) NOT NULL,
  `idCategories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_contacts`
--

CREATE TABLE `co_account_contacts` (
  `id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `idPositions` int(11) DEFAULT NULL,
  `idContacts` int(11) NOT NULL,
  `idAccounts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_emails`
--

CREATE TABLE `co_account_emails` (
  `idAccounts` int(11) NOT NULL,
  `idEmails` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_faxes`
--

CREATE TABLE `co_account_faxes` (
  `idAccounts` int(11) NOT NULL,
  `idFaxes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_medias`
--

CREATE TABLE `co_account_medias` (
  `idAccounts` int(11) NOT NULL,
  `idMedias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_notes`
--

CREATE TABLE `co_account_notes` (
  `idAccounts` int(11) NOT NULL,
  `idNotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_phones`
--

CREATE TABLE `co_account_phones` (
  `idAccounts` int(11) NOT NULL,
  `idPhones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_social_media_profiles`
--

CREATE TABLE `co_account_social_media_profiles` (
  `idAccounts` int(11) NOT NULL,
  `idSocialMediaProfiles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_tags`
--

CREATE TABLE `co_account_tags` (
  `idAccounts` int(11) NOT NULL,
  `idTags` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_account_urls`
--

CREATE TABLE `co_account_urls` (
  `idAccounts` int(11) NOT NULL,
  `idUrls` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_addresses`
--

CREATE TABLE `co_addresses` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primaryAddress` tinyint(1) DEFAULT NULL,
  `deliveryAddress` tinyint(1) DEFAULT NULL,
  `billingAddress` tinyint(1) DEFAULT NULL,
  `street` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addition` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postboxNumber` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postboxPostcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postboxCity` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idAdressTypes` int(11) NOT NULL,
  `idCountries` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_address_types`
--

CREATE TABLE `co_address_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `co_address_types`
--

INSERT INTO `co_address_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_bank_account`
--

CREATE TABLE `co_bank_account` (
  `id` int(11) NOT NULL,
  `bankName` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bic` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contacts`
--

CREATE TABLE `co_contacts` (
  `id` int(11) NOT NULL,
  `avatar` int(11) DEFAULT NULL,
  `firstName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `salutation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formOfAddress` int(11) DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainPhone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainFax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idTitles` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `co_contacts`
--

INSERT INTO `co_contacts` (`id`, `avatar`, `firstName`, `middleName`, `lastName`, `birthday`, `salutation`, `formOfAddress`, `newsletter`, `gender`, `note`, `mainEmail`, `mainPhone`, `mainFax`, `mainUrl`, `created`, `changed`, `idTitles`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, NULL, 'Adam', NULL, 'Ministrator', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-22 11:11:03', '2019-06-22 11:11:03', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_addresses`
--

CREATE TABLE `co_contact_addresses` (
  `id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `idAddresses` int(11) NOT NULL,
  `idContacts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_bank_accounts`
--

CREATE TABLE `co_contact_bank_accounts` (
  `idContacts` int(11) NOT NULL,
  `idBankAccounts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_categories`
--

CREATE TABLE `co_contact_categories` (
  `idContacts` int(11) NOT NULL,
  `idCategories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_emails`
--

CREATE TABLE `co_contact_emails` (
  `idContacts` int(11) NOT NULL,
  `idEmails` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_faxes`
--

CREATE TABLE `co_contact_faxes` (
  `idContacts` int(11) NOT NULL,
  `idFaxes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_locales`
--

CREATE TABLE `co_contact_locales` (
  `id` int(11) NOT NULL,
  `locale` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idContacts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_medias`
--

CREATE TABLE `co_contact_medias` (
  `idContacts` int(11) NOT NULL,
  `idMedias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_notes`
--

CREATE TABLE `co_contact_notes` (
  `idContacts` int(11) NOT NULL,
  `idNotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_phones`
--

CREATE TABLE `co_contact_phones` (
  `idContacts` int(11) NOT NULL,
  `idPhones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_social_media_profiles`
--

CREATE TABLE `co_contact_social_media_profiles` (
  `idContacts` int(11) NOT NULL,
  `idSocialMediaProfiles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_tags`
--

CREATE TABLE `co_contact_tags` (
  `idContacts` int(11) NOT NULL,
  `idTags` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_titles`
--

CREATE TABLE `co_contact_titles` (
  `id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_contact_urls`
--

CREATE TABLE `co_contact_urls` (
  `idContacts` int(11) NOT NULL,
  `idUrls` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_countries`
--

CREATE TABLE `co_countries` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `co_countries`
--

INSERT INTO `co_countries` (`id`, `name`, `code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Åland Islands', 'AX'),
(3, 'Albania', 'AL'),
(4, 'Algeria', 'DZ'),
(5, 'American Samoa', 'AS'),
(6, 'Andorra', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antarctica', 'AQ'),
(10, 'Antigua and Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrain', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Belgium', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermuda', 'BM'),
(26, 'Bhutan', 'BT'),
(27, 'Bolivia', 'BO'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ'),
(29, 'Bosnia and Herzegovina', 'BA'),
(30, 'Botswana', 'BW'),
(31, 'Bouvet Island', 'BV'),
(32, 'Brazil', 'BR'),
(33, 'British Indian Ocean Territory', 'IO'),
(34, 'Brunei Darussalam', 'BN'),
(35, 'Bulgaria', 'BG'),
(36, 'Burkina Faso', 'BF'),
(37, 'Burundi', 'BI'),
(38, 'Cambodia', 'KH'),
(39, 'Cameroon', 'CM'),
(40, 'Canada', 'CA'),
(41, 'Cape Verde', 'CV'),
(42, 'Cayman Islands', 'KY'),
(43, 'Central African Republic', 'CF'),
(44, 'Chad', 'TD'),
(45, 'Chile', 'CL'),
(46, 'China', 'CN'),
(47, 'Christmas Island', 'CX'),
(48, 'Cocos (Keeling) Islands', 'CC'),
(49, 'Colombia', 'CO'),
(50, 'Comoros', 'KM'),
(51, 'Congo', 'CG'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Côte d\'Ivoire', 'CI'),
(55, 'Croatia', 'HR'),
(56, 'Cuba', 'CU'),
(57, 'Curaçao', 'CW'),
(58, 'Cyprus', 'CY'),
(59, 'Czech Republic', 'CZ'),
(60, 'Denmark', 'DK'),
(61, 'Djibouti', 'DJ'),
(62, 'Dominica', 'DM'),
(63, 'Dominican Republic', 'DO'),
(64, 'Ecuador', 'EC'),
(65, 'Egypt', 'EG'),
(66, 'El Salvador', 'SV'),
(67, 'Equatorial Guinea', 'GQ'),
(68, 'Eritrea', 'ER'),
(69, 'Estonia', 'EE'),
(70, 'Ethiopia', 'ET'),
(71, 'Falkland Islands', 'FK'),
(72, 'Faroe Islands', 'FO'),
(73, 'Fiji', 'FJ'),
(74, 'Finland', 'FI'),
(75, 'France', 'FR'),
(76, 'French Guiana', 'GF'),
(77, 'French Polynesia', 'PF'),
(78, 'French Southern Territories', 'TF'),
(79, 'Gabon', 'GA'),
(80, 'Gambia', 'GM'),
(81, 'Georgia', 'GE'),
(82, 'Germany', 'DE'),
(83, 'Ghana', 'GH'),
(84, 'Gibraltar', 'GI'),
(85, 'Greece', 'GR'),
(86, 'Greenland', 'GL'),
(87, 'Grenada', 'GD'),
(88, 'Guadeloupe', 'GP'),
(89, 'Guam', 'GU'),
(90, 'Guatemala', 'GT'),
(91, 'Guernsey', 'GG'),
(92, 'Guinea', 'GN'),
(93, 'Guinea-Bissau', 'GW'),
(94, 'Guyana', 'GY'),
(95, 'Haiti', 'HT'),
(96, 'Heard Island and McDonald Islands', 'HM'),
(97, 'Holy See', 'VA'),
(98, 'Honduras', 'HN'),
(99, 'Hong Kong', 'HK'),
(100, 'Hungary', 'HU'),
(101, 'Iceland', 'IS'),
(102, 'India', 'IN'),
(103, 'Indonesia', 'ID'),
(104, 'Iran', 'IR'),
(105, 'Iraq', 'IQ'),
(106, 'Ireland', 'IE'),
(107, 'Isle of Man', 'IM'),
(108, 'Israel', 'IL'),
(109, 'Italy', 'IT'),
(110, 'Jamaica', 'JM'),
(111, 'Japan', 'JP'),
(112, 'Jersey', 'JE'),
(113, 'Jordan', 'JO'),
(114, 'Kazakhstan', 'KZ'),
(115, 'Kenya', 'KE'),
(116, 'Kiribati', 'KI'),
(117, 'Korea', 'KR'),
(118, 'Kuwait', 'KW'),
(119, 'Kyrgyzstan', 'KG'),
(120, 'Lao People\'s Democratic Republic', 'LA'),
(121, 'Latvia', 'LV'),
(122, 'Lebanon', 'LB'),
(123, 'Lesotho', 'LS'),
(124, 'Liberia', 'LR'),
(125, 'Libya', 'LY'),
(126, 'Liechtenstein', 'LI'),
(127, 'Lithuania', 'LT'),
(128, 'Luxembourg', 'LU'),
(129, 'Macao', 'MO'),
(130, 'Macedonia', 'MK'),
(131, 'Madagascar', 'MG'),
(132, 'Malawi', 'MW'),
(133, 'Malaysia', 'MY'),
(134, 'Maldives', 'MV'),
(135, 'Mali', 'ML'),
(136, 'Malta', 'MT'),
(137, 'Marshall Islands', 'MH'),
(138, 'Martinique', 'MQ'),
(139, 'Mauritania', 'MR'),
(140, 'Mauritius', 'MU'),
(141, 'Mayotte', 'YT'),
(142, 'Mexico', 'MX'),
(143, 'Micronesia', 'FM'),
(144, 'Moldova', 'MD'),
(145, 'Monaco', 'MC'),
(146, 'Mongolia', 'MN'),
(147, 'Montenegro', 'ME'),
(148, 'Montserrat', 'MS'),
(149, 'Morocco', 'MA'),
(150, 'Mozambique', 'MZ'),
(151, 'Myanmar', 'MM'),
(152, 'Namibia', 'NA'),
(153, 'Nauru', 'NR'),
(154, 'Nepal', 'NP'),
(155, 'Netherlands', 'NL'),
(156, 'New Caledonia', 'NC'),
(157, 'New Zealand', 'NZ'),
(158, 'Nicaragua', 'NI'),
(159, 'Niger', 'NE'),
(160, 'Nigeria', 'NG'),
(161, 'Niue', 'NU'),
(162, 'Norfolk Island', 'NF'),
(163, 'Northern Mariana Islands', 'MP'),
(164, 'Norway', 'NO'),
(165, 'Oman', 'OM'),
(166, 'Pakistan', 'PK'),
(167, 'Palau', 'PW'),
(168, 'Palestine', 'PS'),
(169, 'Panama', 'PA'),
(170, 'Papua New Guinea', 'PG'),
(171, 'Paraguay', 'PY'),
(172, 'Peru', 'PE'),
(173, 'Philippines', 'PH'),
(174, 'Pitcairn', 'PN'),
(175, 'Poland', 'PL'),
(176, 'Portugal', 'PT'),
(177, 'Puerto Rico', 'PR'),
(178, 'Qatar', 'QA'),
(179, 'Réunion', 'RE'),
(180, 'Romania', 'RO'),
(181, 'Russian Federation', 'RU'),
(182, 'Rwanda', 'RW'),
(183, 'Saint Barthélemy', 'BL'),
(184, 'Saint Helena, Ascension and Tristan da Cunha', 'SH'),
(185, 'Saint Kitts and Nevis', 'KN'),
(186, 'Saint Lucia', 'LC'),
(187, 'Saint Martin', 'MF'),
(188, 'Saint Pierre and Miquelon', 'PM'),
(189, 'Saint Vincent and the Grenadines', 'VC'),
(190, 'Samoa', 'WS'),
(191, 'San Marino', 'SM'),
(192, 'Sao Tome and Principe', 'ST'),
(193, 'Saudi Arabia', 'SA'),
(194, 'Senegal', 'SN'),
(195, 'Serbia', 'RS'),
(196, 'Seychelles', 'SC'),
(197, 'Sierra Leone', 'SL'),
(198, 'Singapore', 'SG'),
(199, 'Sint Maarten', 'SX'),
(200, 'Slovakia', 'SK'),
(201, 'Slovenia', 'SI'),
(202, 'Solomon Islands', 'SB'),
(203, 'Somalia', 'SO'),
(204, 'South Africa', 'ZA'),
(205, 'South Georgia and the South Sandwich Islands', 'GS'),
(206, 'South Sudan', 'SS'),
(207, 'Spain', 'ES'),
(208, 'Sri Lanka', 'LK'),
(209, 'Sudan', 'SD'),
(210, 'Suriname', 'SR'),
(211, 'Svalbard and Jan Mayen', 'SJ'),
(212, 'Swaziland', 'SZ'),
(213, 'Sweden', 'SE'),
(214, 'Switzerland', 'CH'),
(215, 'Syrian Arab Republic', 'SY'),
(216, 'Taiwan', 'TW'),
(217, 'Tajikistan', 'TJ'),
(218, 'Tanzania', 'TZ'),
(219, 'Thailand', 'TH'),
(220, 'Timor-Leste', 'TL'),
(221, 'Togo', 'TG'),
(222, 'Tokelau', 'TK'),
(223, 'Tonga', 'TO'),
(224, 'Trinidad and Tobago', 'TT'),
(225, 'Tunisia', 'TN'),
(226, 'Turkey', 'TR'),
(227, 'Turkmenistan', 'TM'),
(228, 'Turks and Caicos Islands', 'TC'),
(229, 'Tuvalu', 'TV'),
(230, 'Uganda', 'UG'),
(231, 'Ukraine', 'UA'),
(232, 'United Arab Emirates', 'AE'),
(233, 'United Kingdom', 'GB'),
(234, 'United States', 'US'),
(235, 'United States Minor Outlying Islands', 'UM'),
(236, 'Uruguay', 'UY'),
(237, 'Uzbekistan', 'UZ'),
(238, 'Vanuatu', 'VU'),
(239, 'Venezuela', 'VE'),
(240, 'Viet Nam', 'VN'),
(241, 'Virgin Islands (British)', 'VG'),
(242, 'Virgin Islands (U.S.)', 'VI'),
(243, 'Wallis and Futuna', 'WF'),
(244, 'Western Sahara', 'EH'),
(245, 'Yemen', 'YE'),
(246, 'Zambia', 'ZM'),
(247, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_emails`
--

CREATE TABLE `co_emails` (
  `id` int(11) NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idEmailTypes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_email_types`
--

CREATE TABLE `co_email_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `co_email_types`
--

INSERT INTO `co_email_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_faxes`
--

CREATE TABLE `co_faxes` (
  `id` int(11) NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFaxTypes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_fax_types`
--

CREATE TABLE `co_fax_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `co_fax_types`
--

INSERT INTO `co_fax_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_notes`
--

CREATE TABLE `co_notes` (
  `id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_phones`
--

CREATE TABLE `co_phones` (
  `id` int(11) NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idPhoneTypes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_phone_types`
--

CREATE TABLE `co_phone_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `co_phone_types`
--

INSERT INTO `co_phone_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private'),
(3, 'sulu_contact.mobile');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_positions`
--

CREATE TABLE `co_positions` (
  `id` int(11) NOT NULL,
  `position` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_social_media_profiles`
--

CREATE TABLE `co_social_media_profiles` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSocialMediaTypes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_social_media_profile_types`
--

CREATE TABLE `co_social_media_profile_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `co_social_media_profile_types`
--

INSERT INTO `co_social_media_profile_types` (`id`, `name`) VALUES
(1, 'Facebook'),
(2, 'Twitter'),
(3, 'Instagram');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_urls`
--

CREATE TABLE `co_urls` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUrlTypes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `co_url_types`
--

CREATE TABLE `co_url_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `co_url_types`
--

INSERT INTO `co_url_types` (`id`, `name`) VALUES
(1, 'sulu_contact.work'),
(2, 'sulu_contact.private');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_collections`
--

CREATE TABLE `me_collections` (
  `id` int(11) NOT NULL,
  `style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `collection_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCollectionTypes` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL,
  `idCollectionsMetaDefault` int(11) DEFAULT NULL,
  `idCollectionsParent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_collection_meta`
--

CREATE TABLE `me_collection_meta` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCollections` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_collection_types`
--

CREATE TABLE `me_collection_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_type_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `me_collection_types`
--

INSERT INTO `me_collection_types` (`id`, `name`, `collection_type_key`, `description`) VALUES
(1, 'Default', 'collection.default', NULL),
(2, 'System Collections', 'collection.system', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_files`
--

CREATE TABLE `me_files` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idMedia` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_file_versions`
--

CREATE TABLE `me_file_versions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `subVersion` int(11) NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL,
  `downloadCounter` int(11) NOT NULL DEFAULT 0,
  `storageOptions` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mimeType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `focusPointX` int(11) DEFAULT NULL,
  `focusPointY` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idFileVersionsMetaDefault` int(11) DEFAULT NULL,
  `idFiles` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_file_version_categories`
--

CREATE TABLE `me_file_version_categories` (
  `idFileVersions` int(11) NOT NULL,
  `idCategories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_file_version_content_languages`
--

CREATE TABLE `me_file_version_content_languages` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFileVersions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_file_version_meta`
--

CREATE TABLE `me_file_version_meta` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFileVersions` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_file_version_publish_languages`
--

CREATE TABLE `me_file_version_publish_languages` (
  `id` int(11) NOT NULL,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFileVersions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_file_version_tags`
--

CREATE TABLE `me_file_version_tags` (
  `idFileVersions` int(11) NOT NULL,
  `idTags` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_format_options`
--

CREATE TABLE `me_format_options` (
  `format_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_x` int(11) NOT NULL,
  `crop_y` int(11) NOT NULL,
  `crop_width` int(11) NOT NULL,
  `crop_height` int(11) NOT NULL,
  `fileVersion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_media`
--

CREATE TABLE `me_media` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idMediaTypes` int(11) NOT NULL,
  `idPreviewImage` int(11) DEFAULT NULL,
  `idCollections` int(11) NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `me_media_types`
--

CREATE TABLE `me_media_types` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `me_media_types`
--

INSERT INTO `me_media_types` (`id`, `name`, `description`) VALUES
(1, 'document', NULL),
(2, 'image', NULL),
(3, 'video', NULL),
(4, 'audio', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phpcr_binarydata`
--

CREATE TABLE `phpcr_binarydata` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `property_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int(11) NOT NULL DEFAULT 0,
  `data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phpcr_internal_index_types`
--

CREATE TABLE `phpcr_internal_index_types` (
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `node_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phpcr_namespaces`
--

CREATE TABLE `phpcr_namespaces` (
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `phpcr_namespaces`
--

INSERT INTO `phpcr_namespaces` (`prefix`, `uri`) VALUES
('i18n', 'http://sulu.io/phpcr/locale'),
('phpcrmig', 'http://www.danteech.com/phpcr-migrations'),
('sec', 'http://sulu.io/phpcr/sec'),
('settings', 'http://sulu.io/phpcr/settings'),
('sulu', 'http://sulu.io/phpcr');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phpcr_nodes`
--

CREATE TABLE `phpcr_nodes` (
  `id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `props` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `numerical_props` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depth` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `phpcr_nodes`
--

INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(1, '/', '', '', '', 'default', 'fa146ff7-7070-49a8-862c-fffdba5a687d', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n', NULL, 0, NULL),
(2, '/', '', '', '', 'default_live', '017348a0-8414-40d0-9500-849a37a66e04', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n', NULL, 0, NULL),
(3, '/cmf', '/', 'cmf', '', 'default', 'e64cac6d-cd0a-4462-b8f4-9bd990f53045', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">e64cac6d-cd0a-4462-b8f4-9bd990f53045</sv:value></sv:property></sv:node>\n', NULL, 1, 1),
(4, '/cmf/example', '/cmf', 'example', '', 'default', '51442b80-89e3-492c-bb03-d763ef04eac5', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">51442b80-89e3-492c-bb03-d763ef04eac5</sv:value></sv:property></sv:node>\n', NULL, 2, 1),
(5, '/cmf/example/contents', '/cmf/example', 'contents', '', 'default', 'af3c782c-b10e-41dd-a4ff-e75d936b51c5', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:home</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">af3c782c-b10e-41dd-a4ff-e75d936b51c5</sv:value></sv:property><sv:property sv:name=\"i18n:de-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">Startseite</sv:value></sv:property><sv:property sv:name=\"i18n:de-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:de-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:de-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:de-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.386+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:58.237+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:de-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:de-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.510+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.551+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.551+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.551+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.578+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:de-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:de-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:de-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:de-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:de-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n', 3, 1),
(6, '/cmf/example/routes', '/cmf/example', 'routes', '', 'default', '3db3ef76-4935-409a-826e-2d7f52c38178', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">3db3ef76-4935-409a-826e-2d7f52c38178</sv:value></sv:property></sv:node>\n', NULL, 3, 2),
(7, '/cmf/example/routes/de', '/cmf/example/routes', 'de', '', 'default', '96a4bb33-9aa4-444d-9c35-2bc44ac2a693', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">96a4bb33-9aa4-444d-9c35-2bc44ac2a693</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.535+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.535+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">af3c782c-b10e-41dd-a4ff-e75d936b51c5</sv:value></sv:property></sv:node>\n', NULL, 4, 1),
(8, '/cmf/example/routes/en', '/cmf/example/routes', 'en', '', 'default', '2712585f-8065-47c2-b47c-70f25c8979e6', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">2712585f-8065-47c2-b47c-70f25c8979e6</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.597+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.597+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">af3c782c-b10e-41dd-a4ff-e75d936b51c5</sv:value></sv:property></sv:node>\n', NULL, 4, 2),
(9, '/cmf', '/', 'cmf', '', 'default_live', 'e64cac6d-cd0a-4462-b8f4-9bd990f53045', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">e64cac6d-cd0a-4462-b8f4-9bd990f53045</sv:value></sv:property></sv:node>\n', NULL, 1, 2),
(10, '/cmf/example', '/cmf', 'example', '', 'default_live', '51442b80-89e3-492c-bb03-d763ef04eac5', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">51442b80-89e3-492c-bb03-d763ef04eac5</sv:value></sv:property></sv:node>\n', NULL, 2, 2),
(11, '/cmf/example/contents', '/cmf/example', 'contents', '', 'default_live', 'af3c782c-b10e-41dd-a4ff-e75d936b51c5', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:home</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">af3c782c-b10e-41dd-a4ff-e75d936b51c5</sv:value></sv:property><sv:property sv:name=\"i18n:de-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">Startseite</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:de-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:de-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:de-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:de-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:de-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:de-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.510+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.386+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:58.237+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:de-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.578+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.551+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.551+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.551+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:de-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:de-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n', 3, 3),
(12, '/cmf/example/routes', '/cmf/example', 'routes', '', 'default_live', '3db3ef76-4935-409a-826e-2d7f52c38178', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">3db3ef76-4935-409a-826e-2d7f52c38178</sv:value></sv:property></sv:node>\n', NULL, 3, 4),
(13, '/cmf/example/routes/de', '/cmf/example/routes', 'de', '', 'default_live', '96a4bb33-9aa4-444d-9c35-2bc44ac2a693', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">96a4bb33-9aa4-444d-9c35-2bc44ac2a693</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.535+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.535+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">af3c782c-b10e-41dd-a4ff-e75d936b51c5</sv:value></sv:property></sv:node>\n', NULL, 4, 3),
(14, '/cmf/example/routes/en', '/cmf/example/routes', 'en', '', 'default_live', '2712585f-8065-47c2-b47c-70f25c8979e6', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">2712585f-8065-47c2-b47c-70f25c8979e6</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.597+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.597+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">af3c782c-b10e-41dd-a4ff-e75d936b51c5</sv:value></sv:property></sv:node>\n', NULL, 4, 4),
(15, '/cmf/snippets', '/cmf', 'snippets', '', 'default', '3d9cc156-79da-4f85-a85c-1b36df4f662b', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">3d9cc156-79da-4f85-a85c-1b36df4f662b</sv:value></sv:property></sv:node>\n', NULL, 2, 3),
(16, '/cmf/example/custom-urls', '/cmf/example', 'custom-urls', '', 'default', '9c4de7ff-f515-4b26-8306-9607b2752ef1', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">9c4de7ff-f515-4b26-8306-9607b2752ef1</sv:value></sv:property></sv:node>\n', NULL, 3, 5),
(17, '/cmf/example/custom-urls/items', '/cmf/example/custom-urls', 'items', '', 'default', '62eeb310-673b-488c-9bfa-183a4d0d564e', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">62eeb310-673b-488c-9bfa-183a4d0d564e</sv:value></sv:property></sv:node>\n', NULL, 4, 1),
(18, '/cmf/example/custom-urls/routes', '/cmf/example/custom-urls', 'routes', '', 'default', 'c00f6b9f-122d-4e75-9ef6-e01292179ba6', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">c00f6b9f-122d-4e75-9ef6-e01292179ba6</sv:value></sv:property></sv:node>\n', NULL, 4, 2),
(19, '/jcr:versions', '/', 'versions', 'http://www.jcp.org/jcr/1.0', 'default', 'e957553b-0b45-495d-bbbf-eaa551ffc0b1', 'phpcrmig:versions', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"17\">phpcrmig:versions</sv:value></sv:property></sv:node>\n', NULL, 1, 3),
(20, '/jcr:versions/201504271608', '/jcr:versions', '201504271608', '', 'default', '513c2941-96f0-433c-b803-e413691caf53', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.745+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 1),
(21, '/jcr:versions/201504281842', '/jcr:versions', '201504281842', '', 'default', 'aa5f60f7-a746-4944-ad9b-ed342f0ec238', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.746+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 2),
(22, '/jcr:versions/201507231648', '/jcr:versions', '201507231648', '', 'default', '0b107ddb-0f88-420e-bdd8-ce995f0ae25a', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.748+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 3),
(23, '/jcr:versions/201507281529', '/jcr:versions', '201507281529', '', 'default', '876cc177-0195-4098-931f-18b360ae4e51', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.749+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 4),
(24, '/jcr:versions/201510210733', '/jcr:versions', '201510210733', '', 'default', '9ea4d354-11d2-4f47-89e5-e2e82db37722', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.751+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 5),
(25, '/jcr:versions/201511171538', '/jcr:versions', '201511171538', '', 'default', '1b2e0c42-2c29-4f2b-8687-2eb827286953', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.752+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 6),
(26, '/jcr:versions/201511240843', '/jcr:versions', '201511240843', '', 'default', 'c6e87682-6624-45bd-a091-1ac76caa8097', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.754+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 7),
(27, '/jcr:versions/201511240844', '/jcr:versions', '201511240844', '', 'default', 'c556f5e2-1bd6-452b-8675-59d2645e089e', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.756+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 8),
(28, '/jcr:versions/201512090753', '/jcr:versions', '201512090753', '', 'default', 'a3dc40d2-25e4-4d2d-97e6-956e9b8272d6', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.757+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 9),
(29, '/jcr:versions/201607181533', '/jcr:versions', '201607181533', '', 'default', '5d943882-8590-49e0-b6b9-371c91c20a8f', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.759+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 10),
(30, '/jcr:versions/201702021447', '/jcr:versions', '201702021447', '', 'default', 'd17c4e5e-92ce-4bb1-a7b0-95cdd3b79eef', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.765+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 11),
(31, '/jcr:versions/201903271333', '/jcr:versions', '201903271333', '', 'default', '027e7275-3b31-476b-abcd-6692024da0dc', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.769+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 12),
(32, '/jcr:versions/201904110902', '/jcr:versions', '201904110902', '', 'default', '27ecfc73-fe55-4e6d-8c32-33f5dd03334b', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.773+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 13),
(33, '/jcr:versions/201905071542', '/jcr:versions', '201905071542', '', 'default', 'd538d665-e577-49db-94b6-555ca387f93d', 'phpcrmig:version', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T17:11:02.775+00:00</sv:value></sv:property></sv:node>\n', NULL, 2, 14);
INSERT INTO `phpcr_nodes` (`id`, `path`, `parent`, `local_name`, `namespace`, `workspace_name`, `identifier`, `type`, `props`, `numerical_props`, `depth`, `sort_order`) VALUES
(34, '/cmf/example/contents/subseite-1', '/cmf/example/contents', 'subseite-1', '', 'default', '8df68f81-11eb-49f2-9a9f-acc613b5979b', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8df68f81-11eb-49f2-9a9f-acc613b5979b</sv:value></sv:property><sv:property sv:name=\"i18n:de-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">Unterseite 1</sv:value></sv:property><sv:property sv:name=\"i18n:de-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">/unterseite-1</sv:value></sv:property><sv:property sv:name=\"i18n:de-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:de-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:de-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.500+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:11:13.464+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">main</sv:value></sv:property><sv:property sv:name=\"i18n:de-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:de-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.594+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">Subseite 1</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">/subpage-1</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:27.801+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:16:21.395+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">main</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:07:37.010+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:de-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:de-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:de-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:de-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:de-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n', 4, 3),
(35, '/cmf/example/routes/de/unterseite-1', '/cmf/example/routes/de', 'unterseite-1', '', 'default', '9bf9b3e5-251d-4098-92dc-d3ef78dca85a', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">9bf9b3e5-251d-4098-92dc-d3ef78dca85a</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.608+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.608+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">8df68f81-11eb-49f2-9a9f-acc613b5979b</sv:value></sv:property></sv:node>\n', NULL, 5, 1),
(36, '/cmf/example/contents/subseite-1', '/cmf/example/contents', 'subseite-1', '', 'default_live', '8df68f81-11eb-49f2-9a9f-acc613b5979b', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8df68f81-11eb-49f2-9a9f-acc613b5979b</sv:value></sv:property><sv:property sv:name=\"i18n:de-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">Unterseite 1</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:de-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:de-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:de-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:de-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"13\">/unterseite-1</sv:value></sv:property><sv:property sv:name=\"i18n:de-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:de-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:de-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.594+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.500+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:11:13.464+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:de-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">main</sv:value></sv:property><sv:property sv:name=\"i18n:de-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">Subseite 1</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">/subpage-1</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:07:37.010+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:27.801+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:16:21.395+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">main</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property></sv:node>\n', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:de-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:de-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:de-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n', 4, 4),
(37, '/cmf/example/routes/de/unterseite-1', '/cmf/example/routes/de', 'unterseite-1', '', 'default_live', '9bf9b3e5-251d-4098-92dc-d3ef78dca85a', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">9bf9b3e5-251d-4098-92dc-d3ef78dca85a</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.608+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:06:13.608+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">8df68f81-11eb-49f2-9a9f-acc613b5979b</sv:value></sv:property></sv:node>\n', NULL, 5, 2),
(38, '/cmf/example/routes/en/unterseite-1', '/cmf/example/routes/en', 'unterseite-1', '', 'default', '5f71b4ba-8d75-4467-abe3-9f0211147f98', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">5f71b4ba-8d75-4467-abe3-9f0211147f98</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:07:37.046+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:16:21.522+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">0cf5f8d1-3b17-4742-a53d-21b5ada0184a</sv:value></sv:property></sv:node>\n', NULL, 5, 1),
(39, '/cmf/example/routes/en/unterseite-1', '/cmf/example/routes/en', 'unterseite-1', '', 'default_live', '5f71b4ba-8d75-4467-abe3-9f0211147f98', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">5f71b4ba-8d75-4467-abe3-9f0211147f98</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:07:37.046+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:16:21.522+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">0cf5f8d1-3b17-4742-a53d-21b5ada0184a</sv:value></sv:property></sv:node>\n', NULL, 5, 2),
(40, '/cmf/example/routes/en/subpage-1', '/cmf/example/routes/en', 'subpage-1', '', 'default', '0cf5f8d1-3b17-4742-a53d-21b5ada0184a', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">0cf5f8d1-3b17-4742-a53d-21b5ada0184a</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:16:21.495+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:16:21.495+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">8df68f81-11eb-49f2-9a9f-acc613b5979b</sv:value></sv:property></sv:node>\n', NULL, 5, 3),
(41, '/cmf/example/routes/en/subpage-1', '/cmf/example/routes/en', 'subpage-1', '', 'default_live', '0cf5f8d1-3b17-4742-a53d-21b5ada0184a', 'nt:unstructured', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">0cf5f8d1-3b17-4742-a53d-21b5ada0184a</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:16:21.495+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2019-06-22T18:16:21.495+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">8df68f81-11eb-49f2-9a9f-acc613b5979b</sv:value></sv:property></sv:node>\n', NULL, 5, 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phpcr_nodes_references`
--

CREATE TABLE `phpcr_nodes_references` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `phpcr_nodes_references`
--

INSERT INTO `phpcr_nodes_references` (`source_id`, `source_property_name`, `target_id`) VALUES
(7, 'sulu:content', 5),
(8, 'sulu:content', 5),
(13, 'sulu:content', 11),
(14, 'sulu:content', 11),
(35, 'sulu:content', 34),
(37, 'sulu:content', 36),
(38, 'sulu:content', 40),
(39, 'sulu:content', 41),
(40, 'sulu:content', 34),
(41, 'sulu:content', 36);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phpcr_nodes_weakreferences`
--

CREATE TABLE `phpcr_nodes_weakreferences` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phpcr_type_childs`
--

CREATE TABLE `phpcr_type_childs` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `primary_types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `phpcr_type_childs`
--

INSERT INTO `phpcr_type_childs` (`node_type_id`, `name`, `protected`, `auto_created`, `mandatory`, `on_parent_version`, `primary_types`, `default_type`) VALUES
(10, '*', 0, 0, 0, 1, 'phpcrmig:version', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phpcr_type_nodes`
--

CREATE TABLE `phpcr_type_nodes` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supertypes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_abstract` tinyint(1) NOT NULL,
  `is_mixin` tinyint(1) NOT NULL,
  `queryable` tinyint(1) NOT NULL,
  `orderable_child_nodes` tinyint(1) NOT NULL,
  `primary_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `phpcr_type_nodes`
--

INSERT INTO `phpcr_type_nodes` (`node_type_id`, `name`, `supertypes`, `is_abstract`, `is_mixin`, `queryable`, `orderable_child_nodes`, `primary_item`) VALUES
(1, 'sulu:base', 'mix:referenceable', 1, 1, 0, 0, NULL),
(2, 'sulu:path', 'sulu:base', 0, 1, 0, 0, NULL),
(3, 'sulu:content', 'sulu:base', 0, 1, 0, 0, NULL),
(4, 'sulu:snippet', 'sulu:content', 0, 1, 0, 0, NULL),
(5, 'sulu:page', 'sulu:content', 0, 1, 0, 0, NULL),
(6, 'sulu:home', 'sulu:content', 0, 1, 0, 0, NULL),
(7, 'sulu:custom_url', 'sulu:base', 0, 1, 0, 0, NULL),
(8, 'sulu:custom_url_route', 'sulu:base', 0, 1, 0, 0, NULL),
(9, 'phpcrmig:version', 'nt:base mix:created', 0, 0, 1, 0, NULL),
(10, 'phpcrmig:versions', 'nt:base', 0, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phpcr_type_props`
--

CREATE TABLE `phpcr_type_props` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  `fulltext_searchable` tinyint(1) NOT NULL,
  `query_orderable` tinyint(1) NOT NULL,
  `required_type` int(11) NOT NULL,
  `query_operators` int(11) NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `phpcr_type_props`
--

INSERT INTO `phpcr_type_props` (`node_type_id`, `name`, `protected`, `auto_created`, `mandatory`, `on_parent_version`, `multiple`, `fulltext_searchable`, `query_orderable`, `required_type`, `query_operators`, `default_value`) VALUES
(2, 'sulu:content', 0, 0, 1, 1, 0, 0, 0, 9, 0, NULL),
(2, 'sulu:history', 0, 1, 1, 1, 0, 0, 0, 6, 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phpcr_workspaces`
--

CREATE TABLE `phpcr_workspaces` (
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `phpcr_workspaces`
--

INSERT INTO `phpcr_workspaces` (`name`) VALUES
('default'),
('default_live');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ro_routes`
--

CREATE TABLE `ro_routes` (
  `id` int(11) NOT NULL,
  `target_id` int(11) DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `se_access_controls`
--

CREATE TABLE `se_access_controls` (
  `id` int(11) NOT NULL,
  `permissions` smallint(6) NOT NULL,
  `entityId` int(11) NOT NULL,
  `entityClass` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idRoles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `se_groups`
--

CREATE TABLE `se_groups` (
  `id` int(11) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idGroupsParent` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `se_group_roles`
--

CREATE TABLE `se_group_roles` (
  `idGroups` int(11) NOT NULL,
  `idRoles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `se_permissions`
--

CREATE TABLE `se_permissions` (
  `id` int(11) NOT NULL,
  `context` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` smallint(6) NOT NULL,
  `idRoles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `se_permissions`
--

INSERT INTO `se_permissions` (`id`, `context`, `module`, `permissions`, `idRoles`) VALUES
(1, 'sulu.contact.people', NULL, 127, 1),
(2, 'sulu.contact.organizations', NULL, 127, 1),
(3, 'sulu.media.collections', NULL, 127, 1),
(4, 'sulu.media.system_collections', NULL, 127, 1),
(5, 'sulu.security.roles', NULL, 127, 1),
(6, 'sulu.security.groups', NULL, 127, 1),
(7, 'sulu.security.users', NULL, 127, 1),
(8, 'sulu.settings.categories', NULL, 127, 1),
(9, 'sulu.settings.tags', NULL, 127, 1),
(10, 'sulu.global.snippets', NULL, 127, 1),
(11, 'sulu.webspaces.example.default-snippets', NULL, 127, 1),
(12, 'sulu.webspaces.example', NULL, 127, 1),
(13, 'sulu.webspaces.example.analytics', NULL, 127, 1),
(14, 'sulu.webspaces.example.custom-urls', NULL, 127, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `se_roles`
--

CREATE TABLE `se_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idSecurityTypes` int(11) DEFAULT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `se_roles`
--

INSERT INTO `se_roles` (`id`, `name`, `system`, `created`, `changed`, `idSecurityTypes`, `idUsersCreator`, `idUsersChanger`) VALUES
(1, 'User', 'Sulu', '2019-06-22 11:11:03', '2019-06-22 11:11:03', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `se_role_settings`
--

CREATE TABLE `se_role_settings` (
  `id` int(11) NOT NULL,
  `settingKey` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `se_security_types`
--

CREATE TABLE `se_security_types` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `se_users`
--

CREATE TABLE `se_users` (
  `id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `lastLogin` datetime DEFAULT NULL,
  `confirmationKey` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwordResetToken` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwordResetTokenExpiresAt` datetime DEFAULT NULL,
  `passwordResetTokenEmailsSent` int(11) DEFAULT 0,
  `privateKey` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apiKey` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idContacts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `se_users`
--

INSERT INTO `se_users` (`id`, `username`, `password`, `locale`, `salt`, `locked`, `enabled`, `lastLogin`, `confirmationKey`, `passwordResetToken`, `passwordResetTokenExpiresAt`, `passwordResetTokenEmailsSent`, `privateKey`, `apiKey`, `email`, `idContacts`) VALUES
(1, 'admin', '$2y$13$9fw4eMVh69.tK/YQlyG76.J7/3oYy4HXOhJ5cYKZwJcHaoOjRXUZa', 'en', 'r2lTymt417VHnjYKdPlWqm//IxYNMBKTIMTpFXQZbHs=', 0, 1, '2019-06-22 11:11:30', NULL, NULL, NULL, NULL, NULL, 'b3a94b04bd9bf6461a2f2998ed21b55e', 'admin@example.com', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `se_user_groups`
--

CREATE TABLE `se_user_groups` (
  `id` int(11) NOT NULL,
  `locale` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `idGroups` int(11) DEFAULT NULL,
  `idUsers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `se_user_roles`
--

CREATE TABLE `se_user_roles` (
  `id` int(11) NOT NULL,
  `locale` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUsers` int(11) DEFAULT NULL,
  `idRoles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `se_user_roles`
--

INSERT INTO `se_user_roles` (`id`, `locale`, `idUsers`, `idRoles`) VALUES
(1, '[\"de\",\"en\"]', 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `se_user_settings`
--

CREATE TABLE `se_user_settings` (
  `settingsValue` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `settingsKey` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUsers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `se_user_settings`
--

INSERT INTO `se_user_settings` (`settingsValue`, `settingsKey`, `idUsers`) VALUES
('\"8df68f81-11eb-49f2-9a9f-acc613b5979b\"', 'sulu_admin.list_store.pages.webspace_overview_example.active', 1),
('\"example\"', 'sulu_page.webspace_tabs.webspace', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ta_tags`
--

CREATE TABLE `ta_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int(11) DEFAULT NULL,
  `idUsersChanger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `we_analytics`
--

CREATE TABLE `we_analytics` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webspace_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all_domains` tinyint(1) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `we_analytics_domains`
--

CREATE TABLE `we_analytics_domains` (
  `analytics` int(11) NOT NULL,
  `domain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `we_domains`
--

CREATE TABLE `we_domains` (
  `id` int(11) NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `environment` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `ca_categories`
--
ALTER TABLE `ca_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_3D85D789AF5206F3` (`category_key`),
  ADD KEY `IDX_3D85D78937A3C3B1` (`idCategoriesParent`),
  ADD KEY `IDX_3D85D789DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_3D85D78930D07CD5` (`idUsersChanger`);

--
-- Indizes für die Tabelle `ca_category_meta`
--
ALTER TABLE `ca_category_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2575BBB0B8075882` (`idCategories`);

--
-- Indizes für die Tabelle `ca_category_translations`
--
ALTER TABLE `ca_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5DCED5E3B8075882` (`idCategories`),
  ADD KEY `IDX_5DCED5E3DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_5DCED5E330D07CD5` (`idUsersChanger`);

--
-- Indizes für die Tabelle `ca_category_translation_keywords`
--
ALTER TABLE `ca_category_translation_keywords`
  ADD PRIMARY KEY (`idKeywords`,`idCategoryTranslations`),
  ADD KEY `IDX_D15FBE37F9FC9F05` (`idKeywords`),
  ADD KEY `IDX_D15FBE3717CA14DA` (`idCategoryTranslations`);

--
-- Indizes für die Tabelle `ca_category_translation_medias`
--
ALTER TABLE `ca_category_translation_medias`
  ADD PRIMARY KEY (`idCategoryTranslations`,`idMedia`),
  ADD KEY `IDX_39FC41BA17CA14DA` (`idCategoryTranslations`),
  ADD KEY `IDX_39FC41BA7DE8E211` (`idMedia`);

--
-- Indizes für die Tabelle `ca_keywords`
--
ALTER TABLE `ca_keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_idx` (`keyword`,`locale`),
  ADD KEY `IDX_FE02CA0BDBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_FE02CA0B30D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_FE02CA0B5A93713B` (`keyword`);

--
-- Indizes für die Tabelle `co_accounts`
--
ALTER TABLE `co_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_805CD14A6D4A8651` (`idContactsMain`),
  ADD KEY `IDX_805CD14AC9171171` (`idAccountsParent`),
  ADD KEY `IDX_805CD14AE48E9A13` (`logo`),
  ADD KEY `IDX_805CD14ADBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_805CD14A30D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_805CD14A5E237E06` (`name`);

--
-- Indizes für die Tabelle `co_account_addresses`
--
ALTER TABLE `co_account_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4165FE4893205E40996BB4F7` (`idAddresses`,`idAccounts`),
  ADD KEY `IDX_4165FE4893205E40` (`idAddresses`),
  ADD KEY `IDX_4165FE48996BB4F7` (`idAccounts`);

--
-- Indizes für die Tabelle `co_account_bank_accounts`
--
ALTER TABLE `co_account_bank_accounts`
  ADD PRIMARY KEY (`idAccounts`,`idBankAccounts`),
  ADD KEY `IDX_C873A532996BB4F7` (`idAccounts`),
  ADD KEY `IDX_C873A53237FCD1D8` (`idBankAccounts`);

--
-- Indizes für die Tabelle `co_account_categories`
--
ALTER TABLE `co_account_categories`
  ADD PRIMARY KEY (`idAccounts`,`idCategories`),
  ADD KEY `IDX_B60E9510996BB4F7` (`idAccounts`),
  ADD KEY `IDX_B60E9510B8075882` (`idCategories`);

--
-- Indizes für die Tabelle `co_account_contacts`
--
ALTER TABLE `co_account_contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_28C6CA0E60E33F28996BB4F7` (`idContacts`,`idAccounts`),
  ADD KEY `IDX_28C6CA0E2A75CE2A` (`idPositions`),
  ADD KEY `IDX_28C6CA0E60E33F28` (`idContacts`),
  ADD KEY `IDX_28C6CA0E996BB4F7` (`idAccounts`);

--
-- Indizes für die Tabelle `co_account_emails`
--
ALTER TABLE `co_account_emails`
  ADD PRIMARY KEY (`idAccounts`,`idEmails`),
  ADD KEY `IDX_3E246FC3996BB4F7` (`idAccounts`),
  ADD KEY `IDX_3E246FC32F9040C8` (`idEmails`);

--
-- Indizes für die Tabelle `co_account_faxes`
--
ALTER TABLE `co_account_faxes`
  ADD PRIMARY KEY (`idAccounts`,`idFaxes`),
  ADD KEY `IDX_7A4E77DC996BB4F7` (`idAccounts`),
  ADD KEY `IDX_7A4E77DCCF6A2007` (`idFaxes`);

--
-- Indizes für die Tabelle `co_account_medias`
--
ALTER TABLE `co_account_medias`
  ADD PRIMARY KEY (`idAccounts`,`idMedias`),
  ADD KEY `IDX_60772810996BB4F7` (`idAccounts`),
  ADD KEY `IDX_6077281071C3071B` (`idMedias`);

--
-- Indizes für die Tabelle `co_account_notes`
--
ALTER TABLE `co_account_notes`
  ADD PRIMARY KEY (`idAccounts`,`idNotes`),
  ADD KEY `IDX_A3FBB24A996BB4F7` (`idAccounts`),
  ADD KEY `IDX_A3FBB24A16DFE591` (`idNotes`);

--
-- Indizes für die Tabelle `co_account_phones`
--
ALTER TABLE `co_account_phones`
  ADD PRIMARY KEY (`idAccounts`,`idPhones`),
  ADD KEY `IDX_918DA964996BB4F7` (`idAccounts`),
  ADD KEY `IDX_918DA9648039866F` (`idPhones`);

--
-- Indizes für die Tabelle `co_account_social_media_profiles`
--
ALTER TABLE `co_account_social_media_profiles`
  ADD PRIMARY KEY (`idAccounts`,`idSocialMediaProfiles`),
  ADD KEY `IDX_E06F75F5996BB4F7` (`idAccounts`),
  ADD KEY `IDX_E06F75F5573F8344` (`idSocialMediaProfiles`);

--
-- Indizes für die Tabelle `co_account_tags`
--
ALTER TABLE `co_account_tags`
  ADD PRIMARY KEY (`idAccounts`,`idTags`),
  ADD KEY `IDX_E8D92005996BB4F7` (`idAccounts`),
  ADD KEY `IDX_E8D920051C41CAB8` (`idTags`);

--
-- Indizes für die Tabelle `co_account_urls`
--
ALTER TABLE `co_account_urls`
  ADD PRIMARY KEY (`idAccounts`,`idUrls`),
  ADD KEY `IDX_ADF18382996BB4F7` (`idAccounts`),
  ADD KEY `IDX_ADF183825969693F` (`idUrls`);

--
-- Indizes für die Tabelle `co_addresses`
--
ALTER TABLE `co_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_26E9A6142A37021A` (`idAdressTypes`),
  ADD KEY `IDX_26E9A614A18CC0FB` (`idCountries`);

--
-- Indizes für die Tabelle `co_address_types`
--
ALTER TABLE `co_address_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `co_bank_account`
--
ALTER TABLE `co_bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `co_contacts`
--
ALTER TABLE `co_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_79D45A95A254E939` (`idTitles`),
  ADD KEY `IDX_79D45A951677722F` (`avatar`),
  ADD KEY `IDX_79D45A95DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_79D45A9530D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_79D45A952392A156` (`firstName`),
  ADD KEY `IDX_79D45A9591161A88` (`lastName`);

--
-- Indizes für die Tabelle `co_contact_addresses`
--
ALTER TABLE `co_contact_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DEE056893205E4060E33F28` (`idAddresses`,`idContacts`),
  ADD KEY `IDX_DEE056893205E40` (`idAddresses`),
  ADD KEY `IDX_DEE056860E33F28` (`idContacts`);

--
-- Indizes für die Tabelle `co_contact_bank_accounts`
--
ALTER TABLE `co_contact_bank_accounts`
  ADD PRIMARY KEY (`idContacts`,`idBankAccounts`),
  ADD KEY `IDX_76CDDA0660E33F28` (`idContacts`),
  ADD KEY `IDX_76CDDA0637FCD1D8` (`idBankAccounts`);

--
-- Indizes für die Tabelle `co_contact_categories`
--
ALTER TABLE `co_contact_categories`
  ADD PRIMARY KEY (`idContacts`,`idCategories`),
  ADD KEY `IDX_8D2C3E2360E33F28` (`idContacts`),
  ADD KEY `IDX_8D2C3E23B8075882` (`idCategories`);

--
-- Indizes für die Tabelle `co_contact_emails`
--
ALTER TABLE `co_contact_emails`
  ADD PRIMARY KEY (`idContacts`,`idEmails`),
  ADD KEY `IDX_8982963160E33F28` (`idContacts`),
  ADD KEY `IDX_898296312F9040C8` (`idEmails`);

--
-- Indizes für die Tabelle `co_contact_faxes`
--
ALTER TABLE `co_contact_faxes`
  ADD PRIMARY KEY (`idContacts`,`idFaxes`),
  ADD KEY `IDX_61EBBEA260E33F28` (`idContacts`),
  ADD KEY `IDX_61EBBEA2CF6A2007` (`idFaxes`);

--
-- Indizes für die Tabelle `co_contact_locales`
--
ALTER TABLE `co_contact_locales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_31E5672760E33F28` (`idContacts`);

--
-- Indizes für die Tabelle `co_contact_medias`
--
ALTER TABLE `co_contact_medias`
  ADD PRIMARY KEY (`idContacts`,`idMedias`),
  ADD KEY `IDX_D7D1D1E260E33F28` (`idContacts`),
  ADD KEY `IDX_D7D1D1E271C3071B` (`idMedias`);

--
-- Indizes für die Tabelle `co_contact_notes`
--
ALTER TABLE `co_contact_notes`
  ADD PRIMARY KEY (`idContacts`,`idNotes`),
  ADD KEY `IDX_B85E7B3460E33F28` (`idContacts`),
  ADD KEY `IDX_B85E7B3416DFE591` (`idNotes`);

--
-- Indizes für die Tabelle `co_contact_phones`
--
ALTER TABLE `co_contact_phones`
  ADD PRIMARY KEY (`idContacts`,`idPhones`),
  ADD KEY `IDX_262B509660E33F28` (`idContacts`),
  ADD KEY `IDX_262B50968039866F` (`idPhones`);

--
-- Indizes für die Tabelle `co_contact_social_media_profiles`
--
ALTER TABLE `co_contact_social_media_profiles`
  ADD PRIMARY KEY (`idContacts`,`idSocialMediaProfiles`),
  ADD KEY `IDX_74FF4CC060E33F28` (`idContacts`),
  ADD KEY `IDX_74FF4CC0573F8344` (`idSocialMediaProfiles`);

--
-- Indizes für die Tabelle `co_contact_tags`
--
ALTER TABLE `co_contact_tags`
  ADD PRIMARY KEY (`idContacts`,`idTags`),
  ADD KEY `IDX_4CB5255060E33F28` (`idContacts`),
  ADD KEY `IDX_4CB525501C41CAB8` (`idTags`);

--
-- Indizes für die Tabelle `co_contact_titles`
--
ALTER TABLE `co_contact_titles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4463FC02B36786B` (`title`);

--
-- Indizes für die Tabelle `co_contact_urls`
--
ALTER TABLE `co_contact_urls`
  ADD PRIMARY KEY (`idContacts`,`idUrls`),
  ADD KEY `IDX_99D86D760E33F28` (`idContacts`),
  ADD KEY `IDX_99D86D75969693F` (`idUrls`);

--
-- Indizes für die Tabelle `co_countries`
--
ALTER TABLE `co_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `co_emails`
--
ALTER TABLE `co_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A2F2CB77D816E840` (`idEmailTypes`),
  ADD KEY `IDX_A2F2CB77E7927C74` (`email`);

--
-- Indizes für die Tabelle `co_email_types`
--
ALTER TABLE `co_email_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `co_faxes`
--
ALTER TABLE `co_faxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A5EC6A18B466C5DA` (`idFaxTypes`);

--
-- Indizes für die Tabelle `co_fax_types`
--
ALTER TABLE `co_fax_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `co_notes`
--
ALTER TABLE `co_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `co_phones`
--
ALTER TABLE `co_phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D5B0DD0A4249AD7` (`idPhoneTypes`);

--
-- Indizes für die Tabelle `co_phone_types`
--
ALTER TABLE `co_phone_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `co_positions`
--
ALTER TABLE `co_positions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9FBC367E462CE4F5` (`position`);

--
-- Indizes für die Tabelle `co_social_media_profiles`
--
ALTER TABLE `co_social_media_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DF585BFBB5BEA95F` (`idSocialMediaTypes`);

--
-- Indizes für die Tabelle `co_social_media_profile_types`
--
ALTER TABLE `co_social_media_profile_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `co_urls`
--
ALTER TABLE `co_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6F03842E882335CC` (`idUrlTypes`);

--
-- Indizes für die Tabelle `co_url_types`
--
ALTER TABLE `co_url_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `me_collections`
--
ALTER TABLE `me_collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F0D4887221904CD` (`collection_key`),
  ADD UNIQUE KEY `UNIQ_F0D4887CFA3F467` (`idCollectionsMetaDefault`),
  ADD KEY `IDX_F0D4887E67924D6` (`idCollectionTypes`),
  ADD KEY `IDX_F0D4887DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_F0D488730D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_F0D4887A4F2DCF8` (`idCollectionsParent`);

--
-- Indizes für die Tabelle `me_collection_meta`
--
ALTER TABLE `me_collection_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F8D5E71693782C96` (`idCollections`),
  ADD KEY `IDX_F8D5E7162B36786B` (`title`),
  ADD KEY `IDX_F8D5E7164180C698` (`locale`);

--
-- Indizes für die Tabelle `me_collection_types`
--
ALTER TABLE `me_collection_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_FB78DFB179078378` (`collection_type_key`);

--
-- Indizes für die Tabelle `me_files`
--
ALTER TABLE `me_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CA8D04277DE8E211` (`idMedia`),
  ADD KEY `IDX_CA8D0427DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_CA8D042730D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_CA8D0427BF1CD3C3` (`version`);

--
-- Indizes für die Tabelle `me_file_versions`
--
ALTER TABLE `me_file_versions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7B6E89456B801096` (`idFileVersionsMetaDefault`),
  ADD KEY `IDX_7B6E894511F10344` (`idFiles`),
  ADD KEY `IDX_7B6E8945DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_7B6E894530D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_7B6E8945D8F2A087` (`mimeType`),
  ADD KEY `IDX_7B6E8945F7C0246A` (`size`),
  ADD KEY `IDX_7B6E8945BF1CD3C3` (`version`),
  ADD KEY `IDX_7B6E89455E237E06` (`name`);

--
-- Indizes für die Tabelle `me_file_version_categories`
--
ALTER TABLE `me_file_version_categories`
  ADD PRIMARY KEY (`idFileVersions`,`idCategories`),
  ADD KEY `IDX_2F1E17D0911ADE33` (`idFileVersions`),
  ADD KEY `IDX_2F1E17D0B8075882` (`idCategories`);

--
-- Indizes für die Tabelle `me_file_version_content_languages`
--
ALTER TABLE `me_file_version_content_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F3FD652C911ADE33` (`idFileVersions`);

--
-- Indizes für die Tabelle `me_file_version_meta`
--
ALTER TABLE `me_file_version_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AD44B0AD911ADE33` (`idFileVersions`),
  ADD KEY `IDX_AD44B0AD2B36786B` (`title`),
  ADD KEY `IDX_AD44B0AD4180C698` (`locale`);

--
-- Indizes für die Tabelle `me_file_version_publish_languages`
--
ALTER TABLE `me_file_version_publish_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_195DAB3C911ADE33` (`idFileVersions`);

--
-- Indizes für die Tabelle `me_file_version_tags`
--
ALTER TABLE `me_file_version_tags`
  ADD PRIMARY KEY (`idFileVersions`,`idTags`),
  ADD KEY `IDX_150A30BE911ADE33` (`idFileVersions`),
  ADD KEY `IDX_150A30BE1C41CAB8` (`idTags`);

--
-- Indizes für die Tabelle `me_format_options`
--
ALTER TABLE `me_format_options`
  ADD PRIMARY KEY (`format_key`,`fileVersion`),
  ADD KEY `IDX_6D25443B31852B63` (`fileVersion`);

--
-- Indizes für die Tabelle `me_media`
--
ALTER TABLE `me_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A694E572D1EB44DE` (`idPreviewImage`),
  ADD KEY `IDX_A694E57284671716` (`idMediaTypes`),
  ADD KEY `IDX_A694E57293782C96` (`idCollections`),
  ADD KEY `IDX_A694E572DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_A694E57230D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_A694E572A3F33DFA` (`changed`),
  ADD KEY `IDX_A694E572B23DB7B8` (`created`);

--
-- Indizes für die Tabelle `me_media_types`
--
ALTER TABLE `me_media_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9A01D6E85E237E06` (`name`);

--
-- Indizes für die Tabelle `phpcr_binarydata`
--
ALTER TABLE `phpcr_binarydata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_37E65615460D9FD7413BC13C1AC10DC4E7087E10` (`node_id`,`property_name`,`workspace_name`,`idx`);

--
-- Indizes für die Tabelle `phpcr_internal_index_types`
--
ALTER TABLE `phpcr_internal_index_types`
  ADD PRIMARY KEY (`type`,`node_id`);

--
-- Indizes für die Tabelle `phpcr_namespaces`
--
ALTER TABLE `phpcr_namespaces`
  ADD PRIMARY KEY (`prefix`);

--
-- Indizes für die Tabelle `phpcr_nodes`
--
ALTER TABLE `phpcr_nodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A4624AD7B548B0F1AC10DC4` (`path`,`workspace_name`),
  ADD UNIQUE KEY `UNIQ_A4624AD7772E836A1AC10DC4` (`identifier`,`workspace_name`),
  ADD KEY `IDX_A4624AD73D8E604F` (`parent`),
  ADD KEY `IDX_A4624AD78CDE5729` (`type`),
  ADD KEY `IDX_A4624AD7623C14D533E16B56` (`local_name`,`namespace`);

--
-- Indizes für die Tabelle `phpcr_nodes_references`
--
ALTER TABLE `phpcr_nodes_references`
  ADD PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  ADD KEY `IDX_F3BF7E1158E0B66` (`target_id`);

--
-- Indizes für die Tabelle `phpcr_nodes_weakreferences`
--
ALTER TABLE `phpcr_nodes_weakreferences`
  ADD PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  ADD KEY `IDX_F0E4F6FA158E0B66` (`target_id`);

--
-- Indizes für die Tabelle `phpcr_type_nodes`
--
ALTER TABLE `phpcr_type_nodes`
  ADD PRIMARY KEY (`node_type_id`),
  ADD UNIQUE KEY `UNIQ_34B0A8095E237E06` (`name`);

--
-- Indizes für die Tabelle `phpcr_type_props`
--
ALTER TABLE `phpcr_type_props`
  ADD PRIMARY KEY (`node_type_id`,`name`);

--
-- Indizes für die Tabelle `phpcr_workspaces`
--
ALTER TABLE `phpcr_workspaces`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `ro_routes`
--
ALTER TABLE `ro_routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_671DB7A4B548B0F4180C698` (`path`,`locale`),
  ADD KEY `IDX_671DB7A4158E0B66` (`target_id`),
  ADD KEY `IDX_671DB7A4DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_671DB7A430D07CD5` (`idUsersChanger`),
  ADD KEY `IDX_671DB7A4B548B0F` (`path`),
  ADD KEY `IDX_671DB7A44180C698` (`locale`);

--
-- Indizes für die Tabelle `se_access_controls`
--
ALTER TABLE `se_access_controls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C526DC52A1FA6DDA` (`idRoles`),
  ADD KEY `IDX_C526DC52F62829FC` (`entityId`),
  ADD KEY `IDX_C526DC523963FFAB` (`entityClass`);

--
-- Indizes für die Tabelle `se_groups`
--
ALTER TABLE `se_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_231E44ECBF274AB0` (`idGroupsParent`),
  ADD KEY `IDX_231E44ECDBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_231E44EC30D07CD5` (`idUsersChanger`);

--
-- Indizes für die Tabelle `se_group_roles`
--
ALTER TABLE `se_group_roles`
  ADD PRIMARY KEY (`idGroups`,`idRoles`),
  ADD KEY `IDX_9713F725937C91EA` (`idGroups`),
  ADD KEY `IDX_9713F725A1FA6DDA` (`idRoles`);

--
-- Indizes für die Tabelle `se_permissions`
--
ALTER TABLE `se_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5CEC3EEAE25D857EC242628A1FA6DDA` (`context`,`module`,`idRoles`),
  ADD KEY `IDX_5CEC3EEAA1FA6DDA` (`idRoles`);

--
-- Indizes für die Tabelle `se_roles`
--
ALTER TABLE `se_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_13B749A05E237E06` (`name`),
  ADD KEY `IDX_13B749A0D02106C0` (`idSecurityTypes`),
  ADD KEY `IDX_13B749A0DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_13B749A030D07CD5` (`idUsersChanger`);

--
-- Indizes für die Tabelle `se_role_settings`
--
ALTER TABLE `se_role_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DAD1C8CB3AA9950BB8C2FD88` (`settingKey`,`roleId`),
  ADD KEY `IDX_DAD1C8CBB8C2FD88` (`roleId`),
  ADD KEY `IDX_DAD1C8CB3AA9950B` (`settingKey`);

--
-- Indizes für die Tabelle `se_security_types`
--
ALTER TABLE `se_security_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `se_users`
--
ALTER TABLE `se_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B10AC28EF85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_B10AC28E60E33F28` (`idContacts`),
  ADD UNIQUE KEY `UNIQ_B10AC28EADC1CD13` (`passwordResetToken`),
  ADD UNIQUE KEY `UNIQ_B10AC28EE7927C74` (`email`);

--
-- Indizes für die Tabelle `se_user_groups`
--
ALTER TABLE `se_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E43ED0C8937C91EA` (`idGroups`),
  ADD KEY `IDX_E43ED0C8347E6F4` (`idUsers`);

--
-- Indizes für die Tabelle `se_user_roles`
--
ALTER TABLE `se_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E48BD9DB347E6F4` (`idUsers`),
  ADD KEY `IDX_E48BD9DBA1FA6DDA` (`idRoles`);

--
-- Indizes für die Tabelle `se_user_settings`
--
ALTER TABLE `se_user_settings`
  ADD PRIMARY KEY (`settingsKey`,`idUsers`),
  ADD KEY `IDX_108FCAFA347E6F4` (`idUsers`);

--
-- Indizes für die Tabelle `ta_tags`
--
ALTER TABLE `ta_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B258E4995E237E06` (`name`),
  ADD KEY `IDX_B258E499DBF11E1D` (`idUsersCreator`),
  ADD KEY `IDX_B258E49930D07CD5` (`idUsersChanger`);

--
-- Indizes für die Tabelle `we_analytics`
--
ALTER TABLE `we_analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4E50BB8D1640EFD3` (`all_domains`),
  ADD KEY `IDX_4E50BB8DAE248174` (`webspace_key`);

--
-- Indizes für die Tabelle `we_analytics_domains`
--
ALTER TABLE `we_analytics_domains`
  ADD PRIMARY KEY (`analytics`,`domain`),
  ADD KEY `IDX_F9323B6EEAC2E688` (`analytics`),
  ADD KEY `IDX_F9323B6EA7A91E0B` (`domain`);

--
-- Indizes für die Tabelle `we_domains`
--
ALTER TABLE `we_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CFAB3F5F47645AE` (`url`),
  ADD KEY `IDX_7CFAB3F54626DE22` (`environment`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `ca_categories`
--
ALTER TABLE `ca_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ca_category_meta`
--
ALTER TABLE `ca_category_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ca_category_translations`
--
ALTER TABLE `ca_category_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ca_keywords`
--
ALTER TABLE `ca_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_accounts`
--
ALTER TABLE `co_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_account_addresses`
--
ALTER TABLE `co_account_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_account_contacts`
--
ALTER TABLE `co_account_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_addresses`
--
ALTER TABLE `co_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_address_types`
--
ALTER TABLE `co_address_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `co_bank_account`
--
ALTER TABLE `co_bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_contacts`
--
ALTER TABLE `co_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `co_contact_addresses`
--
ALTER TABLE `co_contact_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_contact_locales`
--
ALTER TABLE `co_contact_locales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_contact_titles`
--
ALTER TABLE `co_contact_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_countries`
--
ALTER TABLE `co_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT für Tabelle `co_emails`
--
ALTER TABLE `co_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_email_types`
--
ALTER TABLE `co_email_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `co_faxes`
--
ALTER TABLE `co_faxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_fax_types`
--
ALTER TABLE `co_fax_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `co_notes`
--
ALTER TABLE `co_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_phones`
--
ALTER TABLE `co_phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_phone_types`
--
ALTER TABLE `co_phone_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `co_positions`
--
ALTER TABLE `co_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_social_media_profiles`
--
ALTER TABLE `co_social_media_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_social_media_profile_types`
--
ALTER TABLE `co_social_media_profile_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `co_urls`
--
ALTER TABLE `co_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `co_url_types`
--
ALTER TABLE `co_url_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `me_collections`
--
ALTER TABLE `me_collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `me_collection_meta`
--
ALTER TABLE `me_collection_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `me_collection_types`
--
ALTER TABLE `me_collection_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `me_files`
--
ALTER TABLE `me_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `me_file_versions`
--
ALTER TABLE `me_file_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `me_file_version_content_languages`
--
ALTER TABLE `me_file_version_content_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `me_file_version_meta`
--
ALTER TABLE `me_file_version_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `me_file_version_publish_languages`
--
ALTER TABLE `me_file_version_publish_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `me_media`
--
ALTER TABLE `me_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `me_media_types`
--
ALTER TABLE `me_media_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `phpcr_binarydata`
--
ALTER TABLE `phpcr_binarydata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `phpcr_nodes`
--
ALTER TABLE `phpcr_nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT für Tabelle `phpcr_type_nodes`
--
ALTER TABLE `phpcr_type_nodes`
  MODIFY `node_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `ro_routes`
--
ALTER TABLE `ro_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `se_access_controls`
--
ALTER TABLE `se_access_controls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `se_groups`
--
ALTER TABLE `se_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `se_permissions`
--
ALTER TABLE `se_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `se_roles`
--
ALTER TABLE `se_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `se_role_settings`
--
ALTER TABLE `se_role_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `se_security_types`
--
ALTER TABLE `se_security_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `se_users`
--
ALTER TABLE `se_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `se_user_groups`
--
ALTER TABLE `se_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `se_user_roles`
--
ALTER TABLE `se_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `ta_tags`
--
ALTER TABLE `ta_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `we_analytics`
--
ALTER TABLE `we_analytics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `we_domains`
--
ALTER TABLE `we_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `ca_categories`
--
ALTER TABLE `ca_categories`
  ADD CONSTRAINT `FK_3D85D78930D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_3D85D78937A3C3B1` FOREIGN KEY (`idCategoriesParent`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3D85D789DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `ca_category_meta`
--
ALTER TABLE `ca_category_meta`
  ADD CONSTRAINT `FK_2575BBB0B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `ca_category_translations`
--
ALTER TABLE `ca_category_translations`
  ADD CONSTRAINT `FK_5DCED5E330D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5DCED5E3B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5DCED5E3DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `ca_category_translation_keywords`
--
ALTER TABLE `ca_category_translation_keywords`
  ADD CONSTRAINT `FK_D15FBE3717CA14DA` FOREIGN KEY (`idCategoryTranslations`) REFERENCES `ca_category_translations` (`id`),
  ADD CONSTRAINT `FK_D15FBE37F9FC9F05` FOREIGN KEY (`idKeywords`) REFERENCES `ca_keywords` (`id`);

--
-- Constraints der Tabelle `ca_category_translation_medias`
--
ALTER TABLE `ca_category_translation_medias`
  ADD CONSTRAINT `FK_39FC41BA17CA14DA` FOREIGN KEY (`idCategoryTranslations`) REFERENCES `ca_category_translations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_39FC41BA7DE8E211` FOREIGN KEY (`idMedia`) REFERENCES `me_media` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `ca_keywords`
--
ALTER TABLE `ca_keywords`
  ADD CONSTRAINT `FK_FE02CA0B30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_FE02CA0BDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `co_accounts`
--
ALTER TABLE `co_accounts`
  ADD CONSTRAINT `FK_805CD14A30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_805CD14A6D4A8651` FOREIGN KEY (`idContactsMain`) REFERENCES `co_contacts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_805CD14AC9171171` FOREIGN KEY (`idAccountsParent`) REFERENCES `co_accounts` (`id`),
  ADD CONSTRAINT `FK_805CD14ADBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_805CD14AE48E9A13` FOREIGN KEY (`logo`) REFERENCES `me_media` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `co_account_addresses`
--
ALTER TABLE `co_account_addresses`
  ADD CONSTRAINT `FK_4165FE4893205E40` FOREIGN KEY (`idAddresses`) REFERENCES `co_addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4165FE48996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `co_account_bank_accounts`
--
ALTER TABLE `co_account_bank_accounts`
  ADD CONSTRAINT `FK_C873A53237FCD1D8` FOREIGN KEY (`idBankAccounts`) REFERENCES `co_bank_account` (`id`),
  ADD CONSTRAINT `FK_C873A532996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`);

--
-- Constraints der Tabelle `co_account_categories`
--
ALTER TABLE `co_account_categories`
  ADD CONSTRAINT `FK_B60E9510996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B60E9510B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `co_account_contacts`
--
ALTER TABLE `co_account_contacts`
  ADD CONSTRAINT `FK_28C6CA0E2A75CE2A` FOREIGN KEY (`idPositions`) REFERENCES `co_positions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_28C6CA0E60E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_28C6CA0E996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `co_account_emails`
--
ALTER TABLE `co_account_emails`
  ADD CONSTRAINT `FK_3E246FC32F9040C8` FOREIGN KEY (`idEmails`) REFERENCES `co_emails` (`id`),
  ADD CONSTRAINT `FK_3E246FC3996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`);

--
-- Constraints der Tabelle `co_account_faxes`
--
ALTER TABLE `co_account_faxes`
  ADD CONSTRAINT `FK_7A4E77DC996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`),
  ADD CONSTRAINT `FK_7A4E77DCCF6A2007` FOREIGN KEY (`idFaxes`) REFERENCES `co_faxes` (`id`);

--
-- Constraints der Tabelle `co_account_medias`
--
ALTER TABLE `co_account_medias`
  ADD CONSTRAINT `FK_6077281071C3071B` FOREIGN KEY (`idMedias`) REFERENCES `me_media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_60772810996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `co_account_notes`
--
ALTER TABLE `co_account_notes`
  ADD CONSTRAINT `FK_A3FBB24A16DFE591` FOREIGN KEY (`idNotes`) REFERENCES `co_notes` (`id`),
  ADD CONSTRAINT `FK_A3FBB24A996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`);

--
-- Constraints der Tabelle `co_account_phones`
--
ALTER TABLE `co_account_phones`
  ADD CONSTRAINT `FK_918DA9648039866F` FOREIGN KEY (`idPhones`) REFERENCES `co_phones` (`id`),
  ADD CONSTRAINT `FK_918DA964996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`);

--
-- Constraints der Tabelle `co_account_social_media_profiles`
--
ALTER TABLE `co_account_social_media_profiles`
  ADD CONSTRAINT `FK_E06F75F5573F8344` FOREIGN KEY (`idSocialMediaProfiles`) REFERENCES `co_social_media_profiles` (`id`),
  ADD CONSTRAINT `FK_E06F75F5996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`);

--
-- Constraints der Tabelle `co_account_tags`
--
ALTER TABLE `co_account_tags`
  ADD CONSTRAINT `FK_E8D920051C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`),
  ADD CONSTRAINT `FK_E8D92005996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`);

--
-- Constraints der Tabelle `co_account_urls`
--
ALTER TABLE `co_account_urls`
  ADD CONSTRAINT `FK_ADF183825969693F` FOREIGN KEY (`idUrls`) REFERENCES `co_urls` (`id`),
  ADD CONSTRAINT `FK_ADF18382996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`);

--
-- Constraints der Tabelle `co_addresses`
--
ALTER TABLE `co_addresses`
  ADD CONSTRAINT `FK_26E9A6142A37021A` FOREIGN KEY (`idAdressTypes`) REFERENCES `co_address_types` (`id`),
  ADD CONSTRAINT `FK_26E9A614A18CC0FB` FOREIGN KEY (`idCountries`) REFERENCES `co_countries` (`id`);

--
-- Constraints der Tabelle `co_contacts`
--
ALTER TABLE `co_contacts`
  ADD CONSTRAINT `FK_79D45A951677722F` FOREIGN KEY (`avatar`) REFERENCES `me_media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_79D45A9530D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_79D45A95A254E939` FOREIGN KEY (`idTitles`) REFERENCES `co_contact_titles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_79D45A95DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `co_contact_addresses`
--
ALTER TABLE `co_contact_addresses`
  ADD CONSTRAINT `FK_DEE056860E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DEE056893205E40` FOREIGN KEY (`idAddresses`) REFERENCES `co_addresses` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `co_contact_bank_accounts`
--
ALTER TABLE `co_contact_bank_accounts`
  ADD CONSTRAINT `FK_76CDDA0637FCD1D8` FOREIGN KEY (`idBankAccounts`) REFERENCES `co_bank_account` (`id`),
  ADD CONSTRAINT `FK_76CDDA0660E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`);

--
-- Constraints der Tabelle `co_contact_categories`
--
ALTER TABLE `co_contact_categories`
  ADD CONSTRAINT `FK_8D2C3E2360E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8D2C3E23B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `co_contact_emails`
--
ALTER TABLE `co_contact_emails`
  ADD CONSTRAINT `FK_898296312F9040C8` FOREIGN KEY (`idEmails`) REFERENCES `co_emails` (`id`),
  ADD CONSTRAINT `FK_8982963160E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`);

--
-- Constraints der Tabelle `co_contact_faxes`
--
ALTER TABLE `co_contact_faxes`
  ADD CONSTRAINT `FK_61EBBEA260E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`),
  ADD CONSTRAINT `FK_61EBBEA2CF6A2007` FOREIGN KEY (`idFaxes`) REFERENCES `co_faxes` (`id`);

--
-- Constraints der Tabelle `co_contact_locales`
--
ALTER TABLE `co_contact_locales`
  ADD CONSTRAINT `FK_31E5672760E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`);

--
-- Constraints der Tabelle `co_contact_medias`
--
ALTER TABLE `co_contact_medias`
  ADD CONSTRAINT `FK_D7D1D1E260E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D7D1D1E271C3071B` FOREIGN KEY (`idMedias`) REFERENCES `me_media` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `co_contact_notes`
--
ALTER TABLE `co_contact_notes`
  ADD CONSTRAINT `FK_B85E7B3416DFE591` FOREIGN KEY (`idNotes`) REFERENCES `co_notes` (`id`),
  ADD CONSTRAINT `FK_B85E7B3460E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`);

--
-- Constraints der Tabelle `co_contact_phones`
--
ALTER TABLE `co_contact_phones`
  ADD CONSTRAINT `FK_262B509660E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`),
  ADD CONSTRAINT `FK_262B50968039866F` FOREIGN KEY (`idPhones`) REFERENCES `co_phones` (`id`);

--
-- Constraints der Tabelle `co_contact_social_media_profiles`
--
ALTER TABLE `co_contact_social_media_profiles`
  ADD CONSTRAINT `FK_74FF4CC0573F8344` FOREIGN KEY (`idSocialMediaProfiles`) REFERENCES `co_social_media_profiles` (`id`),
  ADD CONSTRAINT `FK_74FF4CC060E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`);

--
-- Constraints der Tabelle `co_contact_tags`
--
ALTER TABLE `co_contact_tags`
  ADD CONSTRAINT `FK_4CB525501C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`),
  ADD CONSTRAINT `FK_4CB5255060E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`);

--
-- Constraints der Tabelle `co_contact_urls`
--
ALTER TABLE `co_contact_urls`
  ADD CONSTRAINT `FK_99D86D75969693F` FOREIGN KEY (`idUrls`) REFERENCES `co_urls` (`id`),
  ADD CONSTRAINT `FK_99D86D760E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`);

--
-- Constraints der Tabelle `co_emails`
--
ALTER TABLE `co_emails`
  ADD CONSTRAINT `FK_A2F2CB77D816E840` FOREIGN KEY (`idEmailTypes`) REFERENCES `co_email_types` (`id`);

--
-- Constraints der Tabelle `co_faxes`
--
ALTER TABLE `co_faxes`
  ADD CONSTRAINT `FK_A5EC6A18B466C5DA` FOREIGN KEY (`idFaxTypes`) REFERENCES `co_fax_types` (`id`);

--
-- Constraints der Tabelle `co_phones`
--
ALTER TABLE `co_phones`
  ADD CONSTRAINT `FK_D5B0DD0A4249AD7` FOREIGN KEY (`idPhoneTypes`) REFERENCES `co_phone_types` (`id`);

--
-- Constraints der Tabelle `co_social_media_profiles`
--
ALTER TABLE `co_social_media_profiles`
  ADD CONSTRAINT `FK_DF585BFBB5BEA95F` FOREIGN KEY (`idSocialMediaTypes`) REFERENCES `co_social_media_profile_types` (`id`);

--
-- Constraints der Tabelle `co_urls`
--
ALTER TABLE `co_urls`
  ADD CONSTRAINT `FK_6F03842E882335CC` FOREIGN KEY (`idUrlTypes`) REFERENCES `co_url_types` (`id`);

--
-- Constraints der Tabelle `me_collections`
--
ALTER TABLE `me_collections`
  ADD CONSTRAINT `FK_F0D488730D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F0D4887A4F2DCF8` FOREIGN KEY (`idCollectionsParent`) REFERENCES `me_collections` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F0D4887CFA3F467` FOREIGN KEY (`idCollectionsMetaDefault`) REFERENCES `me_collection_meta` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F0D4887DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F0D4887E67924D6` FOREIGN KEY (`idCollectionTypes`) REFERENCES `me_collection_types` (`id`);

--
-- Constraints der Tabelle `me_collection_meta`
--
ALTER TABLE `me_collection_meta`
  ADD CONSTRAINT `FK_F8D5E71693782C96` FOREIGN KEY (`idCollections`) REFERENCES `me_collections` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `me_files`
--
ALTER TABLE `me_files`
  ADD CONSTRAINT `FK_CA8D042730D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_CA8D04277DE8E211` FOREIGN KEY (`idMedia`) REFERENCES `me_media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CA8D0427DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `me_file_versions`
--
ALTER TABLE `me_file_versions`
  ADD CONSTRAINT `FK_7B6E894511F10344` FOREIGN KEY (`idFiles`) REFERENCES `me_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7B6E894530D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_7B6E89456B801096` FOREIGN KEY (`idFileVersionsMetaDefault`) REFERENCES `me_file_version_meta` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7B6E8945DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `me_file_version_categories`
--
ALTER TABLE `me_file_version_categories`
  ADD CONSTRAINT `FK_2F1E17D0911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2F1E17D0B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `me_file_version_content_languages`
--
ALTER TABLE `me_file_version_content_languages`
  ADD CONSTRAINT `FK_F3FD652C911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `me_file_version_meta`
--
ALTER TABLE `me_file_version_meta`
  ADD CONSTRAINT `FK_AD44B0AD911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `me_file_version_publish_languages`
--
ALTER TABLE `me_file_version_publish_languages`
  ADD CONSTRAINT `FK_195DAB3C911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `me_file_version_tags`
--
ALTER TABLE `me_file_version_tags`
  ADD CONSTRAINT `FK_150A30BE1C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_150A30BE911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `me_format_options`
--
ALTER TABLE `me_format_options`
  ADD CONSTRAINT `FK_6D25443B31852B63` FOREIGN KEY (`fileVersion`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `me_media`
--
ALTER TABLE `me_media`
  ADD CONSTRAINT `FK_A694E57230D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_A694E57284671716` FOREIGN KEY (`idMediaTypes`) REFERENCES `me_media_types` (`id`),
  ADD CONSTRAINT `FK_A694E57293782C96` FOREIGN KEY (`idCollections`) REFERENCES `me_collections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A694E572D1EB44DE` FOREIGN KEY (`idPreviewImage`) REFERENCES `me_media` (`id`),
  ADD CONSTRAINT `FK_A694E572DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `ro_routes`
--
ALTER TABLE `ro_routes`
  ADD CONSTRAINT `FK_671DB7A4158E0B66` FOREIGN KEY (`target_id`) REFERENCES `ro_routes` (`id`),
  ADD CONSTRAINT `FK_671DB7A430D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_671DB7A4DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `se_access_controls`
--
ALTER TABLE `se_access_controls`
  ADD CONSTRAINT `FK_C526DC52A1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `se_groups`
--
ALTER TABLE `se_groups`
  ADD CONSTRAINT `FK_231E44EC30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_231E44ECBF274AB0` FOREIGN KEY (`idGroupsParent`) REFERENCES `se_groups` (`id`),
  ADD CONSTRAINT `FK_231E44ECDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `se_group_roles`
--
ALTER TABLE `se_group_roles`
  ADD CONSTRAINT `FK_9713F725937C91EA` FOREIGN KEY (`idGroups`) REFERENCES `se_groups` (`id`),
  ADD CONSTRAINT `FK_9713F725A1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`);

--
-- Constraints der Tabelle `se_permissions`
--
ALTER TABLE `se_permissions`
  ADD CONSTRAINT `FK_5CEC3EEAA1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `se_roles`
--
ALTER TABLE `se_roles`
  ADD CONSTRAINT `FK_13B749A030D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_13B749A0D02106C0` FOREIGN KEY (`idSecurityTypes`) REFERENCES `se_security_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_13B749A0DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `se_role_settings`
--
ALTER TABLE `se_role_settings`
  ADD CONSTRAINT `FK_DAD1C8CBB8C2FD88` FOREIGN KEY (`roleId`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `se_users`
--
ALTER TABLE `se_users`
  ADD CONSTRAINT `FK_B10AC28E60E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `se_user_groups`
--
ALTER TABLE `se_user_groups`
  ADD CONSTRAINT `FK_E43ED0C8347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E43ED0C8937C91EA` FOREIGN KEY (`idGroups`) REFERENCES `se_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `se_user_roles`
--
ALTER TABLE `se_user_roles`
  ADD CONSTRAINT `FK_E48BD9DB347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E48BD9DBA1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `se_user_settings`
--
ALTER TABLE `se_user_settings`
  ADD CONSTRAINT `FK_108FCAFA347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `ta_tags`
--
ALTER TABLE `ta_tags`
  ADD CONSTRAINT `FK_B258E49930D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_B258E499DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL;

--
-- Constraints der Tabelle `we_analytics_domains`
--
ALTER TABLE `we_analytics_domains`
  ADD CONSTRAINT `FK_F9323B6EA7A91E0B` FOREIGN KEY (`domain`) REFERENCES `we_domains` (`id`),
  ADD CONSTRAINT `FK_F9323B6EEAC2E688` FOREIGN KEY (`analytics`) REFERENCES `we_analytics` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
