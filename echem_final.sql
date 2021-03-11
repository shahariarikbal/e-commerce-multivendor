-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2021 at 02:51 PM
-- Server version: 10.3.28-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `echem_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliated__sales`
--

CREATE TABLE `affiliated__sales` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `referred_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affiliated_commision` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliated__sales`
--

INSERT INTO `affiliated__sales` (`order_item_id`, `referred_by`, `created_at`, `updated_at`, `product`, `affiliated_commision`) VALUES
(19, 17, '2020-12-12 04:46:29', '2020-12-12 04:46:29', 'EP YELLOW', 0.00),
(32, 3, '2020-12-05 02:05:59', '2020-12-05 02:05:59', '', 0.00),
(33, 3, '2020-12-05 02:05:59', '2020-12-05 02:05:59', '', 0.00),
(34, 3, '2020-12-05 02:22:32', '2020-12-05 02:22:32', '', 0.00),
(36, 3, '2020-12-05 02:39:57', '2020-12-05 02:39:57', '', 0.00),
(37, 3, '2020-12-05 02:39:57', '2020-12-05 02:39:57', '', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_reqs`
--

CREATE TABLE `affiliate_reqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliate_reqs`
--

INSERT INTO `affiliate_reqs` (`id`, `user_id`, `created_at`, `updated_at`, `company_name`, `designation`) VALUES
(1, 5, '2020-12-05 18:00:00', '2020-12-05 18:00:00', '', ''),
(2, 8, '2020-12-11 22:53:39', '2020-12-11 22:53:39', 'discovery', 'manager'),
(3, 4, '2020-12-11 22:54:27', '2020-12-11 22:54:27', 'affiliate name', 'designation 1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `description`) VALUES
(7, NULL, 1, 'Supplies', 'supplies', '2020-10-22 00:57:13', '2020-10-22 00:57:13', NULL),
(8, NULL, 1, 'Supportive Products', 'supportive-products', '2020-10-22 00:57:27', '2020-10-22 00:57:27', NULL),
(9, NULL, 1, 'Chemicals', 'chemicals', '2020-10-22 00:57:38', '2020-10-22 00:57:38', NULL),
(10, NULL, 1, 'Brands', 'brands', '2020-10-22 00:57:52', '2020-10-22 00:57:52', NULL),
(11, 10, 1, 'Lancer', 'lancer', '2020-10-22 00:58:27', '2020-11-25 00:42:34', '<p><span style=\"color: #000000; font-family: \'Droid Sans\', arial, serif; font-size: 12px;\">Lancer Group is proud to announce that GOTS certification for all products included under the Evolution NX System, STI Silicone Ink Systems and HydroTrans umbrella of PVC-free and phthalate-free textile inks have been renewed for the calendar years 2020-2021. According to Global Standard gGmbH, \"the Global Organic Textile Standard (GOTS) is the world\'s leading textile processing standard for organic fibers, including ecological and social criteria, backed by independent certification of the entire textile supply chain.\"</span></p>\r\n<p><span style=\"color: #000000; font-family: \'Droid Sans\', arial, serif; font-size: 12px;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://echem.com.bd/storage/categories/November2020/Gots-New-Image1.png\" alt=\"\" width=\"177\" height=\"177\" /></span></p>'),
(12, 10, 1, 'Excalibur', 'excalibur', '2020-10-22 00:58:53', '2020-10-22 00:58:53', NULL),
(13, 10, 1, 'Evolution', 'evolution', '2020-10-22 00:59:05', '2020-10-22 00:59:21', NULL),
(14, 10, 1, 'STI Silicons', 'sti-silicons', '2020-10-22 00:59:37', '2020-10-22 00:59:37', NULL),
(16, 10, 1, 'Inknovators', 'inknovators', '2020-10-22 01:00:00', '2020-11-25 00:37:16', '<p><span style=\"font-family: Raleway, sans-serif; letter-spacing: 0.56px;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://echem.com.bd/storage/categories/November2020/inknovators.png\" alt=\"\" /></span></p>\r\n<p><span style=\"font-family: Raleway, sans-serif; letter-spacing: 0.56px;\">As one of the most leading innovative companies in textile screen printing industry, Inknovators formulates future generation water based inks, Ecological Disharge Inks, sublimation inks and PVC Free Plastisol inks making ecological sustainability our first priority during the production process.</span></p>'),
(18, 10, 1, 'Antex', 'antex', '2020-10-22 01:00:27', '2020-10-22 01:00:27', NULL),
(19, 10, 1, 'Afford', 'afford', '2020-10-22 01:00:42', '2020-10-22 01:00:42', NULL),
(20, 10, 1, 'Rhinotech', 'rhinotech', '2020-10-22 01:01:00', '2020-10-22 01:01:00', NULL),
(21, 10, 1, 'Imagemate', 'imagemate', '2020-10-22 01:01:16', '2020-10-22 01:01:16', NULL),
(22, 10, 1, 'DST', 'dst', '2020-10-22 01:01:31', '2020-10-22 01:01:31', NULL),
(23, 10, 1, 'Acosgraf', 'acosgraf', '2020-10-22 01:01:43', '2020-10-22 01:01:43', NULL),
(24, 10, 1, 'Perfectone', 'perfectone', '2020-10-22 01:01:56', '2020-10-22 01:01:56', NULL),
(25, 10, 1, 'Perfect Color', 'perfect-color', '2020-10-22 01:02:09', '2020-10-22 01:02:09', NULL),
(26, 10, 1, 'South Tech', 'south-tech', '2020-10-22 01:02:24', '2020-10-22 01:02:24', NULL),
(28, 10, 1, 'Salipt', 'salipt', '2020-10-22 01:02:54', '2020-10-22 01:02:54', NULL),
(29, 9, 1, 'Allover Printing Chemical', 'allover-printing-chemical', '2020-10-22 01:03:12', '2020-10-22 01:03:12', NULL),
(30, 9, 1, 'Digital Printing Chemicals', 'digital-printing-chemicals', '2020-10-22 01:03:24', '2020-10-22 01:03:24', NULL),
(31, 9, 1, 'Washing Chemicals', 'washing-chemicals', '2020-10-22 01:03:45', '2020-10-22 01:03:45', NULL),
(32, 9, 1, 'Dyeing Chemicals', 'dyeing-chemicals', '2020-10-22 01:03:57', '2020-10-22 01:03:57', NULL),
(33, 9, 1, 'Finishing Chemicals', 'finishing-chemicals', '2020-10-22 01:04:09', '2020-10-22 01:04:09', NULL),
(34, 9, 1, 'Laboratory Chemicals', 'laboratory-chemicals', '2020-10-22 01:04:27', '2020-10-22 01:04:27', NULL),
(35, 9, 1, 'Paper Chemicals', 'paper-chemicals', '2020-10-22 01:04:47', '2020-10-22 01:04:47', NULL),
(36, 9, 1, 'Argo Chemicals', 'argo-chemicals', '2020-10-22 01:04:58', '2020-10-22 01:04:58', NULL),
(37, 9, 1, 'Phermaceutical Chemicals', 'phermaceutical-chemicals', '2020-10-22 01:05:10', '2020-10-22 01:05:10', NULL),
(38, 9, 1, 'Packaging Chemicals', 'packaging-chemicals', '2020-10-22 01:05:25', '2020-10-22 01:05:25', NULL),
(39, 9, 1, 'Cleaning Chemicals', 'cleaning-chemicals', '2020-10-22 01:05:37', '2020-10-22 01:05:37', NULL),
(40, 9, 1, 'Ceramic Chemicals', 'ceramic-chemicals', '2020-10-22 01:05:49', '2020-10-22 01:05:49', NULL),
(41, 9, 1, 'Paint & Ink Manufacturing Chemicals', 'paint-and-ink-manufacturing-chemicals', '2020-10-22 01:06:12', '2020-10-22 01:06:12', NULL),
(42, 8, 1, 'Vinyl', 'vinyl', '2020-10-22 01:06:26', '2020-10-22 01:06:26', NULL),
(43, 8, 1, 'Screen Mesh', 'screen-mesh', '2020-10-22 01:06:40', '2020-10-22 01:06:40', NULL),
(44, 8, 1, 'Squegges', 'squegges', '2020-10-22 01:06:54', '2020-10-22 01:06:54', NULL),
(45, 8, 1, 'Emulsion', 'emulsion', '2020-10-22 01:07:10', '2020-10-22 01:07:10', NULL),
(47, 8, 1, 'Tape, Paper & Film', 'tape-paper-and-film', '2020-10-22 01:07:53', '2020-10-22 01:07:53', NULL),
(48, 7, 1, 'Inks', 'inks', '2020-10-22 01:08:13', '2020-10-31 12:03:04', '<p>TEST DESCRIPTION</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Sed libero ante, convallis eget venenatis vitae, mollis sed arcu. Cras tempor ex sit amet turpis sodales aliquet. Aenean id scelerisque ante. Suspendisse sed sollicitudin libero, eget iaculis velit.</p>\r\n<ul>\r\n<li style=\"text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Nullam et nisi tempus, commodo leo vel,</li>\r\n<li style=\"text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">mollis ex. Maecenas vitae cursus nibh.</li>\r\n<li style=\"text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Cras ac molestie ligula, eu porta orci.</li>\r\n</ul>'),
(49, 7, 1, 'Film & Output Inks', 'film-and-output-inks', '2020-10-22 01:08:36', '2020-10-22 01:08:36', NULL),
(50, 7, 1, 'Screen Printing Ink', 'screen-printing-ink', '2020-10-22 01:09:00', '2020-10-22 01:09:00', NULL),
(51, 7, 1, 'Offset Press Inks', 'offset-press-inks', '2020-10-22 01:09:15', '2020-10-22 01:09:15', NULL),
(52, 7, 1, 'Sublimation Inks', 'sublimation-inks', '2020-10-22 01:09:28', '2020-10-22 01:09:28', NULL),
(53, 7, 1, 'Pad Printing Inks', 'pad-printing-inks', '2020-10-22 01:09:40', '2020-10-22 01:09:40', NULL),
(54, 7, 1, 'Security Inks', 'security-inks', '2020-10-22 01:09:51', '2020-10-22 01:09:51', NULL),
(55, 7, 1, 'Heat Transfer Inks', 'heat-transfer-inks', '2020-10-22 01:10:05', '2020-10-22 01:10:05', NULL),
(56, 7, 1, 'Decal Printing Inks', 'decal-printing-inks', '2020-10-22 01:10:19', '2020-10-22 01:10:19', NULL),
(57, 7, 1, 'Digital Printing Inks', 'digital-printing-inks', '2020-10-22 01:10:34', '2020-10-22 01:10:34', NULL),
(59, 7, 1, 'Desktop Printing Inks', 'desktop-printing-inks', '2020-10-22 01:11:19', '2020-10-22 01:11:19', NULL),
(60, 7, 1, 'Pigment Printing Inks', 'pigment-printing-inks', '2020-10-22 01:11:35', '2020-10-22 01:11:35', NULL),
(61, 7, 1, 'Flexo Printing Inks', 'flexo-printing-inks', '2020-10-22 01:11:50', '2020-11-23 03:14:08', '<p>test</p>'),
(62, 10, 1, 'Chromaline', 'chromaline', '2020-11-09 10:31:00', '2020-11-09 10:44:24', '<div id=\"panel-5596-3-0-0\" class=\"so-panel widget widget_sow-headline panel-first-child\" style=\"font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; zoom: 1; margin-bottom: 30px; color: #555555; font-size: medium;\" data-index=\"9\">\r\n<div class=\"so-widget-sow-headline so-widget-sow-headline-default-83fab2a0aaa2\">\r\n<div class=\"sow-headline-container \">\r\n<h6 class=\"sow-headline\" style=\"font-family: Montserrat; font-weight: 500; color: #333333; line-height: 36px; font-size: 26px; margin-bottom: 0px !important; margin-top: 0px !important; text-align: left;\">\"ChromaLime is exactly what I\'ve been looking for. I\'m shooting six second exposures on LED and it holds up all day! A great product from a great company.\"</h6>\r\n<p><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Good screen printing results start with a good stencil, and the best stencils start with the right emulsion. Our premium screen printing emulsions are extremely high quality, easy to apply to the screen, and easy to reclaim.</p>\r\n<p><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Chromaline branded screen printing emulsions are engineered and manufactured for outstanding performance and consistency. As your business continues to grow, don&rsquo;t let production slow down due to inferior supplies.</p>\r\n<p><!-- [if !supportLists]--><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\"><span style=\"mso-list: Ignore;\">&Oslash;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp; </span></span></span><!--[endif]-->Rely on Chromaline&rsquo;s premium screen printing emulsions to deliver high quality images without the need to remake screens. In addition, reclaiming your screens has never been easier.</p>\r\n<h3 style=\"margin-bottom: 0.75em; margin-top: 0.75em; background-color: #efefef;\"><span style=\"color: #007ac2;\"><span style=\"font-weight: bolder;\">Premium Emulsion Recommendations</span></span></h3>\r\n<p style=\"line-height: 28.56px; background-color: #efefef;\"><span style=\"color: #007ac2;\">✓</span>&nbsp;<span style=\"font-weight: bolder;\">Desire faster exposure times and only work with plastisol inks?</span>&nbsp;Try&nbsp;<a style=\"background-color: transparent; color: #177ac2; text-decoration-line: none;\" href=\"https://shop.chromaline.com/chromalime/\" target=\"_blank\" rel=\"noopener\">ChromaLime</a>, our next generation technology<br /><span style=\"color: #007ac2;\">✓</span>&nbsp;<span style=\"font-weight: bolder;\">Desire the ability to make HD stencils?</span>&nbsp;Try&nbsp;<a style=\"background-color: transparent; color: #177ac2; text-decoration-line: none;\" href=\"https://shop.chromaline.com/chromablue/\" target=\"_blank\" rel=\"noopener\">ChromaBlue</a><br /><span style=\"color: #007ac2;\">✓</span>&nbsp;<span style=\"font-weight: bolder;\">Printing with water based inks?</span>&nbsp;Try&nbsp;<a style=\"background-color: transparent; color: #177ac2; text-decoration-line: none;\" href=\"https://shop.chromaline.com/chromatech-wr/\" target=\"_blank\" rel=\"noopener\">ChromaTech-WR</a><br /><span style=\"color: #007ac2;\">✓</span>&nbsp;<span style=\"font-weight: bolder;\">Using aggressive inks like UV, enamel, and solvents?</span>&nbsp;Try&nbsp;<a style=\"background-color: transparent; color: #177ac2; text-decoration-line: none;\" href=\"https://shop.chromaline.com/magnacure-udc-2/\" target=\"_blank\" rel=\"noopener\">UDC-2</a>&nbsp;or&nbsp;<a style=\"background-color: transparent; color: #177ac2; text-decoration-line: none;\" href=\"https://shop.chromaline.com/magnacure-udc-ace/\" target=\"_blank\" rel=\"noopener\">UDC-ACE</a></p>\r\n</div>\r\n</div>\r\n</div>'),
(63, 16, 1, 'Hybrid', 'hybrid', '2020-12-08 22:59:03', '2020-12-08 22:59:03', '<p>Hybrid</p>'),
(64, 16, 1, 'WATER BASE', 'water-base', '2020-12-11 23:50:09', '2020-12-11 23:50:09', '<p>WATER BASE</p>'),
(65, 16, 1, 'PLUSTISOL', 'plustisol', '2020-12-13 23:37:47', '2020-12-13 23:37:47', '<p>PLUSTISOL</p>'),
(66, 57, 1, 'EPSON', 'epson', '2020-12-26 01:55:57', '2020-12-26 01:55:57', '<p>PRINTER INKS</p>'),
(68, 10, 1, 'ARECOLOR', 'arecolor', '2020-12-26 01:58:07', '2020-12-26 01:58:07', '<p>PRINTER INKS</p>'),
(69, 57, 1, 'HP', 'hp', '2020-12-27 22:23:34', '2020-12-27 22:23:34', '<p>PRINTER INKS</p>');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'Jamilur rahman', 'abir2jamilur30@gmail.com', 'hefjhkj', '2020-10-30 15:32:24', '2020-10-30 15:32:24'),
(2, 'Lloydfrits', 'w98ib6x@goposts.site', 'Hi, here on the forum guys advised a cool Dating site, be sure to register - you will not REGRET it [url=https://bit.ly/384HTnk]https://bit.ly/384HTnk[/url]', '2020-11-07 23:19:13', '2020-11-07 23:19:13'),
(3, 'GregoryNot', 'nwfl@goposts.site', 'Hi, here on the forum guys advised a cool Dating site, be sure to register - you will not REGRET it [url=https://bit.ly/39cc9gy]https://bit.ly/39cc9gy[/url]', '2020-11-25 03:49:53', '2020-11-25 03:49:53'),
(4, 'Williamagide', 'teuicz@goposts.site', 'Hi, here on the forum guys advised a cool Dating site, be sure to register - you will not REGRET it [url=https://bit.ly/34nj4Ab]https://bit.ly/34nj4Ab[/url]', '2020-12-22 18:47:16', '2020-12-22 18:47:16'),
(5, 'Bryanbib', 'kffoe5r@goposts.site', 'Hi, here on the forum guys advised a cool Dating site, be sure to register - you will not REGRET it [url=https://bit.ly/3hhve2N]https://bit.ly/3hhve2N[/url]', '2020-12-28 13:33:30', '2020-12-28 13:33:30'),
(6, 'Bestmip', 'skredovakarina258@gmail.com', 'Добрый день! \r\n \r\nЕсли вы желаете улучшить видимость своего члена и хуя  echem.com.bd в поиске пизды и улучшить его размер до конского ялдыка, то моя помощь будет очень нужной для Вас. \r\n[b]Поток доверия Porno - система предназначеная для определения степ', '2021-01-05 05:45:50', '2021-01-05 05:45:50'),
(7, 'ruthie.trudel19@outlook.com', 'ruthie.trudel19@outlook.com', 'Good Afternoon \r\nHope you’re well, and that the company is good.\r\nWe offer a want to skyrocket your organization:\r\nhttps://jtbtigers.com/backlinks173813\r\nWith best regards,', '2021-01-20 10:14:27', '2021-01-20 10:14:27'),
(8, 'ericjonesonline@outlook.com', 'ericjonesonline@outlook.com', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at aramshopbd.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the ot', '2021-01-21 13:50:40', '2021-01-21 13:50:40'),
(9, 'yanira@stardatagroup.com', 'yanira@stardatagroup.com', 'It is with sad regret to inform you StarDataGroup.com is shutting down.\r\nIt has been a tough year all round and we decided to go out with a bang!\r\n\r\nAny group of databases listed below is $49 or $149 for all 16 databases in this one time offer.\r\nYou can p', '2021-01-21 22:18:19', '2021-01-21 22:18:19'),
(10, 'Randalltob', 'de3pkjj@goposts.site', '[url=https://www.aend.org/foro/member.php?action=profile&uid=3139]https://www.aend.org/foro/member.php?action=profile&uid=3139[/url]', '2021-01-22 10:49:21', '2021-01-22 10:49:21'),
(11, 'Keithpsymn', 'kudukulisprime@gmail.com', 'http://the-test.de', '2021-01-24 19:26:10', '2021-01-24 19:26:10'),
(12, 'toney.erdmann@outlook.com', 'toney.erdmann@outlook.com', 'Hi|Hey|Good evening|Good morning|Good Afternoon} people at aramshopbd.com,\r\nHope you’re well. \r\nI\'m , I hope that business is profitable and you’ve been successful during the entire current situation.\r\nI assume that you need to use a better blocker form u', '2021-01-25 10:16:51', '2021-01-25 10:16:51'),
(13, 'annis.forman@outlook.com', 'annis.forman@outlook.com', 'Hey people at aramshopbd.com,\r\nHope you’re excellent. \r\nI\'m , I hope that customers are profitable and you’ve been successful throughout the current situation.\r\nI think your internet site is not protected against unwanted messages, that’s not cool, you ha', '2021-01-29 17:00:34', '2021-01-29 17:00:34'),
(14, 'sara@sendbulkmails.com', 'sara@sendbulkmails.com', 'Use SendBulkMails.com to run email campaigns from your own private dashboard.\r\n\r\nCold emails are allowed and won\'t get you blocked :)\r\n\r\nStarter Package 50% off sale\r\n- 1Mil emails / mo @ $99 USD\r\n- Dedicated IP and Domain Included\r\n- Detailed statistical', '2021-02-01 06:44:18', '2021-02-01 06:44:18'),
(15, 'TomasSON', 'nik25mor08@gmail.com', 'window process igfxtray\r\nadjprog-l11 l210 l350  movies\r\nfrozen throne was unable to find war3\r\nhow to remove iexplore virus\r\n809 drum kit\r\n \r\nsis to jar converter\r\nedgetransport high disk usage by host\r\nfreepcb 1200 setup\r\nsplwow64 application error fix\r\n', '2021-02-02 06:43:01', '2021-02-02 06:43:01'),
(16, 'tasha@stardatagroup.com', 'tasha@stardatagroup.com', 'It is with sad regret to inform you StarDataGroup.com is shutting down.\r\n\r\nFire sale till the 7th of Feb.\r\n\r\nAny group of databases listed below is $49 or $149 for all 16 databases in this one time offer.\r\nYou can purchase it at www.StarDataGroup.com and ', '2021-02-03 00:00:09', '2021-02-03 00:00:09'),
(17, 'Ronaldnig', '8tgxsq0@goposts.site', 'Hi, here on the forum guys advised a cool Dating site, be sure to register - you will not REGRET it [url=https://bit.ly/2MpL94b]https://bit.ly/2MpL94b[/url]', '2021-02-03 14:51:14', '2021-02-03 14:51:14'),
(18, 'eric.jones.z.mail@gmail.com', 'eric.jones.z.mail@gmail.com', 'Hello, my name’s Eric and I just ran across your website at echem.com.bd...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecaus', '2021-02-04 15:25:29', '2021-02-04 15:25:29'),
(19, 'AFTELTEMPOT', 'xuitoVomiertaidlilatex@creditreportblk.com', 'cannabis oil store  https://cbdcreamshs.com/  - martha stewart cbd line  cbd distillery  <a href=\"https://cbdcreamshs.com/ \">benefits of cbd </a> what is a tincture', '2021-02-07 09:42:06', '2021-02-07 09:42:06'),
(20, 'd', 'd', 'd', '2021-02-08 05:32:41', '2021-02-08 05:32:41'),
(21, 'd', 'dddd', 'ddd', '2021-02-08 05:33:06', '2021-02-08 05:33:06'),
(22, 'Blakebrula', 'z5te@goposts.site', 'Hi, I found a cool method of penis enlargement, here [url=https://bit.ly/2N4bBAl]https://bit.ly/2N4bBAl[/url]', '2021-02-13 12:41:36', '2021-02-13 12:41:36'),
(23, 'Donaldwon', 'no-replytes@gmail.com', 'Hi!  echem.com.bd \r\n \r\nDid you know that it is possible to send message entirely legal? \r\nWe presentation a new legitimate method of sending business offer through contact forms. Such forms are located on many sites. \r\nWhen such commercial offers are sent', '2021-02-14 10:46:50', '2021-02-14 10:46:50'),
(24, 'Richardcog', 'startikse@rambler.ru', 'Огромное тебе СПАСИБО \r\n_________________ \r\n<a href=\"https://ua.onlinebestrealmoneygames.xyz/kazino-registraciya-ukraina-s-bonusom-pri-registracii/\">Казино регистрация украина с бонусом при регистрации</a>', '2021-02-16 13:11:44', '2021-02-16 13:11:44'),
(25, 'eric.jones.z.mail@gmail.com', 'eric.jones.z.mail@gmail.com', 'Hi, Eric here with a quick thought about your website echem.com.bd...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engagin', '2021-02-16 17:40:02', '2021-02-16 17:40:02'),
(26, 'mcafee.mei21@outlook.com', 'mcafee.mei21@outlook.com', 'Hi!\r\n\r\nAfter age of 35 have issues with their sexual performance. One of the most typical problems of poor sexual performance is impotence.\r\nThis can strike you badly, however do not worry we have ready one thing good for you. \r\nAmazing cure against ED wi', '2021-02-24 11:04:31', '2021-02-24 11:04:31'),
(27, 'eric.jones.z.mail@gmail.com', 'eric.jones.z.mail@gmail.com', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found echem.com.bd after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – ', '2021-02-24 16:07:36', '2021-02-24 16:07:36'),
(28, 'eric.jones.z.mail@gmail.com', 'eric.jones.z.mail@gmail.com', 'Hello, my name’s Eric and I just ran across your website at echem.com.bd...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecaus', '2021-02-26 10:39:14', '2021-02-26 10:39:14'),
(29, 'Richardcog', 'startikse@rambler.ru', 'Круто, давно искал \r\n_________________ \r\n<a href=\"https://1xbet.realmoneygame.xyz/fonbet-udalenie-akkaunta/\">Фонбет удаление аккаунта</a>', '2021-02-27 05:40:07', '2021-02-27 05:40:07'),
(30, 'Richardcog', 'startikse@rambler.ru', '+ за пост \r\n_________________ \r\n<a href=\"https://1xbet.realmoneygame.xyz/bukmekery-chempionat-mira-futbolu/\">Букмекеры чемпионат мира футболу</a>', '2021-02-27 07:02:40', '2021-02-27 07:02:40'),
(31, 'Dariusves', 'spotistor@rambler.ru', 'Спасибо за пост \r\n_________________ \r\n<a href=\"https://kazino-na-dengi.casinox2017.site/onlayn-sloty-s-vyvodom-deneg/\">казино в выплаты в вебмани</a>', '2021-03-01 14:33:53', '2021-03-01 14:33:53'),
(32, 'Dariusves', 'spotistor@rambler.ru', 'Интересный пост \r\n_________________ \r\n<a href=\"https://kazino-na-dengi.casinox2017.site/onlayn-sloty-s-vyvodom-deneg/\">мобильные казино с выводом денег</a>', '2021-03-01 18:07:37', '2021-03-01 18:07:37'),
(33, 'Dariusves', 'spotistor@rambler.ru', 'Огромное тебе СПАСИБО \r\n_________________ \r\n<a href=\"https://kazino-na-dengi.casinox2017.site/onlayn-sloty-s-vyvodom-deneg/\">казино онлайн на реальные деньги за рубли</a>', '2021-03-02 16:08:48', '2021-03-02 16:08:48'),
(34, 'Mario Gonzalez', 'mysolutions360@gmail.com', 'Hi, are you still in charge of echem.com.bd ? \r\n \r\nIf you take 30 sec to read this email, we could help you 2X-5X your business. \r\n \r\nMost SEO companies will ask you to pay upfront with no guarantee that your website will rank on Google. \r\n \r\nWe are diffe', '2021-03-06 11:59:23', '2021-03-06 11:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ssale', '99k', 'discout', '-50%', '50 percent DISCOUNT', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `title`, `label`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Free shipping', 'shipping', '<header class=\"page-masthead\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); max-width: 1400px; padding-right: 25px; padding-left: 25px; margin: 50px auto; text-align: center; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<h1 class=\"page-title\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 30px; margin: 0.67em 0px; text-transform: uppercase; letter-spacing: 0em; color: #333333;\" data-open-accessibility-text-original=\"30px\">FREE SHIPPING POLICY</h1>\r\n<h1 class=\"page-title\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 30px; margin: 0.67em 0px; text-transform: uppercase; letter-spacing: 0em; color: #333333;\" data-open-accessibility-text-original=\"30px\"><strong style=\"font-size: 22px; letter-spacing: 0em;\">NOT AVAILABLE&nbsp; NOW</strong></h1>\r\n</header>', '2020-10-31 09:39:00', '2021-03-02 23:42:53'),
(3, 'Financing', 'Financing', '<h1 class=\"page-title\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 30px; margin: 0.67em 0px; font-family: \'Open Sans\', sans-serif; text-transform: uppercase; color: #333333; text-align: center;\" data-open-accessibility-text-original=\"30px\">SCREEN PRINT EQUIPMENT FINANCING</h1>\r\n<p style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1rem; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\" data-open-accessibility-text-original=\"16px\">At Ryonet, we understand that as you start and grow your screen printing business the more options you have, the more places you can go. We&rsquo;ve made affording the right tools for your print job easy, flexible, and readily available through several screen printing equipment financing programs to fit your needs.</p>\r\n<h3 style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: \'Open Sans\', sans-serif; text-transform: uppercase; font-size: 22px; margin-top: 2rem; margin-bottom: 1rem; color: #333333;\" data-open-accessibility-text-original=\"22px\">SHORT TERM FINANCING (UP TO $2,500)</h3>\r\n<p style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1rem; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\" data-open-accessibility-text-original=\"16px\">With Sezzle, printers can make 4 payments over 6 weeks with 0% interest. At checkout, Sezzle will display as a payment option if the order is no more than $2,500 USD.&nbsp;</p>\r\n<h3 style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: \'Open Sans\', sans-serif; text-transform: uppercase; font-size: 22px; margin-top: 2rem; margin-bottom: 1rem; color: #333333;\" data-open-accessibility-text-original=\"22px\">MID-LEVEL&nbsp;FINANCING ($2,501 - $4,999)</h3>\r\n<p style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1rem; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\" data-open-accessibility-text-original=\"16px\">30 days interest-free, always. Extend your payments up to 6 months for as low as 1% per month. Get a decision in seconds, with no obligation.</p>\r\n<p style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1rem; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\" data-open-accessibility-text-original=\"16px\">&nbsp;</p>\r\n<h3 style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: \'Open Sans\', sans-serif; text-transform: uppercase; font-size: 22px; margin-top: 2rem; margin-bottom: 1rem; color: #333333;\" data-open-accessibility-text-original=\"22px\">HIGH-LEVEL FINANCING ($5,000&nbsp;- $29,999)</h3>\r\n<p style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1rem; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\" data-open-accessibility-text-original=\"16px\">If you&rsquo;re building a business with larger equipment needs&nbsp;CIT\'s competitive in-house lease and financing options can you get into the gear you need to succeed. Unlike most screen print leasing companies who broker to big banks,&nbsp;CIT uses their direct funds to finance your screen printing business.</p>\r\n<p style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1rem; margin-bottom: 1rem; font-family: \'Open Sans\', sans-serif; font-size: 16px;\" data-open-accessibility-text-original=\"16px\"><a id=\"mid-level-direct-capital\" class=\"navigable\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: transparent; color: #006699; text-decoration-line: none; transition: color 100ms cubic-bezier(0.4, 0, 0.2, 1) 0s;\" href=\"http://echem.com.bd/apply-for-financing\" target=\"_blank\" rel=\"nofollow noopener noreferrer\" data-open-accessibility-text-original=\"16px\">Apply / Pre-Qualify Here</a></p>', '2020-11-26 00:12:28', '2020-11-26 00:12:28'),
(4, 'RE-MESHING', 'RE-MESHING', '<header class=\"page-masthead\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); max-width: 1400px; padding-right: 25px; padding-left: 25px; margin: 50px auto; text-align: center; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">\r\n<h1 class=\"page-title\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-size: 30px; margin: 0.67em 0px; text-transform: uppercase; letter-spacing: 0em; color: #333333;\" data-open-accessibility-text-original=\"30px\">RE-MESHING</h1>\r\n</header>\r\n<div class=\"page-content rte\" style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); max-width: 1150px; padding-right: 25px; padding-left: 25px; margin: 50px auto; line-height: 1.625;\">\r\n<div style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: #f6f6f6; padding: 30px; border-radius: 0px;\">\r\n<p style=\"font-family: \'Open Sans\', sans-serif; font-size: 16px; box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1rem; margin-bottom: 1rem;\" data-open-accessibility-text-original=\"16px\">We send our re-mesh inquiries to our good friends at Nortech Graphics. If you are interested in their re-mesh service, please contact them below.</p>\r\n<p style=\"font-family: \'Open Sans\', sans-serif; font-size: 16px; box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1rem; margin-bottom: 1rem;\" data-open-accessibility-text-original=\"16px\">Film output, colour separation and print-ready screens available from:</p>\r\n<h2 style=\"font-family: \'Open Sans\', sans-serif; font-size: 24px; box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-transform: uppercase; letter-spacing: 0em; margin-top: 2rem; margin-bottom: 1rem; color: #333333;\" data-open-accessibility-text-original=\"24px\">NORTEC GRAPHICS, INC.</h2>\r\n<br style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\" /><span style=\"font-family: Open Sans, sans-serif;\"><span style=\"font-size: 16px;\">Phone:&nbsp;</span></span><span style=\"color: #55595c; font-family: \'Open Sans\', sans-serif; font-weight: 600; background-color: #ffffff;\">02 8413289, +880-1880-006-355, 01880006362</span><br style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\" /><span style=\"font-family: Open Sans, sans-serif;\"><span style=\"font-size: 16px;\">Email:&nbsp;</span></span><a class=\"navigable\" style=\"font-family: \'Open Sans\', sans-serif; font-size: 16px; box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: transparent; color: #006699; text-decoration-line: none; transition: color 100ms cubic-bezier(0.4, 0, 0.2, 1) 0s;\" href=\"mailto:tmcpherson@nortechgraphics.com\" target=\"_blank\" rel=\"noopener noreferrer\" data-open-accessibility-text-original=\"16px\">echembd@gmail.com</a><br style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\" /><br /></div>\r\n</div>', '2020-11-26 01:33:00', '2020-11-26 01:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 0, 0, 0, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 6),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 7),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'order_number', 'text', 'Order Number', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 7, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(59, 7, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"pending\":\"Pending\",\"processing\":\"Processing\",\"completed\":\"Completed\",\"decline\":\"Decline\"}}', 4),
(60, 7, 'grand_total', 'text', 'Grand Total', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'item_count', 'text', 'Item Count', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'is_paid', 'checkbox', 'Is Paid', 1, 1, 1, 1, 1, 1, '{\"on\":\"Paid\",\"off\":\"Not Paid\",\"checked\":true}', 7),
(63, 7, 'payment_method', 'text', 'Payment Method', 1, 1, 1, 1, 1, 1, '{\"options\":{\"cash_on_delivery\":\"Cash On Delivery\",\"reward_point\":\"Reward Point\",\"wallet\":\"Wallet\",\"bkash\":\"Bkash\"}}', 8),
(64, 7, 'shipping_fullname', 'text', 'Shipping Fullname', 1, 1, 1, 1, 1, 1, '{}', 9),
(65, 7, 'shipping_address', 'text', 'Shipping Address', 1, 1, 1, 1, 1, 1, '{}', 10),
(66, 7, 'shipping_city', 'text', 'Shipping City', 1, 0, 1, 1, 1, 1, '{}', 11),
(67, 7, 'shipping_state', 'text', 'Shipping State', 1, 0, 1, 1, 1, 1, '{}', 12),
(68, 7, 'shipping_zipcode', 'text', 'Shipping Zipcode', 1, 0, 1, 1, 1, 1, '{}', 13),
(69, 7, 'shipping_phone', 'text', 'Shipping Phone', 1, 1, 1, 1, 1, 1, '{}', 14),
(70, 7, 'notes', 'text', 'Notes', 0, 1, 1, 1, 1, 1, '{}', 15),
(71, 7, 'billing_fullname', 'text', 'Billing Fullname', 1, 1, 1, 1, 1, 1, '{}', 16),
(72, 7, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 1, '{}', 17),
(73, 7, 'billing_city', 'text', 'Billing City', 1, 0, 1, 1, 1, 1, '{}', 18),
(74, 7, 'billing_state', 'text', 'Billing State', 1, 0, 1, 1, 1, 1, '{}', 19),
(75, 7, 'billing_zipcode', 'text', 'Billing Zipcode', 1, 0, 1, 1, 1, 1, '{}', 20),
(76, 7, 'billing_phone', 'text', 'Billing Phone', 1, 1, 1, 1, 1, 1, '{}', 21),
(77, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 22),
(78, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 23),
(79, 7, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 24),
(80, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(82, 8, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(83, 8, 'is_active', 'checkbox', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"on\":\"Active\",\"off\":\"Inactive\",\"checked\":true}', 4),
(84, 8, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(85, 8, 'rating', 'text', 'Rating', 0, 1, 1, 1, 1, 1, '{}', 6),
(86, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(87, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(88, 8, 'shop_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(89, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(91, 9, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(92, 9, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(93, 9, 'cover_img', 'multiple_images', 'Cover Img', 0, 1, 1, 1, 1, 1, '{}', 5),
(94, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(95, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(96, 9, 'product_belongsto_shop_relationship', 'relationship', 'shops', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Shop\",\"table\":\"shops\",\"type\":\"belongsTo\",\"column\":\"shop_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(97, 9, 'shop_id', 'text', 'Shop Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(100, 9, 'product_belongstomany_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_categories\",\"pivot\":\"1\",\"taggable\":\"on\"}', 9),
(101, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(102, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(103, 10, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 3),
(104, 10, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 4),
(105, 10, 'value', 'text', 'Value', 1, 1, 1, 1, 1, 1, '{}', 5),
(106, 10, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(107, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(108, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(109, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 11, 'sub_order_id', 'text', 'Sub Order Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(111, 11, 'transaction_id', 'text', 'Transaction Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(112, 11, 'amount_paid', 'text', 'Amount Paid', 1, 1, 1, 1, 1, 1, '{}', 4),
(113, 11, 'commission', 'text', 'Commission', 1, 1, 1, 1, 1, 1, '{}', 5),
(114, 11, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 6),
(115, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(116, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(117, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(118, 12, 'order_id', 'text', 'Order Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(119, 12, 'seller_id', 'text', 'Seller Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(120, 12, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, '{}', 4),
(121, 12, 'grand_total', 'text', 'Grand Total', 1, 1, 1, 1, 1, 1, '{}', 5),
(122, 12, 'item_count', 'text', 'Item Count', 1, 1, 1, 1, 1, 1, '{}', 6),
(123, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(124, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(125, 9, 'featured', 'checkbox', 'Featured', 0, 1, 1, 1, 1, 1, '{\"on\":\"yes\",\"off\":\"no\"}', 9),
(126, 9, 'top_product', 'checkbox', 'Top Product', 0, 1, 1, 1, 1, 1, '{\"on\":\"yes\",\"off\":\"no\"}', 10),
(127, 9, 'cash_back_percent', 'number', 'Cash Back Percent', 0, 1, 1, 1, 1, 1, '{}', 11),
(128, 9, 'reward_point', 'number', 'Reward Point', 0, 1, 1, 1, 1, 1, '{}', 12),
(129, 4, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(130, 5, 'pdf', 'file', 'Pdf', 1, 1, 1, 1, 1, 1, '{}', 16),
(131, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(132, 16, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(133, 16, 'label', 'text', 'Label', 1, 1, 1, 1, 1, 1, '{}', 3),
(134, 16, 'content', 'rich_text_box', 'Content', 1, 1, 1, 1, 1, 1, '{}', 4),
(135, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(136, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(137, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(138, 17, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{}', 2),
(139, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(140, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(141, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(142, 19, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(143, 19, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(144, 19, 'msg', 'text', 'Msg', 1, 1, 1, 1, 1, 1, '{}', 4),
(145, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(146, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(147, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(148, 21, 'question', 'text', 'Question', 1, 1, 1, 1, 1, 1, '{}', 2),
(149, 21, 'answer', 'text', 'Answer', 1, 1, 1, 1, 1, 1, '{}', 3),
(150, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(151, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(152, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(153, 22, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(154, 22, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(155, 22, 'is_active', 'text', 'Is Active', 1, 1, 1, 1, 1, 1, '{}', 4),
(156, 22, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(157, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(158, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(159, 22, 'wholesale_hasmany_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(160, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(161, 23, 'product_id', 'text', 'Product Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(162, 23, 'size', 'text', 'Size', 1, 1, 1, 1, 1, 1, '{}', 3),
(163, 23, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(164, 23, 'SKU', 'text', 'SKU', 1, 1, 1, 1, 1, 1, '{}', 5),
(165, 23, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{\"on\":\"on\",\"off\":\"off\"}', 6),
(166, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(167, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(168, 23, 'product_attribute_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(170, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(171, 24, 'category_id', 'number', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(172, 24, 'video', 'text', 'Video', 1, 1, 1, 1, 1, 1, '{}', 3),
(173, 24, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(174, 24, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(175, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(176, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(177, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(178, 25, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(179, 25, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(180, 25, 'parent', 'text', 'Parent', 0, 1, 1, 1, 1, 1, '{}', 2),
(181, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(182, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(183, 24, 'video_belongsto_video_category_relationship', 'relationship', 'video_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\VideoCategory\",\"table\":\"video_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(185, 25, 'video_category_belongsto_video_category_relationship', 'relationship', 'video_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\VideoCategory\",\"table\":\"video_categories\",\"type\":\"belongsTo\",\"column\":\"parent\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(186, 9, 'min_qty', 'number', 'Min Qty', 0, 1, 1, 1, 1, 1, '{}', 14),
(187, 9, 'wholesale_id', 'text', 'Wholesale Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(188, 9, 'product_video', 'text', 'Product Video', 0, 1, 1, 1, 1, 1, '{}', 15),
(191, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(192, 26, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(193, 26, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(194, 26, 'ebook_title', 'text', 'Ebook Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(195, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(196, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(197, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(198, 27, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(199, 27, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 3),
(200, 27, 'amount_spend', 'text', 'Amount Spend', 1, 1, 1, 1, 1, 1, '{}', 4),
(201, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(202, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(203, 27, 'wallet_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(204, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(205, 28, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(206, 28, 'point', 'text', 'Point', 1, 1, 1, 1, 1, 1, '{}', 3),
(207, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(208, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(209, 28, 'reward_point_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(210, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(211, 29, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(212, 29, 'card_id', 'text', 'Card Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(213, 29, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 4),
(214, 29, 'is_spent', 'text', 'Is Spent', 1, 1, 1, 1, 1, 1, '{}', 5),
(215, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(216, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(217, 29, 'purchas_done', 'text', 'Purchas Done', 1, 1, 1, 1, 1, 1, '{}', 8),
(218, 29, 'uid', 'text', 'Uid', 1, 1, 1, 1, 1, 1, '{}', 9),
(219, 29, 'gift_card_purchase_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(220, 29, 'gift_card_purchase_belongsto_gift_card_relationship', 'relationship', 'gift_cards', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\GiftCard\",\"table\":\"gift_cards\",\"type\":\"belongsTo\",\"column\":\"card_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(221, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(222, 30, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(223, 30, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 3),
(224, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(225, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(226, 30, 'uid', 'text', 'Uid', 1, 1, 1, 1, 1, 1, '{}', 6),
(227, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(228, 31, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(229, 31, 'comment', 'text', 'Comment', 1, 1, 1, 1, 1, 1, '{}', 3),
(230, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(231, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(232, 9, 'product_belongsto_wholesale_relationship', 'relationship', 'wholesales', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Wholesale\",\"table\":\"wholesales\",\"type\":\"belongsTo\",\"column\":\"wholesale_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 18),
(233, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(234, 1, 'phone', 'number', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 12),
(235, 9, 'refurbish_product', 'checkbox', 'Refurbish Product', 1, 1, 1, 1, 1, 1, '{\"on\":\"yes\",\"off\":\"no\"}', 18),
(236, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(237, 32, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(238, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(239, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(240, 5, 'post_belongsto_post_category_relationship', 'relationship', 'post_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\PostCategory\",\"table\":\"post_categories\",\"type\":\"belongsTo\",\"column\":\"post_cat_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(241, 5, 'post_cat_id', 'text', 'Post Cat Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(242, 9, 'product_pdf', 'file', 'Product Pdf', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 19),
(243, 9, 'stock', 'text', 'Stock', 1, 1, 1, 1, 1, 1, '{}', 18),
(244, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(245, 33, 'expense_title', 'text', 'Expense Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(246, 33, 'amount', 'number', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 3),
(247, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(248, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(249, 9, 'buying_price', 'number', 'Buying Price', 1, 1, 1, 1, 1, 1, '{}', 19),
(250, 9, 'product_attributes', 'text', 'Product Attributes', 0, 1, 1, 1, 1, 1, '{}', 20),
(251, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(252, 34, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 2),
(253, 34, 'first_name', 'text', 'First Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(254, 34, 'last_name', 'text', 'Last Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(255, 34, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(256, 34, 'business_name', 'text', 'Business Name', 1, 1, 1, 1, 1, 1, '{}', 6),
(257, 34, 'detail', 'text', 'Detail', 1, 1, 1, 1, 1, 1, '{}', 7),
(258, 34, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, '{}', 8),
(259, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(260, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(261, 1, 'is_affiliate', 'checkbox', 'Is Affiliate', 1, 1, 1, 1, 1, 1, '{}', 13),
(262, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(263, 36, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(264, 36, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(265, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(266, 36, 'affiliate_req_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"affiliate_reqs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(267, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(268, 37, 'cust_name', 'text', 'Cust Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(269, 37, 'product_name', 'text', 'Product Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(270, 37, 'order_num', 'text', 'Order Num', 1, 1, 1, 1, 1, 1, '{}', 4),
(271, 37, 'payable_amount', 'text', 'Payable Amount', 1, 1, 1, 1, 1, 1, '{}', 5),
(272, 37, 'due_collection', 'text', 'Due Collection', 1, 1, 1, 1, 1, 1, '{}', 6),
(273, 37, 'previous_collection', 'text', 'Previous Collection', 1, 1, 1, 1, 1, 1, '{}', 7),
(274, 37, 'current_collection', 'text', 'Current Collection', 1, 1, 1, 1, 1, 1, '{}', 8),
(275, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(276, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(277, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(278, 38, 'sub_order_id', 'text', 'Sub Order Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(279, 38, 'product_id', 'text', 'Product Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(280, 38, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(281, 38, 'quantity', 'text', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 5),
(282, 38, 'size', 'text', 'Size', 0, 1, 1, 1, 1, 1, '{}', 6),
(283, 38, 'product_commission', 'text', 'Product Commission', 0, 1, 1, 1, 1, 1, '{}', 7),
(284, 9, 'product_commission', 'number', 'Product Commission', 0, 1, 1, 1, 1, 1, '{}', 21),
(285, 36, 'company_name', 'text', 'Company Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(286, 36, 'designation', 'text', 'Designation', 1, 1, 1, 1, 1, 1, '{}', 6),
(287, 9, 'affiliate_comission', 'number', 'Affiliate Comission', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 22),
(288, 9, 'related_product', 'text', 'Related Product', 0, 1, 1, 1, 1, 1, '{}', 23);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-11 02:06:38', '2020-12-05 11:47:02'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-11 02:06:39', '2020-10-31 11:50:05'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-10-11 02:06:39', '2020-11-12 00:12:36'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(7, 'orders', 'orders', 'Order', 'Orders', 'voyager-buy', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-11 02:13:53', '2020-10-19 10:49:06'),
(8, 'shops', 'shops', 'Shop', 'Shops', 'voyager-shop', 'App\\Shop', 'App\\Policies\\ShopPolicy', 'App\\Http\\Controllers\\Admin\\ShopController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-12 00:18:19', '2020-10-12 02:28:20'),
(9, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', 'App\\Policies\\ProductPolicy', 'App\\Http\\Controllers\\Admin\\ProductController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-12 03:02:30', '2021-01-27 18:37:06'),
(10, 'coupons', 'coupons', 'Coupon', 'Coupons', NULL, 'App\\Coupon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-14 08:44:03', '2020-10-14 08:44:03'),
(11, 'transactions', 'transactions', 'Transaction', 'Transactions', NULL, 'App\\Transaction', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-15 10:39:04', '2020-10-15 10:39:04'),
(12, 'sub_orders', 'sub-orders', 'Sub Order', 'Sub Orders', NULL, 'App\\SubOrder', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-15 10:40:36', '2020-10-15 10:40:36'),
(16, 'custom_pages', 'custom-pages', 'Custom Page', 'Custom Pages', NULL, 'App\\CustomPages', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-31 02:16:37', '2020-10-31 09:35:54'),
(17, 'home_videos', 'home-videos', 'Home Video', 'Home Videos', NULL, 'App\\HomeVideo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-31 05:20:37', '2020-10-31 05:20:37'),
(19, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-31 06:49:37', '2020-10-31 06:49:37'),
(21, 'faqs', 'faqs', 'Faq', 'Faqs', NULL, 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-31 07:03:21', '2020-10-31 07:03:21'),
(22, 'wholesales', 'wholesales', 'Wholesale', 'Wholesales', NULL, 'App\\Wholesale', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-10-31 11:08:29', '2020-11-02 00:48:28'),
(23, 'product_attributes', 'product-attributes', 'Product Attribute', 'Product Attributes', NULL, 'App\\ProductAttribute', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-01 08:23:14', '2020-11-01 09:51:09'),
(24, 'videos', 'videos', 'Video', 'Videos', NULL, 'App\\Video', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-01 08:35:57', '2020-11-14 10:53:10'),
(25, 'video_categories', 'video-categories', 'Video Category', 'Video Categories', NULL, 'App\\VideoCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-01 08:36:29', '2020-11-06 22:04:51'),
(26, 'ebook_requests', 'ebook-requests', 'Ebook Request', 'Ebook Requests', NULL, 'App\\EbookRequest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-01 09:23:34', '2020-11-01 09:23:34'),
(27, 'wallets', 'wallets', 'Wallet', 'Wallets', NULL, 'App\\Wallet', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-02 00:48:43', '2020-11-02 00:49:33'),
(28, 'reward_points', 'reward-points', 'Reward Point', 'Reward Points', NULL, 'App\\RewardPoint', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-02 00:50:39', '2020-11-02 00:52:23'),
(29, 'gift_card_purchases', 'gift-card-purchases', 'Gift Card Purchase', 'Gift Card Purchases', NULL, 'App\\GiftCardPurchase', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-02 00:52:49', '2020-11-02 00:54:47'),
(30, 'gift_cards', 'gift-cards', 'Gift Card', 'Gift Cards', NULL, 'App\\GiftCard', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-02 00:57:44', '2020-11-02 00:57:44'),
(31, 'site_reviews', 'site-reviews', 'Site Review', 'Site Reviews', NULL, 'App\\SiteReview', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-02 00:58:31', '2020-11-02 00:58:31'),
(32, 'post_categories', 'post-categories', 'Post Category', 'Post Categories', NULL, 'App\\PostCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-12 00:05:07', '2020-11-12 00:05:07'),
(33, 'expenses', 'expenses', 'Expense', 'Expenses', NULL, 'App\\Expense', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-15 19:57:16', '2020-11-15 19:57:16'),
(34, 'finance_requests', 'finance-requests', 'Finance Request', 'Finance Requests', NULL, 'App\\FinanceRequest', 'App\\Policies\\FinanceRequestPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-26 04:48:37', '2020-11-26 05:04:27'),
(36, 'affiliate_reqs', 'affiliate-reqs', 'Affiliate Req', 'Affiliate Reqs', NULL, 'App\\Affiliate_req', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-12-05 12:07:13', '2020-12-11 22:58:42'),
(37, 'expense_management', 'expense-management', 'Expense Management', 'Expense Managements', NULL, 'App\\ExpenseManagement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-12-07 07:25:47', '2020-12-07 07:25:47'),
(38, 'sub_order_items', 'sub-order-items', 'Sub Order Item', 'Sub Order Items', NULL, 'App\\SubOrderItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-12-08 10:53:01', '2020-12-08 10:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `ebook_requests`
--

CREATE TABLE `ebook_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ebook_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ebook_requests`
--

INSERT INTO `ebook_requests` (`id`, `name`, `email`, `ebook_title`, `created_at`, `updated_at`) VALUES
(1, 'Jamilur rahman', 'abir2jamilur30@gmail.com', 'abs', '2020-11-01 09:34:49', '2020-11-01 09:34:49'),
(2, 'd', 'dddd2D@FR.FF', 'dd', '2021-02-08 05:47:54', '2021-02-08 05:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_title`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'Rent', 2000.00, '2020-11-15 20:00:27', '2020-11-15 20:00:27'),
(2, 'Hosting', 9000.00, '2020-11-15 20:00:45', '2020-11-15 20:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `expense_management`
--

CREATE TABLE `expense_management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_collection` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_collection` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_collection` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_management`
--

INSERT INTO `expense_management` (`id`, `cust_name`, `product_name`, `order_num`, `payable_amount`, `due_collection`, `previous_collection`, `current_collection`, `created_at`, `updated_at`) VALUES
(1, '111', '111', '111', '1111', '111', '111', '111', '2020-12-07 07:26:48', '2020-12-07 07:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'test question', 'test answer', '2020-10-31 07:05:25', '2020-10-31 07:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `finance_requests`
--

CREATE TABLE `finance_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_requests`
--

INSERT INTO `finance_requests` (`id`, `amount`, `first_name`, `last_name`, `email`, `business_name`, `detail`, `address`, `created_at`, `updated_at`) VALUES
(1, 500.00, 'Jamilur', 'rahman', 'abir2jamilur30@gmail.com', 'jrdev', 'gehjfhkje', 'Cha-214, TB Gate, Mohakhali, Dhaka', '2020-11-26 04:46:11', '2020-11-26 04:46:11'),
(2, 200.00, 'Jamilur', 'rahman', 'abir2jamilur30@gmail.com', 'jrdev', 'jkashfjka', 'Cha-214, TB Gate, Mohakhali, Dhaka', '2020-11-26 04:48:07', '2020-11-26 04:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `gift_cards` (`id`, `name`, `amount`, `created_at`, `updated_at`, `uid`) VALUES
(4, '200 BDT', 200.00, NULL, NULL, 'xyz'),
(5, '300 BDT', 300.00, NULL, NULL, 'xyz-5'),
(6, '20000 BDT', 20000.00, NULL, NULL, 'xyz-60');

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_purchases`
--

CREATE TABLE `gift_card_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `card_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `is_spent` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `purchas_done` tinyint(1) NOT NULL DEFAULT 0,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_card_purchases`
--

INSERT INTO `gift_card_purchases` (`id`, `user_id`, `card_id`, `amount`, `is_spent`, `created_at`, `updated_at`, `purchas_done`, `uid`) VALUES
(8, 3, 6, 17940.00, 0, '2020-10-20 08:38:15', '2020-10-20 08:38:15', 1, 'xyz-60'),
(9, 3, 5, 300.00, 0, '2020-10-20 08:38:19', '2020-10-20 08:38:19', 1, 'xyz-5'),
(10, 3, 4, 0.00, 0, '2020-10-20 08:39:05', '2020-10-20 08:39:05', 1, 'xyz'),
(11, 3, 6, 20000.00, 0, '2020-11-01 00:50:20', '2020-11-01 00:50:20', 0, 'xyz-60'),
(12, 3, 4, 200.00, 0, '2020-11-02 03:09:55', '2020-11-02 03:09:55', 0, 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `home_videos`
--

CREATE TABLE `home_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_videos`
--

INSERT INTO `home_videos` (`id`, `url`, `created_at`, `updated_at`) VALUES
(4, 'https://www.youtube.com/embed/bC_czAL24zY', '2020-10-31 11:46:08', '2020-10-31 11:46:08'),
(5, 'https://www.youtube.com/embed/bC_czAL24zY', '2020-10-31 11:46:19', '2020-10-31 11:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-10-11 02:06:38', '2020-10-11 02:06:38');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-10-11 02:06:38', '2020-10-11 02:06:38', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 46, 6, '2020-10-11 02:06:38', '2020-11-15 20:40:20', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 46, 2, '2020-10-11 02:06:38', '2020-11-15 20:36:05', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 46, 1, '2020-10-11 02:06:38', '2020-11-15 20:36:01', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2020-10-11 02:06:38', '2020-11-26 05:02:15', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 3, '2020-10-11 02:06:38', '2020-11-15 20:31:07', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 4, '2020-10-11 02:06:38', '2020-11-15 20:31:07', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 5, '2020-10-11 02:06:38', '2020-11-15 20:31:07', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 6, '2020-10-11 02:06:38', '2020-11-15 20:31:07', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 8, '2020-10-11 02:06:38', '2020-11-15 20:36:21', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 44, 3, '2020-10-11 02:06:39', '2020-11-15 20:40:45', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 46, 4, '2020-10-11 02:06:39', '2020-11-15 20:37:02', 'voyager.posts.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 7, '2020-10-11 02:06:39', '2020-11-15 20:31:07', 'voyager.hooks', NULL),
(15, 1, 'Orders', '', '_self', 'voyager-buy', NULL, 44, 4, '2020-10-11 02:13:53', '2020-11-15 20:40:45', 'voyager.orders.index', NULL),
(16, 1, 'Shops', '', '_self', 'voyager-shop', NULL, NULL, 4, '2020-10-12 00:18:19', '2020-11-26 05:02:15', 'voyager.shops.index', NULL),
(17, 1, 'Products', '', '_self', 'voyager-bag', NULL, 44, 1, '2020-10-12 03:02:30', '2020-11-15 20:40:45', 'voyager.products.index', NULL),
(18, 1, 'Coupons', '', '_self', NULL, NULL, 44, 7, '2020-10-14 08:44:03', '2020-11-15 20:40:46', 'voyager.coupons.index', NULL),
(19, 1, 'Order Management', '', '_blank', NULL, '#000000', 44, 6, '2020-10-15 06:12:53', '2020-11-15 20:40:46', 'seller.orders.index', 'null'),
(20, 1, 'Transactions', '', '_self', 'voyager-credit-card', '#000000', NULL, 9, '2020-10-15 10:39:04', '2020-11-26 05:02:15', 'voyager.transactions.index', 'null'),
(21, 1, 'Sub Orders', '', '_self', NULL, NULL, 44, 5, '2020-10-15 10:40:36', '2020-11-15 20:40:46', 'voyager.sub-orders.index', NULL),
(25, 1, 'Custom Pages', '', '_self', NULL, NULL, 46, 3, '2020-10-31 02:16:38', '2020-11-15 20:37:00', 'voyager.custom-pages.index', NULL),
(26, 1, 'Home Videos', '', '_self', NULL, NULL, 44, 10, '2020-10-31 05:20:38', '2020-11-15 20:40:46', 'voyager.home-videos.index', NULL),
(28, 1, 'Contacts', '', '_self', NULL, NULL, 44, 11, '2020-10-31 06:49:37', '2020-11-15 20:40:46', 'voyager.contacts.index', NULL),
(30, 1, 'Faqs', '', '_self', NULL, NULL, 46, 7, '2020-10-31 07:03:21', '2020-11-15 20:40:20', 'voyager.faqs.index', NULL),
(31, 1, 'Wholesales', '', '_self', 'voyager-truck', '#000000', NULL, 5, '2020-10-31 11:08:30', '2020-11-26 05:02:15', 'voyager.wholesales.index', 'null'),
(32, 1, 'Product Attributes', '', '_self', NULL, NULL, 44, 2, '2020-11-01 08:23:14', '2020-11-15 20:40:45', 'voyager.product-attributes.index', NULL),
(33, 1, 'Videos', '', '_self', NULL, NULL, 46, 9, '2020-11-01 08:35:57', '2020-11-15 20:40:20', 'voyager.videos.index', NULL),
(34, 1, 'Video Categories', '', '_self', NULL, NULL, 46, 8, '2020-11-01 08:36:30', '2020-11-15 20:40:20', 'voyager.video-categories.index', NULL),
(35, 1, 'Ebook Requests', '', '_self', NULL, NULL, 46, 10, '2020-11-01 09:23:35', '2020-11-15 20:40:21', 'voyager.ebook-requests.index', NULL),
(36, 1, 'Wallets', '', '_self', 'voyager-wallet', '#000000', NULL, 6, '2020-11-02 00:48:43', '2020-11-26 05:02:15', 'voyager.wallets.index', 'null'),
(37, 1, 'Reward Points', '', '_self', NULL, NULL, 44, 9, '2020-11-02 00:50:39', '2020-11-15 20:40:46', 'voyager.reward-points.index', NULL),
(38, 1, 'Gift Card Purchases', '', '_self', 'voyager-tag', '#000000', NULL, 10, '2020-11-02 00:52:49', '2020-11-26 05:02:15', 'voyager.gift-card-purchases.index', 'null'),
(39, 1, 'Gift Cards', '', '_self', NULL, NULL, 44, 8, '2020-11-02 00:57:46', '2020-11-15 20:40:46', 'voyager.gift-cards.index', NULL),
(40, 1, 'Site Reviews', '', '_self', NULL, NULL, 46, 11, '2020-11-02 00:58:31', '2020-11-15 20:40:27', 'voyager.site-reviews.index', NULL),
(41, 1, 'Post Categories', '', '_self', NULL, NULL, 46, 5, '2020-11-12 00:05:07', '2020-11-15 20:40:20', 'voyager.post-categories.index', NULL),
(42, 1, 'Shop Status', '', '_blank', 'voyager-settings', '#000000', 5, 1, '2020-11-15 12:59:22', '2020-11-15 17:16:23', 'index', 'null'),
(43, 1, 'Expenses', '', '_self', 'voyager-logbook', '#000000', 5, 2, '2020-11-15 19:57:16', '2020-11-15 20:45:09', 'voyager.expenses.index', 'null'),
(44, 1, 'Shop Management', '', '_self', 'voyager-treasure', '#000000', NULL, 3, '2020-11-15 20:33:03', '2020-11-26 05:02:15', NULL, ''),
(46, 1, 'Site Management', '', '_self', 'voyager-browser', '#000000', NULL, 7, '2020-11-15 20:35:34', '2020-11-26 05:02:15', NULL, ''),
(47, 1, 'Finance Requests', '', '_self', NULL, NULL, NULL, 2, '2020-11-26 04:48:37', '2020-11-26 05:02:15', 'voyager.finance-requests.index', NULL),
(48, 1, 'Affiliate Reqs', '', '_self', NULL, NULL, NULL, 11, '2020-12-05 12:07:14', '2020-12-05 12:07:14', 'voyager.affiliate-reqs.index', NULL),
(49, 1, 'Expense Managements', '', '_self', NULL, NULL, NULL, 12, '2020-12-07 07:25:48', '2020-12-07 07:25:48', 'voyager.expense-management.index', NULL),
(50, 1, 'Sub Order Items', '', '_self', NULL, NULL, NULL, 13, '2020-12-08 10:53:01', '2020-12-08 10:53:01', 'voyager.sub-order-items.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `from_user` bigint(20) UNSIGNED NOT NULL,
  `to_user` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `created_at`, `updated_at`, `from_user`, `to_user`) VALUES
(112, 'sdbds', '2020-12-07 14:08:24', '2020-12-07 14:08:24', 3, 3),
(113, 'kbjbjh', '2020-12-07 14:15:51', '2020-12-07 14:15:51', 3, 3),
(114, 'hello', '2020-12-10 12:11:24', '2020-12-10 12:11:24', 17, 3),
(115, 'hello', '2020-12-10 12:12:01', '2020-12-10 12:12:01', 17, 3),
(116, 'hello', '2020-12-10 13:24:52', '2020-12-10 13:24:52', 17, 3),
(117, 'real time', '2020-12-10 13:25:53', '2020-12-10 13:25:53', 3, 17),
(118, 'real time back', '2020-12-10 13:26:20', '2020-12-10 13:26:20', 17, 3),
(119, 'real hello', '2020-12-12 09:51:34', '2020-12-12 09:51:34', 3, 17),
(120, 'this is admin', '2020-12-12 09:52:35', '2020-12-12 09:52:35', 3, 17),
(121, 'hellow admin', '2020-12-12 11:25:31', '2020-12-12 11:25:31', 4, 3),
(122, 'admin this seller', '2020-12-12 12:14:10', '2020-12-12 12:14:10', 4, 3),
(123, 'hello its echem', '2020-12-14 03:54:30', '2020-12-14 03:54:30', 5, 3),
(124, 'testing', '2020-12-14 07:12:55', '2020-12-14 07:12:55', 4, 3),
(125, 'helo', '2020-12-14 07:13:04', '2020-12-14 07:13:04', 3, 4),
(126, 'hello', '2020-12-20 22:51:33', '2020-12-20 22:51:33', 8, 3),
(127, 'hi', '2020-12-25 22:34:41', '2020-12-25 22:34:41', 3, 8),
(128, 'HELLO', '2020-12-27 23:28:43', '2020-12-27 23:28:43', 3, 8),
(129, 'kemon achen', '2021-01-02 00:12:00', '2021-01-02 00:12:00', 8, 3),
(130, 'hi', '2021-01-13 01:36:54', '2021-01-13 01:36:54', 15, 3),
(131, 'hlw', '2021-01-13 01:38:12', '2021-01-13 01:38:12', 3, 15),
(132, 'hello', '2021-01-24 07:25:03', '2021-01-24 07:25:03', 3, 3),
(133, 'hello', '2021-01-26 14:19:15', '2021-01-26 14:19:15', 3, 3),
(134, 'hello', '2021-01-26 14:30:51', '2021-01-26 14:30:51', 17, 3);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2020_10_04_035759_create_shops_table', 1),
(29, '2020_10_05_092527_create_products_table', 1),
(30, '2020_10_05_124342_create_orders_table', 1),
(31, '2020_10_05_135926_create_order_items_table', 1),
(32, '2020_10_05_162733_create_wishlists_table', 1),
(34, '2020_10_13_092415_create_product_categories_table', 2),
(35, '2020_10_14_162303_create_coupons_table', 3),
(36, '2020_10_15_105035_add_delivered_at_column_to_order_items', 4),
(37, '2020_10_15_123541_create_sub_orders_table', 5),
(38, '2020_10_15_123811_create_sub_order_items_table', 5),
(39, '2020_10_15_182835_create_transactions_table', 6),
(40, '2020_10_19_075126_create_wallets_table', 7),
(41, '2020_10_19_152728_add_wallets_table', 8),
(42, '2020_10_19_154955_create_reward_points_table', 9),
(43, '2020_10_20_071526_create_gift_cards_table', 10),
(44, '2020_10_20_071620_create_gift_cards_table', 11),
(45, '2020_10_20_071625_create_gift_card_purchases_table', 11),
(46, '2020_10_20_084108_add_uid_to_gift_card', 12),
(47, '2020_10_20_084557_add_purchase_done_to_gift_card_purchases', 13),
(48, '2020_10_20_085954_add_uid_to_gift_card_purchases', 14),
(49, '2020_10_27_104957_create_wholesales_table', 15),
(50, '2020_10_27_112856_update_product_table_wholesale', 16),
(51, '2020_10_27_113837_update_user_table', 17),
(52, '2020_10_27_120407_create_reviews_table', 18),
(53, '2020_10_27_131124_reviews', 19),
(54, '2020_10_27_160945_create_custom_pages_table', 20),
(55, '2020_10_29_151008_seller_type', 21),
(56, '2020_10_29_151911_add_pdf', 22),
(57, '2020_10_30_181100_update_prod', 23),
(58, '2020_10_30_210700_create_contacts_table', 24),
(59, '2020_10_30_213414_create_site_reviews_table', 25),
(60, '2020_10_30_214414_update-site_table', 26),
(61, '2020_10_31_111241_create_home_videos_table', 26),
(62, '2020_10_31_124727_create_f_a_q_s_table', 27),
(63, '2020_10_31_125924_create_faqs_table', 28),
(64, '2020_11_01_135615_create_video_categories_table', 29),
(65, '2020_11_01_135617_create_videos_table', 29),
(66, '2020_11_01_152153_create_ebook_requests_table', 30),
(67, '2020_11_01_161749_update_prodss', 31),
(68, '2020_11_01_180800_update_sub_order', 32),
(70, '2020_11_04_055724_create_column_in_product_table', 33),
(71, '2020_11_04_090252_create_messages_table', 34),
(72, '2020_11_10_125252_create_post_categories_table', 35),
(73, '2020_11_10_134509_post_category_s', 36),
(74, '2020_11_12_075724_create_columns_in_messa', 36),
(75, '2020_11_12_115533_create_pdf_in_product', 37),
(76, '2020_11_15_060943_update_prod_table_3', 38),
(77, '2020_11_15_144823_create_expenses_table', 39),
(78, '2020_11_15_145349_update_prod_table_4', 40),
(79, '2020_11_22_142849_attr_to_prod', 41),
(80, '2020_11_26_070022_create_finance_requests_table', 42),
(81, '2020_11_28_102754_create_notifications_table', 43),
(82, '2020_11_28_105724_add_referred_by_to_orders_table', 43),
(83, '2020_12_03_115957_add_affiliate_to_users_table', 44),
(84, '2020_12_05_073515_create_affiliated__sales_table', 45),
(85, '2020_12_05_175503_create_affiliate_reqs_table', 46),
(86, '2020_12_06_145858_create_commission_in_product', 47),
(88, '2020_12_06_150115_create_commission_in_order_items', 48),
(89, '2020_12_06_150253_create_commission_in_sub_order_items', 49),
(90, '2020_12_06_151530_create_expense_management_table', 50),
(91, '2020_12_06_160818_create_sub_order_items_in_transaction', 51),
(92, '2020_12_10_110705_add_columns_to_affiliate_reqs_table', 52),
(93, '2020_12_12_091941_add_columns_to_affiliate_sales_table', 53),
(94, '2020_12_12_101202_add_columns_to_products_table', 53),
(96, '2020_12_14_174148_create_related__products_table', 54);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('03c65953-fefb-4b53-b475-8b882bdc195e', 'App\\Notifications\\NewMessage', 'App\\User', 17, '{\"NewMessage\":\"test\"}', '2020-12-12 10:02:41', '2020-12-12 09:51:35', '2020-12-12 10:02:41'),
('0625df4e-6928-489b-a5c5-f50bcd613256', 'App\\Notifications\\NewMessage', 'App\\User', 15, '{\"NewMessage\":\"test\"}', '2021-01-13 01:38:23', '2021-01-13 01:38:12', '2021-01-13 01:38:23'),
('099dbc75-3880-4831-aa76-b4fa4a3bf692', 'App\\Notifications\\NewMessage', 'App\\User', 3, '{\"NewMessage\":\"test\"}', '2020-12-11 11:26:35', '2020-12-10 13:26:20', '2020-12-11 11:26:35'),
('0c933ba7-b531-4464-a8bc-872a8633aa42', 'App\\Notifications\\NewMessage', 'App\\User', 17, '{\"NewMessage\":\"test\"}', '2020-12-12 10:02:41', '2020-12-12 09:52:35', '2020-12-12 10:02:41'),
('1aaf05d3-618f-4af9-98c1-592eb59e6371', 'App\\Notifications\\NewMessage', 'App\\User', 3, '{\"NewMessage\":\"test\"}', '2020-12-10 12:12:11', '2020-12-10 12:12:01', '2020-12-10 12:12:11'),
('2650fa89-3a30-4b0a-9ff4-c2f159e6b258', 'App\\Notifications\\NewMessage', 'App\\User', 17, '{\"NewMessage\":\"test\"}', '2020-12-12 09:51:03', '2020-12-10 13:25:53', '2020-12-12 09:51:03'),
('2cb61c7d-58a2-479a-8dd6-f5716309a0a7', 'App\\Notifications\\NewMessage', 'App\\User', 3, '{\"NewMessage\":\"test\"}', '2021-01-13 01:37:35', '2021-01-13 01:36:54', '2021-01-13 01:37:35'),
('746bfa46-d53d-4e67-a633-dd73a8f23286', 'App\\Notifications\\NewMessage', 'App\\User', 8, '{\"NewMessage\":\"test\"}', '2021-01-02 00:11:27', '2020-12-27 23:28:43', '2021-01-02 00:11:27'),
('7eca27a9-7134-4fcf-aad9-4f1d24440bca', 'App\\Notifications\\NewMessage', 'App\\User', 4, '{\"NewMessage\":\"test\"}', '2021-01-26 22:10:24', '2020-12-14 07:13:04', '2021-01-26 22:10:24'),
('87069bd6-2c9e-43b4-9ab2-6797f3230db9', 'App\\Notifications\\NewMessage', 'App\\User', 3, '{\"NewMessage\":\"test\"}', '2021-01-03 23:56:24', '2021-01-02 00:12:00', '2021-01-03 23:56:24'),
('a4d6d846-a77a-476d-a16f-ecc07e0dca9e', 'App\\Notifications\\NewMessage', 'App\\User', 3, '{\"NewMessage\":\"test\"}', '2020-12-12 12:15:39', '2020-12-12 12:14:11', '2020-12-12 12:15:39'),
('b5ce67cd-f09b-4b28-af14-fb00cafe0492', 'App\\Notifications\\NewMessage', 'App\\User', 3, '{\"NewMessage\":\"test\"}', '2020-12-14 03:55:17', '2020-12-14 03:54:30', '2020-12-14 03:55:17'),
('bd1a2936-1964-4bac-ab37-5904951bd2d3', 'App\\Notifications\\NewMessage', 'App\\User', 3, '{\"NewMessage\":\"test\"}', '2020-12-25 22:34:24', '2020-12-14 07:12:55', '2020-12-25 22:34:24'),
('cede273b-0bf8-4123-be82-9840a20a2f1e', 'App\\Notifications\\NewMessage', 'App\\User', 8, '{\"NewMessage\":\"test\"}', '2021-01-02 00:11:27', '2020-12-25 22:34:41', '2021-01-02 00:11:27'),
('d6b85351-3c73-4336-90bb-8e3f6e3ede8c', 'App\\Notifications\\NewMessage', 'App\\User', 3, '{\"NewMessage\":\"test\"}', '2020-12-10 13:25:27', '2020-12-10 13:24:52', '2020-12-10 13:25:27'),
('f47238a2-80d7-46e1-bf04-7faae28ea070', 'App\\Notifications\\NewMessage', 'App\\User', 3, '{\"NewMessage\":\"test\"}', '2020-12-12 12:06:57', '2020-12-12 11:25:31', '2020-12-12 12:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` double(8,2) NOT NULL,
  `item_count` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` enum('cash_on_delivery','bkash','wallet','reward_point','gift_card') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_on_delivery',
  `shipping_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `status`, `grand_total`, `item_count`, `is_paid`, `payment_method`, `shipping_fullname`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_zipcode`, `shipping_phone`, `notes`, `billing_fullname`, `billing_address`, `billing_city`, `billing_state`, `billing_zipcode`, `billing_phone`, `created_at`, `updated_at`) VALUES
(1, 'OrderNumber-5fcf7a86eedf0', 17, 'pending', 63000.00, 1, 0, 'cash_on_delivery', 'test', 'mi', 'ts', 'test', '121', '018', NULL, 'test', 'mi', 'ts', 'test', '121', '018', '2020-12-08 07:07:18', '2020-12-08 07:07:18'),
(2, 'OrderNumber-5fcf7aa7caad1', 17, 'pending', 63000.00, 1, 0, 'cash_on_delivery', 'test', 'mi', 'ts', 'test', '121', '018', NULL, 'test', 'mi', 'ts', 'test', '121', '018', '2020-12-08 07:07:51', '2020-12-08 07:07:51'),
(3, 'OrderNumber-5fcf868959040', 8, 'completed', 4500.00, 1, 1, 'cash_on_delivery', 'MH', 'Dhaka', 'Dhaka', 'Dhaka', '1236', '01762321618', NULL, 'MH', 'Dhaka', 'Dhaka', 'Dhaka', '1236', '01762321618', '2020-12-08 07:58:00', '2020-12-08 08:23:54'),
(4, 'OrderNumber-5fcf869cdb594', 8, 'pending', 4500.00, 1, 1, 'cash_on_delivery', 'MH', 'Dhaka', 'Dhaka', 'Dhaka', '1236', '01762321618', NULL, 'MH', 'Dhaka', 'Dhaka', 'Dhaka', '1236', '01762321618', '2020-12-08 07:58:00', '2020-12-08 08:23:26'),
(5, 'OrderNumber-5fcfb585388b4', 9, 'completed', 6500.00, 1, 0, 'cash_on_delivery', 'mihan', 'ok', 'ok', 'lol', '123', '0172', NULL, 'mihan', 'ok', 'ok', 'lol', '123', '0172', '2020-12-08 11:19:01', '2020-12-08 11:24:59'),
(6, 'OrderNumber-5fcfb87876974', 9, 'completed', 1200.00, 1, 0, 'cash_on_delivery', 'chill', 'ok', 'ok', 'ok', 'ok', '0172', NULL, 'chill', 'ok', 'ok', 'ok', 'ok', '0172', '2020-12-08 11:31:36', '2020-12-08 11:33:24'),
(7, 'OrderNumber-5fcfbb45c698b', 9, 'pending', 6500.00, 1, 0, 'cash_on_delivery', 'mihan', 'ok', 'lol', 'lol', '123', '0172', NULL, 'mihan', 'ok', 'lol', 'lol', '123', '0172', '2020-12-08 11:43:33', '2020-12-08 11:43:33'),
(8, 'OrderNumber-5fcfbc9499dd9', 9, 'pending', 6500.00, 1, 0, 'cash_on_delivery', 'checking email', 'ok', 'ok', 'lol', '123', '0172', NULL, 'checking email', 'ok', 'ok', 'lol', '123', '0172', '2020-12-08 11:49:08', '2020-12-08 11:49:08'),
(9, 'OrderNumber-5fcfbf3b7a89d', 9, 'pending', 6500.00, 1, 0, 'cash_on_delivery', 'new email', 'ok', 'ok', 'ok', 'ok', '0172', NULL, 'new email', 'ok', 'ok', 'ok', 'ok', '0172', '2020-12-08 12:00:27', '2020-12-08 12:00:27'),
(10, 'OrderNumber-5fd05a8640316', 9, 'pending', 1200.00, 1, 0, 'cash_on_delivery', 'email', 'k', 'ko', 'oko', 'ko', '0172', NULL, 'email', 'k', 'ko', 'oko', 'ko', '0172', '2020-12-08 23:03:02', '2020-12-08 23:03:02'),
(11, 'OrderNumber-5fd05c59d19c7', 9, 'pending', 6500.00, 1, 0, 'cash_on_delivery', 'mihan', 'ok', 'ok', 'lol', '123', '0172', NULL, 'mihan', 'ok', 'ok', 'lol', '123', '0172', '2020-12-08 23:10:49', '2020-12-08 23:10:49'),
(12, 'OrderNumber-5fd06a280bccb', 20, 'pending', 1050.00, 1, 0, 'cash_on_delivery', 'shafiqul islam', 'Baridhara', 'Dhaka', 'bangladesh', '1208', '01839959655', NULL, 'shafiqul islam', 'Baridhara', 'Dhaka', 'bangladesh', '1208', '01839959655', '2020-12-09 00:09:44', '2020-12-09 00:09:44'),
(13, 'OrderNumber-5fd1b0410b5ba', 9, 'pending', 3200.00, 1, 0, 'cash_on_delivery', 'mihan', 'ok', 'ok', 'lol', '123', '0172', NULL, 'mihan', 'ok', 'ok', 'lol', '123', '0172', '2020-12-09 23:21:05', '2020-12-09 23:21:05'),
(14, 'OrderNumber-5fd1b0fcdc3e9', 9, 'pending', 4500.00, 1, 0, 'cash_on_delivery', 'mihan', 'ok', 'ok', 'lol', '123', '0172', NULL, 'mihan', 'ok', 'ok', 'lol', '123', '0172', '2020-12-09 23:24:12', '2020-12-09 23:24:12'),
(15, 'OrderNumber-5fd1b168bd755', 9, 'pending', 4500.00, 1, 0, 'cash_on_delivery', 'mihan', 'ok', 'ok', 'lol', '123', '0172', NULL, 'mihan', 'ok', 'ok', 'lol', '123', '0172', '2020-12-09 23:26:00', '2020-12-09 23:26:00'),
(16, 'OrderNumber-5fd1b21c1501a', 9, 'pending', 2550.00, 1, 0, 'cash_on_delivery', 'ok', 'kok', 'ok', 'ok', 'o', '0172', NULL, 'ok', 'kok', 'ok', 'ok', 'o', '0172', '2020-12-09 23:29:00', '2020-12-09 23:29:00'),
(17, 'OrderNumber-5fd1b7e15b4ea', 9, 'pending', 2550.00, 1, 0, 'cash_on_delivery', 'mihan', 'ok', 'ok', 'lol', '123', '0172', NULL, 'mihan', 'ok', 'ok', 'lol', '123', '0172', '2020-12-09 23:53:37', '2020-12-09 23:53:37'),
(18, 'OrderNumber-5fd45450e5385', 3, 'pending', 20000.00, 1, 0, 'cash_on_delivery', 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', NULL, 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', '2020-12-11 23:25:36', '2020-12-11 23:25:36'),
(19, 'OrderNumber-5fd454c13da9e', 15, 'pending', 20000.00, 1, 0, 'cash_on_delivery', 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', NULL, 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', '2020-12-11 23:27:29', '2020-12-11 23:27:29'),
(20, 'OrderNumber-5fd46eae24744', 3, 'pending', 8000.00, 1, 0, 'cash_on_delivery', 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', NULL, 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', '2020-12-12 01:18:06', '2020-12-12 01:18:06'),
(21, 'OrderNumber-5fd485acb9d59', 3, 'pending', 20000.00, 1, 0, 'cash_on_delivery', 'test', 'mi', 'ts', 'test', '121', '018', NULL, 'test', 'mi', 'ts', 'test', '121', '018', '2020-12-12 02:56:12', '2020-12-12 02:56:12'),
(22, 'OrderNumber-5fd49ea6552d7', 3, 'pending', 8000.00, 1, 1, 'cash_on_delivery', 'test', 'mi', 'ts', 'test', '121', '018', NULL, 'test', 'mi', 'ts', 'test', '121', '018', '2020-12-12 04:42:00', '2020-12-12 04:43:20'),
(23, 'OrderNumber-5fd4f269218b5', 8, 'pending', 21000.00, 1, 0, 'cash_on_delivery', 'mh', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', '01835816389', NULL, 'mh', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', '01835816389', '2020-12-12 10:40:09', '2020-12-12 10:40:09'),
(24, 'OrderNumber-5fd718e3b2286', 8, 'pending', 19500.00, 1, 0, 'cash_on_delivery', 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', NULL, 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', '2020-12-14 01:48:51', '2020-12-14 01:48:51'),
(25, 'OrderNumber-5fd71af2eb056', 8, 'pending', 650.00, 1, 0, 'bkash', 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', NULL, 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', '2020-12-14 01:57:38', '2020-12-14 01:57:38'),
(26, 'OrderNumber-5fd71ba81c228', 8, 'pending', 9000.00, 1, 1, 'wallet', 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', NULL, 'mh', 'dhaka', 'dhaka', 'dhaka', '1236', '01762321618', '2020-12-14 02:00:40', '2020-12-14 02:00:40'),
(27, 'OrderNumber-5fe22526284ce', 9, 'pending', 1050.00, 1, 0, 'cash_on_delivery', 'mihan', 'ok', 'ok', 'lol', '123', '0172', NULL, 'mihan', 'ok', 'ok', 'lol', '123', '0172', '2020-12-22 10:56:06', '2020-12-22 10:56:06'),
(28, 'OrderNumber-5fe70577e5f7d', 3, 'pending', 1700.00, 1, 0, 'cash_on_delivery', 'mihan', 'ok', 'ok', 'lol', '123', '0172', NULL, 'mihan', 'ok', 'ok', 'lol', '123', '0172', '2020-12-26 03:42:15', '2020-12-26 03:42:15'),
(29, 'OrderNumber-5ff214be310c3', 21, 'pending', 450.00, 1, 0, 'bkash', 'Md Hasmat Ali', 'B Block', 'Chittagong', 'Chittagong zila', '4226', '+8801677209000', NULL, 'Md Hasmat Ali', 'B Block', 'Chittagong', 'Chittagong zila', '4226', '+8801677209000', '2021-01-03 13:02:22', '2021-01-03 13:02:22'),
(30, 'OrderNumber-603e3bd889c61', 27, 'pending', 2100.00, 1, 0, 'cash_on_delivery', 'rafid', 'ok', 'dhaka', 'lol', '12345', '0123145', NULL, 'rafid', 'ok', 'dhaka', 'lol', '12345', '0123145', '2021-03-02 07:21:28', '2021-03-02 07:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `product_commission` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `price`, `quantity`, `created_at`, `updated_at`, `delivered_at`, `size`, `referred_by`, `product_commission`) VALUES
(12, 12, 9, 1050.00, 1, NULL, NULL, NULL, 'None', NULL, NULL),
(16, 16, 19, 2550.00, 1, NULL, NULL, NULL, 'None', NULL, NULL),
(17, 17, 39, 2550.00, 1, NULL, NULL, NULL, 'None', NULL, NULL),
(18, 21, 50, 20000.00, 1, NULL, NULL, NULL, ' 20kg', 17, NULL),
(19, 22, 21, 8000.00, 1, NULL, NULL, NULL, ' 5KG', NULL, NULL),
(20, 23, 9, 21000.00, 1, NULL, NULL, NULL, ' 20kg', 8, NULL),
(21, 24, 75, 19500.00, 1, NULL, NULL, NULL, ' 30KG', NULL, NULL),
(22, 25, 75, 650.00, 1, NULL, NULL, NULL, ' 1KG', NULL, NULL),
(23, 26, 60, 9000.00, 1, NULL, NULL, NULL, ' 20kg', NULL, NULL),
(24, 27, 9, 1050.00, 1, NULL, NULL, NULL, 'None', NULL, NULL),
(25, 28, 114, 1700.00, 1, NULL, NULL, NULL, ' 1KG', NULL, NULL),
(26, 29, 129, 450.00, 1, NULL, NULL, NULL, 'None', NULL, NULL),
(27, 30, 9, 1050.00, 2, NULL, NULL, NULL, ' 1KG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-10-11 02:06:39', '2020-10-11 02:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(2, 'browse_bread', NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(3, 'browse_database', NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(4, 'browse_media', NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(5, 'browse_compass', NULL, '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(6, 'browse_menus', 'menus', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(7, 'read_menus', 'menus', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(8, 'edit_menus', 'menus', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(9, 'add_menus', 'menus', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(10, 'delete_menus', 'menus', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(11, 'browse_roles', 'roles', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(12, 'read_roles', 'roles', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(13, 'edit_roles', 'roles', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(14, 'add_roles', 'roles', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(15, 'delete_roles', 'roles', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(16, 'browse_users', 'users', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(17, 'read_users', 'users', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(18, 'edit_users', 'users', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(19, 'add_users', 'users', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(20, 'delete_users', 'users', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(21, 'browse_settings', 'settings', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(22, 'read_settings', 'settings', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(23, 'edit_settings', 'settings', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(24, 'add_settings', 'settings', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(25, 'delete_settings', 'settings', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(26, 'browse_categories', 'categories', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(27, 'read_categories', 'categories', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(28, 'edit_categories', 'categories', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(29, 'add_categories', 'categories', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(30, 'delete_categories', 'categories', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(31, 'browse_posts', 'posts', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(32, 'read_posts', 'posts', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(33, 'edit_posts', 'posts', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(34, 'add_posts', 'posts', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(35, 'delete_posts', 'posts', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(36, 'browse_pages', 'pages', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(37, 'read_pages', 'pages', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(38, 'edit_pages', 'pages', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(39, 'add_pages', 'pages', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(40, 'delete_pages', 'pages', '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(41, 'browse_hooks', NULL, '2020-10-11 02:06:39', '2020-10-11 02:06:39'),
(42, 'browse_orders', 'orders', '2020-10-11 02:13:53', '2020-10-11 02:13:53'),
(43, 'read_orders', 'orders', '2020-10-11 02:13:53', '2020-10-11 02:13:53'),
(44, 'edit_orders', 'orders', '2020-10-11 02:13:53', '2020-10-11 02:13:53'),
(45, 'add_orders', 'orders', '2020-10-11 02:13:53', '2020-10-11 02:13:53'),
(46, 'delete_orders', 'orders', '2020-10-11 02:13:53', '2020-10-11 02:13:53'),
(47, 'browse_shops', 'shops', '2020-10-12 00:18:19', '2020-10-12 00:18:19'),
(48, 'read_shops', 'shops', '2020-10-12 00:18:19', '2020-10-12 00:18:19'),
(49, 'edit_shops', 'shops', '2020-10-12 00:18:19', '2020-10-12 00:18:19'),
(50, 'add_shops', 'shops', '2020-10-12 00:18:19', '2020-10-12 00:18:19'),
(51, 'delete_shops', 'shops', '2020-10-12 00:18:19', '2020-10-12 00:18:19'),
(52, 'browse_products', 'products', '2020-10-12 03:02:30', '2020-10-12 03:02:30'),
(53, 'read_products', 'products', '2020-10-12 03:02:30', '2020-10-12 03:02:30'),
(54, 'edit_products', 'products', '2020-10-12 03:02:30', '2020-10-12 03:02:30'),
(55, 'add_products', 'products', '2020-10-12 03:02:30', '2020-10-12 03:02:30'),
(56, 'delete_products', 'products', '2020-10-12 03:02:30', '2020-10-12 03:02:30'),
(57, 'browse_coupons', 'coupons', '2020-10-14 08:44:03', '2020-10-14 08:44:03'),
(58, 'read_coupons', 'coupons', '2020-10-14 08:44:03', '2020-10-14 08:44:03'),
(59, 'edit_coupons', 'coupons', '2020-10-14 08:44:03', '2020-10-14 08:44:03'),
(60, 'add_coupons', 'coupons', '2020-10-14 08:44:03', '2020-10-14 08:44:03'),
(61, 'delete_coupons', 'coupons', '2020-10-14 08:44:03', '2020-10-14 08:44:03'),
(62, 'browse_transactions', 'transactions', '2020-10-15 10:39:04', '2020-10-15 10:39:04'),
(63, 'read_transactions', 'transactions', '2020-10-15 10:39:04', '2020-10-15 10:39:04'),
(64, 'edit_transactions', 'transactions', '2020-10-15 10:39:04', '2020-10-15 10:39:04'),
(65, 'add_transactions', 'transactions', '2020-10-15 10:39:04', '2020-10-15 10:39:04'),
(66, 'delete_transactions', 'transactions', '2020-10-15 10:39:04', '2020-10-15 10:39:04'),
(67, 'browse_sub_orders', 'sub_orders', '2020-10-15 10:40:36', '2020-10-15 10:40:36'),
(68, 'read_sub_orders', 'sub_orders', '2020-10-15 10:40:36', '2020-10-15 10:40:36'),
(69, 'edit_sub_orders', 'sub_orders', '2020-10-15 10:40:36', '2020-10-15 10:40:36'),
(70, 'add_sub_orders', 'sub_orders', '2020-10-15 10:40:36', '2020-10-15 10:40:36'),
(71, 'delete_sub_orders', 'sub_orders', '2020-10-15 10:40:36', '2020-10-15 10:40:36'),
(87, 'browse_custom_pages', 'custom_pages', '2020-10-31 02:16:37', '2020-10-31 02:16:37'),
(88, 'read_custom_pages', 'custom_pages', '2020-10-31 02:16:37', '2020-10-31 02:16:37'),
(89, 'edit_custom_pages', 'custom_pages', '2020-10-31 02:16:37', '2020-10-31 02:16:37'),
(90, 'add_custom_pages', 'custom_pages', '2020-10-31 02:16:37', '2020-10-31 02:16:37'),
(91, 'delete_custom_pages', 'custom_pages', '2020-10-31 02:16:37', '2020-10-31 02:16:37'),
(92, 'browse_home_videos', 'home_videos', '2020-10-31 05:20:37', '2020-10-31 05:20:37'),
(93, 'read_home_videos', 'home_videos', '2020-10-31 05:20:37', '2020-10-31 05:20:37'),
(94, 'edit_home_videos', 'home_videos', '2020-10-31 05:20:37', '2020-10-31 05:20:37'),
(95, 'add_home_videos', 'home_videos', '2020-10-31 05:20:37', '2020-10-31 05:20:37'),
(96, 'delete_home_videos', 'home_videos', '2020-10-31 05:20:37', '2020-10-31 05:20:37'),
(102, 'browse_contacts', 'contacts', '2020-10-31 06:49:37', '2020-10-31 06:49:37'),
(103, 'read_contacts', 'contacts', '2020-10-31 06:49:37', '2020-10-31 06:49:37'),
(104, 'edit_contacts', 'contacts', '2020-10-31 06:49:37', '2020-10-31 06:49:37'),
(105, 'add_contacts', 'contacts', '2020-10-31 06:49:37', '2020-10-31 06:49:37'),
(106, 'delete_contacts', 'contacts', '2020-10-31 06:49:37', '2020-10-31 06:49:37'),
(112, 'browse_faqs', 'faqs', '2020-10-31 07:03:21', '2020-10-31 07:03:21'),
(113, 'read_faqs', 'faqs', '2020-10-31 07:03:21', '2020-10-31 07:03:21'),
(114, 'edit_faqs', 'faqs', '2020-10-31 07:03:21', '2020-10-31 07:03:21'),
(115, 'add_faqs', 'faqs', '2020-10-31 07:03:21', '2020-10-31 07:03:21'),
(116, 'delete_faqs', 'faqs', '2020-10-31 07:03:21', '2020-10-31 07:03:21'),
(117, 'browse_wholesales', 'wholesales', '2020-10-31 11:08:30', '2020-10-31 11:08:30'),
(118, 'read_wholesales', 'wholesales', '2020-10-31 11:08:30', '2020-10-31 11:08:30'),
(119, 'edit_wholesales', 'wholesales', '2020-10-31 11:08:30', '2020-10-31 11:08:30'),
(120, 'add_wholesales', 'wholesales', '2020-10-31 11:08:30', '2020-10-31 11:08:30'),
(121, 'delete_wholesales', 'wholesales', '2020-10-31 11:08:30', '2020-10-31 11:08:30'),
(122, 'browse_product_attributes', 'product_attributes', '2020-11-01 08:23:14', '2020-11-01 08:23:14'),
(123, 'read_product_attributes', 'product_attributes', '2020-11-01 08:23:14', '2020-11-01 08:23:14'),
(124, 'edit_product_attributes', 'product_attributes', '2020-11-01 08:23:14', '2020-11-01 08:23:14'),
(125, 'add_product_attributes', 'product_attributes', '2020-11-01 08:23:14', '2020-11-01 08:23:14'),
(126, 'delete_product_attributes', 'product_attributes', '2020-11-01 08:23:14', '2020-11-01 08:23:14'),
(127, 'browse_videos', 'videos', '2020-11-01 08:35:57', '2020-11-01 08:35:57'),
(128, 'read_videos', 'videos', '2020-11-01 08:35:57', '2020-11-01 08:35:57'),
(129, 'edit_videos', 'videos', '2020-11-01 08:35:57', '2020-11-01 08:35:57'),
(130, 'add_videos', 'videos', '2020-11-01 08:35:57', '2020-11-01 08:35:57'),
(131, 'delete_videos', 'videos', '2020-11-01 08:35:57', '2020-11-01 08:35:57'),
(132, 'browse_video_categories', 'video_categories', '2020-11-01 08:36:30', '2020-11-01 08:36:30'),
(133, 'read_video_categories', 'video_categories', '2020-11-01 08:36:30', '2020-11-01 08:36:30'),
(134, 'edit_video_categories', 'video_categories', '2020-11-01 08:36:30', '2020-11-01 08:36:30'),
(135, 'add_video_categories', 'video_categories', '2020-11-01 08:36:30', '2020-11-01 08:36:30'),
(136, 'delete_video_categories', 'video_categories', '2020-11-01 08:36:30', '2020-11-01 08:36:30'),
(137, 'browse_ebook_requests', 'ebook_requests', '2020-11-01 09:23:35', '2020-11-01 09:23:35'),
(138, 'read_ebook_requests', 'ebook_requests', '2020-11-01 09:23:35', '2020-11-01 09:23:35'),
(139, 'edit_ebook_requests', 'ebook_requests', '2020-11-01 09:23:35', '2020-11-01 09:23:35'),
(140, 'add_ebook_requests', 'ebook_requests', '2020-11-01 09:23:35', '2020-11-01 09:23:35'),
(141, 'delete_ebook_requests', 'ebook_requests', '2020-11-01 09:23:35', '2020-11-01 09:23:35'),
(142, 'browse_wallets', 'wallets', '2020-11-02 00:48:43', '2020-11-02 00:48:43'),
(143, 'read_wallets', 'wallets', '2020-11-02 00:48:43', '2020-11-02 00:48:43'),
(144, 'edit_wallets', 'wallets', '2020-11-02 00:48:43', '2020-11-02 00:48:43'),
(145, 'add_wallets', 'wallets', '2020-11-02 00:48:43', '2020-11-02 00:48:43'),
(146, 'delete_wallets', 'wallets', '2020-11-02 00:48:43', '2020-11-02 00:48:43'),
(147, 'browse_reward_points', 'reward_points', '2020-11-02 00:50:39', '2020-11-02 00:50:39'),
(148, 'read_reward_points', 'reward_points', '2020-11-02 00:50:39', '2020-11-02 00:50:39'),
(149, 'edit_reward_points', 'reward_points', '2020-11-02 00:50:39', '2020-11-02 00:50:39'),
(150, 'add_reward_points', 'reward_points', '2020-11-02 00:50:39', '2020-11-02 00:50:39'),
(151, 'delete_reward_points', 'reward_points', '2020-11-02 00:50:39', '2020-11-02 00:50:39'),
(152, 'browse_gift_card_purchases', 'gift_card_purchases', '2020-11-02 00:52:49', '2020-11-02 00:52:49'),
(153, 'read_gift_card_purchases', 'gift_card_purchases', '2020-11-02 00:52:49', '2020-11-02 00:52:49'),
(154, 'edit_gift_card_purchases', 'gift_card_purchases', '2020-11-02 00:52:49', '2020-11-02 00:52:49'),
(155, 'add_gift_card_purchases', 'gift_card_purchases', '2020-11-02 00:52:49', '2020-11-02 00:52:49'),
(156, 'delete_gift_card_purchases', 'gift_card_purchases', '2020-11-02 00:52:49', '2020-11-02 00:52:49'),
(157, 'browse_gift_cards', 'gift_cards', '2020-11-02 00:57:45', '2020-11-02 00:57:45'),
(158, 'read_gift_cards', 'gift_cards', '2020-11-02 00:57:45', '2020-11-02 00:57:45'),
(159, 'edit_gift_cards', 'gift_cards', '2020-11-02 00:57:45', '2020-11-02 00:57:45'),
(160, 'add_gift_cards', 'gift_cards', '2020-11-02 00:57:45', '2020-11-02 00:57:45'),
(161, 'delete_gift_cards', 'gift_cards', '2020-11-02 00:57:45', '2020-11-02 00:57:45'),
(162, 'browse_site_reviews', 'site_reviews', '2020-11-02 00:58:31', '2020-11-02 00:58:31'),
(163, 'read_site_reviews', 'site_reviews', '2020-11-02 00:58:31', '2020-11-02 00:58:31'),
(164, 'edit_site_reviews', 'site_reviews', '2020-11-02 00:58:31', '2020-11-02 00:58:31'),
(165, 'add_site_reviews', 'site_reviews', '2020-11-02 00:58:31', '2020-11-02 00:58:31'),
(166, 'delete_site_reviews', 'site_reviews', '2020-11-02 00:58:31', '2020-11-02 00:58:31'),
(167, 'browse_post_categories', 'post_categories', '2020-11-12 00:05:07', '2020-11-12 00:05:07'),
(168, 'read_post_categories', 'post_categories', '2020-11-12 00:05:07', '2020-11-12 00:05:07'),
(169, 'edit_post_categories', 'post_categories', '2020-11-12 00:05:07', '2020-11-12 00:05:07'),
(170, 'add_post_categories', 'post_categories', '2020-11-12 00:05:07', '2020-11-12 00:05:07'),
(171, 'delete_post_categories', 'post_categories', '2020-11-12 00:05:07', '2020-11-12 00:05:07'),
(172, 'browse_expenses', 'expenses', '2020-11-15 19:57:16', '2020-11-15 19:57:16'),
(173, 'read_expenses', 'expenses', '2020-11-15 19:57:16', '2020-11-15 19:57:16'),
(174, 'edit_expenses', 'expenses', '2020-11-15 19:57:16', '2020-11-15 19:57:16'),
(175, 'add_expenses', 'expenses', '2020-11-15 19:57:16', '2020-11-15 19:57:16'),
(176, 'delete_expenses', 'expenses', '2020-11-15 19:57:16', '2020-11-15 19:57:16'),
(177, 'browse_finance_requests', 'finance_requests', '2020-11-26 04:48:37', '2020-11-26 04:48:37'),
(178, 'read_finance_requests', 'finance_requests', '2020-11-26 04:48:37', '2020-11-26 04:48:37'),
(179, 'edit_finance_requests', 'finance_requests', '2020-11-26 04:48:37', '2020-11-26 04:48:37'),
(180, 'add_finance_requests', 'finance_requests', '2020-11-26 04:48:37', '2020-11-26 04:48:37'),
(181, 'delete_finance_requests', 'finance_requests', '2020-11-26 04:48:37', '2020-11-26 04:48:37'),
(182, 'browse_affiliate_reqs', 'affiliate_reqs', '2020-12-05 12:07:14', '2020-12-05 12:07:14'),
(183, 'read_affiliate_reqs', 'affiliate_reqs', '2020-12-05 12:07:14', '2020-12-05 12:07:14'),
(184, 'edit_affiliate_reqs', 'affiliate_reqs', '2020-12-05 12:07:14', '2020-12-05 12:07:14'),
(185, 'add_affiliate_reqs', 'affiliate_reqs', '2020-12-05 12:07:14', '2020-12-05 12:07:14'),
(186, 'delete_affiliate_reqs', 'affiliate_reqs', '2020-12-05 12:07:14', '2020-12-05 12:07:14'),
(187, 'browse_expense_management', 'expense_management', '2020-12-07 07:25:47', '2020-12-07 07:25:47'),
(188, 'read_expense_management', 'expense_management', '2020-12-07 07:25:47', '2020-12-07 07:25:47'),
(189, 'edit_expense_management', 'expense_management', '2020-12-07 07:25:47', '2020-12-07 07:25:47'),
(190, 'add_expense_management', 'expense_management', '2020-12-07 07:25:47', '2020-12-07 07:25:47'),
(191, 'delete_expense_management', 'expense_management', '2020-12-07 07:25:47', '2020-12-07 07:25:47'),
(192, 'browse_sub_order_items', 'sub_order_items', '2020-12-08 10:53:01', '2020-12-08 10:53:01'),
(193, 'read_sub_order_items', 'sub_order_items', '2020-12-08 10:53:01', '2020-12-08 10:53:01'),
(194, 'edit_sub_order_items', 'sub_order_items', '2020-12-08 10:53:01', '2020-12-08 10:53:01'),
(195, 'add_sub_order_items', 'sub_order_items', '2020-12-08 10:53:01', '2020-12-08 10:53:01'),
(196, 'delete_sub_order_items', 'sub_order_items', '2020-12-08 10:53:01', '2020-12-08 10:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 5),
(3, 1),
(3, 5),
(4, 1),
(4, 5),
(5, 1),
(5, 5),
(6, 1),
(6, 3),
(6, 4),
(6, 5),
(7, 1),
(7, 3),
(7, 4),
(7, 5),
(8, 1),
(8, 4),
(8, 5),
(9, 1),
(9, 5),
(10, 1),
(10, 5),
(11, 1),
(11, 5),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 5),
(17, 1),
(17, 5),
(18, 1),
(18, 5),
(19, 1),
(19, 5),
(20, 1),
(20, 5),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 5),
(27, 1),
(27, 5),
(28, 1),
(28, 5),
(29, 1),
(29, 5),
(30, 1),
(30, 5),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 5),
(42, 1),
(42, 5),
(43, 1),
(43, 5),
(44, 1),
(44, 5),
(45, 1),
(45, 5),
(46, 1),
(46, 5),
(47, 1),
(47, 3),
(47, 5),
(48, 1),
(48, 3),
(48, 5),
(49, 1),
(49, 3),
(49, 5),
(50, 1),
(50, 5),
(51, 1),
(51, 5),
(52, 1),
(52, 3),
(52, 4),
(52, 5),
(53, 1),
(53, 3),
(53, 4),
(53, 5),
(54, 1),
(54, 3),
(54, 4),
(54, 5),
(55, 1),
(55, 3),
(55, 4),
(55, 5),
(56, 1),
(56, 3),
(56, 4),
(56, 5),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(62, 3),
(62, 5),
(63, 1),
(63, 3),
(63, 5),
(64, 1),
(64, 3),
(64, 5),
(65, 1),
(65, 3),
(65, 5),
(66, 1),
(66, 3),
(66, 5),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(117, 4),
(117, 5),
(118, 1),
(118, 4),
(118, 5),
(119, 1),
(119, 4),
(119, 5),
(120, 1),
(120, 5),
(121, 1),
(121, 5),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(192, 3),
(193, 1),
(193, 3),
(194, 1),
(194, 3),
(195, 1),
(195, 3),
(196, 1),
(196, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_cat_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `pdf`, `post_cat_id`) VALUES
(3, 3, 'PLUFIX 7.0', NULL, 'This is the excerpt for the latest post', '<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">PLUFIX GAS HEATED DRYER</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">An heat chamber of exactly 7 meters long offers &ldquo;single curing&rdquo; for all kinds of inks and prints even at high speed production.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">It is the perfect textile dryer for &ldquo;High Volume Production&rdquo;</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIX 7.0</span>&nbsp;is a master of single-curing for heavy prints, thick and finished garments</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its &ldquo;Double Blower&rdquo;, it is perfect for water-based and discharge inks</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The powerful blower ensures perfect curing and efficiency on printed garments</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Thanks to the &ldquo;Actual Curing Time&rdquo; feature; instead of belt speed value, the real curing time in the heat chamber is displayed on the operator\'s control panel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The speed and direction of the belts can be adjusted independently</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The portable operator control panel allows flexibility and ease of use</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Using the &ldquo;Temperature Calibration Page&rdquo;, the dryer can be calibrated to show the actual garment temperature on the operator&rsquo;s display</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">In the event of electrical failure, the independent power supply will continue to run the belt for an additional 3-4 minutes</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">PLUFIX 7.0 offers 100% Reliability</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIX 7.0</span>&nbsp;performs 6 separate safety checks each time it is started</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The &ldquo;Defect Seeking&rdquo; system will display any fault on the operator&rsquo;s panel and sound an alarm</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Emergency stop safety buttons are located both on in-feed &amp; out-feed conveyors and on the electric panel as well</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Top quality control and gas equipment such as DUNGS, KROM SCHRODER, SIEMENS, SCHNEIDER, are used in&nbsp;<span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIX</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The PLC unit organizes and controls; Max-Min Gas Pressure, Blower Air Pressure, High Temperature, Ignition and Flame Control, Double Gas Filter and Double Solenoid, Gas Pressure and Volume Regulator as well as the control of all Motor Failures and Failure Resets</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The FIBERFLON brand belts are heat resistant up to 250&deg;C (482&deg;F) and both sides are Kevlar&reg; by DuPont&trade;</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Single belt and double belt models are available</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Stainless steel entry &amp; exit openings are adjustable</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The temperature can be set up to 200&deg;C (392&deg;F)</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">PLUFIX 7.0 is User Friendly</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIX 7.0</span>&nbsp;is operated by a single-touch button</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">All failures can be read in ENGLISH on the operator&rsquo;s display</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The PLC unit digitaly controls and displays the process temperature and set temperature</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The &ldquo;System Saver&rdquo; feature means that, with a single touch it cools down and then shuts down automatically</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">With its &ldquo;Easy Cleaning Cover&rdquo; on the blower, there is no need to uninstall the blower for cleaning</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its practical design, the filters only take 10 minutes to clean</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The fabric fibers and dust are burnt in the burner section, so the machine remains clean</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">PLUFIX 7.0 is Economical</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its stainless steel atmospheric burner, it offers great economy</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">High density rock-wool insulation and special design silicon gaskets reduce heat loss to a minimum</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">An accurate SCHNEIDER PLC control system reduces gas consumption and ensures precise temperature control</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">Options</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Cooling system</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">IR Ceramic Heating Zone</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Special assembly system fits through any door</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Special design inlet and outlet</li>\r\n</ul>', 'posts/January2021/SUrVesXS7yqbe62zk48I.jpg', 'plufix-7-0', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-11 02:06:39', '2021-01-11 00:27:16', '[{\"download_link\":\"posts\\/January2021\\/a0OcXsPQJ0vA39KGfFb4.pdf\",\"original_name\":\"PLUFIX GAS HEATED DRYER 7.pdf\"}]', 5),
(4, 3, 'PLUFIXPLUS', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">PLUFIXPLUS GAS HEATED DRYER</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIXPLUS</span>&nbsp;Gas Heated Textile Dryer is a longer version of the regular&nbsp;<span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIX</span>&nbsp;model</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its &ldquo;Double Blower&rdquo;, it is perfect for water-based and discharge inks</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The powerful blower ensures perfect curing and efficiency on printed garments</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Thanks to the &ldquo;Actual Curing Time&rdquo; feature; instead of belt speed value, the real curing time in the heat chamber is displayed on the operator\'s control panel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The speed and direction of the belts can be adjusted independently</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The portable operator control panel allows flexibility and ease of use</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Using the &ldquo;Temperature Calibration Page&rdquo;, the dryer can be calibrated to show the actual garment temperature on the operator&rsquo;s display</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">In the event of electrical failure, the independent power supply will continue to run the belt for an additional 3-4 minutes</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">PLUFIXPLUS offers 100% Reliability</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIXPLUS</span>&nbsp;performs 6 separate safety checks each time it is started</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The &ldquo;Defect Seeking&rdquo; system will display any fault on the operator&rsquo;s panel and sound an alarm</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Emergency stop safety buttons are located both on in-feed &amp; out-feed conveyors and on the electric panel as well</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Top quality control and gas equipment such as DUNGS, KROM SCHRODER, SIEMENS, SCHNEIDER, are used in&nbsp;<span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIXPLUS</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The PLC unit organizes and controls; Max-Min Gas Pressure, Blower Air Pressure, High Temperature, Ignition and Flame Control, Double Gas Filter and Double Solenoid, Gas Pressure and Volume Regulator as well as the control of all Motor Failures and Failure Resets</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The FIBERFLON brand belts are heat resistant up to 250&deg;C (482&deg;F) and both sides are Kevlar&reg; by DuPont&trade;</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Single belt and double belt models are available</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Stainless steel entry &amp; exit openings are adjustable</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The temperature can be set up to 200&deg;C (392&deg;F)</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">PLUFIXPLUS is User Friendly</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIXPLUS</span>&nbsp;is operated by a single-touch button</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">All failures can be read in ENGLISH on the operator&rsquo;s display</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The PLC unit digitaly controls and displays the process temperature and set temperature</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The &ldquo;System Saver&rdquo; feature means that, with a single touch it cools down and then shuts down automatically</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">With its &ldquo;Easy Cleaning Cover&rdquo; on the blower, there is no need to uninstall the blower for cleaning</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its practical design, the filters only take 10 minutes to clean</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The fabric fibers and dust are burnt in the burner section, so the machine remains clean</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">PLUFIXPLUS is Economical</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its stainless steel atmospheric burner, it offers great economy</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">High density rock-wool insulation and special design silicon gaskets reduce heat loss to a minimum</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">An accurate SCHNEIDER PLC control system reduces gas consumption and ensures precise temperature control</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">Options</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Cooling system</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">IR Ceramic Heating Zone</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Special assembly system fits through any door</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Special design inlet and outlet</li>\r\n</ul>', 'posts/January2021/wnVAOeF0IkcAmmImJjfH.jpg', 'plufixplus', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-10-11 02:06:39', '2021-01-11 00:27:51', '[{\"download_link\":\"posts\\/January2021\\/dw2454DO1MrD8L8DLUpI.pdf\",\"original_name\":\"PLUFIXPLUS GAS HEATED DRYER.pdf\"}]', 5),
(8, 3, 'ORYX OVAL', NULL, NULL, '<p>ORAXY OVAL</p>', 'posts/January2021/2wEli2eDPxpbdmptZclx.jpg', 'oryx-oval', NULL, NULL, 'PUBLISHED', 1, '2021-01-02 02:22:00', '2021-01-11 00:15:18', '[{\"download_link\":\"posts\\/January2021\\/tEqEpy4NxcKJHEHOKnW2.pdf\",\"original_name\":\"Untitled-2 copy.pdf\"}]', 4),
(9, 3, 'ORBIT CIRCULAR', NULL, NULL, '<p>ORBIT CIRCULAR</p>', 'posts/January2021/YMfTEcaFoTn45NHmaMRw.jpg', 'orbit-circular', NULL, NULL, 'PUBLISHED', 0, '2021-01-03 22:38:17', '2021-01-11 00:16:21', '[{\"download_link\":\"posts\\/January2021\\/VMzbz235ock316j4AUy0.pdf\",\"original_name\":\"LLL.pdf\"}]', 4),
(10, 3, 'PRETORIA', NULL, NULL, '<p>DIGITAL HYBRID GARMENT PRINTER&nbsp;</p>', 'posts/January2021/sTsXipxHAPpju4WUbrhJ.jpg', 'pretoria', NULL, NULL, 'PUBLISHED', 0, '2021-01-03 22:50:37', '2021-01-11 00:17:29', '[{\"download_link\":\"posts\\/January2021\\/K8QQceuFl7jbqqTKWIZl.pdf\",\"original_name\":\"Untitled-2 copy.pdf\"}]', 4),
(12, 3, 'PLUFIX GAS HEATED DRYER', NULL, NULL, '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIX</span>&nbsp;Gas Heated Textile Dryers are ideal for the curing of inks after the screen printing process</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Thanks to the &ldquo;Actual Curing Time&rdquo; feature; instead of belt speed value, the real curing time in the heat chamber is displayed on the operator\'s control panel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The speed and direction of the belts can be adjusted independently.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The portable operator control panel allows flexibility and ease of use</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Using the &ldquo;Temperature Calibration Page&rdquo;, the dryer can be calibrated to show the actual garment temperature on the operator&rsquo;s display.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">In the event of electrical failure, the independent power supply will continue to run the belt for an additional 3-4 minutes</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">PLUFIX Offers %100 Reliability</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIX</span>&nbsp;performs 6 separate safety checks each time it is started</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The &ldquo;Defect Seeking&rdquo; system will display any fault on the operator&rsquo;s panel and sound an alarm</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Emergency stop safety buttons are located both on in-feed &amp; out-feed conveyors and on the electric panel as well</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Top quality control and gas equipment such as DUNGS, KROM SCHRODER, SIEMENS, SCHNEIDER, are used in&nbsp;<span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIX</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The PLC unit organizes and controls; Max-Min Gas Pressure, Blower Air Pressure, High Temperature, Ignition and Flame Control, Double Gas Filter and Double Solenoid, Gas Pressure and Volume Regulator as well as the control of all Motor Failures and Failure Resets</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The FIBERFLON brand belts are heat resistant up to 250&deg;C (482&deg;F) and both sides are Kevlar&reg; by DuPont&trade;</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Single belt and double belt models are available</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Stainless steel entry &amp; exit openings are adjustable</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The temperature can be set up to 200&deg;C (392&deg;F)</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">PLUFIX is User Friendly</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">PLUFIX</span>&nbsp;is operated by a single-touch button</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">All failures can be read in ENGLISH on the operator&rsquo;s display</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The PLC unit digitaly controls and displays the process temperature and set temperature</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The &ldquo;System Saver&rdquo; feature means that, with a single touch it cools down and then shuts down automatically</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">With its &ldquo;Easy Cleaning Cover&rdquo; on the blower, there is no need to uninstall the blower for cleaning</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its practical design, the filters only take 10 minutes to clean</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The fabric fibers and dust are burnt in the burner section, so the machine remains clean</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">PLUFIX is Economical</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its stainless steel atmospheric burner, it offers great economy</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">High density rock-wool insulation and special design silicon gaskets reduce heat loss to a minimum</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">An accurate SCHNEIDER PLC control system reduces gas consumption and ensures precise temperature control</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">Options</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Cooling system</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">IR Ceramic Heating Zone</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Special assembly system fits through any door</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Special design inlet and outlet</li>\r\n</ul>', 'posts/January2021/sTT24siRuk7UiHeRWh6W.jpg', 'plufix-gas-heated-dryer', NULL, NULL, 'PUBLISHED', 0, '2021-01-04 01:53:25', '2021-01-11 00:25:54', '[{\"download_link\":\"posts\\/January2021\\/eLztZ78cgNr2WEma16Q5.pdf\",\"original_name\":\"PLUFIX GAS HEATED DRYER.pdf\"}]', 5),
(14, 3, 'RAPICURE', NULL, NULL, '<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">RAPICURE Gas Heated Textile Dryer</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">RAPICURE</span>&nbsp;has modular expandable design with additional heat chambers</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Tailor-made non standard solutions to meet every demand</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Many variations of belt width &amp; heat chamber length</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The powerful blower of&nbsp;<span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">RAPICURE</span>&nbsp;ensures a perfect curing</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Thanks to the &ldquo;Actual Curing Time&rdquo; feature; instead of belt speed value, the real curing time in the heat chamber is displayed on the operator&rsquo;s control panel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The speed and direction of the belts can be adjusted independently</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Using the &ldquo;Temperature Calibration Page&rdquo;, the dryer can be calibrated to show the actual garment temperature on the operator&rsquo;s display</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The &ldquo;Defect Seeking&rdquo; system will display any fault on the operator&rsquo;s panel and sound an alarm</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Emergency stop safety buttons are located both on in-feed &amp; out-feed conveyors and on the electric panel as well</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The FIBERFLON brand belts are heat resistant up to 250&deg;C (482&deg;F) and both sides are Kevlar&reg; by DuPont&trade;</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Single-belt and double-belt models are available as well</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Stainless steel entry &amp; exit openings are adjustable</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">RAPICURE</span>&nbsp;is operated by a single-touch button</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">All failures can be read in ENGLISH on the operator&rsquo;s display</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The PLC unit digitally controls and displays the process temperature and set temperature</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The &ldquo;System Saver&rdquo; feature means that, with a single touch it cools down and then shuts down automatically</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its practical design, the filters only take 10 minutes to clean</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">With its &ldquo;Easy Cleaning Cover&rdquo; on the blower, there is no need to uninstall the blower for cleaning</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">High density rock-wool insulation and special design silicon gaskets reduce heat loss to a minimum</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The temperature can be set up to 200&deg;C (392&deg;F)</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">RAPICURE Forced Air Gas Dryer</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">RAPICURE</span>&nbsp;Gas Dryer performs 6 separate safety checks every time it is started</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Top quality control and gas equipment such as DUNGS, KROM SCHRODER, SIEMENS, SCHNEIDER, are used in&nbsp;<span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">RAPICURE</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The PLC unit organizes and controls; Max-Min Gas Pressure, Blower Air Pressure, High Temperature, Ignition and Flame Control, Double Gas Filter and Double Solenoid, Gas Pressure and Volume Regulator as well as the control of all Motor Failures and Failure Resets</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The fabric fibers and dust are burnt in the burner section, so the machine remains clean</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its stainless steel atmospheric burner, it offers great economy</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">An accurate SCHNEIDER PLC control system reduces gas consumption and ensures precise temperature control</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">Options</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Cooling system</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">IR Ceramic Heating Zone</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Special assembly system fits through any door</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Special design inlet and outlet</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">POWER SUPPLY for belts, so the belts will continue running 3-4 minutes in the event of energy failure</li>\r\n</ul>', 'posts/January2021/MyoM0xOyx0zojnBtJyrJ.jpg', 'rapicure', NULL, NULL, 'PUBLISHED', 0, '2021-01-06 00:34:56', '2021-01-11 00:25:29', '[{\"download_link\":\"posts\\/January2021\\/9DAvFbGgfH2z2XWwHSwm.pdf\",\"original_name\":\"RAPICURE Gas Heated Textile Dryer.pdf\"}]', 5);
INSERT INTO `posts` (`id`, `author_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `pdf`, `post_cat_id`) VALUES
(28, 3, 'MAXIRAPICURE', NULL, NULL, '<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">MAXIRAPICURE Gas Heated Textile Dryer &ldquo;Low Temperature Curing Technology&rdquo;</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">MAXIRAPICURE</span>&nbsp;has modular expandable design with additional heat chambers</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Tailor-made non standard solutions to meet every demand</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Many variations of belt width &amp; heat chamber length</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">MAXIRAPICURE</span>&nbsp;performs excellent curing with low temperatures</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Different temperatures can be set in the two heat chambers of&nbsp;<span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">MAXIRAPICURE</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">MAXIRAPICURE</span>&nbsp;has &ldquo;Double Burners&rdquo; and &ldquo;Double Blowers&rdquo;</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Single curing at high speeds &amp; low temperatures for all kinds of inks and prints</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">&ldquo;Low Temperature Curing Technology&rdquo; also protects low quality fabrics after a poor dyeing process</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to two separate burner sections, each heat chamber can be started &amp; stopped independently</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Belt speed value is set as &ldquo;Actual Curing Time&rdquo;. Due to this feature real curing time in the heat chamber is displayed on the operator&rsquo;s control panel</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The speed and direction of the belts can be adjusted independently</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The portable operator control panel allows flexibility and ease of use</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Using the &ldquo;Temperature Calibration Page&rdquo;, the dryer can be calibrated to show the actual garment temperature on the operator&rsquo;s display</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">MAXIRAPICURE</span>&nbsp;performs 6 separate safety checks each time it is started</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The &ldquo;Defect Seeking&rdquo; system will display any fault on the operator&rsquo;s panel and sound an alarm</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Emergency stop safety buttons are located both on in-feed &amp; out-feed conveyors and on the electric panel as well</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Top quality control and gas equipment such as DUNGS, KROM SCHRODER, SIEMENS, SCHNEIDER, are used in&nbsp;<span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">MAXIRAPICURE</span></li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The PLC unit organizes and controls; Max-Min Gas Pressure, Blower Air Pressure, High Temperature, Ignition and Flame Control, Double Gas Filter and Double Solenoid, Gas Pressure and Volume Regulator as well as the control of all Motor Failures and Failure Resets</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The FIBERFLON brand belts are heat resistant up to 250&deg;C (482&deg;F) and both sides are Kevlar&reg; by DuPont&trade;</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Single belt and double belt models are available</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Stainless steel entry &amp; exit openings are adjustable</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The temperature can be set up to 200&deg;C (392&deg;F)</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\"><span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">MAXIRAPICURE</span>&nbsp;is operated by a single-touch button</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">All failures can be read in ENGLISH on the operator&rsquo;s display</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The process temperature and set temperature are displayed and controlled digitally by PLC unit</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The &ldquo;System Saver&rdquo; feature means that, with a single touch it cools down and then shuts down automatically</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The fabric fibers and dust are burnt in the burner section, so the machine remains clean</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its practical design, the filters only take 10 minutes to clean</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">With its &ldquo;Easy Cleaning Cover&rdquo; on the blower, there is no need to uninstall the blower for cleaning</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Due to its stainless steel atmospheric burner, it offers great economy</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">High density rock-wool insulation and special design silicon gaskets reduce heat loss to a minimum</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">The double burner offers a higher temperature at the in-feed side and a lower temperature at the out-feed side so the consumption of&nbsp;<span class=\"ansalFont\" style=\"box-sizing: border-box; margin: -8px 0px 0px; padding: 0px; font-family: \'Bank Gothic\' !important; font-size: 17px; position: unset; display: inline-block;\">MAXIRAPICURE</span>&nbsp;is 30% less than single burner dryers of the same length</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">An accurate SCHNEIDER PLC control system reduces gas consumption and ensures precise temperature control</li>\r\n</ul>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; padding: 0px; font-family: poppins; color: #777777; font-size: 16px; height: 10px; margin: 0px 0px 0px !important 0px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: \'Bank Gothic\'; line-height: 1.2; font-size: 24px; color: #1659aa; font-weight: 500 !important;\">Options</h3>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-family: \'Bank Gothic\'; list-style: none; color: #484848;\">\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Cooling system</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">IR Ceramic Heating Zone</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Special assembly system fits through any door</li>\r\n<li style=\"box-sizing: border-box; margin: 0px 0px 5px; padding: 0px 0px 0px 25px; font-family: poppins; font-size: 13px; position: relative;\">Special design inlet and outlet<img src=\"http://textiledryer.com/content/images/tablo-maxirapicure.jpg\" /><img src=\"http://textiledryer.com/Content/images/maxiirapicure.jpg\" /><img src=\"http://textiledryer.com/Content/images/maxiirapicure.jpg\" width=\"980\" height=\"1817\" /></li>\r\n</ul>', 'posts/January2021/2oe7m1lNXUzJExvqEd0n.jpg', 'maxirapicure', NULL, NULL, 'PUBLISHED', 0, '2021-01-11 01:25:19', '2021-01-11 01:25:19', '[{\"download_link\":\"posts\\/January2021\\/R1w1YQHUJ0P6x6fl1HbH.pdf\",\"original_name\":\"MAXIRAPICURE Gas Heated Textile Dryer.pdf\"}]', 5),
(29, 3, 'IR CURE', NULL, NULL, '<p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><strong><span style=\"font-size: 18pt; font-family: \'Bank Gothic\', serif;\">IR CURE Infrared Dryer</span></strong></p>\r\n<p class=\"MsoNormal\"><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিজিটাল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রিন্ট</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নমুনা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রিন্ট</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্লাস্টিসল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অন্যান্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বাষ্পমূলক</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কালিগুলির</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জন্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বহুমুখী</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">আইআর</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ড্রায়ার</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">, </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">টেক্সটাইল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শিল্প</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">: </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সমস্ত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রিন্ট</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">লেবেল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রিন্ট</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">, </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বৈদ্যুতিন</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শিল্প</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">: </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পিসিবি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বোর্ড</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কালি</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">, </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কাগজ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শিল্প</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">: </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কাগজ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পত্রক</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">, </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জুতো</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শিল্প</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">: </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">মুদ্রণ</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">একক</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ইনসোল</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">স্টিকিং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রক্রিয়া</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">, </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্লাস্টিক</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শিল্প</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">: </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">মুদ্রণ</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সঙ্কুচিত</span>,<span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্যাকিং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শিল্প</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">: </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">মুদ্রণ</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সঙ্কুচিত</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জুয়েল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শিল্প</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">রাসায়নিক</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শিল্প</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বিজ্ঞাপন</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শিল্প</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">খাদ্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শিল্প</span>,</p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12.0pt; font-family: \'poppins\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #777777;\">&nbsp;</span><strong><span style=\"font-size: 18pt; font-family: \'Bank Gothic\', serif;\">Specifications</span></strong></p>\r\n<p class=\"MsoNormal\"><span lang=\"BN\" style=\"font-family: \'Times New Roman\',serif; mso-bidi-language: BN;\">&bull;</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">মডিউলার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ড্রায়ার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বডি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিজিটাল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কন্ট্রোল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্যানেল</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">&bull; </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ইলেক্ট্রোস্ট্যাটিকালি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ড্রায়ার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বডি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পেইন্ট</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">&bull; </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সহজ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ইনস্টলেশন</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সিস্টেম</span> High <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">উচ্চ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ঘনত্ব</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শিলা</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">-</span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">উল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সঙ্গে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিখুঁত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিরোধক</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">&bull; </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বিশেষ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিজাইনের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সিলিকন</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">গ্যাসকেট</span> <span lang=\"AR-SA\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ফাইবারফ্লোন</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্র্যান্ডের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বেল্টগুলি</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\"> 250 </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিগ্রি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সেন্টিগ্রেড</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পর্যন্ত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">তাপ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রতিরোধী</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">উভয়</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পক্ষই</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডুপন্টের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">দ্বারা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কেভলার</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\"> &trade; </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বেল্টের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">গতি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">দিক</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সামঞ্জস্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">যায়</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12.0pt; font-family: \'Cambria\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Cambria; color: #777777;\">&nbsp;</span><span style=\"font-size: 12.0pt; font-family: \'poppins\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #777777;\">&nbsp;</span><strong><span style=\"font-size: 18pt; font-family: \'Bank Gothic\', serif;\">Control Panel</span></strong></p>\r\n<p class=\"MsoNormal\"><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">&bull; </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিজিটালি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রিত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">তাপমাত্রা</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"AR-SA\">&nbsp;</span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">লজিক</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রণ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্যবস্থা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অপারেটরটিকে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">আইআর</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কোয়ার্টজ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">টিউবসের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সর্বনিম্ন</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ও</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সর্বাধিক</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রণ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করতে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সক্ষম</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> Max \"<span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সর্বোচ্চ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তি</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">\" </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিজিটাল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রণ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্যানেলে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সীমাবদ্ধ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">থাকতে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পারে</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">&bull; </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পাওয়ার</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\"> 0-100 </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এর</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">মধ্যে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিজিটালি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অ্যাডজাস্ট</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">যায়</span> \"<span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অবিচ্ছিন্ন</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">আলোকিত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ল্যাম্পগুলি</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">\" </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">লজিক</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রণ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সিস্টেম</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">দ্বারা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রিত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">হয়</span></p>\r\n<p class=\"MsoNormal\">Temperature <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">তাপমাত্রা</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\"> 200 </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিগ্রি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সেলসিয়াস</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\"> (392 </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিগ্রি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ফারেনহাইট</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">) </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সেট</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">আপ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">যায়</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12.0pt; font-family: \'poppins\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #777777;\">&nbsp;</span><strong><span style=\"font-size: 18pt; font-family: \'Bank Gothic\', serif;\">Heat Chamber</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: \'Nirmala UI\',sans-serif;\">আইআর</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">কোয়ার্টজ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">টিউব</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সহ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">অর্থনৈতিক</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">গরম</span> Just <span style=\"font-family: \'Nirmala UI\',sans-serif;\">স্থায়ী</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">আইআর</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">প্যানেল</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">উচ্চতা</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: \'Nirmala UI\',sans-serif;\">শীর্ষ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">মানের</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">আইআর</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">কোয়ার্টজ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">টিউব</span></p>\r\n<p class=\"MsoNormal\">&nbsp;<span style=\"font-family: \'Nirmala UI\',sans-serif;\">তাপ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রতিরোধী</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সিলিকন</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">তারগুলি</span>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12.0pt; font-family: \'poppins\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #777777;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><strong><span style=\"font-size: 18pt; font-family: \'Bank Gothic\', serif;\">Option</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 3.75pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #484848;\">&middot;<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 10.0pt; font-family: \'poppins\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #484848;\">Additional exhaust system</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 3.75pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #484848;\">&middot;<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 10.0pt; font-family: \'poppins\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #484848;\">Additional heat chamber</span></p>\r\n<p class=\"MsoNormal\"><img style=\"font-family: poppins; font-size: 13px; color: #484848;\" src=\"http://textiledryer.com/content/images/tablo-ircure.jpg\" width=\"621\" height=\"425\" /></p>', 'posts/January2021/GFx9bs6VrqQmJd01iQbi.jpg', 'ir-cure', NULL, NULL, 'PUBLISHED', 0, '2021-01-12 23:55:07', '2021-01-12 23:55:07', '[{\"download_link\":\"posts\\/January2021\\/BmBuiu1u7Sz5Py8EIDly.pdf\",\"original_name\":\"IR CURE Infrared Dryer.pdf\"}]', 5);
INSERT INTO `posts` (`id`, `author_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `pdf`, `post_cat_id`) VALUES
(30, 3, 'Flash Cure', NULL, NULL, '<h3 style=\"text-align: center; background: white;\" align=\"center\"><span style=\"font-size: 18.0pt; font-family: \'Bank Gothic\',serif; color: #1659aa;\">RAPIDRY IR Flash Cure Units</span></h3>\r\n<p class=\"MsoNormal\"><br />RAPIDRY <span style=\"font-family: \'Nirmala UI\',sans-serif;\">এর</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিজিটালভাবে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সামঞ্জস্য</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">যায়</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">নিরাময়</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সময়কাল</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সেকেন্ডে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সেট</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">হয়</span>, <span style=\"font-family: \'Nirmala UI\',sans-serif;\">টাইমার</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">অপারেটিং</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করার</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সময়</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">অবশিষ্ট</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সময়</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">গণনা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বাতিগুলি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">তিনটি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">জোনে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বিভক্ত</span>, <span style=\"font-family: \'Nirmala UI\',sans-serif;\">যা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">স্বতন্ত্রভাবে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">যে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">কোনও</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সংমিশ্রণে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">চালিত</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">হতে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">পারে</span></p>\r\n<p class=\"MsoNormal\">RAPIDRY <span style=\"font-family: \'Nirmala UI\',sans-serif;\">এর</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">অপটিক্যাল</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সেন্সর</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সুইচ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">স্বয়ংক্রিয়</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">মুদ্রণ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">যন্ত্র</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">থেকে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">একটি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সংকেত</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্যবহার</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">শুরু</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করে।</span> (<span style=\"font-family: \'Nirmala UI\',sans-serif;\">উপযুক্ত</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সকেট</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সহ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">যোগাযোগ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">তারের</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">একটি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বিকল্প</span>) <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বিশেষ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ফিলামেন্ট</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিজাইন</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্যয়</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">জীবন</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সময়</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বাড়ানোর</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">জন্য</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">হ্রাস</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">অতি</span>-<span style=\"font-family: \'Nirmala UI\',sans-serif;\">অর্থনৈতিক</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">মাঝারি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">তরঙ্গদৈর্ঘ্য</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রদীপগুলি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বিদ্যুতের</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সংযোগকে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">হ্রাস</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">কার্যকারিতা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বাড়ানোর</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">জন্য</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ল্যাম্পগুলির</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">নিজস্ব</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রতিচ্ছবি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">রয়েছে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">স্টেইনলেস</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">স্টিল</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">লেজার</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">কাটা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রতিফলক</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ছিদ্রযুক্ত</span>; <span style=\"font-family: \'Nirmala UI\',sans-serif;\">অতএব</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তিশালী</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্লোয়ার</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">থেকে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">উত্তপ্ত</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">জোর</span>-<span style=\"font-family: \'Nirmala UI\',sans-serif;\">বায়ু</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রাপ্ত</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">হয়</span></p>\r\n<p class=\"MsoNormal\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>RAPIDRY <span style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">মুদ্রণের</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">মধ্যে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">দূরত্বটি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ম্যানুয়ালি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সামঞ্জস্য</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">যায়</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">পোর্টেবল</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ইনস্টল</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সহজ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">পরীক্ষা</span>-<span style=\"font-family: \'Nirmala UI\',sans-serif;\">শুরু</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করতে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">স্বতন্ত্র</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বোতাম</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">অ্যালুমিনিয়াম</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্লোয়ারটি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ইবিএম</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">পিএপএসটি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্র্যান্ড</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">এটি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">জার্মানিতে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">তৈরি</span> RAPIDRY <span style=\"font-family: \'Nirmala UI\',sans-serif;\">এর</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তিশালী</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্লোয়ার</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">দ্রুত</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">কালি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">নিরাময়ের</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">জন্য</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বাধ্য</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বাতাস</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সরবরাহ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রণের</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">মাথাটি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">একটি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ফ্যানের</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">পরিবর্তে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">উচ্চ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">দক্ষতার</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">অ্যালুমিনিয়াম</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">তাপ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সিঙ্কের</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সাথে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">শীতল</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">হয়</span>, <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সুতরাং</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সমস্ত</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বৈদ্যুতিন</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সিস্টেম</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">পরিষ্কার</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">থাকে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ক্রেডিট</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">প্যানেলে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">দুটি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">মেমরি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বোতামের</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সাহায্যে</span></p>\r\n<p class=\"MsoNormal\">RAPIDRY <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্যবহারকারী</span>-<span style=\"font-family: \'Nirmala UI\',sans-serif;\">বান্ধব</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রিহিটিং</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ফাংশন</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">ফিলামেন্টকে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">গরম</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">রাখে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রিহিয়েটিং</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রণ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">বোর্ডে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সামঞ্জস্য</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">যায়</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সর্বাধিক</span> (<span style=\"font-family: \'Nirmala UI\',sans-serif;\">মোট</span>) <span style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তি</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রণ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">প্যানেলে</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">সীমাবদ্ধ</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">লক</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span style=\"font-family: \'Nirmala UI\',sans-serif;\">যায়</span></p>\r\n<p class=\"MsoNormal\"><img src=\"http://textiledryer.com/content/images/tablo-rapidry.jpg\" width=\"769\" height=\"293\" /></p>\r\n<p class=\"MsoNormal\"><img src=\"http://textiledryer.com/Content/images/rapidry.jpg\" /></p>\r\n<p class=\"MsoNormal\"><img src=\"http://textiledryer.com/Content/images/rapidry-2.jpg\" /></p>\r\n<p class=\"MsoNormal\"><img src=\"http://textiledryer.com/Content/images/rapidry-4.jpg\" /></p>', 'posts/January2021/8FksHxAHUcMoo8pDCblD.jpg', 'flash-cure', NULL, NULL, 'PUBLISHED', 0, '2021-01-13 00:39:16', '2021-01-13 00:39:16', '[{\"download_link\":\"posts\\/January2021\\/zjVWXOxVOq48jtBzxyng.pdf\",\"original_name\":\"RAPIDRY IR Flash Cure Units.pdf\"}]', 5),
(31, 3, 'RAPIDRY PRO', NULL, NULL, '<h3 style=\"text-align: center; background: white;\" align=\"center\"><span style=\"font-size: 18.0pt; font-family: \'Bank Gothic\',serif; color: #1659aa;\">RAPIDRY PRO Freestanding Portable Flash Cure Units</span></h3>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">RAPIDRY PRO <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এর</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিজিটালভাবে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সামঞ্জস্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">যায়</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিরাময়</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সময়কালটি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সেকেন্ড</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">হিসাবে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সেট</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">হয়</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">টাইমার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অপারেটিং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সময়</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বাকি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সময়কে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">গণনা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বাতিগুলি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">তিনটি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জোনে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বিভক্ত</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">যা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">স্বতন্ত্রভাবে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">যে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কোনও</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সংমিশ্রণে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">চালিত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">হতে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পারে</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">RAPIDRY PRO <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এর</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অপটিকাল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সেন্সর</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সুইচ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">স্বয়ংক্রিয়</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">মুদ্রণ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">যন্ত্র</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">থেকে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">একটি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সংকেত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্যবহার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শুরু</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">যেতে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পারে।</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\"> (</span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">যোগাযোগের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কেবল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এটির</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">উপযুক্ত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সকেটটি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সেটে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অন্তর্ভুক্ত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">হয়েছে</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">) </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তির</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্যয়</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">হ্রাস</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জন্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জীবনকাল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বাড়ানোর</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জন্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বিশেষ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ফিলামেন্ট</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ডিজাইন</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\"> <span style=\"mso-spacerun: yes;\">&nbsp;</span></span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">তাপমাত্রা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সেন্সর</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">মুদ্রিত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পোশাকের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রকৃত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">তাপমাত্রা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রদর্শন</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সেট</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">তাপমাত্রায়</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ফ্ল্যাশ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বন্ধ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">দেয়</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অতি</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">-</span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অর্থনৈতিক</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">মাঝারি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">তরঙ্গদৈর্ঘ্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রদীপ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বৈদ্যুতিক</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">খরচ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">হ্রাস</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কার্যকারিতা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বাড়ানোর</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জন্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ল্যাম্পগুলির</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিজস্ব</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রতিচ্ছবি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">রয়েছে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">স্টেইনলেস</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">স্টিল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">লেজার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কাটা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রতিফলক</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ছিদ্রযুক্ত</span>; <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অতএব</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">উত্তপ্ত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জোর</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">-</span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বায়ু</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তিশালী</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্লোয়ার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রাপ্ত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">হয়</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সামঞ্জস্যযোগ্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">স্ট্যান্ড</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">উচ্চতার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বৈশিষ্ট্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অপারেটরের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জন্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্যবহারের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সহজতা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সরবরাহ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পোর্টেবল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এর</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">চাকাগুলি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্যবহার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সরানো</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সহজ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পরীক্ষা</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">-</span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শুরু</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করতে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">স্বতন্ত্র</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বোতাম</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অ্যালুমিনিয়াম</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্লোয়ারটি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ইবিএম</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পিএপএসটি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্র্যান্ড</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এটি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জার্মানিতে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">তৈরি</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">RAPIDRY PRO <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এর</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তিশালী</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্লোয়ার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">দ্রুত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">কালি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিরাময়ের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">জন্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বাধ্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বাতাস</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সরবরাহ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রণের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">মাথাটি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">একটি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ফ্যানের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পরিবর্তে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">উচ্চ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">দক্ষতার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">অ্যালুমিনিয়াম</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">তাপ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সিঙ্কের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সাথে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শীতল</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">হয়</span>, <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সুতরাং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সমস্ত</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বৈদ্যুতিন</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সিস্টেম</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">পরিষ্কার</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">থাকে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ক্রেডিট</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্যানেলে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">দুটি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">মেমরি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বোতামের</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সাহায্যে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">র্যাপিড্রি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রো</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ব্যবহারকারীবান্ধব</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রিহিটিং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ফাংশন</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">ফিলামেন্টকে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">গরম</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">রাখে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্রিহিয়েটিং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রণ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">বোর্ডে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সামঞ্জস্য</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">যায়</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সর্বাধিক</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\"> (</span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">মোট</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi;\">) </span><span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">শক্তি</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">নিয়ন্ত্রণ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">প্যানেলে</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">সীমাবদ্ধ</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">এবং</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">লক</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">করা</span> <span lang=\"AR-SA\" style=\"font-family: \'Nirmala UI\',sans-serif;\">যায়</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><img src=\"http://textiledryer.com/content/images/tablo-rapidry-pro.jpg\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><img src=\"http://textiledryer.com/Content/images/ANSAL_ENDUSTRI.jpg\" width=\"609\" height=\"527\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><img src=\"http://textiledryer.com/Content/images/rapidry-pro-renk.jpg\" width=\"620\" height=\"713\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;<img src=\"http://textiledryer.com/Content/images/rapidry-pro.jpg\" width=\"610\" height=\"344\" /></p>\r\n<p><img src=\"http://textiledryer.com/Content/images/rapidry-pro-2.jpg\" width=\"608\" height=\"342\" /></p>', 'posts/January2021/cHnSZ4TWCnCpNxHJui9A.jpg', 'rapidry-pro', NULL, NULL, 'PUBLISHED', 0, '2021-01-13 01:25:08', '2021-01-13 01:28:06', '[{\"download_link\":\"posts\\/January2021\\/CR57nvw7Pv51duPfpxGG.pdf\",\"original_name\":\"RAPIDRY PRO Freestanding Portable Flash Cure Units.pdf\"}]', 5);

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'FABRO', '2021-01-11 00:13:03', '2021-01-11 00:13:03'),
(5, 'ANSAL', '2021-01-11 00:13:15', '2021-01-11 00:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `cover_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `top_product` tinyint(1) DEFAULT 0,
  `cash_back_percent` float DEFAULT 0,
  `reward_point` int(11) DEFAULT 0,
  `min_qty` int(11) DEFAULT NULL,
  `wholesale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refurbish_product` tinyint(1) NOT NULL DEFAULT 0,
  `product_pdf` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 20,
  `buying_price` double(8,2) NOT NULL,
  `product_attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `product_commission` int(11) DEFAULT NULL,
  `affiliate_comission` double(8,2) DEFAULT NULL,
  `related_product` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `cover_img`, `shop_id`, `created_at`, `updated_at`, `featured`, `top_product`, `cash_back_percent`, `reward_point`, `min_qty`, `wholesale_id`, `product_video`, `refurbish_product`, `product_pdf`, `stock`, `buying_price`, `product_attributes`, `product_commission`, `affiliate_comission`, `related_product`) VALUES
(9, 'HYBRID ANTIMIGRATION BASE', '<p>HYBRID ANTIMIGRATION BASE&nbsp;</p>', 1050.00, 'products/January2021/Hx7Qz2aFl3aJ4QlbMju0.jpg', NULL, '2020-12-08 23:02:00', '2021-01-09 01:40:49', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 840.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1050\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"21000\"},{\"size\":\"30KG\",\"color\":null,\"sku\":null,\"price\":\"31500\"}]', NULL, 0.00, 0),
(10, 'HYBRID REDUCER', '<p>HYBRID REDUCER&nbsp;</p>', 1050.00, 'products/January2021/g54qWVtJJXr1w6tXDdFa.png', NULL, '2020-12-08 23:06:00', '2021-01-09 00:40:15', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 840.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1050\"},{\"size\":\"5KG\",\"color\":null,\"sku\":null,\"price\":\"5250\"},{\"size\":\"10 KG\",\"color\":null,\"sku\":null,\"price\":\"10500\"}]', 0, 0.00, 0),
(11, 'HYBRID AIR FIX 1', '<p>HYBRID AIR FIX 1</p>', 6500.00, 'products/December2020/E97U4IMHr7Heb1yvF8H1.png', NULL, '2020-12-08 23:11:00', '2020-12-11 13:42:53', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 5200.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"130000\"}]', NULL, 0.00, 0),
(12, 'HYBRID RETARDER GEL', '<p>HYBRID RETARDER GEL</p>', 1050.00, 'products/January2021/ON1A4JdkDiFIlvc8ecE0.png', NULL, '2020-12-08 23:14:00', '2021-01-09 00:48:22', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 840.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1050\"},{\"size\":\"30KG\",\"color\":null,\"sku\":null,\"price\":\"31500\"}]', 0, 0.00, 0),
(13, 'RT 38 BINDER', '<p>RT 38 BINDER</p>', 230.00, 'products/January2021/M4CSYQJnivJDo0OQvLro.png', NULL, '2020-12-08 23:17:00', '2021-01-09 01:21:50', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 150.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"230\"},{\"size\":\"60KG\",\"color\":null,\"sku\":null,\"price\":\"13800\"}]', NULL, 0.00, 0),
(19, 'EP BLACK', '<p>EP BLACK</p>', 2550.00, 'products/January2021/fH6HHSgdefmk80zXp3VH.jpg', NULL, '2020-12-09 01:03:00', '2021-01-08 23:54:55', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[{\"download_link\":\"products\\/December2020\\/C3ngGDCrszQY9SWZdVxD.pdf\",\"original_name\":\"tds-015-EP-Black.pdf\"}]', 100, 2040.00, '[{\"size\":\"1KG\",\"color\":\"BLACK\",\"sku\":null,\"price\":\"2550\"},{\"size\":\"5KG\",\"color\":\"BLACK\",\"sku\":null,\"price\":\"12750\"}]', NULL, 0.00, 0),
(21, 'EP YELLOW', '<p>EP YELLOW</p>', 1600.00, 'products/January2021/Q1xPviV3rQ7yYKvSmk3T.jpg', NULL, '2020-12-09 01:14:00', '2021-03-03 03:19:52', 0, 1, NULL, NULL, NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-2gewQTxHLg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, '[{\"download_link\":\"products\\/December2020\\/dyYenrnn9I337kpvwISj.png\",\"original_name\":\"EP YELLOW.png\"}]', 165, 1280.00, '[{\"size\":\"1KG\",\"color\":\"YELLOW\",\"sku\":null,\"price\":\"1600\"},{\"size\":\"5KG\",\"color\":\"YELLOW\",\"sku\":null,\"price\":\"8000\"}]', 0, 0.00, 0),
(22, 'EP ORANGE', '<p>EP ORANGE&nbsp;</p>\r\n<p>Per kg. Price 1700</p>', 1700.00, 'products/January2021/1aaXz5eB4b4Aaeu6LD6j.jpg', NULL, '2020-12-09 01:19:00', '2021-03-03 03:26:48', 0, 0, NULL, NULL, NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jfehvzXSBb8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, '[]', 100, 1300.00, '[{\"size\":\"1KG\",\"color\":\"ORANGE\",\"sku\":null,\"price\":\"1700\"},{\"size\":\"5KG\",\"color\":\"ORANGE\",\"sku\":null,\"price\":\"8500\"}]', 0, 0.00, 0),
(23, 'EP FLU RED', '<p>EP FLU RED&nbsp;</p>\r\n<p>Price Per Kg. 1600</p>', 1600.00, 'products/January2021/eZJUdHY5GuiHLZTMJkFY.jpg', NULL, '2020-12-09 01:22:00', '2021-03-03 03:29:27', 0, 0, NULL, NULL, 5, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jfehvzXSBb8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, '[]', 100, 1280.00, '[{\"size\":\"1KG\",\"color\":\"RED\",\"sku\":null,\"price\":\"1600\"},{\"size\":\"5KG\",\"color\":\"RED\",\"sku\":null,\"price\":\"8000\"}]', NULL, 0.00, 0),
(24, 'EP Flu Orange', '<p>EP Flu Orange</p>\r\n<p>&nbsp;</p>', 1550.00, 'products/January2021/cORoluQFtEXMER9F0bAV.jpg', NULL, '2020-12-09 01:26:00', '2021-03-03 03:32:50', 0, 0, NULL, NULL, NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jfehvzXSBb8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, '[{\"download_link\":\"products\\/December2020\\/Lj1AsZp9VyipGAr1KgnV.pdf\",\"original_name\":\"sds-018-EP-Fluor-Orange.pdf\"}]', 100, 1240.00, '[{\"size\":\"1KG\",\"color\":\"ORANGE\",\"sku\":null,\"price\":\"1550\"},{\"size\":\"5KG\",\"color\":\"ORANGE\",\"sku\":null,\"price\":\"7750\"}]', NULL, 0.00, 0),
(25, 'EP Flu Green', '<p>EP Flu Green</p>\r\n<p>Per Kg Price:2550 Tk.</p>', 2550.00, 'products/January2021/dHN1230J6i9YNXz0Vuvf.jpg', NULL, '2020-12-09 01:31:00', '2021-03-03 03:35:26', 0, 0, NULL, NULL, 5, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jfehvzXSBb8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, '[{\"download_link\":\"products\\/December2020\\/sU3MlvQrPLGEseoNCLl4.pdf\",\"original_name\":\"test-013-EP-Green.pdf\"}]', 100, 2040.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"2550\"}]', NULL, 0.00, 0),
(26, 'EP GREEN', '<p>EP GREEN</p>\r\n<p>PER KG PRICE 1680 TK</p>', 1680.00, 'products/December2020/q3KOB9U3d6dQe1x1LvmQ.png', NULL, '2020-12-09 01:35:00', '2021-01-08 23:31:33', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[{\"download_link\":\"products\\/December2020\\/Eu92cYxoGaCKMDav0CKS.pdf\",\"original_name\":\"sds-013-EP-Green.pdf\"}]', 10, 1200.00, '[{\"size\":\"1KG\",\"color\":\"Green\",\"sku\":null,\"price\":\"1680\"},{\"size\":\"5KG\",\"color\":\"Green\",\"sku\":null,\"price\":\"8400\"}]', 0, 0.00, 0),
(27, 'EP FLU YELLOW', '<p>EPFLU YELLOW&nbsp;</p>\r\n<p>PER KG PRICE 2550 TK</p>', 2550.00, 'products/January2021/t5aFPBYAmp2V4G2ZtMj5.jpg', NULL, '2020-12-09 01:40:00', '2021-01-08 22:59:01', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 125, 2040.00, '[{\"size\":\"1KG\",\"color\":\"YELLOW\",\"sku\":null,\"price\":\"2550\"},{\"size\":\"5KG\",\"color\":\"YELLOW\",\"sku\":null,\"price\":\"12750\"}]', NULL, 0.00, 0),
(29, 'EP TARQUISE BLUE', '<p>EP TARQUISE BLUE&nbsp;</p>\r\n<p>PER KG PRICE 1550TK.</p>', 1550.00, 'products/December2020/O78Hggrv7o0Gy9p0Pm59.png', NULL, '2020-12-09 02:16:00', '2020-12-12 00:41:12', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[{\"download_link\":\"products\\/December2020\\/DkXMAM3D3IcGMRBw8e61.pdf\",\"original_name\":\"sds-010-EP-Turquoise-Blue.pdf\"}]', 285, 1240.00, '[{\"size\":\"5KG\",\"color\":null,\"sku\":null,\"price\":\"7750\"}]', NULL, 0.00, 0),
(30, 'EP Golden Yellow', '<p>EP Golden Yellow</p>\r\n<p>PER KG PRICE&nbsp;</p>', 1550.00, 'products/January2021/MpHerCXU6iC0SaPe1ArX.jpg', NULL, '2020-12-09 02:25:00', '2021-01-08 23:28:27', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 1200.00, '[{\"size\":\"1KG\",\"color\":\"YELLOW\",\"sku\":null,\"price\":\"1550\"},{\"size\":\"5KG\",\"color\":\"YELLOW\",\"sku\":null,\"price\":\"7750\"}]', NULL, 0.00, 0),
(32, 'EP SCARLET', '<p>EP SCARLET</p>\r\n<p>PER KG PRICE&nbsp;</p>', 0.00, 'products/December2020/Acrja0qsTHyDNNhtoVYe.png', NULL, '2020-12-09 02:30:00', '2020-12-12 00:38:52', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[{\"download_link\":\"products\\/December2020\\/Nj8kKEKJN1Z49BgzIBtZ.pdf\",\"original_name\":\"sds-003-EP-Scarlet.pdf\"}]', 55, 0.00, '[{\"size\":\"5KG\",\"color\":null,\"sku\":null,\"price\":\"0\"}]', NULL, 0.00, 0),
(33, 'EP VOILET', '<p>EP VOILET</p>\r\n<p>PER KG PRICE&nbsp;</p>', 0.00, 'products/December2020/1Mfx8JV7RDHuoAFOotRF.png', NULL, '2020-12-09 02:34:00', '2020-12-12 00:37:11', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 0, 0.00, '[{\"size\":\"5KG\",\"color\":null,\"sku\":null,\"price\":\"0\"}]', NULL, 0.00, 0),
(34, 'EP NAVY BLUE', '<p>EP NAVY BLUE</p>\r\n<p>PER KG PRICE 1650TK</p>', 1650.00, 'products/January2021/PhiqsnTINbhUry8O7zEg.jpg', NULL, '2020-12-09 02:38:00', '2021-01-08 23:51:55', 0, 0, NULL, NULL, 0, NULL, NULL, 0, '[{\"download_link\":\"products\\/December2020\\/fmAMlj0c7qekRPeJRR5Z.pdf\",\"original_name\":\"test-011-EP-Navy-Blue.pdf\"}]', 100, 1320.00, '[{\"size\":\"1KG\",\"color\":\"BLUE\",\"sku\":null,\"price\":\"1650\"},{\"size\":\"5KG\",\"color\":\"BLUE\",\"sku\":null,\"price\":\"8250\"}]', NULL, 0.00, 0),
(35, 'EP BLUE', '<p>EP BLUE</p>\r\n<p>&nbsp;</p>', 1500.00, 'products/January2021/PyTa1WWjuG1PabxUmblQ.jpg', NULL, '2020-12-09 02:42:00', '2021-01-06 01:36:10', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[{\"download_link\":\"products\\/December2020\\/EDgouMPwckUyFL9LArkh.pdf\",\"original_name\":\"sds-009-EP-Blue.pdf\"}]', 100, 1200.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1500\"},{\"size\":\"5KG\",\"color\":null,\"sku\":null,\"price\":\"7500\"}]', NULL, 0.00, 0),
(36, 'EP RED', '<p>EP RED&nbsp;</p>\r\n<p>PER KG PRICE 1650TK.</p>', 1650.00, 'products/January2021/ovYlZpCQqm80hBkC7bPs.jpg', NULL, '2020-12-09 02:45:00', '2021-01-08 23:43:48', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[{\"download_link\":\"products\\/December2020\\/2vPH10ThU8uqrFFeqL5I.pdf\",\"original_name\":\"sds-006-EP-Red.pdf\"}]', 100, 1300.00, '[{\"size\":\"1KG\",\"color\":\"RED\",\"sku\":null,\"price\":\"1650\"},{\"size\":\"5KG\",\"color\":\"RED\",\"sku\":null,\"price\":\"8250\"}]', 0, 0.00, 0),
(37, 'EP DARK BROWN', '<p>EP DARK BROWN</p>\r\n<p>PER KG PRICE 1500TK</p>', 1500.00, 'products/January2021/5qUQCUmhxgpLvOyp53fu.jpg', NULL, '2020-12-09 02:50:00', '2021-01-06 01:26:42', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[{\"download_link\":\"products\\/December2020\\/J8XefsRooQ9PX3VbBuyJ.pdf\",\"original_name\":\"test-014-EP-Dark-Brown.pdf\"}]', 80, 1200.00, '[{\"size\":\"1KG\",\"color\":\"BROWN\",\"sku\":null,\"price\":\"1500\"},{\"size\":\"5KG\",\"color\":\"BROWN\",\"sku\":null,\"price\":\"7500\"}]', NULL, 0.00, 0),
(38, 'EP FLAG RED', '<p>EP FLAG RED</p>\r\n<p>PRICE PER KG&nbsp;</p>', 1500.00, 'products/January2021/xmhlJQji6CZZvR3vxk3C.jpg', NULL, '2020-12-09 02:53:00', '2021-01-06 01:51:04', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1200.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1500\"},{\"size\":\"5KG\",\"color\":null,\"sku\":null,\"price\":\"7500\"}]', NULL, 0.00, 0),
(39, 'EP FLU PINK', '<p>EP FLU PINK</p>\r\n<p>PRICE PER KG 2550TK</p>', 2550.00, 'products/January2021/AFr542EmQBRKxufQE6S2.jpg', NULL, '2020-12-09 02:57:00', '2021-03-03 00:44:21', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 2040.00, '[{\"size\":\"1KG\",\"color\":\"PINK\",\"sku\":null,\"price\":\"2550\"},{\"size\":\"5KG\",\"color\":\"PINK\",\"sku\":null,\"price\":\"12750\"}]', NULL, 0.00, 4),
(40, 'PL SNOW WHITE', '<p>PL SNOW WHITE</p>', 800.00, 'products/December2020/7Em7lKihBoGG0ql3Ekuv.png', NULL, '2020-12-09 03:52:00', '2020-12-11 13:20:38', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 640.00, '[{\"size\":\"10kg\",\"color\":null,\"sku\":null,\"price\":\"8000\"}]', NULL, 0.00, 0),
(41, 'PL HIGH DENSITY CLEAR', '<p>PL HIGH DENSITY CLEAR</p>', 900.00, 'products/December2020/eYv5ozcMFlQwTCIJVwdH.png', NULL, '2020-12-09 03:57:00', '2020-12-11 13:16:42', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 720.00, '[{\"size\":\"10kg\",\"color\":null,\"sku\":null,\"price\":\"9000\"}]', NULL, 0.00, 0),
(42, 'PL BLACK', '<p>PL BLACK&nbsp;</p>', 1000.00, 'products/December2020/m1SYHWr0Bt23MTauPa4J.png', NULL, '2020-12-09 04:00:00', '2020-12-11 13:14:15', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 800.00, '[{\"size\":\"10kg\",\"color\":null,\"sku\":null,\"price\":\"8000\"}]', NULL, 0.00, 0),
(43, 'PL ANTIMIGRATION BASE', '<p>PL ANTIMIGRATION BASE</p>', 1500.00, 'products/December2020/AfvSNqKwbiWk2zxv3zmK.png', NULL, '2020-12-09 04:06:00', '2020-12-11 13:10:54', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1200.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"30000\"}]', NULL, 0.00, 0),
(44, 'PL PUFF', '<p>PL PUFF</p>', 1400.00, 'products/December2020/ssxwoc7rWMhyl2EbL1xy.png', NULL, '2020-12-09 04:08:00', '2020-12-11 13:07:41', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1120.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"28000\"}]', NULL, 0.00, 0),
(45, 'PL VIOLET', '<p>PL VIOLET</p>', 1000.00, 'products/December2020/ImlkI9NSJjaIukg8M4Rp.png', NULL, '2020-12-09 04:12:00', '2020-12-11 13:05:59', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 800.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"20000\"}]', NULL, 0.00, 0),
(46, 'PL MATALIC BASE', '<p>PL MATALIC BASE</p>', 1000.00, 'products/December2020/K3VswQRcZFrSy4jmjzUp.png', NULL, '2020-12-09 04:14:00', '2020-12-11 13:03:03', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 800.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"20000\"}]', NULL, 0.00, 0),
(47, 'PL FLU PINK', '<p>PL FLU PINK</p>', 1200.00, 'products/December2020/5MFn8Xb5U7ObdEEDYXrM.png', NULL, '2020-12-09 04:16:00', '2020-12-11 13:01:55', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 960.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"24000\"}]', NULL, 0.00, 0),
(48, 'PL FLU ORANGE', '<p>PL FLU ORANGE</p>', 1200.00, 'products/December2020/l9brCT63iNY5cKDm3TBm.png', NULL, '2020-12-09 04:18:00', '2020-12-11 12:55:22', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 960.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"24000\"}]', NULL, 0.00, 0),
(49, 'PL SCARLET', '<p>PL SCARLET</p>', 1100.00, 'products/December2020/U0mCBYxfND0PrYM8hRGs.png', NULL, '2020-12-09 04:22:00', '2020-12-11 12:53:23', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 880.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"22000\"}]', NULL, 0.00, 0),
(50, 'PL BLUE', '<p>PL BLUE</p>', 1000.00, 'products/December2020/dWqb1aFgCyBu5h0gAtQG.png', NULL, '2020-12-09 04:23:00', '2020-12-11 12:51:17', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 800.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"20000\"}]', NULL, 0.00, 0),
(51, 'PL FLU GREEN', '<p>PL FLU GREEN</p>', 1200.00, 'products/December2020/6u9dJjkiSh2ZAXoWXx16.png', NULL, '2020-12-09 04:25:00', '2020-12-11 12:48:52', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 960.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"24000\"}]', NULL, 0.00, 0),
(52, 'PL YELLOW', '<p>PL YELLOW</p>', 1000.00, 'products/December2020/M3N6GHujSpQX2FlpRXwB.png', NULL, '2020-12-09 04:27:00', '2020-12-11 12:42:11', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 800.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"20000\"}]', NULL, 0.00, 0),
(53, 'PL FLU RED', '<p>PL FLU RED&nbsp;</p>', 1200.00, 'products/December2020/thJGX3ALr149pRgQcpAV.png', NULL, '2020-12-09 04:31:00', '2020-12-11 12:44:17', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 960.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"24000\"}]', NULL, 0.00, 0),
(54, 'PL ORANGE', '<p>PL ORANGE</p>', 1000.00, 'products/December2020/r357OID7vZOCJEmabRXa.png', NULL, '2020-12-09 04:34:00', '2020-12-11 12:40:42', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 800.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"20000\"}]', NULL, 0.00, 0),
(55, 'PL CLEAR BASE', '<p>PL CLEAR BASE</p>', 1000.00, 'products/December2020/gudF0NPwO0Qz1fj6xePB.png', NULL, '2020-12-09 04:36:00', '2020-12-11 12:37:38', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 800.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"20000\"}]', NULL, 0.00, 0),
(56, 'PL MATALIC SILVER', '<p>PL MATALIC SILVER</p>', 1200.00, 'products/December2020/eOprh0UPrbpX2uPlxYJY.png', NULL, '2020-12-09 04:39:00', '2020-12-11 12:36:13', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 960.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"24000\"}]', NULL, 0.00, 0),
(57, 'PL MATALIC GOLD', '<p>PL MATALIC GOLD</p>', 1200.00, 'products/December2020/MLbu0PNEGE94yz0BMYlK.png', NULL, '2020-12-09 04:40:00', '2020-12-11 12:34:44', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 960.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"24000\"}]', NULL, 0.00, 0),
(58, 'PL FLU YELLOW', '<p>PL FLU YELLOW</p>', 1200.00, 'products/December2020/JbDnDkInNHAgKlLh9DRW.png', NULL, '2020-12-09 04:42:00', '2020-12-11 12:33:00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 960.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"24000\"}]', NULL, 0.00, 0),
(59, 'PL POLY WHITE', '<p>PL POLY WHITE</p>', 800.00, 'products/December2020/DWrdcM0Njj8a5SbaJyAk.png', NULL, '2020-12-09 04:44:00', '2020-12-11 12:30:43', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 640.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"16000\"}]', NULL, 0.00, 0),
(60, 'TABLE GUM', '<p>TABLE GUM</p>', 450.00, 'products/December2020/QkY52sm4mwt57XatgGJv.png', NULL, '2020-12-10 01:52:00', '2020-12-11 12:28:22', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 360.00, '[{\"size\":\"20kg\",\"color\":null,\"sku\":null,\"price\":\"9000\"}]', NULL, 0.00, 0),
(61, 'HYBRID LM WHITE BASE', '<p>HYBRID LM WHITE BASE</p>', 650.00, 'products/January2021/quiLgnB7zl72fbjMce3W.png', NULL, '2020-12-10 01:56:00', '2021-01-09 00:34:17', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 520.00, '[{\"size\":\"1\",\"color\":null,\"sku\":null,\"price\":\"650\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"13000\"},{\"size\":\"30 KG\",\"color\":null,\"sku\":null,\"price\":\"19500\"}]', 0, 0.00, 0),
(62, 'HYBRID LM CLEAR BASE', '<p>HYBRID LM CLEAR BASE</p>', 650.00, 'products/January2021/aZvOvPJAmDAE2uVRSDyD.png', NULL, '2020-12-10 01:59:00', '2021-01-09 00:32:09', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 520.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"650\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"13000\"},{\"size\":\"30KG\",\"color\":null,\"sku\":null,\"price\":\"19500\"}]', NULL, 0.00, 0),
(63, 'HYBRID TB CLEAR BASE', '<p>HYBRID TB CLEAR BASE</p>', 450.00, 'products/January2021/RBKSxLPX2kNet6CFbGy5.png', NULL, '2020-12-10 02:02:00', '2021-01-09 01:02:05', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 360.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"450\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"9000\"},{\"size\":\"30KG\",\"color\":null,\"sku\":null,\"price\":\"13500\"}]', 0, 0.00, 0),
(64, 'HYBRID TB WHITE BASE', '<p>HYBRID TB WHITE BASE</p>', 450.00, 'products/January2021/TIvPWfklpynLCcM5NGO7.png', NULL, '2020-12-10 02:04:00', '2021-01-09 00:54:04', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 360.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"450\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"9000\"},{\"size\":\"30KG\",\"color\":null,\"sku\":null,\"price\":\"13500\"}]', 0, 0.00, 0),
(65, 'HYBRID PRINTING BASE 2', '<p>HYBRID PRINTING BASE 2</p>', 350.00, 'products/January2021/iG71GgMl0d7tsc35bcRB.png', NULL, '2020-12-10 02:08:00', '2021-01-09 01:17:25', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 280.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"350\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"10500\"}]', NULL, 0.00, 0),
(70, 'PL REDUCER', '<p>PL REDUCER</p>', 1200.00, 'products/December2020/5ijpYDnAuXmRTAFe6FpF.png', NULL, '2020-12-14 00:17:48', '2020-12-14 00:17:48', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 955.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1200\"},{\"size\":\"5KG\",\"color\":null,\"sku\":null,\"price\":\"6000\"}]', NULL, 0.00, 0),
(71, 'FRAME ADHESIVE', '<p>FRAME ADHESIVE&nbsp;</p>', 1100.00, 'products/December2020/FR1p5pQ36v1B4BqtYlik.jpg', NULL, '2020-12-14 00:29:22', '2020-12-14 00:29:22', 0, 1, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 900.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1100\"},{\"size\":\"3.8 KG\",\"color\":null,\"sku\":null,\"price\":\"4180\"}]', NULL, 0.00, 0),
(72, 'FRAME ADHESIVE CT', '<p>FRAME ADHESIVE CT</p>', 600.00, 'products/December2020/72fbQ7RtDtjcdQ9KWpet.jpg', NULL, '2020-12-14 00:33:15', '2020-12-14 00:33:15', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 900.00, '[{\"size\":\"0.8KG\",\"color\":null,\"sku\":null,\"price\":\"600\"}]', NULL, 0.00, 0),
(73, 'Hybrid Flock Adhesive', '<p>Hybrid Flock Adhesive</p>', 950.00, 'products/December2020/eY9uQZT62TWK9mBzocSi.png', NULL, '2020-12-14 01:07:53', '2020-12-14 01:07:53', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 500.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"950\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"19000\"}]', NULL, 0.00, 0),
(74, 'Hybrid Foil Adhesive', '<p>Hybrid Foil Adhesive</p>', 1200.00, 'products/December2020/CdoyW9BasTWvHQSsXIyv.png', NULL, '2020-12-14 01:12:55', '2020-12-14 01:12:55', 0, 0, NULL, NULL, NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/w-9jFBqV4t0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, '[]', 100, 900.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1200\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"24000\"}]', NULL, 0.00, 0),
(75, 'LM OPTIC WHITE', '<p>LM OPTIC WHITE&nbsp;</p>', 650.00, 'products/January2021/drlTxLc5upqCklnzn5ij.png', NULL, '2020-12-14 01:39:00', '2021-01-09 01:08:31', 0, 0, NULL, NULL, 5, 1, NULL, 0, '[]', 100, 500.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"650\"},{\"size\":\"30KG\",\"color\":null,\"sku\":null,\"price\":\"19500\"}]', NULL, 0.00, 0),
(79, 'HM CLEAR BASE', '<p>HM CLEAR BASE&nbsp;</p>', 850.00, 'products/January2021/7W8FhijnrLYbgakTbJ7c.png', NULL, '2020-12-20 22:48:00', '2021-01-09 00:24:37', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 650.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"850\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"17000\"},{\"size\":\"30KG\",\"color\":null,\"sku\":null,\"price\":\"25500\"}]', NULL, 0.00, 0),
(80, 'HM WHITE BASE', '<p>HM WHITE BASE</p>', 850.00, 'products/January2021/0djR4mtHuNjxuxxKTrq0.png', NULL, '2020-12-20 22:56:00', '2021-01-09 00:26:21', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 650.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"850\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"17000\"},{\"size\":\"30KG\",\"color\":null,\"sku\":null,\"price\":\"25500\"}]', 0, 0.00, 0),
(81, '5960 WHITE', '<p>5960 WHITE</p>', 1800.00, 'products/December2020/PvHt7oLErkIBzvPMjm3Q.png', NULL, '2020-12-20 23:00:38', '2020-12-20 23:00:38', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1440.00, '[{\"size\":\"1 KG\",\"color\":null,\"sku\":null,\"price\":\"1800\"},{\"size\":\"24 KG\",\"color\":null,\"sku\":null,\"price\":\"43200\"}]', NULL, 0.00, 0),
(82, '5955 LITHO WHITE', '<p>5955 LITHO WHITE</p>', 1850.00, 'products/December2020/Ma2MYTApUZb7SkiPMKVh.png', NULL, '2020-12-20 23:06:55', '2020-12-20 23:06:55', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1480.00, '[{\"size\":\"1 KG\",\"color\":\"WHITE\",\"sku\":\"5955\",\"price\":\"1850\"},{\"size\":\"24\",\"color\":\"WHITE\",\"sku\":\"5955\",\"price\":\"44400\"}]', NULL, 0.00, 0),
(83, 'LIGHT BLUE', '<p>LIGHT BLUE</p>', 2400.00, 'products/December2020/YXMXeH4l3tdPXjp1WQtw.png', NULL, '2020-12-20 23:17:06', '2020-12-20 23:17:06', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1920.00, '[{\"size\":\"1 KG\",\"color\":\"LIGHT BLUE\",\"sku\":null,\"price\":\"2400\"},{\"size\":\"24 KG\",\"color\":\"LIGHT BLUE\",\"sku\":null,\"price\":\"57600\"}]', NULL, 0.00, 0),
(84, 'LIGHT GOLD', '<p>LIGHT GOLD</p>', 2400.00, 'products/December2020/zeyBmtTnZRvHrJHRRkQm.png', NULL, '2020-12-20 23:22:06', '2020-12-20 23:22:06', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1920.00, '[{\"size\":\"1 KG\",\"color\":\"LIGHT GOLD\",\"sku\":null,\"price\":\"2400\"},{\"size\":\"24 KG\",\"color\":\"LIGHT GOLD\",\"sku\":null,\"price\":\"57600\"}]', NULL, 0.00, 0),
(85, 'BRIGHT GREEN', '<p>BRIGHT GREEN</p>', 2500.00, 'products/December2020/kHp5glTlMIEjkiH1ooNg.png', NULL, '2020-12-20 23:27:45', '2020-12-20 23:27:45', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 2000.00, '[{\"size\":\"1 KG\",\"color\":\"BRIGHT GREEN\",\"sku\":null,\"price\":\"2500\"},{\"size\":\"18 KG\",\"color\":\"BRIGHT GREEN\",\"sku\":null,\"price\":\"45000\"}]', NULL, 0.00, 0),
(86, '5900 OFF WHITE', '<p>5900 OFF WHITE</p>', 1870.00, 'products/December2020/Jl39yGonpFNe4tCO6oKl.png', NULL, '2020-12-20 23:42:29', '2020-12-20 23:42:29', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1496.00, '[{\"size\":\"1 KG\",\"color\":\"OFF WHITE\",\"sku\":\"5900\",\"price\":\"1870\"},{\"size\":\"24 KG\",\"color\":\"OFF WHITE\",\"sku\":\"5900\",\"price\":\"44880\"}]', NULL, 0.00, 0),
(87, '5904 WHITE TRANS BASE', '<p>5904 WHITE TRANS BASE&nbsp;</p>', 1700.00, 'products/December2020/0RLitjisRFXRWglODWp8.png', NULL, '2020-12-21 00:23:18', '2020-12-21 00:23:18', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1360.00, '[{\"size\":\"1 KG\",\"color\":\"WHITE\",\"sku\":\"5904\",\"price\":\"1700\"},{\"size\":\"24 KG\",\"color\":\"WHITE\",\"sku\":\"5904\",\"price\":\"40800\"}]', NULL, 0.00, 0),
(91, 'HYBRID  STRIETCH', '<p>HYBRID&nbsp; STRIETCH</p>', 650.00, 'products/December2020/Uwol54IXciRB7NaDEwow.jpg', NULL, '2020-12-21 00:50:21', '2020-12-21 00:50:21', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 550.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"650\"},{\"size\":\"30KG\",\"color\":null,\"sku\":null,\"price\":\"19500\"}]', NULL, 0.00, 0),
(92, '5150 AQUAFIX FIXATIVE', '<p>5150 AQUAFIX FIXATIVE</p>', 6800.00, 'products/December2020/1pqhXLPtaF9pKbWfPI3I.png', NULL, '2020-12-21 00:52:29', '2020-12-21 00:52:29', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 5440.00, '[{\"size\":\"1 KG\",\"color\":null,\"sku\":\"5150\",\"price\":\"6800\"},{\"size\":\"3.8 KG\",\"color\":null,\"sku\":\"5150\",\"price\":\"25840\"}]', NULL, 0.00, 0),
(93, '5194 AQUALIFE RETARDER', '<p>5194 AQUALIFE RETARDER</p>', 1800.00, 'products/December2020/Y3yxuHDBpbK2miNPR4ln.png', NULL, '2020-12-21 00:59:16', '2020-12-21 00:59:16', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1440.00, '[{\"size\":\"1 KG\",\"color\":null,\"sku\":\"5194\",\"price\":\"1800\"},{\"size\":\"4 KG\",\"color\":null,\"sku\":\"5194\",\"price\":\"7200\"}]', NULL, 0.00, 0),
(94, '5125 AQUA DEFOAMER', '<p>5125 AQUA DEFOAMER</p>', 1800.00, 'products/December2020/Nnx9K6NlQnZS7svdcBRS.png', NULL, '2020-12-21 01:07:33', '2020-12-21 01:07:33', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1440.00, '[{\"size\":\"1 KG\",\"color\":null,\"sku\":\"5125\",\"price\":\"1800\"},{\"size\":\"3.2\",\"color\":null,\"sku\":\"5125\",\"price\":\"5760\"}]', NULL, 0.00, 0),
(95, 'H-1 SUPERHOLD MEDIUM POWDER', '<p>H-1 SUPERHOLD MEDIUM POWDER</p>', 2600.00, 'products/December2020/ZJVpchzW5Y0yyxY6XU14.jpg', NULL, '2020-12-21 03:10:16', '2020-12-21 03:10:16', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 2080.00, '[{\"size\":\"1 KG\",\"color\":null,\"sku\":null,\"price\":\"2600\"},{\"size\":\"10  KG\",\"color\":null,\"sku\":null,\"price\":\"26000\"}]', NULL, 0.00, 0),
(96, 'NX 6504 MIXING BASE', '<p>NX 6504 MIXING BASE&nbsp;</p>', 2200.00, 'products/December2020/C606n5PBOjpiZ6WEPlGd.jpg', NULL, '2020-12-21 03:18:27', '2020-12-21 03:18:27', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1760.00, '[{\"size\":\"1 KG\",\"color\":null,\"sku\":\"6504\",\"price\":\"2200\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":\"6504\",\"price\":\"44000\"}]', NULL, 0.00, 0),
(97, 'NX 6390 REDUCER', '<p>NX 6390 REDUCER</p>', 1700.00, 'products/December2020/oGrnO5cMsoAehCRJEcsF.jpg', NULL, '2020-12-21 03:22:03', '2020-12-21 03:22:03', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1360.00, '[{\"size\":\"1 KG\",\"color\":null,\"sku\":\"6390\",\"price\":\"1700\"},{\"size\":\"5 KG\",\"color\":null,\"sku\":\"6390\",\"price\":\"8500\"}]', NULL, 0.00, 0),
(98, 'PC RED-X', '<p>PC RED-X</p>', 2950.00, 'products/December2020/EKC8kHcAJSftZHPKWj0s.jpg', NULL, '2020-12-21 03:24:33', '2020-12-21 03:24:33', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 2360.00, '[{\"size\":\"1 KG\",\"color\":null,\"sku\":null,\"price\":\"2950\"},{\"size\":\"18\",\"color\":null,\"sku\":null,\"price\":\"53100\"}]', NULL, 0.00, 0),
(99, 'NX 6582 FAST FLASH WHITE', '<p>NX 6582 FAST FLASH WHITE</p>', 2300.00, 'products/December2020/j87X78tbtgHnaaCbxWZH.jpg', NULL, '2020-12-21 03:29:02', '2020-12-21 03:29:02', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1840.00, '[{\"size\":\"1 KG\",\"color\":\"WHITE\",\"sku\":\"6582\",\"price\":\"2300\"},{\"size\":\"24 KG\",\"color\":\"WHITE\",\"sku\":\"6582\",\"price\":\"55200\"}]', NULL, 0.00, 0),
(100, 'NX 6838 HIGH DENSITY CLEAR BASE', '<p>NX 6838 HIGH DENSITY CLEAR BASE</p>', 2600.00, 'products/December2020/CSB1OScOio03zlWrQzH3.jpg', NULL, '2020-12-21 03:33:36', '2020-12-21 03:33:36', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 2080.00, '[{\"size\":\"1 KG\",\"color\":null,\"sku\":\"6838\",\"price\":\"2600\"},{\"size\":\"18 KG\",\"color\":null,\"sku\":\"6838\",\"price\":\"46800\"}]', NULL, 0.00, 0),
(101, 'STI 7150 SILICON CATALYST', '<p>STI 7150 SILICON CATALYST</p>', 6800.00, 'products/December2020/m80CAhsbzR3cxlGtXfBh.jpg', NULL, '2020-12-21 03:48:00', '2020-12-22 23:44:52', 0, 1, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 5440.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"6800\"}]', NULL, 0.00, 0),
(102, 'THICKENER POWDER', '<p>THICKENER POWDER</p>', 5200.00, 'products/December2020/yLmwJNbGe6CAurmBU0J5.jpg', NULL, '2020-12-21 04:03:04', '2020-12-21 04:03:04', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 4160.00, '[{\"size\":\"1 KG\",\"color\":null,\"sku\":null,\"price\":\"5200\"}]', NULL, 0.00, 0),
(103, 'HT PUFF BASE', '<p>HT PUFF BASE</p>', 1400.00, 'products/December2020/WObXLxnTEbMVsrJdgBjz.png', NULL, '2020-12-22 23:35:10', '2020-12-22 23:35:10', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1100.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1400\"},{\"size\":\"30KG\",\"color\":null,\"sku\":null,\"price\":\"42000\"}]', NULL, 0.00, 0),
(104, 'HYBRID DARKGROUND BASE', '<p>HYBRID DARKGROUND BASE</p>', 700.00, 'products/December2020/4E3sJt8ZrACdMCjU5nK0.png', NULL, '2020-12-22 23:41:57', '2020-12-22 23:41:57', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 500.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"700\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"14000\"}]', NULL, 0.00, 0),
(105, 'PLOY BASE', '<p>PLOY BASE</p>', 1000.00, 'products/December2020/5Ds3I8NzKozlF66uct4S.png', NULL, '2020-12-23 00:08:56', '2020-12-23 00:08:56', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 800.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1000\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"20000\"}]', NULL, 0.00, 0),
(106, 'ED CLEAR BASE', '<p>ED CLEAR BASE</p>', 550.00, 'products/December2020/UP59IOwqxFxGMEbbvjBz.png', NULL, '2020-12-23 00:25:32', '2020-12-23 00:25:32', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 450.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"550\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"11000\"}]', NULL, 0.00, 0),
(107, 'ED WHITE BASE', '<p>ED WHITE BASE&nbsp;</p>', 6000.00, 'products/December2020/O4a2y5xAeirzzenGnrgr.png', NULL, '2020-12-23 00:28:33', '2020-12-23 00:28:33', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 400.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"600\"},{\"size\":null,\"color\":null,\"sku\":null,\"price\":\"11999\"}]', NULL, 0.00, 0),
(108, 'Emulsion Hardner (two part A & B)', '<p><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, Arial, Helvetica, sans-serif; touch-action: manipulation; text-decoration-line: none; transition: all 0.25s ease 0s; display: block; text-align: center;\" href=\"https://wp.echem.com.bd/product/emulsion-hardner-two-part-a-b/\">Emulsion Hardner (two part A &amp; B)</a></p>', 2000.00, 'products/December2020/2DwakHsUhRUbkdkhlNs4.jpg', NULL, '2020-12-23 00:50:48', '2020-12-23 00:50:48', 0, 1, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1600.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"2000\"},{\"size\":\"2KG\",\"color\":null,\"sku\":null,\"price\":\"4000\"}]', NULL, 0.00, 0),
(109, 'Emulsion Remover ( Liquid)', '<p><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, Arial, Helvetica, sans-serif; touch-action: manipulation; color: rgba(51, 51, 51, 0.7); text-decoration-line: none; transition: all 0.25s ease 0s; outline: 0px; display: block; text-align: center;\" href=\"https://wp.echem.com.bd/product/emulsion-remover-liquid/\">Emulsion Remover ( Liquid)</a></p>', 450.00, 'products/December2020/85PwUG6CsCx0fYBbXS4f.jpg', NULL, '2020-12-23 01:05:08', '2020-12-23 01:05:08', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 350.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"450\"}]', NULL, 0.00, 0),
(110, 'Emulsion Hardner (one part)', '<p><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, Arial, Helvetica, sans-serif; touch-action: manipulation; text-decoration-line: none; transition: all 0.25s ease 0s; display: block; text-align: center;\" href=\"https://wp.echem.com.bd/product/emulsion-hardner-one-part/\">Emulsion Hardner (one part)</a></p>', 1050.00, 'products/December2020/KShMdRt7OmXS9CiH2tnU.jpg', NULL, '2020-12-23 01:11:18', '2020-12-23 01:11:18', 0, 1, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 798.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1050\"}]', NULL, 0.00, 0),
(111, 'multiple image', '<p>k</p>', 1200.00, 'products/December2020/LY0xuLFBTLOGZew8O9kT.png', NULL, '2020-12-23 02:20:27', '2020-12-23 02:20:27', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 21, 108.00, '[{\"size\":\"med\",\"color\":\"lol\",\"sku\":null,\"price\":\"54\"}]', NULL, 20.00, 0),
(112, '504 PF MIXING BASE', '<p>504 PF MIXING BASE</p>', 1200.00, 'products/December2020/PnXlJ92oJFoKqj2QrJEG.jpg', NULL, '2020-12-25 22:55:23', '2020-12-25 22:55:23', 0, 1, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1000.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1200\"},{\"size\":\"24 KG\",\"color\":null,\"sku\":null,\"price\":\"28800\"}]', NULL, 0.00, 4),
(113, '555 PF LINTO WHITE', '<p>555 PF LINTO WHITE&nbsp;</p>', 1300.00, 'products/December2020/y7Sdj648wJKEIDC7oloq.jpg', NULL, '2020-12-25 23:01:18', '2020-12-25 23:01:18', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 1000.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1300\"},{\"size\":\"29\",\"color\":null,\"sku\":null,\"price\":\"37700\"}]', NULL, 0.00, 4),
(114, '502 PF REDUCER', '<p>502 PF REDUCER</p>', 1700.00, 'products/December2020/fjnXbIEUi0A86svbCkyJ.jpg', NULL, '2020-12-25 23:14:00', '2020-12-25 23:21:13', 0, 0, NULL, NULL, 5, 1, NULL, 0, '[]', 100, 1400.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1700\"},{\"size\":\"18KG\",\"color\":null,\"sku\":null,\"price\":\"30600\"}]', NULL, 0.00, 0),
(115, '500 PF BLACK', '<p>500 PF BLACK</p>', 1100.00, 'products/December2020/EyBfYBfFeKdJWjULumt0.jpg', NULL, '2020-12-25 23:40:39', '2020-12-25 23:40:39', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 900.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1100\"},{\"size\":\"24 KG\",\"color\":null,\"sku\":null,\"price\":\"26400\"}]', NULL, 0.00, 0),
(116, '841 PF PRINTABLE  ADHESIVE', '<p>841 PF PRINTABLE&nbsp; ADHESIVE&nbsp;</p>', 1500.00, 'products/December2020/bgqWXQVEHR4R7G1zOSZY.jpg', NULL, '2020-12-26 00:02:52', '2020-12-26 00:02:52', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 1200.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1500\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"30000\"}]', NULL, 0.00, 0),
(117, 'PF 97 PUFF', '<p>PF 97 PUFF&nbsp;</p>', 3300.00, 'products/December2020/2F68UEec3bNdVsDoTxlb.jpg', NULL, '2020-12-26 00:09:20', '2020-12-26 00:09:20', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 2500.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"3300\"},{\"size\":\"18 KG\",\"color\":null,\"sku\":null,\"price\":\"59400\"}]', NULL, 0.00, 0),
(118, '835 PF MAXING BASE', '<p>835 PF MAXING BASE</p>', 1950.00, 'products/December2020/fTW08el57DJd7cEcFT4s.jpg', NULL, '2020-12-26 00:19:52', '2020-12-26 00:19:52', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 1600.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1950\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"39000\"}]', NULL, 0.00, 0),
(119, 'STI 7581SILICON WHITE', '<p>STI 7581SILICON WHITE</p>', 2350.00, 'products/December2020/8LjEYGpOqSDbXunXHf1D.jpg', NULL, '2020-12-26 00:25:27', '2020-12-26 00:25:27', 0, 1, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 2000.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"2350\"},{\"size\":\"24 KG\",\"color\":null,\"sku\":null,\"price\":\"56400\"}]', NULL, 0.00, 0),
(120, 'STI 7500 SILICON REDUCER', '<p>STI 7500 SILICON REDUCER</p>', 1950.00, 'products/December2020/ArAu0p3MwmVDg1OGVNQa.jpg', NULL, '2020-12-26 00:50:18', '2020-12-26 00:50:18', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 1600.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"1950\"},{\"size\":\"9 KG\",\"color\":null,\"sku\":null,\"price\":\"17550\"}]', 0, 0.00, 0),
(121, 'STI 7835 MIXING BASE', '<p>STI 7835 MIXING BASE&nbsp;&nbsp;</p>', 2650.00, 'products/December2020/uNUtYfpjlDmf91JQMSHd.jpg', NULL, '2020-12-26 00:56:35', '2020-12-26 00:56:35', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 2300.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"2650\"},{\"size\":\"19 KG\",\"color\":null,\"sku\":null,\"price\":\"50350\"}]', 0, 0.00, 0),
(122, 'STI 7500 ORANGE', '<p>STI 7500 ORANGE&nbsp;</p>', 2900.00, 'products/December2020/KQ9h2jiNeXr1DmoRVi0M.jpg', NULL, '2020-12-26 01:15:11', '2020-12-26 01:15:11', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 2500.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"2900\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"58000\"}]', 0, 0.00, 8),
(123, 'STI 7500 NAVY BLUE', '<p>STI 7500 NAVY BLUE&nbsp;</p>', 2900.00, 'products/December2020/jy5t2AmcpxifHXSOdcKc.jpg', NULL, '2020-12-26 01:44:46', '2020-12-26 01:44:46', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 2400.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"2900\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"5800\"}]', NULL, 0.00, 0),
(124, 'STI 7838 SILICON HIGH DENSITY CLEAR BASE', '<p>STI 7838 SILICON HIGH DENSITY CLEAR BASE&nbsp;</p>', 3000.00, 'products/December2020/PigShI41EIjrULkZK9Xb.jpg', NULL, '2020-12-26 01:47:37', '2020-12-26 01:47:37', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 2500.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"3000\"},{\"size\":\"18 KG\",\"color\":null,\"sku\":null,\"price\":\"54000\"}]', NULL, 0.00, 0),
(125, 'STI 7500  SILICON CANDY RED', '<p>STI 7500&nbsp; SILICON CANDY RED&nbsp;</p>', 29000.00, 'products/December2020/5ZJdeexsVvghiR3eXhS3.jpg', NULL, '2020-12-26 01:51:26', '2020-12-26 01:51:26', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, '[]', 100, 2500.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"2900\"},{\"size\":\"20 KG\",\"color\":null,\"sku\":null,\"price\":\"58000\"}]', NULL, 0.00, 0),
(126, 'Epson AR-T6642 INK ARECOLOR TONER', '<h1 class=\"product_title entry-title\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.2; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 34px; color: #2d2a2a;\">Epson AR-T6642 INK ARECOLOR TONER</h1>', 1500.00, 'products/December2020/SsLqenvev4MDfFNWs3GV.jpg', NULL, '2020-12-27 22:39:48', '2020-12-27 22:39:48', 0, 1, 1, 200, 3, NULL, NULL, 0, '[]', 100, 1300.00, '[{\"size\":\"1PACK\",\"color\":\"BLACK\",\"sku\":null,\"price\":\"1500\"}]', NULL, 0.00, 8),
(127, 'Epson AR-T6732 ARECOLOR TONER', '<h1 class=\"product_title entry-title\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.2; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 34px; color: #2d2a2a;\">Epson AR-T6732 ARECOLOR TONER</h1>', 150.00, 'products/December2020/Nq2TaDg0Ex1YDATeKExK.jpg', NULL, '2020-12-27 23:36:37', '2020-12-27 23:36:37', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 1300.00, '[{\"size\":\"1PACK\",\"color\":\"BLACK\",\"sku\":null,\"price\":\"1500\"}]', NULL, 0.00, 8),
(128, 'Epson LQ-2090 ARECOLOR TONER', '<p style=\"text-align: left;\"><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, Arial, Helvetica, sans-serif; touch-action: manipulation; text-decoration-line: none; transition: all 0.25s ease 0s; display: block; text-align: center;\" href=\"https://wp.echem.com.bd/product/epson-lq-2090-arecolor-toner/\">Epson LQ-2090 ARECOLOR TONER</a></p>', 400.00, 'products/December2020/YiJGUe2ue2WVovFafr11.jpg', NULL, '2020-12-27 23:47:27', '2020-12-27 23:47:27', 0, 0, 1, 200, 5, NULL, NULL, 0, '[]', 100, 1300.00, '[{\"size\":\"1PACK\",\"color\":\"BLACK\",\"sku\":null,\"price\":\"1500\"}]', NULL, 0.00, 8),
(129, 'Epson LQ-2190 ARECOLOR TONER', '<p><strong><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, Arial, Helvetica, sans-serif; touch-action: manipulation; text-decoration-line: none; transition: all 0.25s ease 0s; text-align: center; display: inline !important;\" href=\"https://wp.echem.com.bd/product/epson-lq-2190-arecolor-toner/\">Epson LQ-2190 ARECOLOR TONER</a></strong></p>', 450.00, 'products/December2020/1c0BAuyZavycxqYiFNNn.jpg', NULL, '2020-12-27 23:59:37', '2020-12-27 23:59:37', 0, 0, 2, NULL, 5, NULL, NULL, 0, '[]', 100, 350.00, '[{\"size\":\"1PACK\",\"color\":\"BLACK\",\"sku\":null,\"price\":\"450\"}]', NULL, 0.00, 8),
(130, 'Epson LQ-300+ ARECOLOR TONER', '<p><a style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, Arial, Helvetica, sans-serif; touch-action: manipulation; text-decoration-line: none; transition: all 0.25s ease 0s; display: block; text-align: center;\" href=\"https://wp.echem.com.bd/product/epson-lq-300-arecolor-toner/\">Epson LQ-300+ ARECOLOR TONER</a></p>', 160.00, 'products/December2020/TP8WNdf9Am3RpF6dSqST.jpg', NULL, '2020-12-28 00:34:31', '2020-12-28 00:34:31', 0, 0, 1, NULL, NULL, NULL, NULL, 0, '[]', 100, 150.00, '[{\"size\":\"1PACK\",\"color\":\"BLACK\",\"sku\":null,\"price\":\"160\"}]', NULL, 0.00, 8),
(131, 'EP Fuschia', '<p>EP Fuschia&nbsp;</p>', 2550.00, 'products/January2021/sQZuyqmfZUnvisAPV4XG.jpg', NULL, '2021-01-08 23:09:00', '2021-03-02 23:38:02', 0, 0, NULL, NULL, 5, NULL, NULL, 0, '[]', 100, 2000.00, '[{\"size\":\"1KG\",\"color\":null,\"sku\":null,\"price\":\"2550\"},{\"size\":\"5KG\",\"color\":null,\"sku\":null,\"price\":\"12750\"}]', 0, 0.00, 4),
(132, '996 Process Color', '<h1 class=\"product_title entry-title\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.2; font-family: Poppins, Arial, Helvetica, sans-serif; font-size: 34px; color: #2d2a2a;\"><span style=\"color: #777777; font-family: Lato, Arial, Helvetica, sans-serif; font-size: 14px; font-weight: 400;\">4 Color Process</span></h1>', 60000.00, 'products/January2021/Ihc6L04bYrDqfgxBuUJc.jpg', NULL, '2021-01-09 02:10:00', '2021-03-02 06:59:44', 0, 0, 5, 30000, 5, NULL, NULL, 0, '[]', 100, 50000.00, '[{\"size\":\"large\",\"color\":\"blue\",\"sku\":\"lol\",\"price\":\"650\"},{\"size\":\"meidum\",\"color\":\"yellow\",\"sku\":\"gth\",\"price\":\"4550\"}]', 2, 10.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `size`, `price`, `SKU`, `status`, `created_at`, `updated_at`, `color`) VALUES
(1, 1, 'large', 4500.00, 'lolkd', 1, '2020-12-08 00:19:46', '2020-12-08 00:19:46', NULL),
(2, 1, 'Medium', 3200.00, '5456fg', 1, '2020-12-08 00:19:46', '2020-12-08 00:19:46', NULL),
(3, 2, 'medium', 4500.00, '1231hmk', 1, '2020-12-08 00:26:09', '2020-12-08 00:26:09', NULL),
(4, 5, '5kg', 25000.00, '101', 1, '2020-12-08 08:14:07', '2020-12-08 08:14:07', NULL),
(5, 7, 'large', 4500.00, NULL, 1, '2020-12-08 09:27:59', '2020-12-08 09:27:59', NULL),
(6, 8, 'medium', 1200.00, NULL, 1, '2020-12-08 09:31:00', '2020-12-08 09:31:00', NULL),
(7, 8, 'small', 1000.00, NULL, 1, '2020-12-08 09:31:00', '2020-12-08 09:31:00', NULL),
(8, 8, 'medium', 1200.00, NULL, 1, '2020-12-08 09:36:24', '2020-12-08 09:36:24', NULL),
(9, 8, 'small', 1000.00, NULL, 1, '2020-12-08 09:36:24', '2020-12-08 09:36:24', NULL),
(10, 7, 'large', 4500.00, NULL, 1, '2020-12-08 09:36:59', '2020-12-08 09:36:59', NULL),
(11, 8, 'medium', 1200.00, NULL, 1, '2020-12-08 11:26:21', '2020-12-08 11:26:21', NULL),
(12, 8, 'small', 1000.00, NULL, 1, '2020-12-08 11:26:21', '2020-12-08 11:26:21', NULL),
(13, 9, '20 Kg', 21000.00, NULL, 1, '2020-12-08 23:02:01', '2020-12-08 23:02:01', NULL),
(14, 9, '30 Kg', 31500.00, NULL, 1, '2020-12-08 23:02:01', '2020-12-08 23:02:01', NULL),
(15, 10, '5 Kg', 5250.00, NULL, 1, '2020-12-08 23:06:31', '2020-12-08 23:06:31', NULL),
(16, 10, '10 Kg', 10500.00, NULL, 1, '2020-12-08 23:06:31', '2020-12-08 23:06:31', NULL),
(17, 11, '20 Kg', 130000.00, NULL, 1, '2020-12-08 23:11:55', '2020-12-08 23:11:55', NULL),
(18, 12, '30 Kg', 31500.00, NULL, 1, '2020-12-08 23:14:00', '2020-12-08 23:14:00', NULL),
(19, 13, '60', 18000.00, NULL, 1, '2020-12-08 23:17:18', '2020-12-08 23:17:18', NULL),
(20, 14, 'large', 4500.00, NULL, 1, '2020-12-09 00:52:39', '2020-12-09 00:52:39', NULL),
(21, 15, 'meidum', 1200.00, '312ff', 1, '2020-12-09 00:57:11', '2020-12-09 00:57:11', NULL),
(22, 16, 'meidum', 1200.00, '312ff', 1, '2020-12-09 00:59:10', '2020-12-09 00:59:10', NULL),
(23, 17, 'meidum', 1200.00, '312ff', 1, '2020-12-09 01:00:25', '2020-12-09 01:00:25', NULL),
(24, 18, 'meidum', 1200.00, NULL, 1, '2020-12-09 01:03:06', '2020-12-09 01:03:06', NULL),
(25, 19, '5KG', 12750.00, NULL, 1, '2020-12-09 01:03:18', '2020-12-09 01:03:18', NULL),
(26, 20, 'small', 1200.00, NULL, 1, '2020-12-09 01:04:59', '2020-12-09 01:04:59', NULL),
(27, 21, '5KG', 8000.00, NULL, 1, '2020-12-09 01:14:24', '2020-12-09 01:14:24', NULL),
(28, 22, '5KG', 8500.00, NULL, 1, '2020-12-09 01:19:41', '2020-12-09 01:19:41', NULL),
(29, 23, '5KG', 8000.00, NULL, 1, '2020-12-09 01:22:20', '2020-12-09 01:22:20', NULL),
(30, 24, '5KG', 7750.00, NULL, 1, '2020-12-09 01:26:09', '2020-12-09 01:26:09', NULL),
(31, 25, '5KG', 12750.00, NULL, 1, '2020-12-09 01:31:23', '2020-12-09 01:31:23', NULL),
(32, 26, '5KG', 8400.00, NULL, 1, '2020-12-09 01:35:19', '2020-12-09 01:35:19', NULL),
(33, 27, '5KG', 12750.00, NULL, 1, '2020-12-09 01:40:30', '2020-12-09 01:40:30', NULL),
(34, 28, '5KG', 12750.00, NULL, 1, '2020-12-09 01:47:23', '2020-12-09 01:47:23', NULL),
(35, 29, '5KG', 7750.00, NULL, 1, '2020-12-09 02:16:47', '2020-12-09 02:16:47', NULL),
(36, 30, '5KG', 0.00, NULL, 1, '2020-12-09 02:25:59', '2020-12-09 02:25:59', NULL),
(37, 32, '5KG', 0.00, NULL, 1, '2020-12-09 02:30:50', '2020-12-09 02:30:50', NULL),
(38, 33, '5KG', 0.00, NULL, 1, '2020-12-09 02:34:10', '2020-12-09 02:34:10', NULL),
(39, 34, '5KG', 8250.00, NULL, 1, '2020-12-09 02:38:18', '2020-12-09 02:38:18', NULL),
(40, 35, '5KG', 7500.00, NULL, 1, '2020-12-09 02:42:04', '2020-12-09 02:42:04', NULL),
(41, 36, '5KG', 8250.00, NULL, 1, '2020-12-09 02:45:36', '2020-12-09 02:45:36', NULL),
(42, 37, '5KG', 7500.00, NULL, 1, '2020-12-09 02:50:29', '2020-12-09 02:50:29', NULL),
(43, 38, '5KG', 0.00, NULL, 1, '2020-12-09 02:53:59', '2020-12-09 02:53:59', NULL),
(44, 39, '5KG', 12750.00, NULL, 1, '2020-12-09 02:57:04', '2020-12-09 02:57:04', NULL),
(45, 40, '10 Kg', 8000.00, NULL, 1, '2020-12-09 03:52:54', '2020-12-09 03:52:54', NULL),
(46, 41, '10 Kg', 9000.00, NULL, 1, '2020-12-09 03:57:46', '2020-12-09 03:57:46', NULL),
(47, 42, '10 Kg', 8000.00, NULL, 1, '2020-12-09 04:00:44', '2020-12-09 04:00:44', NULL),
(48, 43, '20 Kg', 30000.00, NULL, 1, '2020-12-09 04:06:00', '2020-12-09 04:06:00', NULL),
(49, 44, '20 Kg', 28000.00, NULL, 1, '2020-12-09 04:08:16', '2020-12-09 04:08:16', NULL),
(50, 45, '20 Kg', 20000.00, NULL, 1, '2020-12-09 04:12:50', '2020-12-09 04:12:50', NULL),
(51, 46, '20 Kg', 20000.00, NULL, 1, '2020-12-09 04:14:36', '2020-12-09 04:14:36', NULL),
(52, 47, '20 Kg', 24000.00, NULL, 1, '2020-12-09 04:16:37', '2020-12-09 04:16:37', NULL),
(53, 48, '20 Kg', 24000.00, NULL, 1, '2020-12-09 04:18:51', '2020-12-09 04:18:51', NULL),
(54, 49, '20 Kg', 22000.00, NULL, 1, '2020-12-09 04:22:04', '2020-12-09 04:22:04', NULL),
(55, 50, '20 Kg', 16000.00, NULL, 1, '2020-12-09 04:23:53', '2020-12-09 04:23:53', NULL),
(56, 51, '20 Kg', 24000.00, NULL, 1, '2020-12-09 04:25:38', '2020-12-09 04:25:38', NULL),
(57, 52, '20 Kg', 20000.00, NULL, 1, '2020-12-09 04:27:34', '2020-12-09 04:27:34', NULL),
(58, 50, '20 Kg', 20000.00, NULL, 1, '2020-12-09 04:28:58', '2020-12-09 04:28:58', NULL),
(59, 53, '20 Kg', 24000.00, NULL, 1, '2020-12-09 04:31:39', '2020-12-09 04:31:39', NULL),
(60, 54, '20 Kg', 20000.00, NULL, 1, '2020-12-09 04:34:09', '2020-12-09 04:34:09', NULL),
(61, 55, '20 Kg', 20000.00, NULL, 1, '2020-12-09 04:36:07', '2020-12-09 04:36:07', NULL),
(62, 56, '20 Kg', 24000.00, NULL, 1, '2020-12-09 04:39:06', '2020-12-09 04:39:06', NULL),
(63, 57, '20 Kg', 24000.00, NULL, 1, '2020-12-09 04:40:32', '2020-12-09 04:40:32', NULL),
(64, 58, '20 Kg', 24000.00, NULL, 1, '2020-12-09 04:42:03', '2020-12-09 04:42:03', NULL),
(65, 59, '20 Kg', 16000.00, NULL, 1, '2020-12-09 04:44:32', '2020-12-09 04:44:32', NULL),
(66, 60, '20 Kg', 9000.00, NULL, 1, '2020-12-10 01:52:22', '2020-12-10 01:52:22', NULL),
(67, 61, '30 Kg', 19500.00, NULL, 1, '2020-12-10 01:56:11', '2020-12-10 01:56:11', NULL),
(68, 61, '20 Kg', 13000.00, NULL, 1, '2020-12-10 01:56:11', '2020-12-10 01:56:11', NULL),
(69, 62, '30 Kg', 19500.00, NULL, 1, '2020-12-10 01:59:27', '2020-12-10 01:59:27', NULL),
(70, 62, '20 Kg', 13000.00, NULL, 1, '2020-12-10 01:59:27', '2020-12-10 01:59:27', NULL),
(71, 63, '30 Kg', 13500.00, NULL, 1, '2020-12-10 02:02:09', '2020-12-10 02:02:09', NULL),
(72, 63, '20 Kg', 9000.00, NULL, 1, '2020-12-10 02:02:09', '2020-12-10 02:02:09', NULL),
(73, 64, '30 Kg', 13500.00, NULL, 1, '2020-12-10 02:04:44', '2020-12-10 02:04:44', NULL),
(74, 64, '20 Kg', 9000.00, NULL, 1, '2020-12-10 02:04:44', '2020-12-10 02:04:44', NULL),
(75, 65, '30 Kg', 10500.00, NULL, 1, '2020-12-10 02:08:11', '2020-12-10 02:08:11', NULL),
(76, 65, '20 Kg', 7000.00, NULL, 1, '2020-12-10 02:08:11', '2020-12-10 02:08:11', NULL),
(77, 65, '20kg', 7000.00, NULL, 1, '2020-12-11 12:11:51', '2020-12-11 12:11:51', NULL),
(78, 65, '30kg', 10500.00, NULL, 1, '2020-12-11 12:11:51', '2020-12-11 12:11:51', NULL),
(79, 64, '20kg', 9000.00, NULL, 1, '2020-12-11 12:15:32', '2020-12-11 12:15:32', NULL),
(80, 64, '30kg', 13500.00, NULL, 1, '2020-12-11 12:15:32', '2020-12-11 12:15:32', NULL),
(81, 63, '20kg', 9000.00, NULL, 1, '2020-12-11 12:17:20', '2020-12-11 12:17:20', NULL),
(82, 63, '30kg', 13500.00, NULL, 1, '2020-12-11 12:17:20', '2020-12-11 12:17:20', NULL),
(83, 62, '20kg', 13000.00, NULL, 1, '2020-12-11 12:24:46', '2020-12-11 12:24:46', NULL),
(84, 62, '30kg', 19500.00, NULL, 1, '2020-12-11 12:24:46', '2020-12-11 12:24:46', NULL),
(85, 61, '20kg', 13000.00, NULL, 1, '2020-12-11 12:26:26', '2020-12-11 12:26:26', NULL),
(86, 61, '30kg', 19500.00, NULL, 1, '2020-12-11 12:26:26', '2020-12-11 12:26:26', NULL),
(87, 60, '20kg', 9000.00, NULL, 1, '2020-12-11 12:28:22', '2020-12-11 12:28:22', NULL),
(88, 59, '20kg', 16000.00, NULL, 1, '2020-12-11 12:30:43', '2020-12-11 12:30:43', NULL),
(89, 58, '20kg', 24000.00, NULL, 1, '2020-12-11 12:33:00', '2020-12-11 12:33:00', NULL),
(90, 57, '20kg', 24000.00, NULL, 1, '2020-12-11 12:34:44', '2020-12-11 12:34:44', NULL),
(91, 56, '20kg', 24000.00, NULL, 1, '2020-12-11 12:36:13', '2020-12-11 12:36:13', NULL),
(92, 55, '20kg', 20000.00, NULL, 1, '2020-12-11 12:37:38', '2020-12-11 12:37:38', NULL),
(93, 54, '20kg', 20000.00, NULL, 1, '2020-12-11 12:40:42', '2020-12-11 12:40:42', NULL),
(94, 52, '20kg', 20000.00, NULL, 1, '2020-12-11 12:42:11', '2020-12-11 12:42:11', NULL),
(95, 53, '20kg', 24000.00, NULL, 1, '2020-12-11 12:44:17', '2020-12-11 12:44:17', NULL),
(96, 51, '20kg', 24000.00, NULL, 1, '2020-12-11 12:48:52', '2020-12-11 12:48:52', NULL),
(97, 50, '20kg', 20000.00, NULL, 1, '2020-12-11 12:51:17', '2020-12-11 12:51:17', NULL),
(98, 49, '20kg', 22000.00, NULL, 1, '2020-12-11 12:53:23', '2020-12-11 12:53:23', NULL),
(99, 48, '20kg', 24000.00, NULL, 1, '2020-12-11 12:55:22', '2020-12-11 12:55:22', NULL),
(100, 47, '20kg', 24000.00, NULL, 1, '2020-12-11 13:01:55', '2020-12-11 13:01:55', NULL),
(101, 46, '20kg', 20000.00, NULL, 1, '2020-12-11 13:03:03', '2020-12-11 13:03:03', NULL),
(102, 45, '20kg', 20000.00, NULL, 1, '2020-12-11 13:05:59', '2020-12-11 13:05:59', NULL),
(103, 44, '20kg', 28000.00, NULL, 1, '2020-12-11 13:07:41', '2020-12-11 13:07:41', NULL),
(104, 43, '20kg', 30000.00, NULL, 1, '2020-12-11 13:10:54', '2020-12-11 13:10:54', NULL),
(105, 42, '10kg', 8000.00, NULL, 1, '2020-12-11 13:14:15', '2020-12-11 13:14:15', NULL),
(106, 41, '10kg', 9000.00, NULL, 1, '2020-12-11 13:16:42', '2020-12-11 13:16:42', NULL),
(107, 40, '10kg', 8000.00, NULL, 1, '2020-12-11 13:20:38', '2020-12-11 13:20:38', NULL),
(108, 13, '60\"', 18000.00, NULL, 1, '2020-12-11 13:34:07', '2020-12-11 13:34:07', NULL),
(109, 12, '30kg', 31500.00, NULL, 1, '2020-12-11 13:38:44', '2020-12-11 13:38:44', NULL),
(110, 11, '20kg', 130000.00, NULL, 1, '2020-12-11 13:42:53', '2020-12-11 13:42:53', NULL),
(111, 10, '5kg', 5250.00, NULL, 1, '2020-12-11 13:49:21', '2020-12-11 13:49:21', NULL),
(112, 10, '10kg', 10500.00, NULL, 1, '2020-12-11 13:49:21', '2020-12-11 13:49:21', NULL),
(113, 9, '20kg', 21000.00, NULL, 1, '2020-12-11 13:53:40', '2020-12-11 13:53:40', NULL),
(114, 9, '30kg', 31500.00, NULL, 1, '2020-12-11 13:53:40', '2020-12-11 13:53:40', NULL),
(115, 39, '5KG', 12750.00, NULL, 1, '2020-12-11 23:59:29', '2020-12-11 23:59:29', NULL),
(116, 38, '5KG', 0.00, NULL, 1, '2020-12-12 00:09:18', '2020-12-12 00:09:18', NULL),
(117, 37, '5KG', 7500.00, NULL, 1, '2020-12-12 00:32:04', '2020-12-12 00:32:04', NULL),
(118, 36, '5KG', 8250.00, NULL, 1, '2020-12-12 00:34:07', '2020-12-12 00:34:07', NULL),
(119, 35, '5KG', 7500.00, NULL, 1, '2020-12-12 00:35:03', '2020-12-12 00:35:03', NULL),
(120, 34, '5KG', 8250.00, NULL, 1, '2020-12-12 00:36:09', '2020-12-12 00:36:09', NULL),
(121, 33, '5KG', 0.00, NULL, 1, '2020-12-12 00:37:11', '2020-12-12 00:37:11', NULL),
(122, 32, '5KG', 0.00, NULL, 1, '2020-12-12 00:38:52', '2020-12-12 00:38:52', NULL),
(123, 30, '5KG', 0.00, NULL, 1, '2020-12-12 00:39:35', '2020-12-12 00:39:35', NULL),
(124, 29, '5KG', 7750.00, NULL, 1, '2020-12-12 00:41:12', '2020-12-12 00:41:12', NULL),
(125, 28, '5KG', 12750.00, NULL, 1, '2020-12-12 00:42:29', '2020-12-12 00:42:29', NULL),
(126, 27, '5KG', 12750.00, NULL, 1, '2020-12-12 00:43:14', '2020-12-12 00:43:14', NULL),
(127, 26, '5KG', 8400.00, NULL, 1, '2020-12-12 00:51:30', '2020-12-12 00:51:30', NULL),
(128, 25, '5KG', 12750.00, NULL, 1, '2020-12-12 00:53:59', '2020-12-12 00:53:59', NULL),
(129, 24, '5KG', 7750.00, NULL, 1, '2020-12-12 00:55:22', '2020-12-12 00:55:22', NULL),
(130, 23, '5KG', 8000.00, NULL, 1, '2020-12-12 00:56:39', '2020-12-12 00:56:39', NULL),
(131, 22, '5KG', 8500.00, NULL, 1, '2020-12-12 00:58:44', '2020-12-12 00:58:44', NULL),
(132, 21, '5KG', 8000.00, NULL, 1, '2020-12-12 00:59:47', '2020-12-12 00:59:47', NULL),
(133, 19, '5KG', 12750.00, NULL, 1, '2020-12-12 01:02:11', '2020-12-12 01:02:11', NULL),
(134, 65, '20', 7000.00, NULL, 1, '2020-12-12 05:24:28', '2020-12-12 05:24:28', NULL),
(135, 65, '50', 10500.00, NULL, 1, '2020-12-12 05:24:29', '2020-12-12 05:24:29', NULL),
(136, 66, '1KG', 1200.00, NULL, 1, '2020-12-13 23:44:54', '2020-12-13 23:44:54', NULL),
(137, 66, '5KG', 6000.00, NULL, 1, '2020-12-13 23:44:54', '2020-12-13 23:44:54', NULL),
(138, 67, '1KG', 1200.00, NULL, 1, '2020-12-13 23:45:07', '2020-12-13 23:45:07', NULL),
(139, 68, '1KG', 1200.00, NULL, 1, '2020-12-13 23:45:47', '2020-12-13 23:45:47', NULL),
(140, 68, '5KG', 6000.00, NULL, 1, '2020-12-13 23:45:47', '2020-12-13 23:45:47', NULL),
(141, 69, '5', 1200.00, NULL, 1, '2020-12-14 00:04:06', '2020-12-14 00:04:06', NULL),
(142, 69, '6', 2000.00, NULL, 1, '2020-12-14 00:04:06', '2020-12-14 00:04:06', NULL),
(143, 70, '1KG', 1200.00, NULL, 1, '2020-12-14 00:17:48', '2020-12-14 00:17:48', NULL),
(144, 70, '5KG', 6000.00, NULL, 1, '2020-12-14 00:17:48', '2020-12-14 00:17:48', NULL),
(145, 71, '1KG', 1100.00, NULL, 1, '2020-12-14 00:29:22', '2020-12-14 00:29:22', NULL),
(146, 71, '3.8 KG', 4180.00, NULL, 1, '2020-12-14 00:29:22', '2020-12-14 00:29:22', NULL),
(147, 72, '0.8KG', 600.00, NULL, 1, '2020-12-14 00:33:15', '2020-12-14 00:33:15', NULL),
(148, 73, '1KG', 950.00, NULL, 1, '2020-12-14 01:07:53', '2020-12-14 01:07:53', NULL),
(149, 73, '20 KG', 19000.00, NULL, 1, '2020-12-14 01:07:53', '2020-12-14 01:07:53', NULL),
(150, 74, '1KG', 1200.00, NULL, 1, '2020-12-14 01:12:55', '2020-12-14 01:12:55', NULL),
(151, 74, '20 KG', 24000.00, NULL, 1, '2020-12-14 01:12:55', '2020-12-14 01:12:55', NULL),
(152, 75, '1KG', 650.00, NULL, 1, '2020-12-14 01:39:09', '2020-12-14 01:39:09', NULL),
(153, 75, '30KG', 19500.00, NULL, 1, '2020-12-14 01:39:09', '2020-12-14 01:39:09', NULL),
(154, 75, '1KG', 650.00, NULL, 1, '2020-12-14 01:46:50', '2020-12-14 01:46:50', NULL),
(155, 75, '30KG', 19500.00, NULL, 1, '2020-12-14 01:46:50', '2020-12-14 01:46:50', NULL),
(156, 77, 'm', 6000.00, '5', 1, '2020-12-15 12:15:12', '2020-12-15 12:15:12', NULL),
(157, 77, 'none', 4000.00, 's', 1, '2020-12-17 01:09:01', '2020-12-17 01:09:01', NULL),
(158, 77, 'ok', 110.00, NULL, 1, '2020-12-17 02:49:11', '2020-12-17 02:49:11', NULL),
(159, 77, 'm', 4000.00, 'd', 1, '2020-12-17 02:55:34', '2020-12-17 02:55:34', NULL),
(160, 77, 'm', 4000.00, 's', 1, '2020-12-17 03:07:45', '2020-12-17 03:07:45', NULL),
(161, 77, 'm', 400.00, 's', 1, '2020-12-17 03:09:21', '2020-12-17 03:09:21', NULL),
(162, 77, 'vhg', 33.00, 'xzcdzc', 1, '2020-12-17 06:16:15', '2020-12-17 06:16:15', NULL),
(163, 77, 'vhg', 33.00, 'xzcdzc', 1, '2020-12-17 06:16:58', '2020-12-17 06:16:58', NULL),
(164, 77, 'ok', 400.00, NULL, 1, '2020-12-17 07:32:16', '2020-12-17 07:32:16', NULL),
(165, 77, 'm', 4000.00, 's', 1, '2020-12-17 09:07:49', '2020-12-17 09:07:49', NULL),
(166, 77, 'meidum', 1200.00, NULL, 1, '2020-12-17 11:18:16', '2020-12-17 11:18:16', NULL),
(167, 19, '5 kg', 12750.00, NULL, 1, '2020-12-17 11:32:13', '2020-12-17 11:32:13', NULL),
(168, 78, 'ok', 4500.00, NULL, 1, '2020-12-17 11:36:28', '2020-12-17 11:36:28', NULL),
(169, 75, 'm', 10.00, 's', 1, '2020-12-17 11:36:31', '2020-12-17 11:36:31', NULL),
(170, 79, '1KG', 850.00, NULL, 1, '2020-12-20 22:48:01', '2020-12-20 22:48:01', NULL),
(171, 79, '30KG', 25500.00, NULL, 1, '2020-12-20 22:48:01', '2020-12-20 22:48:01', NULL),
(172, 79, '20 KG', 17000.00, NULL, 1, '2020-12-20 22:48:01', '2020-12-20 22:48:01', NULL),
(173, 80, '1KG', 850.00, NULL, 1, '2020-12-20 22:56:55', '2020-12-20 22:56:55', NULL),
(174, 80, '20 KG', 17000.00, NULL, 1, '2020-12-20 22:56:55', '2020-12-20 22:56:55', NULL),
(175, 80, '30KG', 25500.00, NULL, 1, '2020-12-20 22:56:55', '2020-12-20 22:56:55', NULL),
(176, 81, '1 KG', 1800.00, NULL, 1, '2020-12-20 23:00:38', '2020-12-20 23:00:38', NULL),
(177, 81, '24 KG', 43200.00, NULL, 1, '2020-12-20 23:00:38', '2020-12-20 23:00:38', NULL),
(178, 82, '1 KG', 1850.00, '5955', 1, '2020-12-20 23:06:55', '2020-12-20 23:06:55', NULL),
(179, 82, '24', 44400.00, '5955', 1, '2020-12-20 23:06:55', '2020-12-20 23:06:55', NULL),
(180, 83, '1 KG', 2400.00, NULL, 1, '2020-12-20 23:17:06', '2020-12-20 23:17:06', NULL),
(181, 83, '24 KG', 57600.00, NULL, 1, '2020-12-20 23:17:06', '2020-12-20 23:17:06', NULL),
(182, 84, '1 KG', 2400.00, NULL, 1, '2020-12-20 23:22:06', '2020-12-20 23:22:06', NULL),
(183, 84, '24 KG', 57600.00, NULL, 1, '2020-12-20 23:22:06', '2020-12-20 23:22:06', NULL),
(184, 85, '1 KG', 2500.00, NULL, 1, '2020-12-20 23:27:45', '2020-12-20 23:27:45', NULL),
(185, 85, '18 KG', 45000.00, NULL, 1, '2020-12-20 23:27:45', '2020-12-20 23:27:45', NULL),
(186, 86, '1 KG', 1870.00, '5900', 1, '2020-12-20 23:42:29', '2020-12-20 23:42:29', NULL),
(187, 86, '24 KG', 44880.00, '5900', 1, '2020-12-20 23:42:29', '2020-12-20 23:42:29', NULL),
(188, 87, '1 KG', 1700.00, '5904', 1, '2020-12-21 00:23:18', '2020-12-21 00:23:18', NULL),
(189, 87, '24 KG', 40800.00, '5904', 1, '2020-12-21 00:23:18', '2020-12-21 00:23:18', NULL),
(190, 88, '1 KG', 6800.00, '5150', 1, '2020-12-21 00:30:43', '2020-12-21 00:30:43', NULL),
(191, 88, '3.8 KG', 25840.00, '5150', 1, '2020-12-21 00:30:43', '2020-12-21 00:30:43', NULL),
(192, 89, '1 KG', 6800.00, '5150', 1, '2020-12-21 00:33:18', '2020-12-21 00:33:18', NULL),
(193, 89, '3.8 KG', 25840.00, '5150', 1, '2020-12-21 00:33:18', '2020-12-21 00:33:18', NULL),
(194, 90, '1 KG', 6800.00, '5150', 1, '2020-12-21 00:35:29', '2020-12-21 00:35:29', NULL),
(195, 90, '4 KG', 27200.00, '5150', 1, '2020-12-21 00:35:29', '2020-12-21 00:35:29', NULL),
(196, 91, '1KG', 650.00, NULL, 1, '2020-12-21 00:50:21', '2020-12-21 00:50:21', NULL),
(197, 91, '30KG', 19500.00, NULL, 1, '2020-12-21 00:50:21', '2020-12-21 00:50:21', NULL),
(198, 92, '1 KG', 6800.00, '5150', 1, '2020-12-21 00:52:29', '2020-12-21 00:52:29', NULL),
(199, 92, '3.8 KG', 25840.00, '5150', 1, '2020-12-21 00:52:29', '2020-12-21 00:52:29', NULL),
(200, 93, '1 KG', 1800.00, '5194', 1, '2020-12-21 00:59:16', '2020-12-21 00:59:16', NULL),
(201, 93, '4 KG', 7200.00, '5194', 1, '2020-12-21 00:59:16', '2020-12-21 00:59:16', NULL),
(202, 94, '1 KG', 1800.00, '5125', 1, '2020-12-21 01:07:33', '2020-12-21 01:07:33', NULL),
(203, 94, '3.2', 5760.00, '5125', 1, '2020-12-21 01:07:33', '2020-12-21 01:07:33', NULL),
(204, 95, '1 KG', 2600.00, NULL, 1, '2020-12-21 03:10:16', '2020-12-21 03:10:16', NULL),
(205, 95, '10  KG', 26000.00, NULL, 1, '2020-12-21 03:10:16', '2020-12-21 03:10:16', NULL),
(206, 96, '1 KG', 2200.00, '6504', 1, '2020-12-21 03:18:28', '2020-12-21 03:18:28', NULL),
(207, 96, '20 KG', 44000.00, '6504', 1, '2020-12-21 03:18:28', '2020-12-21 03:18:28', NULL),
(208, 97, '1 KG', 1700.00, '6390', 1, '2020-12-21 03:22:03', '2020-12-21 03:22:03', NULL),
(209, 97, '5 KG', 8500.00, '6390', 1, '2020-12-21 03:22:03', '2020-12-21 03:22:03', NULL),
(210, 98, '1 KG', 2950.00, NULL, 1, '2020-12-21 03:24:33', '2020-12-21 03:24:33', NULL),
(211, 98, '18', 53100.00, NULL, 1, '2020-12-21 03:24:33', '2020-12-21 03:24:33', NULL),
(212, 99, '1 KG', 2300.00, '6582', 1, '2020-12-21 03:29:02', '2020-12-21 03:29:02', NULL),
(213, 99, '24 KG', 55200.00, '6582', 1, '2020-12-21 03:29:02', '2020-12-21 03:29:02', NULL),
(214, 100, '1 KG', 2600.00, '6838', 1, '2020-12-21 03:33:36', '2020-12-21 03:33:36', NULL),
(215, 100, '18 KG', 46800.00, '6838', 1, '2020-12-21 03:33:36', '2020-12-21 03:33:36', NULL),
(216, 101, '1 KG', 6800.00, '7150', 1, '2020-12-21 03:48:32', '2020-12-21 03:48:32', NULL),
(217, 101, '0.9 KG', 6120.00, '7150', 1, '2020-12-21 03:48:32', '2020-12-21 03:48:32', NULL),
(218, 102, '1 KG', 5200.00, NULL, 1, '2020-12-21 04:03:04', '2020-12-21 04:03:04', NULL),
(219, 101, '1KG', 6800.00, '7150', 1, '2020-12-22 23:14:48', '2020-12-22 23:14:48', NULL),
(220, 101, '0.9 KG', 6120.00, '7150', 1, '2020-12-22 23:14:48', '2020-12-22 23:14:48', NULL),
(221, 101, '1KG', 6800.00, '7150', 1, '2020-12-22 23:16:52', '2020-12-22 23:16:52', NULL),
(222, 101, '1KG', 6800.00, NULL, 1, '2020-12-22 23:17:39', '2020-12-22 23:17:39', NULL),
(223, 103, '1KG', 1400.00, NULL, 1, '2020-12-22 23:35:10', '2020-12-22 23:35:10', NULL),
(224, 103, '30KG', 42000.00, NULL, 1, '2020-12-22 23:35:10', '2020-12-22 23:35:10', NULL),
(225, 104, '1KG', 700.00, NULL, 1, '2020-12-22 23:41:57', '2020-12-22 23:41:57', NULL),
(226, 104, '20 KG', 14000.00, NULL, 1, '2020-12-22 23:41:57', '2020-12-22 23:41:57', NULL),
(227, 101, '1KG', 6800.00, NULL, 1, '2020-12-22 23:44:52', '2020-12-22 23:44:52', NULL),
(228, 105, '1KG', 1000.00, NULL, 1, '2020-12-23 00:08:56', '2020-12-23 00:08:56', NULL),
(229, 105, '20 KG', 20000.00, NULL, 1, '2020-12-23 00:08:56', '2020-12-23 00:08:56', NULL),
(230, 106, '1KG', 550.00, NULL, 1, '2020-12-23 00:25:32', '2020-12-23 00:25:32', NULL),
(231, 106, '20 KG', 11000.00, NULL, 1, '2020-12-23 00:25:32', '2020-12-23 00:25:32', NULL),
(232, 107, '1KG', 600.00, NULL, 1, '2020-12-23 00:28:33', '2020-12-23 00:28:33', NULL),
(233, 107, NULL, 11999.00, NULL, 1, '2020-12-23 00:28:33', '2020-12-23 00:28:33', NULL),
(234, 108, '1KG', 2000.00, NULL, 1, '2020-12-23 00:50:48', '2020-12-23 00:50:48', NULL),
(235, 108, '2KG', 4000.00, NULL, 1, '2020-12-23 00:50:48', '2020-12-23 00:50:48', NULL),
(236, 109, '1KG', 450.00, NULL, 1, '2020-12-23 01:05:08', '2020-12-23 01:05:08', NULL),
(237, 110, '1KG', 1050.00, NULL, 1, '2020-12-23 01:11:18', '2020-12-23 01:11:18', NULL),
(238, 111, 'med', 54.00, NULL, 1, '2020-12-23 02:20:27', '2020-12-23 02:20:27', NULL),
(239, 112, '1KG', 1200.00, NULL, 1, '2020-12-25 22:55:23', '2020-12-25 22:55:23', NULL),
(240, 112, '24 KG', 28800.00, NULL, 1, '2020-12-25 22:55:23', '2020-12-25 22:55:23', NULL),
(241, 113, '1KG', 1300.00, NULL, 1, '2020-12-25 23:01:18', '2020-12-25 23:01:18', NULL),
(242, 113, '29', 37700.00, NULL, 1, '2020-12-25 23:01:18', '2020-12-25 23:01:18', NULL),
(243, 114, '1KG', 1700.00, NULL, 1, '2020-12-25 23:14:25', '2020-12-25 23:14:25', NULL),
(244, 114, '1KG', 1700.00, NULL, 1, '2020-12-25 23:19:12', '2020-12-25 23:19:12', NULL),
(245, 114, '18 KG', 30600.00, NULL, 1, '2020-12-25 23:19:12', '2020-12-25 23:19:12', NULL),
(246, 114, '1KG', 1700.00, NULL, 1, '2020-12-25 23:21:13', '2020-12-25 23:21:13', NULL),
(247, 114, '18KG', 30600.00, NULL, 1, '2020-12-25 23:21:13', '2020-12-25 23:21:13', NULL),
(248, 115, '1KG', 1100.00, NULL, 1, '2020-12-25 23:40:39', '2020-12-25 23:40:39', NULL),
(249, 115, '24 KG', 26400.00, NULL, 1, '2020-12-25 23:40:39', '2020-12-25 23:40:39', NULL),
(250, 116, '1KG', 1500.00, NULL, 1, '2020-12-26 00:02:52', '2020-12-26 00:02:52', NULL),
(251, 116, '20 KG', 30000.00, NULL, 1, '2020-12-26 00:02:52', '2020-12-26 00:02:52', NULL),
(252, 117, '1KG', 3300.00, NULL, 1, '2020-12-26 00:09:20', '2020-12-26 00:09:20', NULL),
(253, 117, '18 KG', 59400.00, NULL, 1, '2020-12-26 00:09:20', '2020-12-26 00:09:20', NULL),
(254, 118, '1KG', 1950.00, NULL, 1, '2020-12-26 00:19:52', '2020-12-26 00:19:52', NULL),
(255, 118, '20 KG', 39000.00, NULL, 1, '2020-12-26 00:19:52', '2020-12-26 00:19:52', NULL),
(256, 119, '1KG', 2350.00, NULL, 1, '2020-12-26 00:25:27', '2020-12-26 00:25:27', NULL),
(257, 119, '24 KG', 56400.00, NULL, 1, '2020-12-26 00:25:27', '2020-12-26 00:25:27', NULL),
(258, 120, '1KG', 1950.00, NULL, 1, '2020-12-26 00:50:18', '2020-12-26 00:50:18', NULL),
(259, 120, '9 KG', 17550.00, NULL, 1, '2020-12-26 00:50:18', '2020-12-26 00:50:18', NULL),
(260, 121, '1KG', 2650.00, NULL, 1, '2020-12-26 00:56:35', '2020-12-26 00:56:35', NULL),
(261, 121, '19 KG', 50350.00, NULL, 1, '2020-12-26 00:56:35', '2020-12-26 00:56:35', NULL),
(262, 122, '1KG', 2900.00, NULL, 1, '2020-12-26 01:15:11', '2020-12-26 01:15:11', NULL),
(263, 122, '20 KG', 58000.00, NULL, 1, '2020-12-26 01:15:11', '2020-12-26 01:15:11', NULL),
(264, 123, '1KG', 2900.00, NULL, 1, '2020-12-26 01:44:46', '2020-12-26 01:44:46', NULL),
(265, 123, '20 KG', 5800.00, NULL, 1, '2020-12-26 01:44:46', '2020-12-26 01:44:46', NULL),
(266, 124, '1KG', 3000.00, NULL, 1, '2020-12-26 01:47:37', '2020-12-26 01:47:37', NULL),
(267, 124, '18 KG', 54000.00, NULL, 1, '2020-12-26 01:47:37', '2020-12-26 01:47:37', NULL),
(268, 125, '1KG', 2900.00, NULL, 1, '2020-12-26 01:51:26', '2020-12-26 01:51:26', NULL),
(269, 125, '20 KG', 58000.00, NULL, 1, '2020-12-26 01:51:26', '2020-12-26 01:51:26', NULL),
(270, 126, '1PACK', 1500.00, NULL, 1, '2020-12-27 22:39:48', '2020-12-27 22:39:48', NULL),
(271, 127, '1PACK', 1500.00, NULL, 1, '2020-12-27 23:36:37', '2020-12-27 23:36:37', NULL),
(272, 128, '1PACK', 1500.00, NULL, 1, '2020-12-27 23:47:27', '2020-12-27 23:47:27', NULL),
(273, 129, '1PACK', 450.00, NULL, 1, '2020-12-27 23:59:37', '2020-12-27 23:59:37', NULL),
(274, 130, '1PACK', 160.00, NULL, 1, '2020-12-28 00:34:31', '2020-12-28 00:34:31', NULL),
(275, 37, '1KG', 1500.00, NULL, 1, '2021-01-06 01:26:42', '2021-01-06 01:26:42', NULL),
(276, 37, '5KG', 7500.00, NULL, 1, '2021-01-06 01:26:42', '2021-01-06 01:26:42', NULL),
(277, 19, '1KG', 2550.00, NULL, 1, '2021-01-06 01:33:49', '2021-01-06 01:33:49', NULL),
(278, 19, '5KG', 12750.00, NULL, 1, '2021-01-06 01:33:49', '2021-01-06 01:33:49', NULL),
(279, 35, '1KG', 1500.00, NULL, 1, '2021-01-06 01:36:10', '2021-01-06 01:36:10', NULL),
(280, 35, '5KG', 7500.00, NULL, 1, '2021-01-06 01:36:10', '2021-01-06 01:36:10', NULL),
(281, 38, '1KG', 1500.00, NULL, 1, '2021-01-06 01:51:04', '2021-01-06 01:51:04', NULL),
(282, 38, '5KG', 7500.00, NULL, 1, '2021-01-06 01:51:04', '2021-01-06 01:51:04', NULL),
(283, 25, '1KG', 2550.00, NULL, 1, '2021-01-06 01:54:05', '2021-01-06 01:54:05', NULL),
(284, 24, '1KG', 1550.00, NULL, 1, '2021-01-06 01:57:00', '2021-01-06 01:57:00', NULL),
(285, 39, '1KG', 2550.00, NULL, 1, '2021-01-06 02:00:04', '2021-01-06 02:00:04', NULL),
(286, 39, '1KG', 2550.00, NULL, 1, '2021-01-06 02:02:42', '2021-01-06 02:02:42', NULL),
(287, 39, '5KG', 12750.00, NULL, 1, '2021-01-06 02:02:42', '2021-01-06 02:02:42', NULL),
(288, 24, '1KG', 1550.00, NULL, 1, '2021-01-06 02:08:32', '2021-01-06 02:08:32', NULL),
(289, 24, '5KG', 7750.00, NULL, 1, '2021-01-06 02:08:32', '2021-01-06 02:08:32', NULL),
(290, 23, '1KG', 1600.00, NULL, 1, '2021-01-06 02:13:14', '2021-01-06 02:13:14', NULL),
(291, 23, '5KG', 8000.00, NULL, 1, '2021-01-06 02:13:14', '2021-01-06 02:13:14', NULL),
(292, 27, '1KG', 2550.00, NULL, 1, '2021-01-08 22:59:01', '2021-01-08 22:59:01', NULL),
(293, 27, '5KG', 12750.00, NULL, 1, '2021-01-08 22:59:01', '2021-01-08 22:59:01', NULL),
(294, 131, '1KG', 2550.00, NULL, 1, '2021-01-08 23:09:40', '2021-01-08 23:09:40', NULL),
(295, 131, '5KG', 12750.00, NULL, 1, '2021-01-08 23:09:40', '2021-01-08 23:09:40', NULL),
(296, 30, '1KG', 1550.00, NULL, 1, '2021-01-08 23:28:27', '2021-01-08 23:28:27', NULL),
(297, 30, '5KG', 7750.00, NULL, 1, '2021-01-08 23:28:27', '2021-01-08 23:28:27', NULL),
(298, 26, '1KG', 1680.00, NULL, 1, '2021-01-08 23:31:33', '2021-01-08 23:31:33', NULL),
(299, 26, '5KG', 8400.00, NULL, 1, '2021-01-08 23:31:33', '2021-01-08 23:31:33', NULL),
(300, 22, '1KG', 1700.00, NULL, 1, '2021-01-08 23:37:04', '2021-01-08 23:37:04', NULL),
(301, 22, '5KG', 8500.00, NULL, 1, '2021-01-08 23:37:04', '2021-01-08 23:37:04', NULL),
(302, 36, '1KG', 1650.00, NULL, 1, '2021-01-08 23:43:48', '2021-01-08 23:43:48', NULL),
(303, 36, '5KG', 8250.00, NULL, 1, '2021-01-08 23:43:48', '2021-01-08 23:43:48', NULL),
(304, 21, '1KG', 1600.00, NULL, 1, '2021-01-08 23:49:25', '2021-01-08 23:49:25', NULL),
(305, 21, '5KG', 8000.00, NULL, 1, '2021-01-08 23:49:25', '2021-01-08 23:49:25', NULL),
(306, 34, '1KG', 1650.00, NULL, 1, '2021-01-08 23:51:55', '2021-01-08 23:51:55', NULL),
(307, 34, '5KG', 8250.00, NULL, 1, '2021-01-08 23:51:55', '2021-01-08 23:51:55', NULL),
(308, 19, '1KG', 2550.00, NULL, 1, '2021-01-08 23:54:55', '2021-01-08 23:54:55', NULL),
(309, 19, '5KG', 12750.00, NULL, 1, '2021-01-08 23:54:55', '2021-01-08 23:54:55', NULL),
(310, 79, '1KG', 850.00, NULL, 1, '2021-01-09 00:24:37', '2021-01-09 00:24:37', NULL),
(311, 79, '20 KG', 17000.00, NULL, 1, '2021-01-09 00:24:37', '2021-01-09 00:24:37', NULL),
(312, 79, '30KG', 25500.00, NULL, 1, '2021-01-09 00:24:37', '2021-01-09 00:24:37', NULL),
(313, 80, '1KG', 850.00, NULL, 1, '2021-01-09 00:26:21', '2021-01-09 00:26:21', NULL),
(314, 80, '20 KG', 17000.00, NULL, 1, '2021-01-09 00:26:21', '2021-01-09 00:26:21', NULL),
(315, 80, '30KG', 25500.00, NULL, 1, '2021-01-09 00:26:21', '2021-01-09 00:26:21', NULL),
(316, 62, '1KG', 650.00, NULL, 1, '2021-01-09 00:32:09', '2021-01-09 00:32:09', NULL),
(317, 62, '20 KG', 13000.00, NULL, 1, '2021-01-09 00:32:09', '2021-01-09 00:32:09', NULL),
(318, 62, '30KG', 19500.00, NULL, 1, '2021-01-09 00:32:09', '2021-01-09 00:32:09', NULL),
(319, 61, '1', 650.00, NULL, 1, '2021-01-09 00:34:17', '2021-01-09 00:34:17', NULL),
(320, 61, '20 KG', 13000.00, NULL, 1, '2021-01-09 00:34:17', '2021-01-09 00:34:17', NULL),
(321, 61, '30 KG', 19500.00, NULL, 1, '2021-01-09 00:34:17', '2021-01-09 00:34:17', NULL),
(322, 10, '1KG', 1050.00, NULL, 1, '2021-01-09 00:40:15', '2021-01-09 00:40:15', NULL),
(323, 10, '5KG', 5250.00, NULL, 1, '2021-01-09 00:40:15', '2021-01-09 00:40:15', NULL),
(324, 10, '10 KG', 10500.00, NULL, 1, '2021-01-09 00:40:15', '2021-01-09 00:40:15', NULL),
(325, 12, '1KG', 1050.00, NULL, 1, '2021-01-09 00:48:22', '2021-01-09 00:48:22', NULL),
(326, 12, '30KG', 31500.00, NULL, 1, '2021-01-09 00:48:22', '2021-01-09 00:48:22', NULL),
(327, 64, '1KG', 450.00, NULL, 1, '2021-01-09 00:54:04', '2021-01-09 00:54:04', NULL),
(328, 64, '20 KG', 9000.00, NULL, 1, '2021-01-09 00:54:04', '2021-01-09 00:54:04', NULL),
(329, 64, '30KG', 13500.00, NULL, 1, '2021-01-09 00:54:04', '2021-01-09 00:54:04', NULL),
(330, 63, '1KG', 450.00, NULL, 1, '2021-01-09 01:02:05', '2021-01-09 01:02:05', NULL),
(331, 63, '20 KG', 9000.00, NULL, 1, '2021-01-09 01:02:05', '2021-01-09 01:02:05', NULL),
(332, 63, '30KG', 13500.00, NULL, 1, '2021-01-09 01:02:05', '2021-01-09 01:02:05', NULL),
(333, 75, '1KG', 650.00, NULL, 1, '2021-01-09 01:08:31', '2021-01-09 01:08:31', NULL),
(334, 75, '30KG', 19500.00, NULL, 1, '2021-01-09 01:08:31', '2021-01-09 01:08:31', NULL),
(335, 65, '1KG', 350.00, NULL, 1, '2021-01-09 01:17:25', '2021-01-09 01:17:25', NULL),
(336, 65, '20 KG', 10500.00, NULL, 1, '2021-01-09 01:17:25', '2021-01-09 01:17:25', NULL),
(337, 13, '1KG', 230.00, NULL, 1, '2021-01-09 01:21:50', '2021-01-09 01:21:50', NULL),
(338, 13, '60KG', 13800.00, NULL, 1, '2021-01-09 01:21:50', '2021-01-09 01:21:50', NULL),
(339, 9, '1KG', 1050.00, NULL, 1, '2021-01-09 01:40:49', '2021-01-09 01:40:49', NULL),
(340, 9, '20 KG', 21000.00, NULL, 1, '2021-01-09 01:40:49', '2021-01-09 01:40:49', NULL),
(341, 9, '30KG', 31500.00, NULL, 1, '2021-01-09 01:40:49', '2021-01-09 01:40:49', NULL),
(342, 132, '2.5', 60000.00, NULL, 1, '2021-01-09 02:10:43', '2021-01-09 02:10:43', NULL),
(343, 132, '2.5KG', 60000.00, NULL, 1, '2021-01-09 02:14:06', '2021-01-09 02:14:06', NULL),
(344, 132, '10 KG', 240000.00, NULL, 1, '2021-01-09 02:14:06', '2021-01-09 02:14:06', NULL),
(345, 132, '2.5KG', 60000.00, NULL, 1, '2021-01-13 02:35:46', '2021-01-13 02:35:46', NULL),
(346, 132, '10KG', 240000.00, NULL, 1, '2021-01-13 02:35:46', '2021-01-13 02:35:46', NULL),
(347, 133, '100', 500.00, '2222', 1, '2021-01-22 08:55:42', '2021-01-22 08:55:42', NULL),
(348, 133, '500', 600.00, '65210', 1, '2021-01-22 08:55:42', '2021-01-22 08:55:42', NULL),
(349, 134, 'large', 250.00, '151d1f', 1, '2021-01-27 21:52:16', '2021-01-27 21:52:16', NULL),
(350, 132, 'large', 4500.00, 'nill', 1, '2021-03-02 06:56:02', '2021-03-02 06:56:02', NULL),
(351, 132, 'large', 650.00, 'lol', 1, '2021-03-02 06:59:44', '2021-03-02 06:59:44', NULL),
(352, 132, 'meidum', 4550.00, 'gth', 1, '2021-03-02 06:59:44', '2021-03-02 06:59:44', NULL),
(353, 131, '1KG', 2550.00, NULL, 1, '2021-03-02 23:35:21', '2021-03-02 23:35:21', NULL),
(354, 131, '5KG', 12750.00, NULL, 1, '2021-03-02 23:35:21', '2021-03-02 23:35:21', NULL),
(355, 131, '1KG', 2550.00, NULL, 1, '2021-03-02 23:38:02', '2021-03-02 23:38:02', NULL),
(356, 131, '5KG', 12750.00, NULL, 1, '2021-03-02 23:38:02', '2021-03-02 23:38:02', NULL),
(357, 39, '1KG', 2550.00, NULL, 1, '2021-03-03 00:44:21', '2021-03-03 00:44:21', NULL),
(358, 39, '5KG', 12750.00, NULL, 1, '2021-03-03 00:44:21', '2021-03-03 00:44:21', NULL),
(359, 21, '1KG', 1600.00, NULL, 1, '2021-03-03 03:19:52', '2021-03-03 03:19:52', NULL),
(360, 21, '5KG', 8000.00, NULL, 1, '2021-03-03 03:19:52', '2021-03-03 03:19:52', NULL),
(361, 22, '1KG', 1700.00, NULL, 1, '2021-03-03 03:26:48', '2021-03-03 03:26:48', NULL),
(362, 22, '5KG', 8500.00, NULL, 1, '2021-03-03 03:26:48', '2021-03-03 03:26:48', NULL),
(363, 23, '1KG', 1600.00, NULL, 1, '2021-03-03 03:29:27', '2021-03-03 03:29:27', NULL),
(364, 23, '5KG', 8000.00, NULL, 1, '2021-03-03 03:29:27', '2021-03-03 03:29:27', NULL),
(365, 24, '1KG', 1550.00, NULL, 1, '2021-03-03 03:32:50', '2021-03-03 03:32:50', NULL),
(366, 24, '5KG', 7750.00, NULL, 1, '2021-03-03 03:32:50', '2021-03-03 03:32:50', NULL),
(367, 25, '1KG', 2550.00, NULL, 1, '2021-03-03 03:35:26', '2021-03-03 03:35:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 3, 6, NULL, NULL),
(6, 6, 48, NULL, NULL),
(7, 6, 49, NULL, NULL),
(8, 16, 7, NULL, NULL),
(12, 20, 8, NULL, NULL),
(13, 21, 7, NULL, NULL),
(15, 39, 16, NULL, NULL),
(23, 46, 16, NULL, NULL),
(43, 57, 16, NULL, NULL),
(45, 58, 16, NULL, NULL),
(47, 59, 7, NULL, NULL),
(48, 59, 16, NULL, NULL),
(50, 66, 7, NULL, NULL),
(51, 66, 16, NULL, NULL),
(52, 66, 60, NULL, NULL),
(53, 67, 7, NULL, NULL),
(54, 67, 16, NULL, NULL),
(55, 67, 60, NULL, NULL),
(56, 68, 7, NULL, NULL),
(57, 68, 16, NULL, NULL),
(58, 68, 60, NULL, NULL),
(59, 69, 7, NULL, NULL),
(60, 69, 16, NULL, NULL),
(61, 69, 60, NULL, NULL),
(62, 70, 7, NULL, NULL),
(63, 70, 16, NULL, NULL),
(66, 71, 16, NULL, NULL),
(69, 72, 16, NULL, NULL),
(72, 73, 16, NULL, NULL),
(75, 74, 16, NULL, NULL),
(79, 75, 16, NULL, NULL),
(82, 76, 7, NULL, NULL),
(83, 76, 16, NULL, NULL),
(84, 76, 60, NULL, NULL),
(85, 77, 7, NULL, NULL),
(86, 77, 9, NULL, NULL),
(87, 77, 10, NULL, NULL),
(89, 2, 8, NULL, NULL),
(90, 2, 9, NULL, NULL),
(91, 2, 10, NULL, NULL),
(92, 5, 11, NULL, NULL),
(93, 5, 9, NULL, NULL),
(94, 7, 7, NULL, NULL),
(95, 7, 8, NULL, NULL),
(96, 7, 9, NULL, NULL),
(97, 8, 12, NULL, NULL),
(98, 8, 13, NULL, NULL),
(99, 8, 59, NULL, NULL),
(100, 9, 7, NULL, NULL),
(101, 9, 16, NULL, NULL),
(102, 9, 50, NULL, NULL),
(103, 9, 63, NULL, NULL),
(104, 10, 7, NULL, NULL),
(105, 10, 16, NULL, NULL),
(106, 10, 50, NULL, NULL),
(107, 10, 63, NULL, NULL),
(108, 11, 7, NULL, NULL),
(109, 11, 16, NULL, NULL),
(110, 11, 50, NULL, NULL),
(111, 11, 63, NULL, NULL),
(112, 12, 7, NULL, NULL),
(113, 12, 16, NULL, NULL),
(114, 12, 50, NULL, NULL),
(115, 12, 63, NULL, NULL),
(116, 13, 7, NULL, NULL),
(117, 13, 16, NULL, NULL),
(118, 13, 50, NULL, NULL),
(119, 13, 63, NULL, NULL),
(120, 14, 7, NULL, NULL),
(121, 14, 8, NULL, NULL),
(122, 17, 7, NULL, NULL),
(123, 18, 8, NULL, NULL),
(124, 19, 7, NULL, NULL),
(125, 19, 16, NULL, NULL),
(127, 21, 16, NULL, NULL),
(129, 21, 48, NULL, NULL),
(130, 22, 7, NULL, NULL),
(131, 22, 16, NULL, NULL),
(133, 22, 48, NULL, NULL),
(134, 23, 7, NULL, NULL),
(135, 23, 16, NULL, NULL),
(137, 23, 48, NULL, NULL),
(138, 24, 7, NULL, NULL),
(139, 24, 16, NULL, NULL),
(141, 24, 48, NULL, NULL),
(142, 25, 7, NULL, NULL),
(143, 25, 16, NULL, NULL),
(145, 25, 48, NULL, NULL),
(146, 26, 7, NULL, NULL),
(147, 26, 16, NULL, NULL),
(148, 26, 43, NULL, NULL),
(149, 26, 48, NULL, NULL),
(150, 27, 7, NULL, NULL),
(151, 27, 16, NULL, NULL),
(152, 27, 43, NULL, NULL),
(153, 27, 48, NULL, NULL),
(154, 28, 7, NULL, NULL),
(155, 28, 16, NULL, NULL),
(156, 28, 43, NULL, NULL),
(157, 28, 48, NULL, NULL),
(158, 29, 7, NULL, NULL),
(159, 29, 16, NULL, NULL),
(160, 29, 43, NULL, NULL),
(161, 29, 48, NULL, NULL),
(162, 30, 7, NULL, NULL),
(163, 30, 16, NULL, NULL),
(164, 30, 43, NULL, NULL),
(165, 30, 48, NULL, NULL),
(166, 32, 7, NULL, NULL),
(167, 32, 16, NULL, NULL),
(168, 32, 43, NULL, NULL),
(169, 32, 48, NULL, NULL),
(170, 33, 7, NULL, NULL),
(171, 33, 16, NULL, NULL),
(172, 33, 43, NULL, NULL),
(173, 33, 48, NULL, NULL),
(174, 34, 7, NULL, NULL),
(175, 34, 16, NULL, NULL),
(176, 34, 43, NULL, NULL),
(177, 34, 48, NULL, NULL),
(178, 35, 7, NULL, NULL),
(179, 35, 16, NULL, NULL),
(180, 35, 43, NULL, NULL),
(181, 35, 48, NULL, NULL),
(182, 36, 7, NULL, NULL),
(183, 36, 16, NULL, NULL),
(184, 36, 43, NULL, NULL),
(185, 36, 48, NULL, NULL),
(186, 37, 7, NULL, NULL),
(187, 37, 16, NULL, NULL),
(188, 37, 43, NULL, NULL),
(189, 37, 48, NULL, NULL),
(190, 38, 7, NULL, NULL),
(191, 38, 16, NULL, NULL),
(192, 38, 43, NULL, NULL),
(193, 38, 48, NULL, NULL),
(194, 39, 7, NULL, NULL),
(196, 39, 48, NULL, NULL),
(197, 40, 7, NULL, NULL),
(198, 40, 16, NULL, NULL),
(199, 40, 50, NULL, NULL),
(200, 40, 63, NULL, NULL),
(201, 41, 7, NULL, NULL),
(202, 41, 16, NULL, NULL),
(203, 41, 50, NULL, NULL),
(204, 41, 63, NULL, NULL),
(205, 42, 7, NULL, NULL),
(206, 42, 16, NULL, NULL),
(207, 42, 50, NULL, NULL),
(208, 42, 63, NULL, NULL),
(209, 43, 7, NULL, NULL),
(210, 43, 16, NULL, NULL),
(211, 43, 50, NULL, NULL),
(212, 43, 63, NULL, NULL),
(213, 44, 7, NULL, NULL),
(214, 44, 16, NULL, NULL),
(215, 44, 50, NULL, NULL),
(216, 44, 63, NULL, NULL),
(217, 45, 7, NULL, NULL),
(218, 45, 16, NULL, NULL),
(219, 45, 50, NULL, NULL),
(220, 45, 63, NULL, NULL),
(221, 46, 7, NULL, NULL),
(222, 46, 50, NULL, NULL),
(223, 46, 63, NULL, NULL),
(224, 47, 7, NULL, NULL),
(225, 47, 16, NULL, NULL),
(226, 47, 50, NULL, NULL),
(227, 47, 63, NULL, NULL),
(228, 48, 7, NULL, NULL),
(229, 48, 16, NULL, NULL),
(230, 48, 50, NULL, NULL),
(231, 48, 63, NULL, NULL),
(232, 49, 7, NULL, NULL),
(233, 49, 16, NULL, NULL),
(234, 49, 50, NULL, NULL),
(235, 49, 63, NULL, NULL),
(236, 50, 7, NULL, NULL),
(237, 50, 16, NULL, NULL),
(238, 50, 50, NULL, NULL),
(239, 50, 63, NULL, NULL),
(240, 51, 7, NULL, NULL),
(241, 51, 16, NULL, NULL),
(242, 51, 50, NULL, NULL),
(243, 51, 63, NULL, NULL),
(244, 52, 7, NULL, NULL),
(245, 52, 16, NULL, NULL),
(246, 52, 50, NULL, NULL),
(247, 52, 63, NULL, NULL),
(248, 53, 7, NULL, NULL),
(249, 53, 16, NULL, NULL),
(250, 53, 50, NULL, NULL),
(251, 53, 63, NULL, NULL),
(252, 54, 7, NULL, NULL),
(253, 54, 16, NULL, NULL),
(254, 54, 50, NULL, NULL),
(255, 54, 63, NULL, NULL),
(256, 55, 7, NULL, NULL),
(257, 55, 16, NULL, NULL),
(258, 55, 50, NULL, NULL),
(259, 55, 63, NULL, NULL),
(260, 56, 7, NULL, NULL),
(261, 56, 16, NULL, NULL),
(262, 56, 50, NULL, NULL),
(263, 56, 63, NULL, NULL),
(264, 57, 7, NULL, NULL),
(265, 57, 50, NULL, NULL),
(266, 57, 63, NULL, NULL),
(267, 58, 7, NULL, NULL),
(268, 58, 50, NULL, NULL),
(269, 58, 63, NULL, NULL),
(270, 59, 50, NULL, NULL),
(271, 59, 63, NULL, NULL),
(272, 60, 7, NULL, NULL),
(273, 60, 16, NULL, NULL),
(274, 60, 50, NULL, NULL),
(275, 60, 63, NULL, NULL),
(276, 61, 7, NULL, NULL),
(277, 61, 16, NULL, NULL),
(278, 61, 50, NULL, NULL),
(279, 61, 63, NULL, NULL),
(280, 62, 7, NULL, NULL),
(281, 62, 16, NULL, NULL),
(282, 62, 50, NULL, NULL),
(283, 62, 63, NULL, NULL),
(284, 63, 7, NULL, NULL),
(285, 63, 16, NULL, NULL),
(286, 63, 50, NULL, NULL),
(287, 63, 63, NULL, NULL),
(288, 64, 7, NULL, NULL),
(289, 64, 16, NULL, NULL),
(290, 64, 50, NULL, NULL),
(291, 64, 63, NULL, NULL),
(292, 65, 7, NULL, NULL),
(293, 65, 16, NULL, NULL),
(294, 65, 50, NULL, NULL),
(295, 65, 63, NULL, NULL),
(296, 70, 48, NULL, NULL),
(297, 70, 65, NULL, NULL),
(298, 73, 48, NULL, NULL),
(299, 73, 63, NULL, NULL),
(300, 74, 63, NULL, NULL),
(301, 74, 64, NULL, NULL),
(302, 75, 63, NULL, NULL),
(303, 75, 64, NULL, NULL),
(304, 79, 7, NULL, NULL),
(305, 79, 16, NULL, NULL),
(306, 79, 48, NULL, NULL),
(307, 79, 63, NULL, NULL),
(308, 79, 64, NULL, NULL),
(309, 80, 7, NULL, NULL),
(310, 80, 16, NULL, NULL),
(311, 80, 48, NULL, NULL),
(312, 80, 63, NULL, NULL),
(313, 80, 64, NULL, NULL),
(314, 81, 7, NULL, NULL),
(315, 81, 11, NULL, NULL),
(316, 81, 48, NULL, NULL),
(317, 81, 50, NULL, NULL),
(318, 82, 7, NULL, NULL),
(319, 82, 11, NULL, NULL),
(320, 82, 48, NULL, NULL),
(321, 82, 50, NULL, NULL),
(322, 83, 7, NULL, NULL),
(323, 83, 11, NULL, NULL),
(324, 83, 12, NULL, NULL),
(325, 83, 48, NULL, NULL),
(326, 83, 50, NULL, NULL),
(327, 84, 7, NULL, NULL),
(328, 84, 11, NULL, NULL),
(329, 84, 12, NULL, NULL),
(330, 84, 48, NULL, NULL),
(331, 84, 50, NULL, NULL),
(332, 85, 7, NULL, NULL),
(333, 85, 11, NULL, NULL),
(334, 85, 12, NULL, NULL),
(335, 85, 48, NULL, NULL),
(336, 85, 50, NULL, NULL),
(337, 86, 7, NULL, NULL),
(338, 86, 11, NULL, NULL),
(339, 86, 12, NULL, NULL),
(340, 86, 48, NULL, NULL),
(341, 86, 50, NULL, NULL),
(342, 87, 7, NULL, NULL),
(343, 87, 11, NULL, NULL),
(344, 87, 12, NULL, NULL),
(345, 87, 48, NULL, NULL),
(346, 87, 50, NULL, NULL),
(347, 88, 7, NULL, NULL),
(348, 88, 11, NULL, NULL),
(349, 88, 12, NULL, NULL),
(350, 88, 48, NULL, NULL),
(351, 88, 50, NULL, NULL),
(352, 89, 7, NULL, NULL),
(353, 89, 11, NULL, NULL),
(354, 89, 12, NULL, NULL),
(355, 89, 48, NULL, NULL),
(356, 89, 50, NULL, NULL),
(357, 90, 7, NULL, NULL),
(358, 90, 11, NULL, NULL),
(359, 90, 12, NULL, NULL),
(360, 90, 48, NULL, NULL),
(361, 90, 50, NULL, NULL),
(362, 91, 7, NULL, NULL),
(363, 91, 16, NULL, NULL),
(364, 91, 63, NULL, NULL),
(365, 91, 64, NULL, NULL),
(366, 92, 7, NULL, NULL),
(367, 92, 11, NULL, NULL),
(368, 92, 12, NULL, NULL),
(369, 92, 48, NULL, NULL),
(370, 92, 50, NULL, NULL),
(371, 93, 7, NULL, NULL),
(372, 93, 11, NULL, NULL),
(373, 93, 12, NULL, NULL),
(374, 93, 48, NULL, NULL),
(375, 93, 50, NULL, NULL),
(376, 94, 7, NULL, NULL),
(377, 94, 11, NULL, NULL),
(378, 94, 12, NULL, NULL),
(379, 94, 48, NULL, NULL),
(380, 94, 50, NULL, NULL),
(381, 95, 7, NULL, NULL),
(382, 95, 11, NULL, NULL),
(383, 95, 12, NULL, NULL),
(384, 95, 48, NULL, NULL),
(385, 95, 50, NULL, NULL),
(386, 96, 7, NULL, NULL),
(387, 96, 11, NULL, NULL),
(388, 96, 12, NULL, NULL),
(389, 96, 48, NULL, NULL),
(390, 96, 50, NULL, NULL),
(391, 97, 7, NULL, NULL),
(392, 97, 11, NULL, NULL),
(393, 97, 12, NULL, NULL),
(394, 97, 48, NULL, NULL),
(395, 97, 50, NULL, NULL),
(396, 98, 7, NULL, NULL),
(397, 98, 11, NULL, NULL),
(398, 98, 12, NULL, NULL),
(399, 98, 48, NULL, NULL),
(400, 98, 50, NULL, NULL),
(401, 99, 7, NULL, NULL),
(402, 99, 11, NULL, NULL),
(403, 99, 12, NULL, NULL),
(404, 99, 48, NULL, NULL),
(405, 99, 50, NULL, NULL),
(406, 100, 7, NULL, NULL),
(407, 100, 11, NULL, NULL),
(408, 100, 12, NULL, NULL),
(409, 100, 48, NULL, NULL),
(410, 100, 50, NULL, NULL),
(411, 101, 7, NULL, NULL),
(412, 101, 11, NULL, NULL),
(413, 101, 14, NULL, NULL),
(414, 101, 50, NULL, NULL),
(415, 102, 7, NULL, NULL),
(416, 102, 11, NULL, NULL),
(417, 102, 12, NULL, NULL),
(418, 102, 48, NULL, NULL),
(419, 102, 50, NULL, NULL),
(420, 103, 16, NULL, NULL),
(421, 103, 48, NULL, NULL),
(422, 103, 50, NULL, NULL),
(423, 103, 63, NULL, NULL),
(424, 104, 16, NULL, NULL),
(425, 104, 48, NULL, NULL),
(426, 104, 50, NULL, NULL),
(427, 104, 63, NULL, NULL),
(428, 105, 16, NULL, NULL),
(429, 105, 48, NULL, NULL),
(430, 105, 63, NULL, NULL),
(431, 106, 16, NULL, NULL),
(432, 106, 48, NULL, NULL),
(433, 106, 63, NULL, NULL),
(434, 107, 16, NULL, NULL),
(435, 107, 48, NULL, NULL),
(436, 107, 63, NULL, NULL),
(437, 108, 20, NULL, NULL),
(438, 109, 9, NULL, NULL),
(439, 109, 20, NULL, NULL),
(440, 110, 30, NULL, NULL),
(441, 110, 45, NULL, NULL),
(442, 112, 11, NULL, NULL),
(443, 112, 48, NULL, NULL),
(444, 113, 7, NULL, NULL),
(445, 113, 11, NULL, NULL),
(446, 113, 48, NULL, NULL),
(447, 114, 11, NULL, NULL),
(448, 114, 48, NULL, NULL),
(449, 114, 50, NULL, NULL),
(450, 115, 7, NULL, NULL),
(451, 115, 11, NULL, NULL),
(452, 115, 48, NULL, NULL),
(453, 115, 50, NULL, NULL),
(454, 116, 11, NULL, NULL),
(455, 116, 48, NULL, NULL),
(456, 116, 50, NULL, NULL),
(457, 117, 11, NULL, NULL),
(458, 117, 48, NULL, NULL),
(459, 117, 50, NULL, NULL),
(460, 118, 11, NULL, NULL),
(461, 118, 48, NULL, NULL),
(462, 118, 50, NULL, NULL),
(463, 119, 11, NULL, NULL),
(464, 119, 48, NULL, NULL),
(465, 119, 50, NULL, NULL),
(466, 120, 11, NULL, NULL),
(467, 120, 48, NULL, NULL),
(468, 120, 50, NULL, NULL),
(469, 121, 11, NULL, NULL),
(470, 121, 48, NULL, NULL),
(471, 121, 50, NULL, NULL),
(472, 122, 11, NULL, NULL),
(473, 122, 48, NULL, NULL),
(474, 122, 50, NULL, NULL),
(475, 123, 11, NULL, NULL),
(476, 124, 11, NULL, NULL),
(477, 125, 11, NULL, NULL),
(478, 126, 66, NULL, NULL),
(479, 126, 68, NULL, NULL),
(480, 127, 57, NULL, NULL),
(481, 127, 59, NULL, NULL),
(482, 127, 66, NULL, NULL),
(483, 127, 68, NULL, NULL),
(484, 128, 57, NULL, NULL),
(485, 128, 59, NULL, NULL),
(486, 128, 66, NULL, NULL),
(487, 128, 68, NULL, NULL),
(488, 129, 57, NULL, NULL),
(489, 129, 59, NULL, NULL),
(490, 129, 66, NULL, NULL),
(491, 129, 68, NULL, NULL),
(492, 130, 57, NULL, NULL),
(493, 130, 59, NULL, NULL),
(494, 130, 66, NULL, NULL),
(495, 130, 68, NULL, NULL),
(496, 131, 16, NULL, NULL),
(498, 131, 50, NULL, NULL),
(499, 132, 11, NULL, NULL),
(500, 132, 50, NULL, NULL),
(501, 133, 8, NULL, NULL),
(502, 133, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `related__products`
--

CREATE TABLE `related__products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `related` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `related__products`
--

INSERT INTO `related__products` (`id`, `product_id`, `related`, `created_at`, `updated_at`) VALUES
(14, 75, 14, '2020-12-17 11:37:56', '2020-12-17 11:37:56'),
(15, 75, 19, '2020-12-17 11:37:56', '2020-12-17 11:37:56'),
(16, 75, 21, '2020-12-17 11:37:56', '2020-12-17 11:37:56'),
(17, 79, 9, '2020-12-20 22:48:12', '2020-12-20 22:48:12'),
(18, 79, 10, '2020-12-20 22:48:12', '2020-12-20 22:48:12'),
(19, 79, 11, '2020-12-20 22:48:12', '2020-12-20 22:48:12'),
(20, 80, 9, '2020-12-20 22:56:59', '2020-12-20 22:56:59'),
(21, 80, 10, '2020-12-20 22:56:59', '2020-12-20 22:56:59'),
(22, 80, 11, '2020-12-20 22:56:59', '2020-12-20 22:56:59'),
(23, 80, 12, '2020-12-20 22:56:59', '2020-12-20 22:56:59'),
(24, 81, 10, '2020-12-20 23:00:44', '2020-12-20 23:00:44'),
(25, 82, 81, '2020-12-20 23:07:09', '2020-12-20 23:07:09'),
(26, 83, 81, '2020-12-20 23:17:13', '2020-12-20 23:17:13'),
(27, 83, 82, '2020-12-20 23:17:13', '2020-12-20 23:17:13'),
(28, 84, 83, '2020-12-20 23:22:13', '2020-12-20 23:22:13'),
(29, 85, 83, '2020-12-20 23:27:51', '2020-12-20 23:27:51'),
(30, 85, 84, '2020-12-20 23:27:51', '2020-12-20 23:27:51'),
(31, 86, 81, '2020-12-20 23:42:42', '2020-12-20 23:42:42'),
(32, 86, 82, '2020-12-20 23:42:42', '2020-12-20 23:42:42'),
(33, 87, 81, '2020-12-21 00:23:29', '2020-12-21 00:23:29'),
(34, 87, 82, '2020-12-21 00:23:29', '2020-12-21 00:23:29'),
(35, 87, 86, '2020-12-21 00:23:29', '2020-12-21 00:23:29'),
(36, 91, 9, '2020-12-21 00:50:22', '2020-12-21 00:50:22'),
(37, 91, 10, '2020-12-21 00:50:22', '2020-12-21 00:50:22'),
(38, 91, 11, '2020-12-21 00:50:22', '2020-12-21 00:50:22'),
(39, 91, 12, '2020-12-21 00:50:22', '2020-12-21 00:50:22'),
(40, 93, 89, '2020-12-21 00:59:22', '2020-12-21 00:59:22'),
(41, 93, 90, '2020-12-21 00:59:22', '2020-12-21 00:59:22'),
(42, 93, 92, '2020-12-21 00:59:22', '2020-12-21 00:59:22'),
(43, 94, 92, '2020-12-21 01:07:44', '2020-12-21 01:07:44'),
(44, 94, 93, '2020-12-21 01:07:44', '2020-12-21 01:07:44'),
(45, 95, 92, '2020-12-21 03:10:18', '2020-12-21 03:10:18'),
(46, 96, 95, '2020-12-21 03:18:30', '2020-12-21 03:18:30'),
(47, 97, 96, '2020-12-21 03:22:05', '2020-12-21 03:22:05'),
(48, 98, 96, '2020-12-21 03:24:35', '2020-12-21 03:24:35'),
(49, 98, 97, '2020-12-21 03:24:35', '2020-12-21 03:24:35'),
(50, 99, 96, '2020-12-21 03:29:04', '2020-12-21 03:29:04'),
(51, 99, 97, '2020-12-21 03:29:04', '2020-12-21 03:29:04'),
(52, 99, 98, '2020-12-21 03:29:04', '2020-12-21 03:29:04'),
(53, 100, 96, '2020-12-21 03:33:38', '2020-12-21 03:33:38'),
(54, 100, 97, '2020-12-21 03:33:38', '2020-12-21 03:33:38'),
(55, 100, 98, '2020-12-21 03:33:38', '2020-12-21 03:33:38'),
(56, 100, 99, '2020-12-21 03:33:38', '2020-12-21 03:33:38'),
(57, 101, 96, '2020-12-21 03:48:35', '2020-12-21 03:48:35'),
(58, 101, 97, '2020-12-21 03:48:35', '2020-12-21 03:48:35'),
(59, 101, 98, '2020-12-21 03:48:35', '2020-12-21 03:48:35'),
(60, 101, 99, '2020-12-21 03:48:35', '2020-12-21 03:48:35'),
(61, 101, 100, '2020-12-21 03:48:35', '2020-12-21 03:48:35'),
(62, 102, 96, '2020-12-21 04:03:06', '2020-12-21 04:03:06'),
(63, 103, 9, '2020-12-22 23:35:19', '2020-12-22 23:35:19'),
(64, 103, 10, '2020-12-22 23:35:19', '2020-12-22 23:35:19'),
(65, 103, 11, '2020-12-22 23:35:19', '2020-12-22 23:35:19'),
(66, 103, 12, '2020-12-22 23:35:19', '2020-12-22 23:35:19'),
(67, 104, 12, '2020-12-22 23:42:02', '2020-12-22 23:42:02'),
(68, 104, 100, '2020-12-22 23:42:02', '2020-12-22 23:42:02'),
(69, 104, 101, '2020-12-22 23:42:02', '2020-12-22 23:42:02'),
(70, 104, 102, '2020-12-22 23:42:02', '2020-12-22 23:42:02'),
(71, 104, 103, '2020-12-22 23:42:02', '2020-12-22 23:42:02'),
(72, 101, 10, '2020-12-22 23:44:52', '2020-12-22 23:44:52'),
(73, 105, 9, '2020-12-23 00:09:11', '2020-12-23 00:09:11'),
(74, 105, 11, '2020-12-23 00:09:11', '2020-12-23 00:09:11'),
(75, 105, 42, '2020-12-23 00:09:11', '2020-12-23 00:09:11'),
(76, 105, 47, '2020-12-23 00:09:11', '2020-12-23 00:09:11'),
(77, 105, 70, '2020-12-23 00:09:11', '2020-12-23 00:09:11'),
(78, 105, 100, '2020-12-23 00:09:11', '2020-12-23 00:09:11'),
(79, 105, 101, '2020-12-23 00:09:11', '2020-12-23 00:09:11'),
(80, 105, 102, '2020-12-23 00:09:11', '2020-12-23 00:09:11'),
(81, 105, 103, '2020-12-23 00:09:11', '2020-12-23 00:09:11'),
(82, 105, 104, '2020-12-23 00:09:11', '2020-12-23 00:09:11'),
(83, 106, 10, '2020-12-23 00:25:36', '2020-12-23 00:25:36'),
(84, 106, 11, '2020-12-23 00:25:36', '2020-12-23 00:25:36'),
(85, 106, 28, '2020-12-23 00:25:36', '2020-12-23 00:25:36'),
(86, 106, 32, '2020-12-23 00:25:36', '2020-12-23 00:25:36'),
(87, 106, 60, '2020-12-23 00:25:36', '2020-12-23 00:25:36'),
(88, 106, 84, '2020-12-23 00:25:36', '2020-12-23 00:25:36'),
(89, 106, 103, '2020-12-23 00:25:36', '2020-12-23 00:25:36'),
(90, 106, 104, '2020-12-23 00:25:36', '2020-12-23 00:25:36'),
(91, 106, 105, '2020-12-23 00:25:36', '2020-12-23 00:25:36'),
(92, 107, 102, '2020-12-23 00:28:38', '2020-12-23 00:28:38'),
(93, 107, 103, '2020-12-23 00:28:38', '2020-12-23 00:28:38'),
(94, 107, 104, '2020-12-23 00:28:38', '2020-12-23 00:28:38'),
(95, 107, 105, '2020-12-23 00:28:38', '2020-12-23 00:28:38'),
(96, 107, 106, '2020-12-23 00:28:38', '2020-12-23 00:28:38'),
(97, 108, 9, '2020-12-23 00:50:55', '2020-12-23 00:50:55'),
(98, 108, 43, '2020-12-23 00:50:55', '2020-12-23 00:50:55'),
(99, 108, 71, '2020-12-23 00:50:55', '2020-12-23 00:50:55'),
(100, 108, 72, '2020-12-23 00:50:55', '2020-12-23 00:50:55'),
(101, 108, 104, '2020-12-23 00:50:55', '2020-12-23 00:50:55'),
(102, 108, 107, '2020-12-23 00:50:55', '2020-12-23 00:50:55'),
(103, 109, 100, '2020-12-23 01:05:10', '2020-12-23 01:05:10'),
(104, 109, 101, '2020-12-23 01:05:10', '2020-12-23 01:05:10'),
(105, 109, 105, '2020-12-23 01:05:10', '2020-12-23 01:05:10'),
(106, 109, 106, '2020-12-23 01:05:10', '2020-12-23 01:05:10'),
(107, 109, 107, '2020-12-23 01:05:10', '2020-12-23 01:05:10'),
(108, 109, 108, '2020-12-23 01:05:10', '2020-12-23 01:05:10'),
(109, 110, 101, '2020-12-23 01:11:20', '2020-12-23 01:11:20'),
(110, 110, 102, '2020-12-23 01:11:20', '2020-12-23 01:11:20'),
(111, 110, 103, '2020-12-23 01:11:20', '2020-12-23 01:11:20'),
(112, 110, 104, '2020-12-23 01:11:20', '2020-12-23 01:11:20'),
(113, 110, 107, '2020-12-23 01:11:20', '2020-12-23 01:11:20'),
(114, 110, 108, '2020-12-23 01:11:20', '2020-12-23 01:11:20'),
(115, 110, 109, '2020-12-23 01:11:20', '2020-12-23 01:11:20'),
(116, 111, 9, '2020-12-23 02:20:29', '2020-12-23 02:20:29'),
(117, 112, 9, '2020-12-25 22:55:25', '2020-12-25 22:55:25'),
(118, 112, 11, '2020-12-25 22:55:25', '2020-12-25 22:55:25'),
(119, 112, 109, '2020-12-25 22:55:25', '2020-12-25 22:55:25'),
(120, 112, 110, '2020-12-25 22:55:25', '2020-12-25 22:55:25'),
(121, 113, 112, '2020-12-25 23:01:20', '2020-12-25 23:01:20'),
(122, 114, 110, '2020-12-25 23:14:27', '2020-12-25 23:14:27'),
(123, 114, 112, '2020-12-25 23:14:27', '2020-12-25 23:14:27'),
(124, 114, 113, '2020-12-25 23:14:27', '2020-12-25 23:14:27'),
(125, 114, 112, '2020-12-25 23:19:12', '2020-12-25 23:19:12'),
(126, 114, 113, '2020-12-25 23:19:12', '2020-12-25 23:19:12'),
(127, 114, 114, '2020-12-25 23:19:12', '2020-12-25 23:19:12'),
(128, 114, 112, '2020-12-25 23:21:13', '2020-12-25 23:21:13'),
(129, 114, 113, '2020-12-25 23:21:13', '2020-12-25 23:21:13'),
(130, 114, 114, '2020-12-25 23:21:13', '2020-12-25 23:21:13'),
(131, 115, 112, '2020-12-25 23:40:42', '2020-12-25 23:40:42'),
(132, 115, 113, '2020-12-25 23:40:42', '2020-12-25 23:40:42'),
(133, 115, 114, '2020-12-25 23:40:42', '2020-12-25 23:40:42'),
(134, 116, 112, '2020-12-26 00:02:54', '2020-12-26 00:02:54'),
(135, 116, 113, '2020-12-26 00:02:54', '2020-12-26 00:02:54'),
(136, 116, 114, '2020-12-26 00:02:54', '2020-12-26 00:02:54'),
(137, 116, 115, '2020-12-26 00:02:54', '2020-12-26 00:02:54'),
(138, 117, 112, '2020-12-26 00:09:22', '2020-12-26 00:09:22'),
(139, 117, 113, '2020-12-26 00:09:22', '2020-12-26 00:09:22'),
(140, 117, 114, '2020-12-26 00:09:22', '2020-12-26 00:09:22'),
(141, 117, 115, '2020-12-26 00:09:22', '2020-12-26 00:09:22'),
(142, 117, 116, '2020-12-26 00:09:22', '2020-12-26 00:09:22'),
(143, 118, 112, '2020-12-26 00:19:54', '2020-12-26 00:19:54'),
(144, 118, 113, '2020-12-26 00:19:54', '2020-12-26 00:19:54'),
(145, 118, 114, '2020-12-26 00:19:54', '2020-12-26 00:19:54'),
(146, 118, 115, '2020-12-26 00:19:54', '2020-12-26 00:19:54'),
(147, 118, 116, '2020-12-26 00:19:54', '2020-12-26 00:19:54'),
(148, 118, 117, '2020-12-26 00:19:54', '2020-12-26 00:19:54'),
(149, 119, 112, '2020-12-26 00:25:29', '2020-12-26 00:25:29'),
(150, 119, 113, '2020-12-26 00:25:29', '2020-12-26 00:25:29'),
(151, 119, 114, '2020-12-26 00:25:29', '2020-12-26 00:25:29'),
(152, 119, 115, '2020-12-26 00:25:29', '2020-12-26 00:25:29'),
(153, 119, 116, '2020-12-26 00:25:29', '2020-12-26 00:25:29'),
(154, 119, 117, '2020-12-26 00:25:29', '2020-12-26 00:25:29'),
(155, 119, 118, '2020-12-26 00:25:29', '2020-12-26 00:25:29'),
(156, 120, 112, '2020-12-26 00:50:20', '2020-12-26 00:50:20'),
(157, 120, 113, '2020-12-26 00:50:20', '2020-12-26 00:50:20'),
(158, 120, 114, '2020-12-26 00:50:20', '2020-12-26 00:50:20'),
(159, 120, 115, '2020-12-26 00:50:20', '2020-12-26 00:50:20'),
(160, 120, 116, '2020-12-26 00:50:20', '2020-12-26 00:50:20'),
(161, 120, 117, '2020-12-26 00:50:20', '2020-12-26 00:50:20'),
(162, 120, 118, '2020-12-26 00:50:20', '2020-12-26 00:50:20'),
(163, 120, 119, '2020-12-26 00:50:20', '2020-12-26 00:50:20'),
(164, 121, 113, '2020-12-26 00:56:37', '2020-12-26 00:56:37'),
(165, 121, 114, '2020-12-26 00:56:37', '2020-12-26 00:56:37'),
(166, 121, 115, '2020-12-26 00:56:37', '2020-12-26 00:56:37'),
(167, 121, 116, '2020-12-26 00:56:37', '2020-12-26 00:56:37'),
(168, 121, 117, '2020-12-26 00:56:37', '2020-12-26 00:56:37'),
(169, 121, 118, '2020-12-26 00:56:37', '2020-12-26 00:56:37'),
(170, 121, 119, '2020-12-26 00:56:37', '2020-12-26 00:56:37'),
(171, 121, 120, '2020-12-26 00:56:37', '2020-12-26 00:56:37'),
(172, 122, 113, '2020-12-26 01:15:13', '2020-12-26 01:15:13'),
(173, 122, 114, '2020-12-26 01:15:13', '2020-12-26 01:15:13'),
(174, 122, 115, '2020-12-26 01:15:13', '2020-12-26 01:15:13'),
(175, 122, 116, '2020-12-26 01:15:13', '2020-12-26 01:15:13'),
(176, 122, 117, '2020-12-26 01:15:13', '2020-12-26 01:15:13'),
(177, 122, 118, '2020-12-26 01:15:13', '2020-12-26 01:15:13'),
(178, 122, 119, '2020-12-26 01:15:13', '2020-12-26 01:15:13'),
(179, 122, 120, '2020-12-26 01:15:13', '2020-12-26 01:15:13'),
(180, 122, 121, '2020-12-26 01:15:13', '2020-12-26 01:15:13'),
(181, 123, 71, '2020-12-26 01:44:48', '2020-12-26 01:44:48'),
(182, 123, 72, '2020-12-26 01:44:48', '2020-12-26 01:44:48'),
(183, 123, 73, '2020-12-26 01:44:48', '2020-12-26 01:44:48'),
(184, 123, 74, '2020-12-26 01:44:48', '2020-12-26 01:44:48'),
(185, 123, 75, '2020-12-26 01:44:48', '2020-12-26 01:44:48'),
(186, 123, 79, '2020-12-26 01:44:48', '2020-12-26 01:44:48'),
(187, 123, 118, '2020-12-26 01:44:48', '2020-12-26 01:44:48'),
(188, 123, 119, '2020-12-26 01:44:48', '2020-12-26 01:44:48'),
(189, 123, 120, '2020-12-26 01:44:48', '2020-12-26 01:44:48'),
(190, 123, 121, '2020-12-26 01:44:48', '2020-12-26 01:44:48'),
(191, 123, 122, '2020-12-26 01:44:48', '2020-12-26 01:44:48'),
(192, 124, 115, '2020-12-26 01:47:38', '2020-12-26 01:47:38'),
(193, 124, 116, '2020-12-26 01:47:38', '2020-12-26 01:47:38'),
(194, 124, 117, '2020-12-26 01:47:38', '2020-12-26 01:47:38'),
(195, 124, 118, '2020-12-26 01:47:38', '2020-12-26 01:47:38'),
(196, 124, 120, '2020-12-26 01:47:38', '2020-12-26 01:47:38'),
(197, 124, 121, '2020-12-26 01:47:38', '2020-12-26 01:47:38'),
(198, 124, 122, '2020-12-26 01:47:38', '2020-12-26 01:47:38'),
(199, 124, 123, '2020-12-26 01:47:38', '2020-12-26 01:47:38'),
(200, 125, 118, '2020-12-26 01:51:28', '2020-12-26 01:51:28'),
(201, 125, 119, '2020-12-26 01:51:28', '2020-12-26 01:51:28'),
(202, 125, 120, '2020-12-26 01:51:28', '2020-12-26 01:51:28'),
(203, 125, 121, '2020-12-26 01:51:28', '2020-12-26 01:51:28'),
(204, 125, 122, '2020-12-26 01:51:28', '2020-12-26 01:51:28'),
(205, 125, 123, '2020-12-26 01:51:28', '2020-12-26 01:51:28'),
(206, 125, 124, '2020-12-26 01:51:28', '2020-12-26 01:51:28'),
(207, 126, 122, '2020-12-27 22:39:51', '2020-12-27 22:39:51'),
(208, 126, 123, '2020-12-27 22:39:51', '2020-12-27 22:39:51'),
(209, 126, 125, '2020-12-27 22:39:51', '2020-12-27 22:39:51'),
(210, 127, 123, '2020-12-27 23:36:43', '2020-12-27 23:36:43'),
(211, 127, 124, '2020-12-27 23:36:43', '2020-12-27 23:36:43'),
(212, 127, 125, '2020-12-27 23:36:43', '2020-12-27 23:36:43'),
(213, 127, 126, '2020-12-27 23:36:43', '2020-12-27 23:36:43'),
(214, 128, 124, '2020-12-27 23:47:29', '2020-12-27 23:47:29'),
(215, 128, 125, '2020-12-27 23:47:29', '2020-12-27 23:47:29'),
(216, 128, 126, '2020-12-27 23:47:29', '2020-12-27 23:47:29'),
(217, 128, 127, '2020-12-27 23:47:29', '2020-12-27 23:47:29'),
(218, 129, 122, '2020-12-27 23:59:39', '2020-12-27 23:59:39'),
(219, 129, 123, '2020-12-27 23:59:39', '2020-12-27 23:59:39'),
(220, 129, 124, '2020-12-27 23:59:39', '2020-12-27 23:59:39'),
(221, 129, 125, '2020-12-27 23:59:39', '2020-12-27 23:59:39'),
(222, 129, 126, '2020-12-27 23:59:39', '2020-12-27 23:59:39'),
(223, 129, 127, '2020-12-27 23:59:39', '2020-12-27 23:59:39'),
(224, 129, 128, '2020-12-27 23:59:39', '2020-12-27 23:59:39'),
(225, 130, 124, '2020-12-28 00:34:33', '2020-12-28 00:34:33'),
(226, 130, 125, '2020-12-28 00:34:33', '2020-12-28 00:34:33'),
(227, 130, 126, '2020-12-28 00:34:33', '2020-12-28 00:34:33'),
(228, 130, 127, '2020-12-28 00:34:33', '2020-12-28 00:34:33'),
(229, 130, 128, '2020-12-28 00:34:33', '2020-12-28 00:34:33'),
(230, 130, 129, '2020-12-28 00:34:33', '2020-12-28 00:34:33'),
(231, 37, 9, '2021-01-06 01:26:42', '2021-01-06 01:26:42'),
(232, 37, 10, '2021-01-06 01:26:42', '2021-01-06 01:26:42'),
(233, 37, 11, '2021-01-06 01:26:42', '2021-01-06 01:26:42'),
(234, 37, 61, '2021-01-06 01:26:42', '2021-01-06 01:26:42'),
(235, 37, 62, '2021-01-06 01:26:42', '2021-01-06 01:26:42'),
(236, 19, 9, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(237, 19, 10, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(238, 19, 11, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(239, 19, 12, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(240, 19, 50, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(241, 19, 51, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(242, 19, 52, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(243, 19, 53, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(244, 19, 60, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(245, 19, 61, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(246, 19, 62, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(247, 19, 74, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(248, 19, 75, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(249, 19, 79, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(250, 19, 105, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(251, 19, 106, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(252, 19, 107, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(253, 19, 108, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(254, 19, 109, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(255, 19, 110, '2021-01-06 01:33:49', '2021-01-06 01:33:49'),
(256, 35, 9, '2021-01-06 01:36:10', '2021-01-06 01:36:10'),
(257, 35, 10, '2021-01-06 01:36:10', '2021-01-06 01:36:10'),
(258, 35, 11, '2021-01-06 01:36:10', '2021-01-06 01:36:10'),
(259, 35, 65, '2021-01-06 01:36:10', '2021-01-06 01:36:10'),
(260, 35, 71, '2021-01-06 01:36:10', '2021-01-06 01:36:10'),
(261, 35, 85, '2021-01-06 01:36:10', '2021-01-06 01:36:10'),
(262, 35, 106, '2021-01-06 01:36:10', '2021-01-06 01:36:10'),
(263, 35, 108, '2021-01-06 01:36:10', '2021-01-06 01:36:10'),
(264, 35, 110, '2021-01-06 01:36:10', '2021-01-06 01:36:10'),
(265, 38, 9, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(266, 38, 10, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(267, 38, 11, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(268, 38, 27, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(269, 38, 41, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(270, 38, 43, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(271, 38, 51, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(272, 38, 65, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(273, 38, 70, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(274, 38, 75, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(275, 38, 83, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(276, 38, 91, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(277, 38, 99, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(278, 38, 100, '2021-01-06 01:51:04', '2021-01-06 01:51:04'),
(279, 25, 9, '2021-01-06 01:54:05', '2021-01-06 01:54:05'),
(280, 25, 10, '2021-01-06 01:54:05', '2021-01-06 01:54:05'),
(281, 25, 46, '2021-01-06 01:54:05', '2021-01-06 01:54:05'),
(282, 25, 61, '2021-01-06 01:54:05', '2021-01-06 01:54:05'),
(283, 25, 75, '2021-01-06 01:54:05', '2021-01-06 01:54:05'),
(284, 25, 91, '2021-01-06 01:54:05', '2021-01-06 01:54:05'),
(285, 25, 108, '2021-01-06 01:54:05', '2021-01-06 01:54:05'),
(286, 25, 109, '2021-01-06 01:54:05', '2021-01-06 01:54:05'),
(287, 25, 110, '2021-01-06 01:54:05', '2021-01-06 01:54:05'),
(288, 24, 9, '2021-01-06 01:57:00', '2021-01-06 01:57:00'),
(289, 24, 11, '2021-01-06 01:57:00', '2021-01-06 01:57:00'),
(290, 24, 37, '2021-01-06 01:57:00', '2021-01-06 01:57:00'),
(291, 24, 71, '2021-01-06 01:57:00', '2021-01-06 01:57:00'),
(292, 24, 72, '2021-01-06 01:57:00', '2021-01-06 01:57:00'),
(293, 24, 79, '2021-01-06 01:57:00', '2021-01-06 01:57:00'),
(294, 24, 106, '2021-01-06 01:57:00', '2021-01-06 01:57:00'),
(295, 24, 110, '2021-01-06 01:57:00', '2021-01-06 01:57:00'),
(296, 24, 127, '2021-01-06 01:57:00', '2021-01-06 01:57:00'),
(297, 39, 9, '2021-01-06 02:00:04', '2021-01-06 02:00:04'),
(298, 39, 11, '2021-01-06 02:00:04', '2021-01-06 02:00:04'),
(299, 39, 32, '2021-01-06 02:00:04', '2021-01-06 02:00:04'),
(300, 39, 52, '2021-01-06 02:00:04', '2021-01-06 02:00:04'),
(301, 39, 79, '2021-01-06 02:00:04', '2021-01-06 02:00:04'),
(302, 39, 101, '2021-01-06 02:00:04', '2021-01-06 02:00:04'),
(303, 39, 108, '2021-01-06 02:00:04', '2021-01-06 02:00:04'),
(304, 39, 110, '2021-01-06 02:00:04', '2021-01-06 02:00:04'),
(305, 39, 112, '2021-01-06 02:00:04', '2021-01-06 02:00:04'),
(306, 39, 9, '2021-01-06 02:02:42', '2021-01-06 02:02:42'),
(307, 39, 10, '2021-01-06 02:02:42', '2021-01-06 02:02:42'),
(308, 39, 51, '2021-01-06 02:02:42', '2021-01-06 02:02:42'),
(309, 39, 95, '2021-01-06 02:02:42', '2021-01-06 02:02:42'),
(310, 39, 96, '2021-01-06 02:02:42', '2021-01-06 02:02:42'),
(311, 39, 110, '2021-01-06 02:02:42', '2021-01-06 02:02:42'),
(312, 24, 9, '2021-01-06 02:08:32', '2021-01-06 02:08:32'),
(313, 24, 71, '2021-01-06 02:08:32', '2021-01-06 02:08:32'),
(314, 24, 82, '2021-01-06 02:08:32', '2021-01-06 02:08:32'),
(315, 24, 92, '2021-01-06 02:08:32', '2021-01-06 02:08:32'),
(316, 24, 102, '2021-01-06 02:08:32', '2021-01-06 02:08:32'),
(317, 24, 108, '2021-01-06 02:08:32', '2021-01-06 02:08:32'),
(318, 24, 110, '2021-01-06 02:08:32', '2021-01-06 02:08:32'),
(319, 23, 108, '2021-01-06 02:13:14', '2021-01-06 02:13:14'),
(320, 23, 109, '2021-01-06 02:13:14', '2021-01-06 02:13:14'),
(321, 23, 110, '2021-01-06 02:13:14', '2021-01-06 02:13:14'),
(322, 23, 116, '2021-01-06 02:13:14', '2021-01-06 02:13:14'),
(323, 23, 119, '2021-01-06 02:13:14', '2021-01-06 02:13:14'),
(324, 27, 9, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(325, 27, 10, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(326, 27, 11, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(327, 27, 12, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(328, 27, 38, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(329, 27, 52, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(330, 27, 71, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(331, 27, 72, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(332, 27, 85, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(333, 27, 96, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(334, 27, 97, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(335, 27, 100, '2021-01-08 22:59:01', '2021-01-08 22:59:01'),
(336, 131, 9, '2021-01-08 23:09:42', '2021-01-08 23:09:42'),
(337, 131, 40, '2021-01-08 23:09:42', '2021-01-08 23:09:42'),
(338, 131, 60, '2021-01-08 23:09:42', '2021-01-08 23:09:42'),
(339, 131, 61, '2021-01-08 23:09:42', '2021-01-08 23:09:42'),
(340, 131, 75, '2021-01-08 23:09:42', '2021-01-08 23:09:42'),
(341, 131, 82, '2021-01-08 23:09:42', '2021-01-08 23:09:42'),
(342, 131, 95, '2021-01-08 23:09:42', '2021-01-08 23:09:42'),
(343, 131, 96, '2021-01-08 23:09:42', '2021-01-08 23:09:42'),
(344, 131, 110, '2021-01-08 23:09:42', '2021-01-08 23:09:42'),
(345, 131, 112, '2021-01-08 23:09:42', '2021-01-08 23:09:42'),
(346, 30, 9, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(347, 30, 12, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(348, 30, 22, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(349, 30, 41, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(350, 30, 61, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(351, 30, 75, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(352, 30, 83, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(353, 30, 92, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(354, 30, 100, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(355, 30, 106, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(356, 30, 108, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(357, 30, 121, '2021-01-08 23:28:27', '2021-01-08 23:28:27'),
(358, 26, 9, '2021-01-08 23:31:33', '2021-01-08 23:31:33'),
(359, 26, 21, '2021-01-08 23:31:33', '2021-01-08 23:31:33'),
(360, 26, 40, '2021-01-08 23:31:33', '2021-01-08 23:31:33'),
(361, 26, 41, '2021-01-08 23:31:33', '2021-01-08 23:31:33'),
(362, 26, 71, '2021-01-08 23:31:33', '2021-01-08 23:31:33'),
(363, 26, 83, '2021-01-08 23:31:33', '2021-01-08 23:31:33'),
(364, 26, 96, '2021-01-08 23:31:33', '2021-01-08 23:31:33'),
(365, 26, 106, '2021-01-08 23:31:33', '2021-01-08 23:31:33'),
(366, 26, 110, '2021-01-08 23:31:33', '2021-01-08 23:31:33'),
(367, 22, 9, '2021-01-08 23:37:04', '2021-01-08 23:37:04'),
(368, 22, 40, '2021-01-08 23:37:04', '2021-01-08 23:37:04'),
(369, 22, 60, '2021-01-08 23:37:04', '2021-01-08 23:37:04'),
(370, 22, 61, '2021-01-08 23:37:04', '2021-01-08 23:37:04'),
(371, 22, 85, '2021-01-08 23:37:04', '2021-01-08 23:37:04'),
(372, 22, 91, '2021-01-08 23:37:04', '2021-01-08 23:37:04'),
(373, 22, 101, '2021-01-08 23:37:04', '2021-01-08 23:37:04'),
(374, 22, 108, '2021-01-08 23:37:04', '2021-01-08 23:37:04'),
(375, 36, 9, '2021-01-08 23:43:48', '2021-01-08 23:43:48'),
(376, 36, 12, '2021-01-08 23:43:48', '2021-01-08 23:43:48'),
(377, 36, 63, '2021-01-08 23:43:48', '2021-01-08 23:43:48'),
(378, 36, 79, '2021-01-08 23:43:48', '2021-01-08 23:43:48'),
(379, 36, 92, '2021-01-08 23:43:48', '2021-01-08 23:43:48'),
(380, 36, 108, '2021-01-08 23:43:48', '2021-01-08 23:43:48'),
(381, 36, 112, '2021-01-08 23:43:48', '2021-01-08 23:43:48'),
(382, 21, 9, '2021-01-08 23:49:25', '2021-01-08 23:49:25'),
(383, 21, 27, '2021-01-08 23:49:25', '2021-01-08 23:49:25'),
(384, 21, 48, '2021-01-08 23:49:25', '2021-01-08 23:49:25'),
(385, 21, 80, '2021-01-08 23:49:25', '2021-01-08 23:49:25'),
(386, 21, 103, '2021-01-08 23:49:25', '2021-01-08 23:49:25'),
(387, 21, 108, '2021-01-08 23:49:25', '2021-01-08 23:49:25'),
(388, 21, 109, '2021-01-08 23:49:25', '2021-01-08 23:49:25'),
(389, 34, 9, '2021-01-08 23:51:55', '2021-01-08 23:51:55'),
(390, 34, 26, '2021-01-08 23:51:55', '2021-01-08 23:51:55'),
(391, 34, 53, '2021-01-08 23:51:55', '2021-01-08 23:51:55'),
(392, 34, 93, '2021-01-08 23:51:55', '2021-01-08 23:51:55'),
(393, 34, 104, '2021-01-08 23:51:55', '2021-01-08 23:51:55'),
(394, 34, 123, '2021-01-08 23:51:55', '2021-01-08 23:51:55'),
(395, 34, 130, '2021-01-08 23:51:55', '2021-01-08 23:51:55'),
(396, 19, 10, '2021-01-08 23:54:55', '2021-01-08 23:54:55'),
(397, 19, 27, '2021-01-08 23:54:55', '2021-01-08 23:54:55'),
(398, 19, 85, '2021-01-08 23:54:55', '2021-01-08 23:54:55'),
(399, 19, 103, '2021-01-08 23:54:55', '2021-01-08 23:54:55'),
(400, 19, 104, '2021-01-08 23:54:55', '2021-01-08 23:54:55'),
(401, 19, 108, '2021-01-08 23:54:55', '2021-01-08 23:54:55'),
(402, 19, 109, '2021-01-08 23:54:55', '2021-01-08 23:54:55'),
(403, 19, 125, '2021-01-08 23:54:55', '2021-01-08 23:54:55'),
(404, 19, 131, '2021-01-08 23:54:55', '2021-01-08 23:54:55'),
(405, 79, 9, '2021-01-09 00:24:37', '2021-01-09 00:24:37'),
(406, 79, 11, '2021-01-09 00:24:37', '2021-01-09 00:24:37'),
(407, 79, 27, '2021-01-09 00:24:37', '2021-01-09 00:24:37'),
(408, 79, 33, '2021-01-09 00:24:37', '2021-01-09 00:24:37'),
(409, 79, 43, '2021-01-09 00:24:37', '2021-01-09 00:24:37'),
(410, 79, 52, '2021-01-09 00:24:37', '2021-01-09 00:24:37'),
(411, 79, 71, '2021-01-09 00:24:37', '2021-01-09 00:24:37'),
(412, 79, 72, '2021-01-09 00:24:37', '2021-01-09 00:24:37'),
(413, 79, 108, '2021-01-09 00:24:37', '2021-01-09 00:24:37'),
(414, 79, 109, '2021-01-09 00:24:37', '2021-01-09 00:24:37'),
(415, 80, 10, '2021-01-09 00:26:21', '2021-01-09 00:26:21'),
(416, 80, 21, '2021-01-09 00:26:21', '2021-01-09 00:26:21'),
(417, 80, 43, '2021-01-09 00:26:21', '2021-01-09 00:26:21'),
(418, 80, 53, '2021-01-09 00:26:21', '2021-01-09 00:26:21'),
(419, 80, 75, '2021-01-09 00:26:21', '2021-01-09 00:26:21'),
(420, 80, 80, '2021-01-09 00:26:21', '2021-01-09 00:26:21'),
(421, 80, 101, '2021-01-09 00:26:21', '2021-01-09 00:26:21'),
(422, 80, 103, '2021-01-09 00:26:21', '2021-01-09 00:26:21'),
(423, 80, 116, '2021-01-09 00:26:21', '2021-01-09 00:26:21'),
(424, 80, 117, '2021-01-09 00:26:21', '2021-01-09 00:26:21'),
(425, 62, 9, '2021-01-09 00:32:09', '2021-01-09 00:32:09'),
(426, 62, 12, '2021-01-09 00:32:09', '2021-01-09 00:32:09'),
(427, 62, 27, '2021-01-09 00:32:09', '2021-01-09 00:32:09'),
(428, 62, 48, '2021-01-09 00:32:09', '2021-01-09 00:32:09'),
(429, 62, 72, '2021-01-09 00:32:09', '2021-01-09 00:32:09'),
(430, 62, 102, '2021-01-09 00:32:09', '2021-01-09 00:32:09'),
(431, 62, 104, '2021-01-09 00:32:09', '2021-01-09 00:32:09'),
(432, 61, 9, '2021-01-09 00:34:17', '2021-01-09 00:34:17'),
(433, 61, 11, '2021-01-09 00:34:17', '2021-01-09 00:34:17'),
(434, 61, 27, '2021-01-09 00:34:17', '2021-01-09 00:34:17'),
(435, 61, 48, '2021-01-09 00:34:17', '2021-01-09 00:34:17'),
(436, 61, 80, '2021-01-09 00:34:17', '2021-01-09 00:34:17'),
(437, 61, 97, '2021-01-09 00:34:17', '2021-01-09 00:34:17'),
(438, 61, 108, '2021-01-09 00:34:17', '2021-01-09 00:34:17'),
(439, 61, 109, '2021-01-09 00:34:17', '2021-01-09 00:34:17'),
(440, 61, 118, '2021-01-09 00:34:17', '2021-01-09 00:34:17'),
(441, 61, 119, '2021-01-09 00:34:17', '2021-01-09 00:34:17'),
(442, 10, 9, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(443, 10, 27, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(444, 10, 43, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(445, 10, 48, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(446, 10, 52, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(447, 10, 57, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(448, 10, 71, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(449, 10, 72, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(450, 10, 79, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(451, 10, 91, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(452, 10, 95, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(453, 10, 101, '2021-01-09 00:40:15', '2021-01-09 00:40:15'),
(454, 12, 9, '2021-01-09 00:48:22', '2021-01-09 00:48:22'),
(455, 12, 12, '2021-01-09 00:48:22', '2021-01-09 00:48:22'),
(456, 12, 44, '2021-01-09 00:48:22', '2021-01-09 00:48:22'),
(457, 12, 61, '2021-01-09 00:48:22', '2021-01-09 00:48:22'),
(458, 12, 81, '2021-01-09 00:48:22', '2021-01-09 00:48:22'),
(459, 12, 93, '2021-01-09 00:48:22', '2021-01-09 00:48:22'),
(460, 12, 97, '2021-01-09 00:48:22', '2021-01-09 00:48:22'),
(461, 12, 108, '2021-01-09 00:48:22', '2021-01-09 00:48:22'),
(462, 12, 109, '2021-01-09 00:48:22', '2021-01-09 00:48:22'),
(463, 12, 119, '2021-01-09 00:48:22', '2021-01-09 00:48:22'),
(464, 12, 124, '2021-01-09 00:48:22', '2021-01-09 00:48:22'),
(465, 64, 9, '2021-01-09 00:54:04', '2021-01-09 00:54:04'),
(466, 64, 12, '2021-01-09 00:54:04', '2021-01-09 00:54:04'),
(467, 64, 29, '2021-01-09 00:54:04', '2021-01-09 00:54:04'),
(468, 64, 39, '2021-01-09 00:54:04', '2021-01-09 00:54:04'),
(469, 64, 53, '2021-01-09 00:54:04', '2021-01-09 00:54:04'),
(470, 64, 64, '2021-01-09 00:54:04', '2021-01-09 00:54:04'),
(471, 64, 86, '2021-01-09 00:54:04', '2021-01-09 00:54:04'),
(472, 64, 93, '2021-01-09 00:54:04', '2021-01-09 00:54:04'),
(473, 64, 95, '2021-01-09 00:54:05', '2021-01-09 00:54:05'),
(474, 64, 103, '2021-01-09 00:54:05', '2021-01-09 00:54:05'),
(475, 64, 104, '2021-01-09 00:54:05', '2021-01-09 00:54:05'),
(476, 64, 112, '2021-01-09 00:54:05', '2021-01-09 00:54:05'),
(477, 64, 123, '2021-01-09 00:54:05', '2021-01-09 00:54:05'),
(478, 63, 9, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(479, 63, 12, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(480, 63, 27, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(481, 63, 43, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(482, 63, 53, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(483, 63, 79, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(484, 63, 80, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(485, 63, 96, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(486, 63, 97, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(487, 63, 102, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(488, 63, 108, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(489, 63, 109, '2021-01-09 01:02:05', '2021-01-09 01:02:05'),
(490, 75, 9, '2021-01-09 01:08:31', '2021-01-09 01:08:31'),
(491, 75, 21, '2021-01-09 01:08:31', '2021-01-09 01:08:31'),
(492, 75, 43, '2021-01-09 01:08:31', '2021-01-09 01:08:31'),
(493, 75, 71, '2021-01-09 01:08:31', '2021-01-09 01:08:31'),
(494, 75, 72, '2021-01-09 01:08:31', '2021-01-09 01:08:31'),
(495, 75, 92, '2021-01-09 01:08:31', '2021-01-09 01:08:31'),
(496, 75, 102, '2021-01-09 01:08:31', '2021-01-09 01:08:31'),
(497, 75, 108, '2021-01-09 01:08:31', '2021-01-09 01:08:31'),
(498, 75, 109, '2021-01-09 01:08:31', '2021-01-09 01:08:31'),
(499, 65, 9, '2021-01-09 01:17:25', '2021-01-09 01:17:25'),
(500, 65, 10, '2021-01-09 01:17:25', '2021-01-09 01:17:25'),
(501, 65, 11, '2021-01-09 01:17:25', '2021-01-09 01:17:25'),
(502, 65, 12, '2021-01-09 01:17:25', '2021-01-09 01:17:25'),
(503, 65, 25, '2021-01-09 01:17:25', '2021-01-09 01:17:25'),
(504, 65, 27, '2021-01-09 01:17:25', '2021-01-09 01:17:25'),
(505, 65, 32, '2021-01-09 01:17:25', '2021-01-09 01:17:25'),
(506, 65, 48, '2021-01-09 01:17:25', '2021-01-09 01:17:25'),
(507, 65, 72, '2021-01-09 01:17:25', '2021-01-09 01:17:25'),
(508, 65, 75, '2021-01-09 01:17:25', '2021-01-09 01:17:25'),
(509, 13, 10, '2021-01-09 01:21:50', '2021-01-09 01:21:50'),
(510, 13, 11, '2021-01-09 01:21:50', '2021-01-09 01:21:50'),
(511, 13, 27, '2021-01-09 01:21:50', '2021-01-09 01:21:50'),
(512, 13, 48, '2021-01-09 01:21:50', '2021-01-09 01:21:50'),
(513, 13, 80, '2021-01-09 01:21:50', '2021-01-09 01:21:50'),
(514, 13, 103, '2021-01-09 01:21:50', '2021-01-09 01:21:50'),
(515, 13, 118, '2021-01-09 01:21:50', '2021-01-09 01:21:50'),
(516, 13, 130, '2021-01-09 01:21:50', '2021-01-09 01:21:50'),
(517, 13, 131, '2021-01-09 01:21:50', '2021-01-09 01:21:50'),
(518, 9, 9, '2021-01-09 01:40:49', '2021-01-09 01:40:49'),
(519, 9, 10, '2021-01-09 01:40:49', '2021-01-09 01:40:49'),
(520, 9, 27, '2021-01-09 01:40:49', '2021-01-09 01:40:49'),
(521, 9, 58, '2021-01-09 01:40:49', '2021-01-09 01:40:49'),
(522, 9, 93, '2021-01-09 01:40:49', '2021-01-09 01:40:49'),
(523, 9, 103, '2021-01-09 01:40:49', '2021-01-09 01:40:49'),
(524, 9, 104, '2021-01-09 01:40:49', '2021-01-09 01:40:49'),
(525, 9, 113, '2021-01-09 01:40:49', '2021-01-09 01:40:49'),
(526, 9, 118, '2021-01-09 01:40:49', '2021-01-09 01:40:49'),
(527, 132, 10, '2021-01-09 02:10:45', '2021-01-09 02:10:45'),
(528, 132, 32, '2021-01-09 02:10:45', '2021-01-09 02:10:45'),
(529, 132, 43, '2021-01-09 02:10:45', '2021-01-09 02:10:45'),
(530, 132, 63, '2021-01-09 02:10:45', '2021-01-09 02:10:45'),
(531, 132, 80, '2021-01-09 02:10:45', '2021-01-09 02:10:45'),
(532, 132, 92, '2021-01-09 02:10:45', '2021-01-09 02:10:45'),
(533, 132, 93, '2021-01-09 02:10:45', '2021-01-09 02:10:45'),
(534, 132, 102, '2021-01-09 02:10:45', '2021-01-09 02:10:45'),
(535, 132, 104, '2021-01-09 02:10:45', '2021-01-09 02:10:45'),
(536, 132, 112, '2021-01-09 02:10:45', '2021-01-09 02:10:45'),
(537, 132, 113, '2021-01-09 02:10:45', '2021-01-09 02:10:45'),
(538, 132, 9, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(539, 132, 11, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(540, 132, 43, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(541, 132, 53, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(542, 132, 64, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(543, 132, 84, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(544, 132, 87, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(545, 132, 97, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(546, 132, 104, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(547, 132, 108, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(548, 132, 109, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(549, 132, 112, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(550, 132, 113, '2021-01-09 02:14:06', '2021-01-09 02:14:06'),
(552, 132, 62, '2021-03-02 06:56:02', '2021-03-02 06:56:02'),
(553, 132, 63, '2021-03-02 06:56:02', '2021-03-02 06:56:02'),
(554, 132, 10, '2021-03-02 06:59:44', '2021-03-02 06:59:44'),
(555, 132, 11, '2021-03-02 06:59:44', '2021-03-02 06:59:44'),
(556, 131, 37, '2021-03-02 23:38:02', '2021-03-02 23:38:02'),
(557, 131, 38, '2021-03-02 23:38:02', '2021-03-02 23:38:02'),
(558, 131, 39, '2021-03-02 23:38:02', '2021-03-02 23:38:02'),
(559, 131, 40, '2021-03-02 23:38:02', '2021-03-02 23:38:02'),
(560, 39, 9, '2021-03-03 00:44:21', '2021-03-03 00:44:21'),
(561, 39, 10, '2021-03-03 00:44:21', '2021-03-03 00:44:21'),
(562, 39, 12, '2021-03-03 00:44:21', '2021-03-03 00:44:21'),
(563, 39, 38, '2021-03-03 00:44:21', '2021-03-03 00:44:21'),
(564, 39, 64, '2021-03-03 00:44:21', '2021-03-03 00:44:21'),
(565, 19, 9, '2021-03-03 02:23:10', '2021-03-03 02:23:10'),
(566, 19, 10, '2021-03-03 02:23:10', '2021-03-03 02:23:10'),
(567, 19, 11, '2021-03-03 02:23:10', '2021-03-03 02:23:10'),
(568, 19, 12, '2021-03-03 02:23:10', '2021-03-03 02:23:10'),
(569, 19, 13, '2021-03-03 02:23:10', '2021-03-03 02:23:10'),
(570, 19, 19, '2021-03-03 02:23:10', '2021-03-03 02:23:10'),
(571, 21, 9, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(572, 21, 10, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(573, 21, 11, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(574, 21, 12, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(575, 21, 13, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(576, 21, 19, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(577, 21, 21, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(578, 21, 22, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(579, 21, 23, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(580, 21, 24, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(581, 21, 25, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(582, 21, 26, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(583, 21, 27, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(584, 21, 29, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(585, 21, 30, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(586, 21, 32, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(587, 21, 33, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(588, 21, 34, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(589, 21, 35, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(590, 21, 36, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(591, 21, 37, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(592, 21, 38, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(593, 21, 39, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(594, 21, 40, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(595, 21, 41, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(596, 21, 42, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(597, 21, 43, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(598, 21, 44, '2021-03-03 03:19:52', '2021-03-03 03:19:52'),
(599, 22, 11, '2021-03-03 03:26:48', '2021-03-03 03:26:48'),
(600, 22, 27, '2021-03-03 03:26:48', '2021-03-03 03:26:48'),
(601, 22, 43, '2021-03-03 03:26:48', '2021-03-03 03:26:48'),
(602, 22, 73, '2021-03-03 03:26:48', '2021-03-03 03:26:48'),
(603, 22, 103, '2021-03-03 03:26:48', '2021-03-03 03:26:48'),
(604, 22, 124, '2021-03-03 03:26:48', '2021-03-03 03:26:48'),
(605, 22, 131, '2021-03-03 03:26:48', '2021-03-03 03:26:48'),
(606, 23, 10, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(607, 23, 11, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(608, 23, 12, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(609, 23, 13, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(610, 23, 19, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(611, 23, 21, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(612, 23, 22, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(613, 23, 23, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(614, 23, 24, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(615, 23, 25, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(616, 23, 26, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(617, 23, 27, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(618, 23, 29, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(619, 23, 30, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(620, 23, 32, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(621, 23, 33, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(622, 23, 34, '2021-03-03 03:29:27', '2021-03-03 03:29:27'),
(623, 24, 11, '2021-03-03 03:32:50', '2021-03-03 03:32:50'),
(624, 24, 27, '2021-03-03 03:32:50', '2021-03-03 03:32:50'),
(625, 24, 62, '2021-03-03 03:32:50', '2021-03-03 03:32:50'),
(626, 24, 81, '2021-03-03 03:32:50', '2021-03-03 03:32:50'),
(627, 24, 94, '2021-03-03 03:32:50', '2021-03-03 03:32:50'),
(628, 24, 105, '2021-03-03 03:32:50', '2021-03-03 03:32:50'),
(629, 24, 123, '2021-03-03 03:32:50', '2021-03-03 03:32:50'),
(630, 24, 131, '2021-03-03 03:32:50', '2021-03-03 03:32:50'),
(631, 25, 10, '2021-03-03 03:35:26', '2021-03-03 03:35:26'),
(632, 25, 26, '2021-03-03 03:35:26', '2021-03-03 03:35:26'),
(633, 25, 48, '2021-03-03 03:35:26', '2021-03-03 03:35:26'),
(634, 25, 72, '2021-03-03 03:35:26', '2021-03-03 03:35:26'),
(635, 25, 80, '2021-03-03 03:35:26', '2021-03-03 03:35:26'),
(636, 25, 98, '2021-03-03 03:35:26', '2021-03-03 03:35:26'),
(637, 25, 108, '2021-03-03 03:35:26', '2021-03-03 03:35:26'),
(638, 25, 118, '2021-03-03 03:35:26', '2021-03-03 03:35:26'),
(639, 25, 128, '2021-03-03 03:35:26', '2021-03-03 03:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `star` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_points`
--

CREATE TABLE `reward_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `point` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_points`
--

INSERT INTO `reward_points` (`id`, `user_id`, `point`, `created_at`, `updated_at`) VALUES
(1, 3, 99365, '2020-10-19 10:40:46', '2020-10-19 10:40:46'),
(2, 6, 2810, '2020-10-28 02:41:38', '2020-10-28 02:41:38'),
(3, 4, 0, '2020-10-29 09:07:35', '2020-10-29 09:07:35'),
(4, 5, 0, '2020-11-02 01:08:10', '2020-11-02 01:08:10'),
(5, 8, 300, '2020-11-02 01:54:29', '2020-11-02 01:54:29'),
(6, 9, 600, '2020-11-02 02:49:36', '2020-11-02 02:49:36'),
(7, 10, 300, '2020-11-02 03:34:08', '2020-11-02 03:34:08'),
(8, 11, 0, '2020-11-02 12:30:05', '2020-11-02 12:30:05'),
(9, 12, 310, '2020-11-07 12:34:04', '2020-11-07 12:34:04'),
(10, 17, 0, '2020-12-03 14:52:30', '2020-12-03 14:52:30'),
(11, 20, 0, '2020-12-09 00:09:44', '2020-12-09 00:09:44'),
(12, 15, 0, '2020-12-11 23:27:29', '2020-12-11 23:27:29'),
(13, 21, 0, '2021-01-03 13:02:22', '2021-01-03 13:02:22'),
(14, 27, 0, '2021-03-02 07:21:28', '2021-03-02 07:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Super Admin', '2020-10-11 02:06:38', '2020-11-26 07:37:53'),
(2, 'user', 'Normal User', '2020-10-11 02:06:38', '2020-10-11 02:06:38'),
(3, 'seller', 'Seller', '2020-10-12 01:51:03', '2020-10-12 01:51:03'),
(4, 'wholesale-seller', 'Wholesale Seller', NULL, NULL),
(5, 'admin-s', 'Admin', '2020-11-16 13:32:41', '2020-11-26 07:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/January2021/t1t3JwMBmJoOAOPWao7q.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'echem', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to  Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/January2021/tl2azCR7hJl6mpNgoMh0.jpeg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `user_id`, `is_active`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'absolute niche', 4, 1, 'Perfumes', NULL, '2020-10-12 04:46:00', '2020-10-12 04:50:06'),
(2, 'ec', 5, 1, 'Paintings', NULL, '2020-10-12 04:47:00', '2020-10-29 08:40:54'),
(3, 'coxs', 8, 1, 'Shop', NULL, '2020-11-02 02:44:00', '2020-11-02 02:47:05'),
(4, 'M R Printing', 12, 1, 'Printing Chemical', NULL, '2020-11-07 12:28:00', '2020-11-09 09:38:02'),
(5, 'DISCOVERY CHEMICAL CORPORATION', 18, 1, 'chemical shop', NULL, '2020-11-30 00:37:00', '2020-11-30 00:59:00'),
(6, 'Combet', 23, 0, 'Administrator', NULL, '2021-01-17 04:03:46', '2021-01-17 04:03:46'),
(7, 'Safe Chem  Innovation', 24, 1, 'Garments Chemical Corporation', NULL, '2021-01-19 23:12:00', '2021-01-19 23:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `site_reviews`
--

CREATE TABLE `site_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_reviews`
--

INSERT INTO `site_reviews` (`id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 3, 'hejhfcjhas', '2020-10-30 16:00:53', '2020-10-30 16:00:53'),
(2, 3, 'hejhfcjhas', '2020-10-30 16:01:49', '2020-10-30 16:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `sub_orders`
--

CREATE TABLE `sub_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` double(8,2) NOT NULL,
  `item_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seller_type` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_orders`
--

INSERT INTO `sub_orders` (`id`, `order_id`, `seller_id`, `status`, `grand_total`, `item_count`, `created_at`, `updated_at`, `seller_type`) VALUES
(1, 5, 4, 'completed', 6500.00, 1, '2020-12-08 11:19:02', '2020-12-08 11:24:59', NULL),
(2, 6, 4, 'completed', 1200.00, 1, '2020-12-08 11:31:37', '2020-12-08 11:33:24', NULL),
(3, 7, 4, 'pending', 6500.00, 1, '2020-12-08 11:43:34', '2020-12-08 11:43:34', NULL),
(4, 8, 4, 'pending', 6500.00, 1, '2020-12-08 11:49:13', '2020-12-08 11:49:13', NULL),
(5, 9, 4, 'pending', 6500.00, 1, '2020-12-08 12:00:28', '2020-12-08 12:00:28', NULL),
(6, 10, 4, 'pending', 1200.00, 1, '2020-12-08 23:03:02', '2020-12-08 23:03:02', NULL),
(7, 11, 4, 'pending', 6500.00, 1, '2020-12-08 23:10:50', '2020-12-08 23:10:50', NULL),
(8, 24, 10, 'pending', 19500.00, 1, '2020-12-14 01:48:53', '2020-12-14 01:48:53', NULL),
(9, 25, 10, 'pending', 650.00, 1, '2020-12-14 01:57:39', '2020-12-14 01:57:39', NULL),
(10, 28, 10, 'pending', 1700.00, 1, '2020-12-26 03:42:17', '2020-12-26 03:42:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_order_items`
--

CREATE TABLE `sub_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_commission` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_order_items`
--

INSERT INTO `sub_order_items` (`id`, `sub_order_id`, `product_id`, `price`, `quantity`, `size`, `product_commission`) VALUES
(8, 8, 75, 19500.00, 1, ' 30KG', NULL),
(9, 9, 75, 650.00, 1, ' 1KG', NULL),
(10, 10, 114, 1700.00, 1, ' 1KG', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_paid` double(8,2) NOT NULL,
  `commission` double(8,2) NOT NULL,
  `status` enum('pending','processing','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_order_item_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `is_affiliate` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `phone`, `is_affiliate`) VALUES
(3, 1, 'admin-new', 'a@email.com', 'users/default.png', NULL, '$2y$10$K0rHMDQkOZy9AtXXCxiKHudpH8eUSmFYfgzC93LZkgAjm1MhqTrIu', 'BB8NyOSYVfkLovOPZTrUJR4YWBnx5AekWSevL3X7CErJeLRNL3tTUBD6gQ8Q', NULL, '2020-10-11 02:09:28', '2020-12-12 03:27:29', 1720345550, 1),
(4, 3, 'khaled', 'k@gmail.com', 'users/default.png', NULL, '$2y$10$XZRAXbltKpHx3hltOZsZwuocumMz/NKtw2jO6dFXlJIMh3hBappD2', NULL, '{\"locale\":\"en\"}', '2020-10-11 22:51:15', '2020-12-11 12:11:39', 0, 0),
(5, 3, 'echem', 'e@gmail.com', 'users/default.png', NULL, '$2y$10$LzZgnMh01QKlvKIhuWRbVezEyrCJEPPw3ey.0Q.YgcMIJE3VG1k8u', NULL, NULL, '2020-10-11 22:52:20', '2020-10-29 08:40:55', 0, 0),
(6, 2, 'Jamilur rahman', 'abir2jamilur30@gmail.com', 'users/default.png', NULL, '$2y$10$zKSeYCneq9sUwAom/kCGoO0QXtm/S0.UZtzHZR2scYUq6eW8eQ40W', NULL, NULL, '2020-10-27 05:47:39', '2020-10-27 05:47:39', 1787201430, 0),
(7, 2, 'abc', 'abc@email.com', 'users/default.png', NULL, '$2y$10$5IZwRC/RicxWkK4QKKEiiOXV5NCCaj5XBkRG5PV0CpmYZB1U78cVi', NULL, NULL, '2020-10-28 23:21:35', '2020-10-28 23:21:35', 1787201430, 0),
(8, 3, 'Mhraihan', 'coxsonline@gmail.com', 'users/default.png', NULL, '$2y$10$GUgCVf6TzloWRRwtAfCrzuAnhB7qDUVYlpF3/65a2WpXCaGzBoAKC', NULL, NULL, '2020-11-02 01:52:53', '2020-12-11 23:05:19', 1762321618, 1),
(9, 2, 'new', 'khaled.abulkalam@gmail.com', 'users/default.png', NULL, '$2y$10$N4cuCxs.AJImaFYk4r5DZecn4HbytwSsmkvkHIBzmSlnK6NVIodW2', NULL, NULL, '2020-11-02 02:45:27', '2020-12-09 23:52:38', 1720345550, 0),
(10, 4, 'itshop', 'itudyokta@gmail.com', 'users/default.png', NULL, '$2y$10$MnYoZHf2LWfogSqWlRJqG.uQl8KV2Brn.rP49Wxay.n501ApuKiry', NULL, NULL, '2020-11-02 03:30:23', '2020-11-02 10:31:01', 1762321618, 0),
(11, 2, 'test', 'test@gmail.com', 'users/default.png', NULL, '$2y$10$dww1w1me/cHJPtxwt8IEuOiIk9nssSZMoJHSDTtyXwfvESOX/wf8u', NULL, NULL, '2020-11-02 11:57:54', '2020-11-02 11:57:54', 12345678, 0),
(12, 2, 'Mizanur Rahman', 'mrahman0004@gmail.com', 'users/default.png', NULL, '$2y$10$lBU8zzUK0mW2HFtZ5CBWBuzvSuJ0AsHxTCdvkbJ2qPFnP1F9p6ATW', NULL, NULL, '2020-11-07 12:25:19', '2020-11-07 12:25:20', 1880006362, 0),
(13, 2, 'sheikh', 'sheikhnayan1997@gmail.com', 'users/default.png', NULL, '$2y$10$TjXeAieQErAhTyplVj999uaNu8gunbzVhNYgW3jI/Pii.6zjFMqSW', NULL, NULL, '2020-11-13 18:23:40', '2020-11-13 18:23:40', 1980265838, 0),
(14, 5, 'alig', 'ali@gmail.com', 'users/default.png', '2020-11-26 21:35:00', '$2y$10$lcRMdO5AMFQN2QaJKlixeuo3gWdtOzFNQBHgbBmyrsutMcHjyhsRG', NULL, NULL, '2020-11-16 13:36:05', '2020-12-08 01:04:41', 123456, 1),
(15, 2, 'Raihan', 'raihancox2010@gmail.com', 'users/default.png', NULL, '$2y$10$tQdXgvVkssDxgDUcAY8opekeqXNVkbx.ifkQXpXOT4cx0JOhupon6', NULL, NULL, '2020-11-25 12:26:57', '2021-01-13 02:30:12', 1835816389, 1),
(16, 2, 'Jamilur rahman', 'x@email.com', 'users/default.png', NULL, '$2y$10$O7cUWzgrZe/v0D6PW2FSNOAHwDi5mVA3qzAJS6YS5TxiMFDi6hk0O', NULL, NULL, '2020-11-26 00:00:15', '2020-11-26 00:00:15', 1, 0),
(17, 2, 'sheikh', 'test@test.com', 'users/default.png', NULL, '$2y$10$QRnuOXirDHAzwBTby54yoOOtW0/HyM2jpK7AD65brtY0GoA.oQexS', NULL, NULL, '2020-11-26 01:29:13', '2020-11-26 01:29:13', 1980265838, 0),
(18, 3, 'Masum Billah', 'discoverychemicalcorporation@gmail.com', 'users/default.png', NULL, '$2y$10$dugUUY0AzA2OZ/qNgzkR4Oe.frc55M5L0s1TtHE.WcbdrulZOtgha', NULL, NULL, '2020-11-30 00:36:55', '2020-11-30 00:59:44', 1948865434, 0),
(19, 2, 'test', 'hatipe2836@dkt1.com', 'users/default.png', NULL, '$2y$10$miSAdyznkXyL5xKyeYY2.eQoDqxQNBj0NxE0IMePJyUnJx5LVyCAi', NULL, NULL, '2020-12-01 07:10:26', '2020-12-01 07:10:26', 552126244, 0),
(20, 2, 'shafiqul islam', 'eurobegalmachines@gmail.com', 'users/default.png', NULL, '$2y$10$VKIjssAXXWAfIvI7ZFizvOvT32ju6ZJKQqzqiJJp716wHONAnK7EW', NULL, NULL, '2020-12-09 00:06:17', '2020-12-09 00:06:17', 1880006355, 0),
(21, 2, 'Md Hasmat Ali', 'adihanhasan@gmail.com', 'users/default.png', NULL, '$2y$10$VrwNNoibZ01DekUCY5LzLuovzWmqnHCxigvbjpQL1pwKz5TlwRLki', NULL, NULL, '2021-01-03 13:01:44', '2021-01-03 13:01:44', 2147483647, 0),
(22, 2, 'Parvez hossain jabed', 'parvezhossainjabed3@gmail.com', 'users/default.png', NULL, '$2y$10$BSIWeuOScqyk79uvTEzdkOrLdEcHF.6xVXyZKnIpTmSZoYr3T.Fem', NULL, NULL, '2021-01-08 22:56:10', '2021-01-08 22:56:10', 1880006372, 0),
(23, 2, 'Combet Combet', 'mr.combetohct@gmail.com', 'users/default.png', NULL, '$2y$10$6QK6aiF.NRoSbsVrRHzNXuLPq9lpg5gF1wi74Kt75YjObWmAwcoUm', NULL, NULL, '2021-01-17 03:55:51', '2021-01-17 03:55:51', 2147483647, 0),
(24, 3, 'A S M Solaiman Shojib', 'solaiman.shojib@gmail.com', 'users/default.png', NULL, '$2y$10$Oc8LlvJmvCLOIrVJrKRameA.ZGGp8bqKmFjJyIvsoY34A95/F/X4i', '4c9gvKynfJEdLMrSLsC3AQLEM3ihiyZDhYvdKxPzChVup7sCmc5YSyEK72VX', NULL, '2021-01-19 23:00:53', '2021-01-19 23:13:35', 1675517947, 0),
(25, 2, 'Rabiul islam', 'rabiulislam87.rir@gmail.com', 'users/default.png', NULL, '$2y$10$rPHcmIRlWVNgl07dxChycuptbewSgTASFE9WlJgslRo0DouPfLzZe', NULL, NULL, '2021-01-20 11:48:47', '2021-01-20 11:48:47', 2147483647, 0),
(26, 2, 'roni molla', 'mollaroni12@gmail.com', 'users/default.png', NULL, '$2y$10$t7OdJEw2VdpNCQg3haevcO/ay6gU.INk/jSw90kCyaRQUeNbqgH8m', NULL, NULL, '2021-02-06 04:01:57', '2021-02-06 04:01:57', 1126828387, 0),
(27, 2, 'Rafid', 'rafidahasan698@gmail.com', 'users/default.png', NULL, '$2y$10$iHaAA4KwoVjDPcT5XqyBruWVYN5eA1P5ARWhLCvS3OGZkcXTqZGSq', NULL, NULL, '2021-03-02 07:19:20', '2021-03-02 07:19:20', 13256, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `category_id`, `video`, `name`, `description`, `created_at`, `updated_at`) VALUES
(5, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ChFxBH3xhUU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Hybrid Foil Adhesive', 'Hybrid Foil Adhesive', '2020-11-14 09:33:07', '2020-11-14 09:33:07'),
(6, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wqa03BPO6cQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'WT White WT Clear', 'WT White WT Clear', '2020-11-14 11:21:56', '2020-11-14 11:21:56'),
(7, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vZOl7TSdsSQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Water Based Poly White', 'Water Based Poly White', '2020-11-14 11:23:04', '2020-11-14 11:23:04'),
(8, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/laX3P7yhkXE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Water Based ink', 'Water Based ink', '2020-11-14 11:24:09', '2020-11-14 11:24:09'),
(9, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/T-cqB_hBkPA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TB White TB Clear With Pigment', 'TB White TB Clear With Pigment', '2020-11-14 11:25:54', '2020-11-14 11:25:54'),
(10, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jTOjuyiZ4uM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Plastisol PL Series by echem', 'Plastisol PL Series by echem', '2020-11-14 11:27:03', '2020-11-14 11:27:03'),
(11, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MQOPGJ68Wi8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PL White PL Color by echem', 'PL White PL Color by echem', '2020-11-14 11:29:53', '2020-11-14 11:29:53'),
(12, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nXxKtagaZAY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PL Puff PL Black by echem', 'PL Puff PL Black by echem', '2020-11-14 12:05:28', '2020-11-14 12:05:28'),
(13, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/h8DrZcqGolU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PL Low Bleed', 'PL Low Bleed#', '2020-11-14 12:06:27', '2020-11-14 12:06:27'),
(14, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/w-9jFBqV4t0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PL Foil Adhesive', 'PL Foil Adhesive', '2020-11-14 12:07:41', '2020-11-14 12:07:41'),
(15, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NASb6USfczs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ND White ND Clear Base', 'ND White ND Clear Base', '2020-11-14 12:08:41', '2020-11-14 12:08:41'),
(16, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3d__Fvw5agE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Hybrid LM White of Mesh 110', 'Hybrid LM White of Mesh 110', '2020-11-14 12:10:24', '2020-11-14 12:10:24'),
(17, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xq6aw1cOXiM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Hybrid HM LM Clear', 'Hybrid HM LM Clear', '2020-11-14 12:15:40', '2020-11-14 12:15:40'),
(18, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/H_5YO7AM43I\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Hybrid HM LM White', 'Hybrid HM LM White', '2020-11-14 12:17:14', '2020-11-14 12:17:14'),
(20, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vdF-lrqlLO4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How To Screen Print Video Series Screen Printing Overview ECHEM', 'How To Screen Print Video Series Screen Printing Overview ECHEM', '2021-01-02 00:50:49', '2021-01-02 00:50:49'),
(22, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Zc8ezEkKWbA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Film Output ECHEM', 'How to Screen Print Series Film Output ECHEM', '2021-01-02 00:57:55', '2021-01-02 00:57:55'),
(23, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mrXCMV2UYP4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Art Preparation ECHEM', 'How to Screen Print Series Art Preparation ECHEM', '2021-01-02 00:58:54', '2021-01-02 00:58:54'),
(24, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JDqciFv5qCE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to Screen Print Series   Choosing the Right Shirt ECHEM', 'How to Screen Print Series   Choosing the Right Shirt ECHEM', '2021-01-04 00:22:23', '2021-01-04 00:22:23'),
(28, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hqcTZ_NBUFM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to Screen Print Series Cleaning Up ECHEM', 'How to Screen Print Series Cleaning Up ECHEM', '2021-01-04 00:51:00', '2021-01-04 00:54:11'),
(29, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/j_MsmVRdN24\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to Screen Print Series Curing Your Prints', 'How to Screen Print Series Curing Your Prints', '2021-01-04 01:08:06', '2021-01-04 01:08:06'),
(31, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hu6yV1_SBEQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to Screen Print Series Press Registration', 'How to Screen Print Series Press Registration', '2021-01-04 01:14:58', '2021-01-04 01:14:58'),
(32, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fgH_PAjFBmo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to Screen Print Series Quality Control Folding & Boxing', 'How to Screen Print Series Quality Control Folding & Boxing', '2021-01-04 01:19:00', '2021-01-04 01:25:50'),
(33, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xZIxNQCej-c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to Screen Print Series Screen Exposure E CHEM', 'How to Screen Print Series Screen Exposure E CHEM', '2021-01-04 01:59:23', '2021-01-04 01:59:23'),
(34, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GNURBW7wJJU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Screen Prep', 'How to Screen Print Series Screen Prep', '2021-01-05 22:49:49', '2021-01-05 22:49:49'),
(35, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zQrUmHNiPp4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Screen Printing Ink', 'Screen Printing Ink', '2021-01-06 00:10:11', '2021-01-06 00:10:11'),
(36, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Gyo5C2Y6IOE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Screen Printing Press Setup', 'How to Screen Print Series   Screen Printing Press Setup E CHEM', '2021-01-06 00:21:46', '2021-01-06 00:21:46'),
(37, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/w-YT3546k_A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Screen Printing Techniques', 'Screen Printing Techniques', '2021-01-10 23:18:52', '2021-01-10 23:18:52'),
(38, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CwZiL0-kn60\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Screens and Darkroom', 'Screens and Darkroom', '2021-01-10 23:39:38', '2021-01-10 23:39:38'),
(39, 4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/o33zD4iTOZo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '4 Ways To Screen Print Black Plastisol Ink On A Black Shirt', '4 Ways To Screen Print Black Plastisol Ink On A Black Shirt', '2021-01-10 23:51:28', '2021-01-10 23:51:28'),
(40, 4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ObprP8pcQK8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Financially Necessary Plastisol Ink', 'FN INK™   Financially Necessary Plastisol Ink E CHEM', '2021-01-10 23:55:37', '2021-01-10 23:55:37'),
(41, 4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/d3hRJ0u6kTM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'A 4 Color Print Using Tilted Micros Riley Hopkins 250', 'A 4 Color Print Using Tilted Micros Riley Hopkins 250', '2021-01-11 00:24:18', '2021-01-11 00:24:18'),
(42, 4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_cFgCofTXD4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'White Plastisol Ink With A Smoothing Screen', 'White Plastisol Ink With A Smoothing Screen', '2021-01-11 00:33:57', '2021-01-11 00:33:57'),
(43, 4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PP0p-DlruRQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How To Screen Print Wet On Wet Halftones And Color Blends For A Vintage Look Wit', 'How To Screen Print Wet On Wet Halftones And Color Blends For A Vintage Look Wit', '2021-01-11 00:58:35', '2021-01-11 00:58:35'),
(44, 4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VbjtiatRhLQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Printing Glow Phosphorescent Inks', 'Printing Glow Phosphorescent Inks', '2021-01-11 01:33:26', '2021-01-11 01:33:26'),
(45, 4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wOSIRyBtxlg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Demo ISS Ft Worth', 'Demo ISS Ft Worth', '2021-01-11 01:43:31', '2021-01-11 01:43:31'),
(46, 4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mB8tktVvns4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Registering and Printing a 3 Color Design on the Riley Hopkins 150', 'Registering and Printing a 3 Color Design on the Riley Hopkins 150', '2021-01-11 01:57:18', '2021-01-11 01:57:18'),
(47, 4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wgKiYXeWivw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'What To Look For When Curing Plastisol With A Flash', 'What To Look For When Curing Plastisol With A Flash', '2021-01-11 02:21:08', '2021-01-11 02:21:08'),
(48, 5, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YX95yKJMf9I\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How To Register A 4 Color Print Using Tilted Micros Riley Hopkins 250', 'How To Register A 4 Color Print Using Tilted Micros Riley Hopkins 250', '2021-01-12 22:39:28', '2021-01-12 22:39:28'),
(49, 5, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GH8zAS1FfZw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How To Screen Print Black Plastisol Ink On A Light Garment', 'How To Screen Print Black Plastisol Ink On A Light Garment', '2021-01-12 22:46:16', '2021-01-12 22:46:16'),
(50, 5, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rB2-BQa0Y5M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to Screen Print FN INK™ White Plastisol Ink With A Smoothing Screen', 'How to Screen Print FN INK™ White Plastisol Ink With A Smoothing Screen', '2021-01-12 22:58:39', '2021-01-12 22:58:39'),
(51, 5, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_63XHE7daZM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How To Screen Print Wet On Wet Halftones And Color Blends For A Vintage Look Wit', 'How To Screen Print Wet On Wet Halftones And Color Blends For A Vintage Look Wit', '2021-01-12 23:11:42', '2021-01-12 23:11:42'),
(52, 5, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dOdRj-rYzbk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Printing Glow Phosphorescent Inks', 'Printing Glow Phosphorescent Inks', '2021-01-12 23:16:57', '2021-01-12 23:16:57'),
(53, 5, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/w6Nm-qYy3qI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Riley Hopkins 250 Print Precision Made Affordable', 'Riley Hopkins 250 Print Precision Made Affordable', '2021-01-12 23:19:37', '2021-01-12 23:19:37'),
(54, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Y2FUYBf6wzU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'কালো শার্টে কালো প্লাস্টিসল কালি স্ক্রিন করার 4 টি উপায়', '4 Ways To Screen Print Black Plastisol Ink On A Black Shirt', '2021-01-15 23:36:42', '2021-01-15 23:36:42'),
(55, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/m7Z6N1SqERI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'আরওকিউ ফোল্ড এবং প্যাক গার্মেন্টস ফোল্ডিং মেশিনে 2018 আপগ্রেড', '2018 Upgrades to the ROQ Fold and Pack Garment Folding Machine', '2021-01-15 23:45:51', '2021-01-15 23:45:51'),
(56, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/24qk56hVUKI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'আরউকিউ স্ক্রিন প্রিন্টিং প্রেসগুলির জন্য অ্যাকশন রোলার Squeegee', 'Action Roller Squeegee for ROQ Screen Printing Presses', '2021-01-15 23:54:31', '2021-01-15 23:54:31'),
(57, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EZbMV1gVxGs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Clean Filthy Squeegees Quicker and Easier with the Action Engineering Squeegee C E CHEM', 'অ্যাকশন ইঞ্জিনিয়ারিং স্কিগি সি  দিয়ে ক্লিন ফিলিটি স্কিগিজগুলি দ্রুত এবং আরও সহজ', '2021-01-16 00:19:19', '2021-01-16 00:19:19'),
(58, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OMXrYwFe7lc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Clean Up Screen Printing Ink With Sgreen Wipes E CHEM', 'স্ক্রিন মুদ্রণের সাথে স্ক্রিন মুদ্রণ কালি পরিষ্কার করুন', '2021-01-16 00:28:17', '2021-01-16 00:28:17'),
(59, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eJmm37oWDVk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ইকো বনাম ইভো আরওকিউ কোয়ার্টজ ফ্ল্যাশ ড্রায়ার্স ইউনিট', 'Eco vs Evo ROQ Quartz Flash Dryers Units E CHEM', '2021-01-16 00:39:40', '2021-01-16 00:39:40'),
(60, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tzEKzfi99B0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'স্ক্রিন প্রিন্টিংয়ের জন্য এফএক্স স্মার্ট এলইডি এক্সপোজার ইউনিট', 'FX Smart LED Exposure Unit For Screen Printing E CHEM', '2021-01-16 01:38:02', '2021-01-16 01:38:02'),
(61, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rtLW3ncOCyg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ভিনটেজ লুক উইটের জন্য ওয়েট হালফোন এবং রঙের মিশ্রণগুলিতে কীভাবে স্ক্রিন প্রিন্ট করা যায়', 'How To Screen Print Wet On Wet Halftones And Color Blends For A Vintage Look Wit E CHEM', '2021-01-17 23:25:35', '2021-01-17 23:25:35'),
(62, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NeXm7kS7yUk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to Use a Positive Registration Unit Alongside an Automatic Press', 'একটি স্বয়ংক্রিয় প্রেসের পাশাপাশি কীভাবে একটি ইতিবাচক নিবন্ধকরণ ইউনিট ব্যবহার করবেন', '2021-01-17 23:36:59', '2021-01-17 23:36:59'),
(63, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mB81gEKgZlk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to use the ROQ Pre Registration System PRU', 'How to use the ROQ Pre Registration System PRU', '2021-01-18 00:01:52', '2021-01-18 00:01:52'),
(64, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/T-_C3zONqb4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How To Use The ROQ PRU Pre Registration System For Automatic Screen Printing', 'স্বয়ংক্রিয় স্ক্রিন প্রিন্টিংয়ের জন্য কীভাবে আরআরকিউ পিআরইউ প্রাক নিবন্ধকরণ সিস্টেমটি ব্যবহার করবেন', '2021-01-18 00:28:11', '2021-01-18 00:28:11'),
(65, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/iFxFGuRcKXQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Ink Your Screens With Ryonet\'s Screen Printing Goop Scoop', 'Ink Your Screens With Ryonet\'s Screen Printing Goop Scoop', '2021-01-18 00:36:14', '2021-01-18 00:36:14'),
(66, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UX1I9AYRPiA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Introducing Action Engineering\'s BadAss Manual BAM Squeegee', 'Introducing Action Engineering\'s BadAss Manual BAM Squeegee', '2021-01-18 01:05:49', '2021-01-18 01:05:49'),
(67, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2ZqNSIFSmzs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Introducing Action Engineering\'s Easy to Use Platen Tape Applicator', 'Introducing Action Engineering\'s Easy to Use Platen Tape Applicator', '2021-01-18 01:10:49', '2021-01-18 01:10:49'),
(68, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/R7mo4zOnZiI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Introducing Ryonet\'s All New American Made RXP Exposure Units E CHEM', 'Introducing Ryonet\'s All New American Made RXP Exposure Units E CHEM', '2021-02-05 23:37:07', '2021-02-05 23:37:07'),
(69, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/w8XR5BTnQzc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Introducing The HotROQ Quartz Flash for Screen Printing E CHEM', 'Introducing The HotROQ Quartz Flash for Screen Printing E CHEM', '2021-02-05 23:43:03', '2021-02-05 23:43:03'),
(70, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BaCUumkLtEI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Introducing The Redesigned X Vactor Screen Printing Exposure Unit E CHEM', 'Introducing The Redesigned X Vactor Screen Printing Exposure Unit E CHEM', '2021-02-05 23:49:36', '2021-02-05 23:49:36'),
(71, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZpKhkyXoUcE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Introducing The Sgreen Water Filtration System for Screen Printing E CHEM', 'Introducing The Sgreen Water Filtration System for Screen Printing E CHEM', '2021-02-06 00:44:41', '2021-02-06 00:44:41'),
(72, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ow-5hQIgyRk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Now ROQ Has A Sidekick, The HotRoqit Screen Printing Conveyor Dryer E CHEM', 'Now ROQ Has A Sidekick, The HotRoqit Screen Printing Conveyor Dryer E CHEM', '2021-02-06 00:53:25', '2021-02-06 00:53:25'),
(73, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BAxyHl9mtD4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Oversized Prints Need The Right Sized Tools E CHEM', 'Oversized Prints Need The Right Sized Tools E CHEM', '2021-02-06 01:05:24', '2021-02-06 01:05:24'),
(74, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/aFvObXTClmg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Printing Glow Phosphorescent Inks E CHEM', 'Printing Glow Phosphorescent Inks E CHEM', '2021-02-06 01:10:47', '2021-02-06 01:10:47'),
(75, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/77wpkzFurh0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Properly Installing and Using a ROQ Automatic Flocking Station on a ROQ Oval Scr E CHEM', 'Properly Installing and Using a ROQ Automatic Flocking Station on a ROQ Oval Scr E CHEM', '2021-02-06 01:42:52', '2021-02-06 01:42:52'),
(76, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Coupe88kZ4E\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Register a 4 Color Print Job In Under One Minute With ROQ Automatic E CHEM', 'Register a 4 Color Print Job In Under One Minute With ROQ Automatic E CHEM', '2021-02-06 04:06:28', '2021-02-06 04:06:28'),
(77, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/toeoDKUcEos\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Riley Hopkins 150 Screen Printing Press Assembly E CHEM', 'Riley Hopkins 150 Screen Printing Press Assembly E CHEM', '2021-02-06 04:14:16', '2021-02-06 04:14:16'),
(78, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wm23e3zBMiU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Riley Hopkins Air Flash Dryer Water Based Ink Screen Printing E CHEM', 'Riley Hopkins Air Flash Dryer Water Based Ink Screen Printing E CHEM', '2021-02-06 04:33:22', '2021-02-06 04:33:22'),
(79, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/a33p49DVwMU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Riley Hopkins Rotating Flash Pallets For Manual Screen Printing E CHEM', 'Riley Hopkins Rotating Flash Pallets For Manual Screen Printing E CHEM', '2021-02-06 04:40:44', '2021-02-06 04:40:44'),
(80, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YNsfssGGGRw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ROQ Fold, ROQ Pack and ROQ Stack Automatic Folding Machine E CHEM', 'ROQ Fold, ROQ Pack and ROQ Stack Automatic Folding Machine E CHEM', '2021-02-08 01:01:38', '2021-02-08 01:01:38'),
(81, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GyDgJN2sa4I\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ই-কো ডান্ক ট্যাংক সেটআপ করে কিভাবে ব্যবহার করবেন বিস্তারিত দেখুন', 'ই-কো ডান্ক ট্যাংক সেটআপ করে কিভাবে ব্যবহার করবেন বিস্তারিত দেখুন', '2021-02-15 02:50:04', '2021-02-15 02:50:04'),
(82, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/22jvcs6QMCY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'এক্সপোজার ক্যালকুলেটর সঠিক স্ক্রিন ওয়াশআউটের জন্য গুরুত্বপূর্ণ ভূমিকা পালন করে', 'এক্সপোজার ক্যালকুলেটর সঠিক স্ক্রিন ওয়াশআউটের জন্য গুরুত্বপূর্ণ ভূমিকা পালন করে', '2021-02-15 06:17:36', '2021-02-15 06:17:36'),
(83, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9jCU6AGQKOg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'যে ৫টি ভুল সাধারণত করে থাকি যখন স্ক্রীন প্রিন্টারের মাধ্যমে Emulsion এর কাজ করি', 'যে ৫টি ভুল সাধারণত করে থাকি যখন স্ক্রীন প্রিন্টারের মাধ্যমে Emulsion এর কাজ করি', '2021-02-17 04:19:20', '2021-02-17 04:19:20'),
(84, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9swG1FineDw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'অনেক গুলো ছবি একটি স্ক্রীনে কিভাবে প্রিন্ট করবেন বিস্তারিত দেখুন', 'অনেক গুলো ছবি একটি স্ক্রীনে কিভাবে প্রিন্ট করবেন বিস্তারিত দেখুন', '2021-02-17 04:20:43', '2021-02-17 04:20:43'),
(85, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SHAEJSEOKqg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'কিভাবে সঠিক পদ্ধতিতে স্ক্রীন প্রিন্টিংয়ের কালি কিউরিং করতে হয়  ভিডিওতে বিস্তারিত দেখুন', 'কিভাবে সঠিক পদ্ধতিতে স্ক্রীন প্রিন্টিংয়ের কালি কিউরিং করতে হয়  ভিডিওতে বিস্তারিত দেখুন', '2021-02-17 04:34:56', '2021-02-17 04:34:56'),
(86, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4kOeuPd_lB8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Sgreen আপনার স্ক্রিন প্রিন্টিংকে আর বেশী কার্য্যকরি করে তোলে', 'Sgreen আপনার স্ক্রিন প্রিন্টিংকে আর বেশী কার্য্যকরি করে তোলে', '2021-02-23 22:34:36', '2021-02-23 22:34:36'),
(87, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xe33USjz4OE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Sgreen Adhesive', 'Sgreen Adhesive', '2021-02-23 22:56:58', '2021-02-23 22:56:58'),
(88, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/u7FqjBEcB_I\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Sgreen Aqua Wash Water Based Ink Degrader by Franmar ECHEM', 'Sgreen Aqua Wash Water Based Ink Degrader by Franmar ECHEM', '2021-02-23 23:31:08', '2021-02-23 23:31:08'),
(89, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/u7FqjBEcB_I\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Sgreen Aqua Wash Water Based Ink Degrader by Franmar ECHEM', 'Sgreen Aqua Wash Water Based Ink Degrader by Franmar ECHEM', '2021-02-23 23:35:17', '2021-02-23 23:35:17'),
(90, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-2gewQTxHLg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Echem কি এবং কেন এই সম্পর্কে জানুন ভিডিওতে by MH Raihan', 'Echem কি এবং কেন এই সম্পর্কে জানুন ভিডিওতে by MH Raihan', '2021-03-01 05:18:46', '2021-03-01 05:18:46'),
(91, 7, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jfehvzXSBb8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ইকেম থেকে কেন কেমিক্যাল কিনবেন ?', 'ইকেম থেকে কেন কেমিক্যাল কিনবেন ?', '2021-03-02 22:47:34', '2021-03-02 22:47:34'),
(92, 7, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ainpDd5elGI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ইকেম এর সাথে ব্যবসা করে সহজে উদ্যোক্তা হউন', 'ইকেম এর সাথে ব্যবসা করে সহজে উদ্যোক্তা হউন', '2021-03-03 04:53:44', '2021-03-03 04:53:44'),
(93, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VoaceNJZgWQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Sgreen Supreme Screen Printing Press Wash কি ভাবে ব্যবহার করবেন', 'Sgreen Supreme Screen Printing Press Wash কি ভাবে ব্যবহার করবেন', '2021-03-07 23:43:49', '2021-03-07 23:43:49'),
(94, 7, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8DxAu-TD5NY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'রেডিমেট প্রডাক্ট নিয়ে ব্যবসা', 'রেডিমেট প্রডাক্ট নিয়ে ব্যবসা', '2021-03-08 01:37:58', '2021-03-08 01:37:58'),
(95, 7, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L_kkLExNSGo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'কেমিক্যাল ব্যবসার বিস্তারিত জানুন', 'কেমিক্যাল ব্যবসার বিস্তারিত জানুন', '2021-03-08 02:03:11', '2021-03-08 02:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `video_categories`
--

CREATE TABLE `video_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_categories`
--

INSERT INTO `video_categories` (`id`, `name`, `description`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'Screen Printing', 'Screen Printing', 1, '2020-11-01 09:08:00', '2021-02-23 22:33:36'),
(2, 'Product Review', 'Product DESCRIPTION', NULL, '2020-11-01 09:08:00', '2021-01-04 01:24:15'),
(4, 'Plastisol Ink', 'Plastisol Ink', NULL, '2021-01-10 23:44:10', '2021-01-10 23:44:10'),
(5, 'Riley Hopkins', 'Riley Hopkins', NULL, '2021-01-12 22:39:09', '2021-01-12 22:39:09'),
(6, 'Screen Printing Equipment and Accessories', 'Screen Printing Equipment and Accessories', NULL, '2021-01-15 23:35:00', '2021-03-02 23:44:16'),
(7, 'Chemical Making Tutorial', 'Create by Echem', NULL, '2021-03-02 22:47:23', '2021-03-02 22:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `amount_spend` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `amount`, `amount_spend`, `created_at`, `updated_at`) VALUES
(1, 3, 37281.05, 6400.00, '2020-10-19 09:39:49', '2020-10-19 09:39:49'),
(2, 6, 12391.10, 6900.00, '2020-10-28 02:41:38', '2020-10-28 02:41:38'),
(3, 4, 10000.00, 0.00, '2020-10-29 09:07:35', '2020-10-29 09:07:35'),
(4, 5, 0.00, 0.00, '2020-11-02 01:08:10', '2020-11-02 01:08:10'),
(5, 8, 1600.00, 18400.00, '2020-11-02 01:54:29', '2020-11-02 01:54:29'),
(6, 9, 0.00, 0.00, '2020-11-02 02:49:36', '2020-11-02 02:49:36'),
(7, 10, 1100.00, 0.00, '2020-11-02 03:34:08', '2020-11-02 03:34:08'),
(8, 11, 1000.00, 9000.00, '2020-11-02 12:30:05', '2020-11-02 12:30:05'),
(9, 12, 19250.00, 0.00, '2020-11-07 12:34:04', '2020-11-07 12:34:04'),
(10, 17, 0.00, 0.00, '2020-12-03 14:52:30', '2020-12-03 14:52:30'),
(11, 20, 0.00, 0.00, '2020-12-09 00:09:44', '2020-12-09 00:09:44'),
(12, 15, 0.00, 0.00, '2020-12-11 23:27:29', '2020-12-11 23:27:29'),
(13, 21, 9.00, 0.00, '2021-01-03 13:02:22', '2021-01-03 13:02:22'),
(14, 27, 0.00, 0.00, '2021-03-02 07:21:28', '2021-03-02 07:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `wholesales`
--

CREATE TABLE `wholesales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wholesales`
--

INSERT INTO `wholesales` (`id`, `name`, `user_id`, `is_active`, `description`, `created_at`, `updated_at`) VALUES
(1, 'IT Shop', 10, 1, 'IT product', '2020-11-02 03:38:00', '2020-11-02 10:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliated__sales`
--
ALTER TABLE `affiliated__sales`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `affiliate_reqs`
--
ALTER TABLE `affiliate_reqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `ebook_requests`
--
ALTER TABLE `ebook_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_management`
--
ALTER TABLE `expense_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_requests`
--
ALTER TABLE `finance_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_purchases`
--
ALTER TABLE `gift_card_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gift_card_purchases_user_id_foreign` (`user_id`),
  ADD KEY `gift_card_purchases_card_id_foreign` (`card_id`);

--
-- Indexes for table `home_videos`
--
ALTER TABLE `home_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_shop_id_foreign` (`shop_id`),
  ADD KEY `products_wholesale_id_foreign` (`wholesale_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related__products`
--
ALTER TABLE `related__products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `related__products_product_id_foreign` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `reward_points`
--
ALTER TABLE `reward_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reward_points_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_user_id_foreign` (`user_id`);

--
-- Indexes for table `site_reviews`
--
ALTER TABLE `site_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `sub_orders`
--
ALTER TABLE `sub_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_orders_order_id_foreign` (`order_id`),
  ADD KEY `sub_orders_seller_id_foreign` (`seller_id`),
  ADD KEY `sub_orders_seller_type_foreign` (`seller_type`);

--
-- Indexes for table `sub_order_items`
--
ALTER TABLE `sub_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_order_items_sub_order_id_foreign` (`sub_order_id`),
  ADD KEY `sub_order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_sub_order_id_foreign` (`sub_order_id`),
  ADD KEY `transactions_sub_order_item_id_foreign` (`sub_order_item_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_category_id_foreign` (`category_id`);

--
-- Indexes for table `video_categories`
--
ALTER TABLE `video_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_categories_parent_foreign` (`parent`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `wholesales`
--
ALTER TABLE `wholesales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wholesales_user_id_foreign` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affiliated__sales`
--
ALTER TABLE `affiliated__sales`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `affiliate_reqs`
--
ALTER TABLE `affiliate_reqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `ebook_requests`
--
ALTER TABLE `ebook_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_management`
--
ALTER TABLE `expense_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `finance_requests`
--
ALTER TABLE `finance_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gift_card_purchases`
--
ALTER TABLE `gift_card_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `home_videos`
--
ALTER TABLE `home_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `related__products`
--
ALTER TABLE `related__products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=640;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reward_points`
--
ALTER TABLE `reward_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `site_reviews`
--
ALTER TABLE `site_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_orders`
--
ALTER TABLE `sub_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_order_items`
--
ALTER TABLE `sub_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `video_categories`
--
ALTER TABLE `video_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wholesales`
--
ALTER TABLE `wholesales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gift_card_purchases`
--
ALTER TABLE `gift_card_purchases`
  ADD CONSTRAINT `gift_card_purchases_card_id_foreign` FOREIGN KEY (`card_id`) REFERENCES `gift_cards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gift_card_purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_post_cat_id_foreign` FOREIGN KEY (`post_cat_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_wholesale_id_foreign` FOREIGN KEY (`wholesale_id`) REFERENCES `wholesales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related__products`
--
ALTER TABLE `related__products`
  ADD CONSTRAINT `related__products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reward_points`
--
ALTER TABLE `reward_points`
  ADD CONSTRAINT `reward_points_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `site_reviews`
--
ALTER TABLE `site_reviews`
  ADD CONSTRAINT `site_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_orders`
--
ALTER TABLE `sub_orders`
  ADD CONSTRAINT `sub_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_orders_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_orders_seller_type_foreign` FOREIGN KEY (`seller_type`) REFERENCES `user_roles` (`role_id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_order_items`
--
ALTER TABLE `sub_order_items`
  ADD CONSTRAINT `sub_order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_order_items_sub_order_id_foreign` FOREIGN KEY (`sub_order_id`) REFERENCES `sub_orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_sub_order_id_foreign` FOREIGN KEY (`sub_order_id`) REFERENCES `sub_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_sub_order_item_id_foreign` FOREIGN KEY (`sub_order_item_id`) REFERENCES `sub_order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `video_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_categories`
--
ALTER TABLE `video_categories`
  ADD CONSTRAINT `video_categories_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `video_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wholesales`
--
ALTER TABLE `wholesales`
  ADD CONSTRAINT `wholesales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
