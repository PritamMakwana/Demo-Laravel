-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 01:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` enum('M','F','O') NOT NULL DEFAULT 'M',
  `address` text NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `stauts` tinyint(1) NOT NULL DEFAULT 1,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `gender`, `address`, `city`, `country`, `dob`, `password`, `stauts`, `points`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'PRITAMBHAI PRAVINBHAI MAKWANA', 'pritammakwana17561@gmail.com', 'M', 'hanuman para', 'amreli', 'indial2', NULL, 'd7afde3e7059cd0a0fe09eec4b0008cd', 1, 0, '2022-12-12 07:46:03', '2022-12-12 07:52:55', NULL),
(3, 'Admin', 'admin@gmail.com', 'F', 'admin gali', 'admin city', 'admin country', '2022-12-15', '21232f297a57a5a743894a0e4a801fc3', 1, 0, '2022-12-12 07:47:05', '2022-12-12 07:47:05', NULL),
(4, 'User', 'user@gmail.com', 'O', 'user gali', 'usercity', 'uK', '2022-12-05', 'ee11cbb19052e40b07aac0ca060c23ee', 1, 0, '2022-12-12 07:47:47', '2022-12-12 07:51:40', '2022-12-12 07:51:40'),
(5, 'Aman Meter', 'aman@gmail.com', 'M', 'batar vadi', 'amareli', 'indial', '2022-12-06', 'ccda1683d8c97f8f2dff2ea7d649b42c', 1, 0, '2022-12-12 07:48:39', '2022-12-12 07:51:25', '2022-12-12 07:51:25'),
(6, 'Gopal', 'gopal9164@gmail.com', 'M', 'gopal nagar', 'goa', 'indial', '2022-12-15', '47bce5c74f589f4867dbd57e9ca9f808', 1, 0, '2022-12-12 07:49:16', '2022-12-12 07:49:16', NULL),
(7, 'Kevin', 'kevin@gmail.com', 'M', 'kevin pura', 'kukava', 'kiriga', '2022-12-08', '44d9dbb60b6c2c24922cd62d249412f9', 1, 0, '2022-12-12 07:50:06', '2022-12-12 07:51:30', NULL),
(8, 'Manathan', 'manathan@gmail.com', 'M', 'manathan nagar', 'manathan city', 'malesia', '2022-12-04', 'a30be188929d68d782a1cfaf3882ac34', 1, 0, '2022-12-12 07:51:16', '2022-12-12 07:51:16', NULL),
(9, 'Zoe Hodkiewicz', 'icrooks@ledner.biz', 'M', '97300 Adaline Run Suite 849\nDickinsonview, GA 96618', 'Danialville', 'Micronesia', '1972-07-30', 'Mervin Kub', 1, 0, '2022-12-14 06:56:57', '2022-12-14 06:56:57', NULL),
(10, 'Kiera Schuster', 'citlalli70@littel.com', 'M', '895 King Cove Suite 862\nSouth Tyraburgh, DE 57061', 'West Gideon', 'Paraguay', '2015-07-25', 'Margarita Durgan II', 1, 0, '2022-12-14 06:58:35', '2022-12-14 06:58:36', NULL),
(11, 'Ivory Murphy', 'ucassin@yahoo.com', 'M', '628 Eliza Mission\nLake Christberg, DC 42416-9885', 'Andreaneshire', 'Isle of Man', '1980-02-27', 'Mr. Reynold Donnelly I', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(12, 'Chelsea Champlin III', 'kemmer.reginald@schumm.com', 'M', '67459 Hassie Branch\nPort Lizaside, AK 35820-4131', 'Mozellestad', 'Austria', '1998-01-27', 'Mr. David Schinner Sr.', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(13, 'Winfield Nader', 'flebsack@zulauf.biz', 'M', '52906 Bode Tunnel Suite 503\nSouth Hirammouth, SD 28790-2108', 'Jairomouth', 'Saint Kitts and Nevis', '2008-09-26', 'Beulah Baumbach', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(14, 'Ford Barrows', 'rosalee.flatley@mann.com', 'M', '803 Goodwin Shoal\nFramishire, CA 04535', 'Lake Elroy', 'Cape Verde', '1983-07-23', 'Cierra Durgan', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(15, 'Harry O\'Conner', 'haley.moises@gmail.com', 'M', '458 Earl Ranch\nWizafurt, VA 80479', 'Lake Ryder', 'India', '1975-09-01', 'Vivian Rau', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(16, 'Frederick Trantow', 'qdubuque@champlin.com', 'M', '2642 Schmitt Drives\nMiraclefort, NJ 83020', 'Lake Vesta', 'Netherlands', '1998-02-26', 'Delta Rutherford', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(17, 'Fermin Cormier', 'hansen.ashlee@romaguera.com', 'M', '60348 Batz Ports\nElwinville, MI 86622', 'North Lydafurt', 'Cuba', '1998-05-11', 'Carole Volkman', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(18, 'Immanuel West', 'jswaniawski@powlowski.net', 'M', '6663 Kohler Courts Apt. 982\nNorth Mckennafort, MO 12799', 'North Treverville', 'Faroe Islands', '1971-09-17', 'Dino Boyle', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(19, 'Martine Welch', 'spencer42@hotmail.com', 'M', '877 Dare Tunnel Apt. 424\nNorth Owen, NJ 94041-3006', 'New Colt', 'Colombia', '1986-09-04', 'Prof. Buddy Shanahan', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(20, 'Dr. Julianne O\'Keefe', 'rorn@bode.info', 'M', '2890 Wehner Mountain Suite 542\nVonRuedenfort, AK 14880-9355', 'Port Eldridge', 'Andorra', '1990-02-08', 'Moshe McCullough', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(21, 'Mrs. Jeanette Schaden', 'cecil.gerhold@hotmail.com', 'M', '1639 Yundt Lights\nSouth Carletonport, ID 38557-8967', 'Sadyefurt', 'Korea', '2000-10-17', 'Ms. Kristy Johnston', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(22, 'Prof. Rowland Anderson', 'jenifer.keeling@ryan.net', 'M', '9542 Rau Lodge Suite 048\nSouth Miltonshire, MT 71311', 'New Mossieshire', 'Argentina', '2020-08-25', 'Aleen McLaughlin', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(23, 'Chaz Homenick I', 'oberbrunner.rusty@terry.info', 'M', '47115 Mertz Summit Apt. 552\nEast Eduardo, IA 71171-7875', 'Jordyton', 'Poland', '1998-10-10', 'Prof. Hermann Hayes Sr.', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(24, 'Rusty Nolan', 'irwin23@yahoo.com', 'M', '6953 Bartell Club Suite 688\nSouth Turner, CO 63454-9918', 'Lake Rachelletown', 'Martinique', '1980-10-19', 'Evan Ratke', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(25, 'Prof. Jewel Kub', 'luther04@hotmail.com', 'M', '9996 Amya Extensions Apt. 187\nLittelshire, GA 35307', 'New Aydenview', 'Israel', '1999-08-26', 'Lelia Konopelski', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(26, 'Prudence Runte', 'bins.elton@luettgen.org', 'M', '37829 Floy Passage\nLake Willis, GA 69614-2105', 'Padbergmouth', 'Switzerland', '1976-03-27', 'Madge Mueller', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(27, 'Dr. Orland Beer I', 'mario84@hotmail.com', 'M', '6763 Padberg Valleys\nNew Estefania, PA 77245-7166', 'Deloresfort', 'Lebanon', '1990-04-22', 'Kavon Schneider', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(28, 'Neil Strosin', 'ellen81@mitchell.org', 'M', '20734 Rhiannon Circles Suite 594\nLake Aurelia, AK 49300', 'Sanfordton', 'Iran', '1978-06-13', 'Mary Hodkiewicz', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(29, 'Mr. Allen Mills I', 'braeden.cassin@yahoo.com', 'M', '426 Orpha Courts Suite 305\nSporershire, IL 30328-0798', 'Fridaview', 'Andorra', '1990-09-21', 'Dr. Garrick Pfannerstill I', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(30, 'April Emard', 'cole.norma@hudson.org', 'M', '16067 Mayert Common Apt. 266\nKohlerchester, TN 48812', 'Perryville', 'Moldova', '1983-09-28', 'Dr. Cullen Dietrich', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(31, 'Emie Konopelski', 'metz.jerod@hotmail.com', 'M', '50584 Haley Crossroad\nMannside, MO 26571-4570', 'Reynoldsview', 'China', '1981-01-18', 'Kaden Balistreri', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(32, 'Dr. Lorenz Bernier I', 'beahan.reba@yahoo.com', 'M', '195 Joanny Port Suite 288\nHyattview, DC 06538', 'Elnastad', 'Greenland', '1983-05-28', 'Tierra Donnelly', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(33, 'Brad Fay', 'etha.jones@kozey.com', 'M', '68214 Jaleel Garden Suite 199\nEast Jazmin, OK 28637', 'Millsview', 'Timor-Leste', '2017-11-06', 'Prof. Rupert Ondricka', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(34, 'Consuelo Lang', 'braulio85@turner.info', 'M', '211 Stephanie Terrace\nWest Maribel, WI 54062-9459', 'Runolfssonhaven', 'Bolivia', '2006-01-08', 'Dr. Richard Schoen DDS', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(35, 'Mrs. Asha Barton', 'lhowell@ratke.biz', 'M', '6064 Hickle Rest\nPort Chanel, TN 57829-9344', 'South Roosevelt', 'Bahamas', '2001-01-17', 'Juanita Greenfelder', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(36, 'Mr. Quinn Kub II', 'elvie46@buckridge.com', 'M', '9317 Hintz Park\nNorth Zoramouth, KS 03837', 'South Melody', 'Poland', '1972-09-27', 'Ada Schaden MD', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(37, 'Nash Johnston', 'hstiedemann@yahoo.com', 'M', '516 Rodriguez Radial Apt. 529\nAufderharview, ID 93180-6906', 'New Amosberg', 'Ghana', '1991-01-15', 'Ms. Talia Bauch', 1, 0, '2022-12-14 07:00:00', '2022-12-14 07:00:00', NULL),
(38, 'Bella Hills DDS', 'verna31@sauer.com', 'M', '897 Funk Squares Suite 543\nHaileestad, OH 99971', 'New Hipolito', 'Italy', '1992-06-22', 'Dr. Hilma Ledner PhD', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(39, 'Mrs. Mallie Kris', 'ondricka.darryl@yahoo.com', 'M', '63193 Bernhard Mountain Suite 161\nWest Estell, WV 80924', 'Braunport', 'Gabon', '2017-06-22', 'Geovanni Aufderhar', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(40, 'Marge Mante DVM', 'mante.gavin@gmail.com', 'M', '4124 Auer Extensions\nLoweton, SD 74956-9852', 'Akeemburgh', 'Libyan Arab Jamahiriya', '1975-08-06', 'Crystal Gaylord', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(41, 'Icie Kuhn Jr.', 'jfisher@yahoo.com', 'M', '59089 Angelita Fords\nEast Walterport, RI 82914', 'Dockburgh', 'Burundi', '2006-02-05', 'Bill Bechtelar', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(42, 'Liliane Beatty', 'dietrich.carlos@gmail.com', 'M', '8741 Juston Spur Apt. 374\nDareside, NY 23149-8784', 'East Anastasia', 'Equatorial Guinea', '2013-08-05', 'Prof. Enos Hodkiewicz Jr.', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(43, 'Anika Kulas', 'qheller@hotmail.com', 'M', '4366 Orn Tunnel\nJacquelynborough, NM 20386', 'Margaritaborough', 'Solomon Islands', '2017-05-22', 'Prof. Leslie Hahn V', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(44, 'Mr. Curtis Sipes I', 'wuckert.stewart@yahoo.com', 'M', '63476 Ava Wells Suite 196\nWest Inestown, WI 54301-1365', 'Waelchishire', 'Gibraltar', '1995-11-02', 'Tony Swaniawski V', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(45, 'Melany Huel', 'kacey.ruecker@yahoo.com', 'M', '63496 Keyon Highway Suite 649\nHaneborough, MD 59186-3123', 'Bechtelarmouth', 'Sri Lanka', '2012-09-11', 'Dr. Horace Harris', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(46, 'Dr. Clifton Baumbach I', 'luettgen.retha@breitenberg.net', 'M', '37640 Rodriguez Port\nAlanismouth, CA 38144', 'New Brigitte', 'Tonga', '1980-06-22', 'Martin Gottlieb', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(47, 'Marina Orn III', 'senger.nia@hotmail.com', 'M', '770 Wisozk Manor\nDestinborough, OR 45431-6889', 'Roweland', 'Antigua and Barbuda', '1997-05-22', 'Leola Hagenes', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(48, 'Prof. Roberto Pouros II', 'twila.brekke@yahoo.com', 'M', '2228 Cassandre Village\nHesselborough, AR 11739-9110', 'New Murphymouth', 'Uruguay', '1982-06-25', 'Walker Kozey', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(49, 'Felicia Rohan II', 'mireille06@gmail.com', 'M', '730 Filiberto Mountain Suite 129\nPort Elvisland, SC 91651', 'South Madie', 'Maldives', '2009-03-13', 'Ms. Adele Graham', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(50, 'Addison Keeling', 'luisa43@mcclure.org', 'M', '8665 Bart Pines\nEast Darronton, UT 20172-2592', 'Adolfoville', 'Jersey', '1997-03-18', 'Frederic Mann', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(51, 'Nettie Zboncak', 'kenneth41@barrows.com', 'M', '84453 Luettgen Corners\nIanbury, AR 97539', 'Lake Lylashire', 'Sri Lanka', '1974-01-14', 'Ms. Meggie Beer DVM', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(52, 'Jillian Ryan', 'kfriesen@hotmail.com', 'M', '69650 Upton Bridge\nPort Hankborough, DE 22337-9269', 'Tristontown', 'Ireland', '1979-04-26', 'Mr. Damien Altenwerth', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(53, 'Koby McGlynn', 'jazlyn71@yahoo.com', 'M', '95738 Reichel Isle Suite 762\nKilbackmouth, MD 29249', 'West Westonstad', 'Luxembourg', '2016-06-24', 'Bernice Mertz', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(54, 'Ethel Gusikowski', 'julien49@yahoo.com', 'M', '6976 Everette Radial\nGermainetown, TX 79708', 'West Bennie', 'Tokelau', '1978-11-20', 'Emie McDermott', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(55, 'Kaycee Luettgen', 'elinor.bruen@spinka.com', 'M', '2515 Waylon Park\nEast Karinefort, MN 12293-1434', 'Kihnport', 'Eritrea', '2004-03-02', 'Manley Deckow', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(56, 'Amy Simonis', 'bednar.omari@vandervort.com', 'M', '4456 Eddie Flats Apt. 916\nLandenberg, TX 20756-7644', 'Everardoview', 'Heard Island and McDonald Islands', '1993-05-28', 'Sophie Wilderman I', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(57, 'Bartholome Bernier', 'vwintheiser@sporer.com', 'M', '413 Funk Glens\nThurmanfurt, CT 89481', 'Satterfieldhaven', 'Saint Lucia', '2014-12-04', 'Mr. Delbert Langworth V', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(58, 'Destin Torp', 'lupe93@rice.com', 'M', '973 Lonnie Viaduct Apt. 444\nWest Yoshiko, MN 97563-4135', 'Gudrunberg', 'Marshall Islands', '2018-11-18', 'Brenda Schmitt PhD', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(59, 'Octavia Nolan', 'xbode@boyle.info', 'M', '85540 Gleason Groves Apt. 375\nEast Haleyhaven, TX 63823', 'Ransomland', 'Kazakhstan', '1970-09-26', 'Elyssa Parisian', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(60, 'Pablo Lubowitz', 'lacey.lebsack@wunsch.com', 'M', '80926 Botsford Underpass Suite 270\nFreedaville, RI 26120-8929', 'Lake Dariushaven', 'Cambodia', '2009-08-27', 'Pinkie Bergnaum', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(61, 'Gianni Rowe', 'frida.kihn@gmail.com', 'M', '490 Lesch Mountains Suite 913\nBauchborough, CO 89690-3004', 'Clementinatown', 'Tonga', '2014-05-17', 'Hellen Goyette', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(62, 'Sanford Gleason', 'enrique89@yahoo.com', 'M', '5570 Hills Views\nRoobtown, TX 59552-6150', 'Rogahnberg', 'Mozambique', '1974-03-01', 'Avis Hodkiewicz', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(63, 'Pauline Zieme', 'sylvia69@yahoo.com', 'M', '335 Moen Glen Suite 959\nJosefinaland, DC 77136', 'East Leliaborough', 'Saint Barthelemy', '1974-01-19', 'Imogene Rogahn', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(64, 'Britney Marvin', 'roel05@haley.org', 'M', '6402 Skiles Alley\nProsaccostad, MI 84087-7754', 'Margretport', 'Monaco', '2003-04-21', 'Geovany Considine', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(65, 'Lacy Weissnat', 'stanton.judah@barton.org', 'M', '276 Funk Alley\nEast Danteberg, VT 25422', 'Hellerview', 'Antarctica (the territory South of 60 deg S)', '2019-02-17', 'Mabelle Conn Sr.', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(66, 'Lawson Dicki', 'ocrona@yahoo.com', 'M', '1202 Casandra Greens\nSchillertown, MS 98450-9928', 'New Adan', 'Gibraltar', '1976-11-20', 'Annabel Willms Sr.', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(67, 'Odie Cole DDS', 'ondricka.christelle@hahn.com', 'M', '81089 Yundt Radial Suite 499\nWest Novella, AK 11638', 'Kihnfort', 'Dominican Republic', '2013-09-17', 'Lavinia Bechtelar MD', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(68, 'Norene Halvorson', 'jorge.grimes@wehner.com', 'M', '6121 Kozey Station\nHagenesbury, GA 54276', 'Port Turner', 'Bahrain', '2013-11-19', 'Mr. Adrien Hermann', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(69, 'Ms. Willow Kohler IV', 'joanne.marks@gmail.com', 'M', '459 Kunze Stream Apt. 098\nLake Maximoside, CT 16180', 'Feestview', 'Grenada', '1990-03-30', 'Orlo Beahan', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(70, 'Shanny Fritsch', 'gerhold.ahmad@homenick.com', 'M', '997 Domenic Drive\nLake Jarret, ID 66079', 'Shaynaburgh', 'Madagascar', '1975-04-21', 'Rubye McGlynn', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(71, 'Santos Wilderman', 'whoeger@gmail.com', 'M', '53575 Mireille Islands\nDurganbury, AL 74728', 'East Kayleigh', 'Italy', '2022-01-04', 'Daisha Bahringer', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(72, 'Marilou Swift', 'douglas.geoffrey@yahoo.com', 'M', '870 Rosie Greens\nCarleyfurt, ND 20907', 'Pollichton', 'Thailand', '1990-10-26', 'Romaine Hirthe', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(73, 'Kaylie Reynolds I', 'trinity52@lakin.com', 'M', '705 Gerardo Squares\nTillmanville, KY 25835-7011', 'Sylvestershire', 'Belgium', '2022-01-10', 'Savanna Terry', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(74, 'Prof. Ismael Durgan DVM', 'norval01@mann.com', 'M', '26894 Weimann Isle Apt. 194\nPort Maxfurt, NM 11801-1978', 'Port Tadport', 'Guinea-Bissau', '1994-04-08', 'Nellie Bashirian', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(75, 'Rey Miller', 'wkeebler@halvorson.com', 'M', '998 Howell Crescent Apt. 136\nNew Jany, NY 87166', 'New Wiltonberg', 'Netherlands', '1999-06-04', 'Matilde West II', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(76, 'Nichole Smitham', 'hodkiewicz.helena@gmail.com', 'M', '27722 Ressie Greens\nEast Luna, PA 39082-4873', 'Clydefurt', 'Guinea-Bissau', '2001-01-15', 'Marcia Collins', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(77, 'Rory Hoppe', 'kiera06@yahoo.com', 'M', '5261 Altenwerth Vista\nNorth Cecil, UT 31173', 'East Rosamond', 'Saint Helena', '1998-09-02', 'Karson Pollich', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(78, 'Miss Marcia Kozey II', 'schoen.kaylee@yahoo.com', 'M', '933 Emard Ports\nPort Fernandostad, NV 97807', 'Peytonmouth', 'Belgium', '2019-01-03', 'Ruby Medhurst I', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(79, 'Ana Volkman', 'stuart25@gmail.com', 'M', '980 Joaquin Roads\nAhmedborough, CT 60767-2460', 'North Grady', 'French Guiana', '2020-08-07', 'Victor Stehr', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(80, 'Mr. Alejandrin Runte', 'elise.grant@hotmail.com', 'M', '96347 Conn Rapid\nBalistreriview, AZ 03724', 'Feliciachester', 'Seychelles', '1981-09-28', 'Josie Lang PhD', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(81, 'Prof. Roscoe Brakus DDS', 'carmelo.considine@klein.org', 'M', '186 Cassin Walk\nEast Hectorton, KS 12648', 'Alvinamouth', 'Cuba', '1986-11-30', 'Mr. Kay Boyer', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(82, 'Annamarie Walter', 'bernard.lang@hotmail.com', 'M', '111 Koepp Forges\nVivienneberg, OH 09309-7065', 'Prosaccoberg', 'Namibia', '2014-11-12', 'Ms. Fae Morar DDS', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(83, 'Eden Rodriguez', 'nmayert@hotmail.com', 'M', '38346 Fidel Landing\nSouth Maximilliaburgh, OR 93877-8222', 'Port Vernonbury', 'Grenada', '2011-04-30', 'Jeffrey Heaney', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(84, 'Jaquan Strosin', 'greenfelder.blanche@gmail.com', 'M', '7226 Vallie Locks\nEichmannport, MA 45314-6818', 'Mayertchester', 'Brunei Darussalam', '2016-02-11', 'Wilfred Kshlerin MD', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(85, 'Alta Hackett', 'hermann.krajcik@hotmail.com', 'M', '9855 Liza Grove Apt. 879\nSchambergerfort, NV 73578-6558', 'Zemlakside', 'Kyrgyz Republic', '2001-01-26', 'Itzel Macejkovic II', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(86, 'Cicero Lakin III', 'tabitha.miller@gmail.com', 'M', '3715 Araceli Plains\nLake Jarenberg, CA 95941', 'North Aidenland', 'Uruguay', '1993-12-21', 'Sabina Herman', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(87, 'Kira Dickinson', 'laura.beier@jakubowski.com', 'M', '389 Lubowitz Lodge\nNew Violetborough, GA 42919', 'New Diannaland', 'Lithuania', '2016-01-01', 'Will Deckow', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(88, 'Narciso Stroman', 'jzboncak@walter.com', 'M', '841 Hackett Alley Suite 137\nWest Leonardo, NC 93452-5922', 'North Brooke', 'Myanmar', '1977-09-28', 'Ms. Idella Bailey', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(89, 'Favian Stracke III', 'sonny.bartoletti@abernathy.com', 'M', '97241 Kacey Trace Apt. 688\nWest Kaylinville, UT 20752', 'Ortizton', 'Nicaragua', '2003-05-09', 'Helmer Dicki', 1, 0, '2022-12-14 07:00:01', '2022-12-14 07:00:01', NULL),
(90, 'Richmond Hirthe', 'jaqueline82@kulas.com', 'M', '2168 Olson Cove\nLake Hollis, DE 52566', 'Markschester', 'Serbia', '2010-07-12', 'Mrs. Rachael DuBuque MD', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(91, 'Prof. Jacklyn Treutel', 'nader.consuelo@zulauf.com', 'M', '126 Pollich Shore\nPort Helenfurt, MN 74868-5517', 'Huelstown', 'Myanmar', '1970-02-17', 'Kari Corwin DDS', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(92, 'Dr. Lula Kovacek II', 'penelope46@yahoo.com', 'M', '400 Elmore Ferry\nAnkundingchester, NV 86381', 'Armstrongburgh', 'Austria', '2011-08-11', 'Sarai Dicki V', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(93, 'Ms. Connie Dach', 'coty.cartwright@lubowitz.biz', 'M', '248 Considine Radial\nEast Arjun, AL 82306', 'Chesleyville', 'Senegal', '1979-07-24', 'Valentina Green', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(94, 'Julia Goodwin', 'wilmer00@grant.net', 'M', '22155 Trantow Trail Apt. 540\nBarbarahaven, OK 64749-4372', 'Lake Josephinemouth', 'Latvia', '1988-06-16', 'Antwon Leuschke', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(95, 'Dr. Elinor Boyer', 'runolfsdottir.tyrese@becker.net', 'M', '7391 Strosin Freeway\nSpinkamouth, DE 15668-3501', 'West Elinor', 'Serbia', '2014-12-28', 'Myrna Crist III', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(96, 'Elmira Lakin II', 'khane@hotmail.com', 'M', '5739 Jamir Falls Apt. 308\nLake Monroefurt, OR 66323-2550', 'New Anahi', 'Dominica', '1990-09-10', 'Prof. Adelle McKenzie', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(97, 'Jewel Nader', 'cmurphy@luettgen.com', 'M', '8395 Maddison Fords Suite 130\nTrentshire, NV 77899-8388', 'Bradenside', 'Jordan', '1986-01-06', 'Emma Yost', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(98, 'Dr. Hunter Cassin II', 'elroy97@stroman.com', 'M', '517 Joel Fields\nCruickshankside, DE 62652-7203', 'Blockhaven', 'Cape Verde', '1997-08-30', 'Myah Walter', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(99, 'Virginia Brekke', 'jade26@hotmail.com', 'M', '9537 Jast Fords\nLake Richardshire, PA 13116-7196', 'North Kailyn', 'Kyrgyz Republic', '2015-03-06', 'Napoleon Padberg PhD', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(100, 'Dr. Reyes Kuvalis', 'benny.schmidt@labadie.net', 'M', '46197 Lindgren Fork\nNew Wilfrid, KY 69905', 'Schmittland', 'Serbia', '2001-02-12', 'Dr. Dion Gerhold', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(101, 'Katarina Reichert', 'nia.ward@yahoo.com', 'M', '18924 Barrows Centers\nAbigayleborough, MD 07603', 'East Darrell', 'Haiti', '2006-11-15', 'Andrew Cruickshank', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(102, 'Thelma Homenick', 'mkuhic@hotmail.com', 'M', '43936 Madyson Vista\nLake Gregoryside, NJ 35944', 'New Caraburgh', 'Saudi Arabia', '2014-06-15', 'Easter Cole', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(103, 'Brad McGlynn', 'eledner@gmail.com', 'M', '9925 Myles Mall Suite 609\nSouth Bertha, MA 23597', 'South Mireille', 'Belize', '2004-12-06', 'Graham Carroll', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(104, 'Dino Corkery PhD', 'eabbott@yahoo.com', 'M', '435 Rita Run\nEast Tavareston, VA 05868-5670', 'East Faustoville', 'Ecuador', '2008-02-06', 'Ms. Madge Harris', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(105, 'Dr. Samantha Brakus', 'stehr.lesly@koch.com', 'M', '12312 Sandra Estate Apt. 309\nSchimmelville, HI 14328', 'Port Danikachester', 'Kenya', '2019-08-12', 'Prof. Alexandria Hill MD', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(106, 'Zachery Bahringer MD', 'zbergnaum@yahoo.com', 'M', '118 Beatty Stravenue Suite 487\nMuellerview, MI 54541', 'Guschester', 'Venezuela', '2018-04-08', 'Jamir Eichmann I', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(107, 'Arno Franecki', 'lbartoletti@yahoo.com', 'M', '608 Hagenes Road\nAlyshatown, UT 46644-8683', 'North Sedrickchester', 'Cayman Islands', '1981-08-10', 'Prof. Lincoln Bednar Jr.', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(108, 'Ignacio Halvorson', 'prince58@ritchie.com', 'M', '235 Brooklyn Port\nKertzmannburgh, CT 66841-7630', 'West Marcella', 'Cambodia', '2022-02-20', 'Sherwood Luettgen', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(109, 'Retta Carroll', 'ronaldo91@yahoo.com', 'M', '2075 Romaguera Path\nAlvaberg, IL 45571-1945', 'North Anthony', 'Qatar', '2007-01-29', 'Consuelo Breitenberg', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(110, 'Murl Schroeder DDS', 'nschamberger@mills.com', 'M', '1392 Euna Bridge\nWatersbury, MA 49519', 'Yasminshire', 'Liberia', '1994-08-18', 'Johan Quigley', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(111, 'Ilene Brakus', 'champlin.arne@gmail.com', 'M', '88647 Halvorson Bypass\nEast Eldonton, KY 14386-1096', 'Armanichester', 'Seychelles', '2013-06-21', 'Arianna Botsford', 1, 0, '2022-12-14 07:00:02', '2022-12-14 07:00:02', NULL),
(112, 'Kano Makwana', 'kano@gmail.com', 'M', 'hanuman para', 'amreli', 'indial', '2023-01-27', '2be9bd7a3434f7038ca27d1918de58bd', 1, 0, '2023-01-17 09:11:07', '2023-01-17 09:11:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `member_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `member_id`) VALUES
(1, 'pritam', 2),
(2, 'gopal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL,
  `e_name` varchar(50) NOT NULL,
  `e_email` varchar(100) NOT NULL,
  `e_address` varchar(100) NOT NULL,
  `e_no` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `e_name`, `e_email`, `e_address`, `e_no`) VALUES
(1, 'pritam', 'pritam@gmail.com', 'amreli', 2),
(2, 'gopal', 'gopal@gmail.com', 'ahamadabad', 2),
(3, 'parth', 'parth@gmail.com', 'rajakot', 1),
(4, 'nayan', 'nayan@gmail.com', 'jaypur', 3),
(5, 'kevel', 'kevel@gmail.com', 'div', 1),
(7, 'sanket1', 'sanket@gmail.com1', 'US1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `img_id` bigint(20) UNSIGNED NOT NULL,
  `img_path` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`img_id`, `img_path`, `created_at`, `updated_at`) VALUES
(8, 'public/uploads/1673261774-img.png', '2023-01-09 05:26:14', '2023-01-09 05:26:14'),
(9, 'public/uploads/1673261953-img.jpg', '2023-01-09 05:29:13', '2023-01-09 05:29:13'),
(10, 'public/uploads/1673261978-img.jpg', '2023-01-09 05:29:38', '2023-01-09 05:29:38'),
(11, 'public/uploads/1673261998-img.jpg', '2023-01-09 05:29:58', '2023-01-09 05:29:58'),
(12, 'public/uploads/1673262009-img.jpg', '2023-01-09 05:30:10', '2023-01-09 05:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'IT', 'computer only.', NULL, NULL),
(2, 'Marketing', 'Ads section.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contect` varchar(11) NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `name`, `email`, `contect`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'aman', 'aman@gmail.com', '12', 1, NULL, NULL),
(2, 'pritam', 'pritam@gmail.com', '13', 2, NULL, NULL),
(3, 'gopal', 'gopal@gmail.com', '14', 1, NULL, NULL),
(4, 'tieris', 'tieris@gmail.com', '15', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_08_054118_create_customers_table', 1),
(6, '2022_12_08_060018_add_colums_to_customers_table', 1),
(7, '2022_12_08_063124_create_products_table', 1),
(8, '2022_12_10_114931_add_deleted_at_to_customers_table', 1),
(9, '2022_12_13_124342_create_galleries_table', 2),
(10, '2022_12_13_125014_add_colums_to_galleries_table', 3),
(11, '2022_12_16_123002_create_groups_table', 4),
(12, '2022_12_16_123823_create_members_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `members_group_id_foreign` (`group_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `img_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
