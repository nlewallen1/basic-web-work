-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 07:48 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `northwind`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `business_phone` varchar(25) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `zip_postal_code` varchar(15) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `company`, `last_name`, `first_name`, `email_address`, `job_title`, `business_phone`, `home_phone`, `mobile_phone`, `fax_number`, `address`, `city`, `state_province`, `zip_postal_code`, `country_region`, `password`) VALUES
(1, 'Company A', 'Bedecs', 'Anna', 'abedecs@companya.com', 'Owner', '206-767-0220', NULL, '206-955-5143', '(123)555-0101', '3989 Union Street', 'Seattle', 'WA', '98108', 'USA', '$2y$10$/xODLKXS9VfY77Oy8gh6U.LHMCYH4Z/MtSJ2trWXI8OIFsFC6vLuG'),
(2, 'Company B', 'Gratacos Solsona', 'Antonio', 'gratacos_solsona@companyb.com', 'Owner', '781-884-8146', NULL, '857-313-5698', '(123)555-0101', '1749 Hillcrest Avenue', 'Boston', 'MA', '02110', 'USA', '$2y$10$H.UHaO8p16likzoWn.R57.8vaAYjDkJfZmsvss7yQBvSLI2lLGdqG'),
(3, 'Company C', 'Axen', 'Thomas', 'taxen@companyc.com', 'Purchasing Representative', '805-297-7899', NULL, '310-617-8713', '(123)555-0101', '1476 Euclid Avenue', 'Los Angelas', 'CA', '90017', 'USA', '$2y$10$TYMo/Y8zaiKWbCM2KGjh8.yZqeyH2AvjngczejHcCmxDN59t.2G2K'),
(4, 'Company D', 'Lee', 'Christina', 'christina_lee@companyd.com', 'Purchasing Manager', '917-919-4628', NULL, '347-557-9734', '(123)555-0101', '4409 Hoffman Avenue', 'New York', 'NY', '10016', 'USA', '$2y$10$8JuWp5WzDe/a.SSzPdoE/uyeotJ/sg6PvztDhessWqqfEWzh2oeuW'),
(5, 'Company E', 'O’Donnell', 'Martin', 'odonnellm@companye.com', 'Owner', '612-817-6032', NULL, '612-328-2484', '(123)555-0101', '2048 Rocket Drive', 'Minneapolis', 'MN', '55406', 'USA', '$2y$10$Ao9L07TcIb6V.fUUU7HfPeAZcRpWBQquHJF7ZXBV3fC5OAhm.d0UK'),
(6, 'Company F', 'Pérez-Olaeta', 'Francisco', 'fpérez-olaeta@companyf.com', 'Purchasing Manager', '920-821-5294', NULL, '414-314-5585', '(123)555-0101', '715 Reeves Street', 'Milwaukee', 'WI', '53202', 'USA', '$2y$10$bnfCL7BjXwsq7fkpFNt45OPLKJXZuLuoWF/O6aKXBsQEn7Q2u/eN.'),
(7, 'Company G', 'Xie', 'Ming-Yang', 'mxie@companyg.com', 'Owner', '208-440-2770', NULL, '208-891-7242', '(123)555-0101', '730 Young Road', 'Boise', 'ID', '83702', 'USA', '$2y$10$MniomkvfFwNGt8nuFT201.P1wo6mKvhzlOD5L1qgypQNxm9Z6U4he'),
(8, 'Company H', 'Andersen', 'Elizabeth', 'elizabeth.andersen@companyh.com', 'Purchasing Representative', '503-545-4580', NULL, '971-201-9852', '(123)555-0101', '3547 Kincheloe Road', 'Portland', 'OR', '97230', 'USA', '$2y$10$OvB6j68BurF9zDDUAIdGg.pggdWeCNMG3aH/OYDaEXnjmH4Bp8mta'),
(9, 'Company I', 'Mortensen', 'Sven', 'sven_mortensen@companyi.com', 'Purchasing Manager', '801-493-3139', NULL, '801-509-0359', '(123)555-0101', '2011 White River Way', 'Salt Lake City', 'UT', '84106', 'USA', '$2y$10$m5RycN49aZibKafIxgo8Qeuesd08b6qgpi6o5UbxknFPgugW5qd5S'),
(10, 'Company J', 'Wacker', 'Roland', 'roland_wacker@companyj.com', 'Purchasing Manager', '312-922-5733', NULL, '773-595-5533', '(123)555-0101', '4531 Tator Patch Road', 'Chicago', 'IL', '60605', 'USA', '$2y$10$wWfM2BsXbJDCTw0MeOpCr.hXN3DIRR81prlEkLDe2r.4uR5P9.4qq'),
(11, 'Company K', 'Krschne', 'Peter', 'pkrschne@companyk.com', 'Purchasing Manager', '772-907-8499', NULL, '727-203-2794', '(123)555-0101', '1246 Travis Street', 'Miami', 'FL', '33169', 'USA', '$2y$10$Mzk9GOOO0j270gcypd3MUOM065FTVp0iwJsWVshqcgFOEnrK8zsEG'),
(12, 'Company L', 'Edwards', 'John', 'john_edwards@companyl.com', 'Purchasing Manager', '702-588-3789', NULL, '702-301-5858', '(123)555-0101', '3749 Hall Street', 'Las Vegas', 'NV', '89119', 'USA', '$2y$10$ZdoFrrNh1ozObW/YNWwxtepYW88NOYOmqyOFBYpjrbdjrJINDLsWm'),
(13, 'Company M', 'Ludick', 'Andre', 'andre_ludick@companym.com', 'Purchasing Representative', '731-685-3526', NULL, '901-265-1743', '(123)555-0101', '1742 Lords Way', 'Memphis', 'TN', '38110', 'USA', '$2y$10$peTmaXGzZH.f6eMILY.Tpu6jzELE6QH.Gktju/uJd1WhDMI5vYWmS'),
(14, 'Company N', 'Grilo', 'Carlos', 'carlos_grilo@companyn.com', 'Purchasing Representative', '303-860-0376', NULL, '303-902-7469', '(123)555-0101', '3404 Roy Alley', 'Denver', 'CO', '80218', 'USA', '$2y$10$hXzJLTTrDrGrHzkQNtpHFuTy0XrxXFnHaJLwLYFH0ScnbGQ0ijHLK'),
(15, 'Company O', 'Kupkova', 'Helena', 'helena.kupkova@companyo.com', 'Purchasing Manager', '808-538-6697', NULL, '808-306-5642', '(123)555-0101', '1706 Arron Smith Drive', 'Honolulu', 'HI', '96813', 'USA', '$2y$10$WwvlI825/bQmPMQ9J9fbPeXdHG80hpYTqajlKBgJqGMFovMDqBEZ2'),
(16, 'Company P', 'Goldschmidt', 'Daniel', 'daniel_goldschmidt@companyp.com', 'Purchasing Representative', '831-707-6468', NULL, '415-207-2040', '(123)555-0101', '338 Cemetery Street', 'San Francisco', 'CA', '94107', 'USA', '$2y$10$kWaGrv5afPFlbndNlzqlrOm5ONnCjqkTZO4MRN9giR8dP.UaJRYzu'),
(17, 'Company Q', 'Bagel', 'Jean Philippe', 'bagelj@companyq.com', 'Owner', '425-906-4166', NULL, '360-201-7679', '(123)555-0101', '487 Stockert Hollow Road', 'Seattle', 'WA', '98119', 'USA', '$2y$10$HAMIeW2GuirW9avo7R3wD.5Qu8RxHTbGzsKV4Ebm4srnvXwv4.9lO'),
(18, 'Company R', 'Autier Miconi', 'Catherine', 'catherine_autier_miconi@companyr.com', 'Purchasing Representative', '617-636-8439', NULL, '857-301-7164', '(123)555-0101', '2151 Cedar Lane', 'Boston', 'MA', '02109', 'USA', '$2y$10$7x4NheQrr8Vmwuow557EFuPvkL6Fts8N3jRL4Fn82nZf5zxWZOzAC'),
(19, 'Company S', 'Eggerer', 'Alexander', 'alexander_eggerer@companys.com', 'Accounting Assistant', '213-914-8891', NULL, '323-368-3628', '(123)555-0101', '4850 Aviation Way', 'Los Angelas', 'CA', '90026', 'USA', '$2y$10$URexBpWNHvVAVZ2BrP2w0OA776VQOSuDCejsitHqXWuBZ77ApPt0G'),
(20, 'Company T', 'Li', 'George', 'george_li@companyt.com', 'Purchasing Manager', '917-497-0786', NULL, '646-707-6203', '(123)555-0101', '902 Geneva Street', 'New York', 'NY', '10013', 'USA', '$2y$10$eQTB.Gel2FOri5j5OX7FyufB27NjwKsycARTMk5HcsuEQiHUHmBFu'),
(21, 'Company U', 'Tham', 'Bernard', 'btham@companyu.com', 'Accounting Manager', '952-400-0137', NULL, '952-200-3567', '(123)555-0101', '1416 Oral Lake Road', 'Minneapolis', 'MN', '55401', 'USA', '$2y$10$8GWRg1GwwdtkCfgTHIaByeF8y2QLDhXJDVLbLFV2qkudYfpr2MXPO'),
(22, 'Company V', 'Ramos', 'Luciana', 'luciana_ramos@companyv.com', 'Purchasing Assistant', '262-643-1366', NULL, '414-943-9959', '(123)555-0101', '1255 Fairfield Road', 'Milwaukee', 'WI', '53202', 'USA', '$2y$10$x7LX4P0cG5ufR2AYKVjWLeGkXwBKB66WTABP5HEhhx0BYXxEBmmQq'),
(23, 'Company W', 'Entin', 'Michael', 'michael.entin@companyw.com', 'Purchasing Manager', '541-288-8594', NULL, '503-200-3818', '(123)555-0101', '4283 New Street', 'Portland', 'OR', '97205', 'USA', '$2y$10$DIB.cODzEgbKmC/SfZUQ3u7qd9JkrUaICf/DJ6xD2O8PBBfMrmyzC'),
(24, 'Company X', 'Hasselberg', 'Jonas', 'jonas.hasselberg@companyx.com', 'Owner', '801-660-6998', NULL, '801-301-0734', '(123)555-0101', '2907 Tori Lane', 'Salt Lake City', 'UT', '84104', 'USA', '$2y$10$iOlYSDpdv6r5Hf3Fd7K27ebEB6vUT98vG6334MeHVbMVvypiK.z3C'),
(25, 'Company Y', 'Rodman', 'John', 'john_rodman@companyy.com', 'Purchasing Manager', '773-449-3931', NULL, '773-842-3960', '(123)555-0101', '4474 Cherry Camp Road', 'Chicago', 'IL', '60654', 'USA', '$2y$10$wpeOSBuT2K6Ny6pU.h97E.e9Y.EVQsw8bCXOelTgt1Vy1rblWfsEu'),
(26, 'Company Z', 'Liu', 'Run', 'liur@companyz.com', 'Accounting Assistant', '305-484-0001', NULL, '305-855-9350', '(123)555-0101', '2077 Marigold Lane', 'Miami', 'FL', '33176', 'USA', '$2y$10$Tf.Hg64PC6cLfmEr5pe2H.qChCiystinhFpBe8cPRsvwYJCqLMvpu'),
(27, 'Company AA', 'Toh', 'Karen', 'tohk@companyaa.com', 'Purchasing Manager', '702-392-3526', NULL, '702-203-8783', '(123)555-0101', '4322 Mesa Drive', 'Las Vegas', 'NV', '89101', 'USA', '$2y$10$7j8duywJ/8Ed6a2.e7Mmb.cAhIs/v6G4r3nQ6pCiQJybZ40ex8Zam'),
(28, 'Company BB', 'Raghav', 'Amritansh', 'amritansh.raghav@companybb.com', 'Purchasing Manager', '901-287-4562', NULL, '901-949-4513', '(123)555-0101', '3948 Woodridge Lane', 'Memphis', 'TN', '38115', 'USA', '$2y$10$NX7Jhfdv5QBEVbtMVDbGbecqksKU2bvjMft2mYHCSAP9yt1AoTZWO'),
(29, 'Company CC', 'Lee', 'Soo Jung', 'lees@companycc.com', 'Purchasing Manager', '303-307-8613', NULL, '303-760-9401', '(123)555-0101', '1143 Logan Lane', 'Denver', 'CO', '80239', 'USA', '$2y$10$ZOjklfOFxDqpPIvRfEwuRuXfFUYQjxXC8d8Erv8/1xE0ojB/shI..');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `business_phone` varchar(25) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `zip_postal_code` varchar(15) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `web_page` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `picture_url` varchar(30) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `company`, `last_name`, `first_name`, `email_address`, `job_title`, `business_phone`, `home_phone`, `mobile_phone`, `fax_number`, `address`, `city`, `state_province`, `zip_postal_code`, `country_region`, `web_page`, `notes`, `picture_url`, `password`) VALUES
(1, 'Northwind Traders', 'Freehafer', 'Nancy', 'nancy@northwindtraders.com', 'Sales Representative', '360-814-6440 x263', '253-387-1036', '206-354-1224', '360-814-1065', '2938 Hillcrest Drive', 'Seattle', 'WA', '98119', 'USA', 'http://northwindtraders.com', NULL, 'nancy.jpg', '$2y$10$AFSEehqUE3liduku6BQEWeXerN4U49ZQkg.wN92QTGf702w8HB/wa'),
(2, 'Northwind Traders', 'Cencini', 'Andrew', 'andrew@northwindtraders.com', 'Vice President, Sales', '360-814-6440 x203', '425-564-0345', '425-985-8510', '360-814-1066', '54 Conifer Drive', 'Bellevue', 'WA', '98007', 'USA', 'http://northwindtraders.com', 'Joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.', 'andrew.jpg', '$2y$10$t/VtpSG7VwvCCT9atzbJMOj4tY30s3SQXKamWaz0aEi4IPF7ylnyC'),
(3, 'Northwind Traders', 'Kotas', 'Jan', 'jan@northwindtraders.com', 'Sales Representative', '360-814-6440 x220', '425-780-5459', '509-264-8674', '360-814-1067', '2082 Stockert Hollow Road', 'Redmond', 'WA', '98052', 'USA', 'http://northwindtraders.com', 'Was hired as a sales associate and was promoted to sales representative.', 'janet.jpg', '$2y$10$62DKnamO5uFNHUQeWAuLKu1GqfEY9nsvjY273xL.pCeqwZ5clGxsS'),
(4, 'Northwind Traders', 'Sergienko', 'Mariya', 'mariya@northwindtraders.com', 'Sales Representative', '360-814-6440 x271', '425-827-9545', '425-830-4048', '360-814-1068', '1104 Stockert Hollow Road', 'Kirkland', 'WA', '98033', 'USA', 'http://northwindtraders.com', NULL, 'mariya.jpg', '$2y$10$GXUnXAd.PnrpNKgJfuNYyuzl48nqC9jlhWV42RCgaiEgS4rjXvwWO'),
(5, 'Northwind Traders', 'Thorpe', 'Steven', 'steven@northwindtraders.com', 'Sales Manager', '360-814-6440 x200', '206-231-3682', '206-715-5702', '360-814-1069', '1751 Wright Court', 'Seattle', 'WA', '98109', 'USA', 'http://northwindtraders.com', 'Joined the company as a sales representative and was promoted to sales manager.  Fluent in French.', 'steven.jpg', '$2y$10$BCyh5S44SEvdzNth6J/eqOlKxzqTd014BCyuiKHhVIvQRUnpAa2L.'),
(6, 'Northwind Traders', 'Neipper', 'Michael', 'michael@northwindtraders.com', 'Sales Representative', '360-814-6440 x292', '425-703-6408', '360-441-5804', '360-814-1070', '3116 Main Street', 'Redmond', 'WA', '98052', 'USA', 'http://northwindtraders.com', 'Fluent in Japanese and can read and write French, Portuguese, and Spanish.', 'michael.jpg', '$2y$10$VORsyoizELR4u7gpzcxJcuqTKBnslhI0OfHlykphFZ2NlSFXos45m'),
(7, 'Northwind Traders', 'Zare', 'Robert', 'robert@northwindtraders.com', 'Sales Representative', '360-814-6440 x217', '360-982-8202', '206-920-2581', '360-814-1071', '922 Pratt Avenue', 'Seattle', 'WA', '98101', 'USA', 'http://northwindtraders.com', NULL, 'robert.jpg', '$2y$10$hW3Skg4lA73m0P0J41ryR.aC5iUbqCJ/d7HJLabzbZg0YJTbqtVw.'),
(8, 'Northwind Traders', 'Giussani', 'Laura', 'laura@northwindtraders.com', 'Sales Coordinator', '360-814-6440 x262', '425-881-8531', '425-280-2866', '360-814-1072', '575 Angus Road', 'Redmond', 'WA', '98052', 'USA', 'http://northwindtraders.com', 'Reads and writes French.', 'laura.jpg', '$2y$10$19/OLTVxHPyw5mw8fdzBref2.oEs12.lxyQxW.XXLtYckCmNfhdAq'),
(9, 'Northwind Traders', 'Hellung-Larsen', 'Anne', 'anne@northwindtraders.com', 'Sales Representative', '360-814-6440 x282', '206-290-0513', '206-714-4975', '360-814-1073', '670 Owagner Lane', 'Seattle', 'WA', '98109', 'USA', 'http://northwindtraders.com', 'Fluent in French and German.', 'anne.jpg', '$2y$10$nfvwbwMs6LLBxFx2vlNBLehLYo673vt79nx5KzQojEgv5NN23t26m');

-- --------------------------------------------------------

--
-- Table structure for table `employee_privileges`
--

CREATE TABLE `employee_privileges` (
  `employee_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_privileges`
--

INSERT INTO `employee_privileges` (`employee_id`, `privilege_id`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transactions`
--

CREATE TABLE `inventory_transactions` (
  `id` int(11) NOT NULL,
  `transaction_type` tinyint(4) NOT NULL,
  `transaction_created_date` datetime DEFAULT NULL,
  `transaction_modified_date` datetime DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `customer_order_id` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory_transactions`
--

INSERT INTO `inventory_transactions` (`id`, `transaction_type`, `transaction_created_date`, `transaction_modified_date`, `product_id`, `quantity`, `purchase_order_id`, `customer_order_id`, `comments`) VALUES
(35, 1, '2006-03-22 16:02:28', '2006-03-22 16:02:28', 80, 75, NULL, NULL, NULL),
(36, 1, '2006-03-22 16:02:48', '2006-03-22 16:02:48', 72, 40, NULL, NULL, NULL),
(37, 1, '2006-03-22 16:03:04', '2006-03-22 16:03:04', 52, 100, NULL, NULL, NULL),
(38, 1, '2006-03-22 16:03:09', '2006-03-22 16:03:09', 56, 120, NULL, NULL, NULL),
(39, 1, '2006-03-22 16:03:14', '2006-03-22 16:03:14', 57, 80, NULL, NULL, NULL),
(40, 1, '2006-03-22 16:03:40', '2006-03-22 16:03:40', 6, 100, NULL, NULL, NULL),
(41, 1, '2006-03-22 16:03:47', '2006-03-22 16:03:47', 7, 40, NULL, NULL, NULL),
(42, 1, '2006-03-22 16:03:54', '2006-03-22 16:03:54', 8, 40, NULL, NULL, NULL),
(43, 1, '2006-03-22 16:04:02', '2006-03-22 16:04:02', 14, 40, NULL, NULL, NULL),
(44, 1, '2006-03-22 16:04:07', '2006-03-22 16:04:07', 17, 40, NULL, NULL, NULL),
(45, 1, '2006-03-22 16:04:12', '2006-03-22 16:04:12', 19, 20, NULL, NULL, NULL),
(46, 1, '2006-03-22 16:04:17', '2006-03-22 16:04:17', 20, 40, NULL, NULL, NULL),
(47, 1, '2006-03-22 16:04:20', '2006-03-22 16:04:20', 21, 20, NULL, NULL, NULL),
(48, 1, '2006-03-22 16:04:24', '2006-03-22 16:04:24', 40, 120, NULL, NULL, NULL),
(49, 1, '2006-03-22 16:04:28', '2006-03-22 16:04:28', 41, 40, NULL, NULL, NULL),
(50, 1, '2006-03-22 16:04:31', '2006-03-22 16:04:31', 48, 100, NULL, NULL, NULL),
(51, 1, '2006-03-22 16:04:38', '2006-03-22 16:04:38', 51, 40, NULL, NULL, NULL),
(52, 1, '2006-03-22 16:04:41', '2006-03-22 16:04:41', 74, 20, NULL, NULL, NULL),
(53, 1, '2006-03-22 16:04:45', '2006-03-22 16:04:45', 77, 60, NULL, NULL, NULL),
(54, 1, '2006-03-22 16:05:07', '2006-03-22 16:05:07', 3, 100, NULL, NULL, NULL),
(55, 1, '2006-03-22 16:05:11', '2006-03-22 16:05:11', 4, 40, NULL, NULL, NULL),
(56, 1, '2006-03-22 16:05:14', '2006-03-22 16:05:14', 5, 40, NULL, NULL, NULL),
(57, 1, '2006-03-22 16:05:26', '2006-03-22 16:05:26', 65, 40, NULL, NULL, NULL),
(58, 1, '2006-03-22 16:05:32', '2006-03-22 16:05:32', 66, 80, NULL, NULL, NULL),
(59, 1, '2006-03-22 16:05:47', '2006-03-22 16:05:47', 1, 40, NULL, NULL, NULL),
(60, 1, '2006-03-22 16:05:51', '2006-03-22 16:05:51', 34, 60, NULL, NULL, NULL),
(61, 1, '2006-03-22 16:06:00', '2006-03-22 16:06:00', 43, 100, NULL, NULL, NULL),
(62, 1, '2006-03-22 16:06:03', '2006-03-22 16:06:03', 81, 125, NULL, NULL, NULL),
(63, 2, '2006-03-22 16:07:56', '2006-03-24 11:03:00', 80, 30, NULL, NULL, NULL),
(64, 2, '2006-03-22 16:08:19', '2006-03-22 16:08:59', 7, 10, NULL, NULL, NULL),
(65, 2, '2006-03-22 16:08:29', '2006-03-22 16:08:59', 51, 10, NULL, NULL, NULL),
(66, 2, '2006-03-22 16:08:37', '2006-03-22 16:08:59', 80, 10, NULL, NULL, NULL),
(67, 2, '2006-03-22 16:09:46', '2006-03-22 16:10:27', 1, 15, NULL, NULL, NULL),
(68, 2, '2006-03-22 16:10:06', '2006-03-22 16:10:27', 43, 20, NULL, NULL, NULL),
(69, 2, '2006-03-22 16:11:39', '2006-03-24 11:00:55', 19, 20, NULL, NULL, NULL),
(70, 2, '2006-03-22 16:11:56', '2006-03-24 10:59:41', 48, 10, NULL, NULL, NULL),
(71, 2, '2006-03-22 16:12:29', '2006-03-24 10:57:38', 8, 17, NULL, NULL, NULL),
(72, 1, '2006-03-24 10:41:30', '2006-03-24 10:41:30', 81, 200, NULL, NULL, NULL),
(73, 2, '2006-03-24 10:41:33', '2006-03-24 10:41:42', 81, 200, NULL, NULL, 'Fill Back Ordered product, Order #40'),
(74, 1, '2006-03-24 10:53:13', '2006-03-24 10:53:13', 48, 100, NULL, NULL, NULL),
(75, 2, '2006-03-24 10:53:16', '2006-03-24 10:55:46', 48, 100, NULL, NULL, 'Fill Back Ordered product, Order #39'),
(76, 1, '2006-03-24 10:53:36', '2006-03-24 10:53:36', 43, 300, NULL, NULL, NULL),
(77, 2, '2006-03-24 10:53:39', '2006-03-24 10:56:57', 43, 300, NULL, NULL, 'Fill Back Ordered product, Order #38'),
(78, 1, '2006-03-24 10:54:04', '2006-03-24 10:54:04', 41, 200, NULL, NULL, NULL),
(79, 2, '2006-03-24 10:54:07', '2006-03-24 10:58:40', 41, 200, NULL, NULL, 'Fill Back Ordered product, Order #36'),
(80, 1, '2006-03-24 10:54:33', '2006-03-24 10:54:33', 19, 30, NULL, NULL, NULL),
(81, 2, '2006-03-24 10:54:35', '2006-03-24 11:02:02', 19, 30, NULL, NULL, 'Fill Back Ordered product, Order #33'),
(82, 1, '2006-03-24 10:54:58', '2006-03-24 10:54:58', 34, 100, NULL, NULL, NULL),
(83, 2, '2006-03-24 10:55:02', '2006-03-24 11:03:00', 34, 100, NULL, NULL, 'Fill Back Ordered product, Order #30'),
(84, 2, '2006-03-24 14:48:15', '2006-04-04 11:41:14', 6, 10, NULL, NULL, NULL),
(85, 2, '2006-03-24 14:48:23', '2006-04-04 11:41:14', 4, 10, NULL, NULL, NULL),
(86, 3, '2006-03-24 14:49:16', '2006-03-24 14:49:16', 80, 20, NULL, NULL, NULL),
(87, 3, '2006-03-24 14:49:20', '2006-03-24 14:49:20', 81, 50, NULL, NULL, NULL),
(88, 3, '2006-03-24 14:50:09', '2006-03-24 14:50:09', 1, 25, NULL, NULL, NULL),
(89, 3, '2006-03-24 14:50:14', '2006-03-24 14:50:14', 43, 25, NULL, NULL, NULL),
(90, 3, '2006-03-24 14:50:18', '2006-03-24 14:50:18', 81, 25, NULL, NULL, NULL),
(91, 2, '2006-03-24 14:51:03', '2006-04-04 11:09:24', 40, 50, NULL, NULL, NULL),
(92, 2, '2006-03-24 14:55:03', '2006-04-04 11:06:56', 21, 20, NULL, NULL, NULL),
(93, 2, '2006-03-24 14:55:39', '2006-04-04 11:06:13', 5, 25, NULL, NULL, NULL),
(94, 2, '2006-03-24 14:55:52', '2006-04-04 11:06:13', 41, 30, NULL, NULL, NULL),
(95, 2, '2006-03-24 14:56:09', '2006-04-04 11:06:13', 40, 30, NULL, NULL, NULL),
(96, 3, '2006-03-30 16:46:34', '2006-03-30 16:46:34', 34, 12, NULL, NULL, NULL),
(97, 3, '2006-03-30 17:23:27', '2006-03-30 17:23:27', 34, 10, NULL, NULL, NULL),
(98, 3, '2006-03-30 17:24:33', '2006-03-30 17:24:33', 34, 1, NULL, NULL, NULL),
(99, 2, '2006-04-03 13:50:08', '2006-04-03 13:50:15', 48, 10, NULL, NULL, NULL),
(100, 1, '2006-04-04 11:00:54', '2006-04-04 11:00:54', 57, 100, NULL, NULL, NULL),
(101, 2, '2006-04-04 11:00:56', '2006-04-04 11:08:49', 57, 100, NULL, NULL, 'Fill Back Ordered product, Order #46'),
(102, 1, '2006-04-04 11:01:14', '2006-04-04 11:01:14', 34, 50, NULL, NULL, NULL),
(103, 1, '2006-04-04 11:01:35', '2006-04-04 11:01:35', 43, 250, NULL, NULL, NULL),
(104, 3, '2006-04-04 11:01:37', '2006-04-04 11:01:37', 43, 300, NULL, NULL, 'Fill Back Ordered product, Order #41'),
(105, 1, '2006-04-04 11:01:55', '2006-04-04 11:01:55', 8, 25, NULL, NULL, NULL),
(106, 2, '2006-04-04 11:01:58', '2006-04-04 11:07:37', 8, 25, NULL, NULL, 'Fill Back Ordered product, Order #48'),
(107, 1, '2006-04-04 11:02:17', '2006-04-04 11:02:17', 34, 300, NULL, NULL, NULL),
(108, 2, '2006-04-04 11:02:19', '2006-04-04 11:08:14', 34, 300, NULL, NULL, 'Fill Back Ordered product, Order #47'),
(109, 1, '2006-04-04 11:02:37', '2006-04-04 11:02:37', 19, 25, NULL, NULL, NULL),
(110, 2, '2006-04-04 11:02:39', '2006-04-04 11:41:14', 19, 10, NULL, NULL, 'Fill Back Ordered product, Order #42'),
(111, 1, '2006-04-04 11:02:56', '2006-04-04 11:02:56', 19, 10, NULL, NULL, NULL),
(112, 2, '2006-04-04 11:02:58', '2006-04-04 11:07:37', 19, 25, NULL, NULL, 'Fill Back Ordered product, Order #48'),
(113, 1, '2006-04-04 11:03:12', '2006-04-04 11:03:12', 72, 50, NULL, NULL, NULL),
(114, 2, '2006-04-04 11:03:14', '2006-04-04 11:08:49', 72, 50, NULL, NULL, 'Fill Back Ordered product, Order #46'),
(115, 1, '2006-04-04 11:03:38', '2006-04-04 11:03:38', 41, 50, NULL, NULL, NULL),
(116, 2, '2006-04-04 11:03:39', '2006-04-04 11:09:24', 41, 50, NULL, NULL, 'Fill Back Ordered product, Order #45'),
(117, 2, '2006-04-04 11:04:55', '2006-04-04 11:05:04', 34, 87, NULL, NULL, NULL),
(118, 2, '2006-04-04 11:35:50', '2006-04-04 11:35:54', 51, 30, NULL, NULL, NULL),
(119, 2, '2006-04-04 11:35:51', '2006-04-04 11:35:54', 7, 30, NULL, NULL, NULL),
(120, 2, '2006-04-04 11:36:15', '2006-04-04 11:36:21', 17, 40, NULL, NULL, NULL),
(121, 2, '2006-04-04 11:36:39', '2006-04-04 11:36:47', 6, 90, NULL, NULL, NULL),
(122, 2, '2006-04-04 11:37:06', '2006-04-04 11:37:09', 4, 30, NULL, NULL, NULL),
(123, 2, '2006-04-04 11:37:45', '2006-04-04 11:37:49', 48, 40, NULL, NULL, NULL),
(124, 2, '2006-04-04 11:38:07', '2006-04-04 11:38:11', 48, 40, NULL, NULL, NULL),
(125, 2, '2006-04-04 11:38:27', '2006-04-04 11:38:32', 41, 10, NULL, NULL, NULL),
(126, 2, '2006-04-04 11:38:48', '2006-04-04 11:38:53', 43, 5, NULL, NULL, NULL),
(127, 2, '2006-04-04 11:39:12', '2006-04-04 11:39:29', 40, 40, NULL, NULL, NULL),
(128, 2, '2006-04-04 11:39:50', '2006-04-04 11:39:53', 8, 20, NULL, NULL, NULL),
(129, 2, '2006-04-04 11:40:13', '2006-04-04 11:40:16', 80, 15, NULL, NULL, NULL),
(130, 2, '2006-04-04 11:40:32', '2006-04-04 11:40:38', 74, 20, NULL, NULL, NULL),
(131, 2, '2006-04-04 11:41:39', '2006-04-04 11:41:45', 72, 40, NULL, NULL, NULL),
(132, 2, '2006-04-04 11:42:17', '2006-04-04 11:42:26', 3, 50, NULL, NULL, NULL),
(133, 2, '2006-04-04 11:42:24', '2006-04-04 11:42:26', 8, 3, NULL, NULL, NULL),
(134, 2, '2006-04-04 11:42:48', '2006-04-04 11:43:08', 20, 40, NULL, NULL, NULL),
(135, 2, '2006-04-04 11:43:05', '2006-04-04 11:43:08', 52, 40, NULL, NULL, NULL),
(136, 3, '2006-04-25 17:04:05', '2006-04-25 17:04:57', 56, 110, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transaction_types`
--

CREATE TABLE `inventory_transaction_types` (
  `id` tinyint(4) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory_transaction_types`
--

INSERT INTO `inventory_transaction_types` (`id`, `type_name`) VALUES
(1, 'Purchased'),
(2, 'Sold'),
(3, 'On Hold'),
(4, 'Waste');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `tax` decimal(19,4) DEFAULT 0.0000,
  `shipping` decimal(19,4) DEFAULT 0.0000,
  `amount_due` decimal(19,4) DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `order_id`, `invoice_date`, `due_date`, `tax`, `shipping`, `amount_due`) VALUES
(5, 31, '2006-03-22 16:08:59', NULL, '0.0000', '0.0000', '0.0000'),
(6, 32, '2006-03-22 16:10:27', NULL, '0.0000', '0.0000', '0.0000'),
(7, 40, '2006-03-24 10:41:41', NULL, '0.0000', '0.0000', '0.0000'),
(8, 39, '2006-03-24 10:55:46', NULL, '0.0000', '0.0000', '0.0000'),
(9, 38, '2006-03-24 10:56:57', NULL, '0.0000', '0.0000', '0.0000'),
(10, 37, '2006-03-24 10:57:38', NULL, '0.0000', '0.0000', '0.0000'),
(11, 36, '2006-03-24 10:58:40', NULL, '0.0000', '0.0000', '0.0000'),
(12, 35, '2006-03-24 10:59:41', NULL, '0.0000', '0.0000', '0.0000'),
(13, 34, '2006-03-24 11:00:55', NULL, '0.0000', '0.0000', '0.0000'),
(14, 33, '2006-03-24 11:02:02', NULL, '0.0000', '0.0000', '0.0000'),
(15, 30, '2006-03-24 11:03:00', NULL, '0.0000', '0.0000', '0.0000'),
(16, 56, '2006-04-03 13:50:15', NULL, '0.0000', '0.0000', '0.0000'),
(17, 55, '2006-04-04 11:05:04', NULL, '0.0000', '0.0000', '0.0000'),
(18, 51, '2006-04-04 11:06:13', NULL, '0.0000', '0.0000', '0.0000'),
(19, 50, '2006-04-04 11:06:56', NULL, '0.0000', '0.0000', '0.0000'),
(20, 48, '2006-04-04 11:07:37', NULL, '0.0000', '0.0000', '0.0000'),
(21, 47, '2006-04-04 11:08:14', NULL, '0.0000', '0.0000', '0.0000'),
(22, 46, '2006-04-04 11:08:49', NULL, '0.0000', '0.0000', '0.0000'),
(23, 45, '2006-04-04 11:09:24', NULL, '0.0000', '0.0000', '0.0000'),
(24, 79, '2006-04-04 11:35:54', NULL, '0.0000', '0.0000', '0.0000'),
(25, 78, '2006-04-04 11:36:21', NULL, '0.0000', '0.0000', '0.0000'),
(26, 77, '2006-04-04 11:36:47', NULL, '0.0000', '0.0000', '0.0000'),
(27, 76, '2006-04-04 11:37:09', NULL, '0.0000', '0.0000', '0.0000'),
(28, 75, '2006-04-04 11:37:49', NULL, '0.0000', '0.0000', '0.0000'),
(29, 74, '2006-04-04 11:38:11', NULL, '0.0000', '0.0000', '0.0000'),
(30, 73, '2006-04-04 11:38:32', NULL, '0.0000', '0.0000', '0.0000'),
(31, 72, '2006-04-04 11:38:53', NULL, '0.0000', '0.0000', '0.0000'),
(32, 71, '2006-04-04 11:39:29', NULL, '0.0000', '0.0000', '0.0000'),
(33, 70, '2006-04-04 11:39:53', NULL, '0.0000', '0.0000', '0.0000'),
(34, 69, '2006-04-04 11:40:16', NULL, '0.0000', '0.0000', '0.0000'),
(35, 67, '2006-04-04 11:40:38', NULL, '0.0000', '0.0000', '0.0000'),
(36, 42, '2006-04-04 11:41:14', NULL, '0.0000', '0.0000', '0.0000'),
(37, 60, '2006-04-04 11:41:45', NULL, '0.0000', '0.0000', '0.0000'),
(38, 63, '2006-04-04 11:42:26', NULL, '0.0000', '0.0000', '0.0000'),
(39, 58, '2006-04-04 11:43:08', NULL, '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  `ship_name` varchar(50) DEFAULT NULL,
  `ship_address` longtext DEFAULT NULL,
  `ship_city` varchar(50) DEFAULT NULL,
  `ship_state_province` varchar(50) DEFAULT NULL,
  `ship_zip_postal_code` varchar(50) DEFAULT NULL,
  `ship_country_region` varchar(50) DEFAULT NULL,
  `shipping_fee` decimal(19,4) DEFAULT 0.0000,
  `taxes` decimal(19,4) DEFAULT 0.0000,
  `payment_type` varchar(50) DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `tax_rate` double DEFAULT 0,
  `tax_status_id` tinyint(4) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `employee_id`, `customer_id`, `order_date`, `shipped_date`, `shipper_id`, `ship_name`, `ship_address`, `ship_city`, `ship_state_province`, `ship_zip_postal_code`, `ship_country_region`, `shipping_fee`, `taxes`, `payment_type`, `paid_date`, `notes`, `tax_rate`, `tax_status_id`, `status_id`) VALUES
(30, 9, 27, '2006-01-15 00:00:00', '2006-01-22 00:00:00', 2, 'Karen Toh', '4322 Mesa Drive', 'Las Vegas', 'NV', '89101', 'USA', '200.0000', '0.0000', 'Check', '2006-01-15 00:00:00', NULL, 0, NULL, 3),
(31, 3, 4, '2006-01-20 00:00:00', '2006-01-22 00:00:00', 1, 'Christina Lee', '4409 Hoffman Avenue', 'New York', 'NY', '10016', 'USA', '5.0000', '0.0000', 'Credit Card', '2006-01-20 00:00:00', NULL, 0, NULL, 3),
(32, 4, 12, '2006-01-22 00:00:00', '2006-01-22 00:00:00', 2, 'John Edwards', '3749 Hall Street', 'Las Vegas', 'NV', '89119', 'USA', '5.0000', '0.0000', 'Credit Card', '2006-01-22 00:00:00', NULL, 0, NULL, 3),
(33, 6, 8, '2006-01-30 00:00:00', '2006-01-31 00:00:00', 3, 'Elizabeth Andersen', '3547 Kincheloe Road', 'Portland', 'OR', '97230', 'USA', '50.0000', '0.0000', 'Credit Card', '2006-01-30 00:00:00', NULL, 0, NULL, 3),
(34, 9, 4, '2006-02-06 00:00:00', '2006-02-07 00:00:00', 3, 'Christina Lee', '4409 Hoffman Avenue', 'New York', 'NY', '10016', 'USA', '4.0000', '0.0000', 'Check', '2006-02-06 00:00:00', NULL, 0, NULL, 3),
(35, 3, 29, '2006-02-10 00:00:00', '2006-02-12 00:00:00', 2, 'Soo Jung Lee', '1576 Lakeland Terrace', 'Monroe', 'MI', '48161', 'USA', '7.0000', '0.0000', 'Check', '2006-02-10 00:00:00', NULL, 0, NULL, 3),
(36, 4, 3, '2006-02-23 00:00:00', '2006-02-25 00:00:00', 2, 'Thomas Axen', '1476 Euclid Avenue', 'Los Angeles', 'CA', '90017', 'USA', '7.0000', '0.0000', 'Cash', '2006-02-23 00:00:00', NULL, 0, NULL, 3),
(37, 8, 6, '2006-03-06 00:00:00', '2006-03-09 00:00:00', 2, 'Francisco Pérez-Olaeta', '715 Reeves Street', 'Milwaukee', 'WI', '53202', 'USA', '12.0000', '0.0000', 'Credit Card', '2006-03-06 00:00:00', NULL, 0, NULL, 3),
(38, 9, 28, '2006-03-10 00:00:00', '2006-03-11 00:00:00', 3, 'Amritansh Raghav', '3948 Woodridge Lane', 'Memphis', 'TN', '38115', 'USA', '10.0000', '0.0000', 'Check', '2006-03-10 00:00:00', NULL, 0, NULL, 3),
(39, 3, 8, '2006-03-22 00:00:00', '2006-03-24 00:00:00', 3, 'Elizabeth Andersen', '3547 Kincheloe Road', 'Portland', 'OR', '97230', 'USA', '5.0000', '0.0000', 'Check', '2006-03-22 00:00:00', NULL, 0, NULL, 3),
(40, 4, 10, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, 'Roland Wacker', '4531 Tator Patch Road', 'Chicago', 'IL', '60605', 'USA', '9.0000', '0.0000', 'Credit Card', '2006-03-24 00:00:00', NULL, 0, NULL, 3),
(41, 1, 7, '2006-03-24 00:00:00', NULL, NULL, 'Ming-Yang Xie', '730 Young Road', 'Boise', 'ID', '83702', 'USA', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, 0),
(42, 1, 10, '2006-03-24 00:00:00', '2006-04-07 00:00:00', 1, 'Roland Wacker', '4531 Tator Patch Road', 'Chicago', 'IL', '60605', 'USA', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, 2),
(43, 1, 11, '2006-03-24 00:00:00', NULL, 3, 'Peter Krschne', '1246 Travis Street', 'Miami', 'FL', '33169', 'USA', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, 0),
(44, 1, 1, '2006-03-24 00:00:00', NULL, NULL, 'Anna Bedecs', '4848 Mutton Town Road', 'Marysville', 'WA', '98270', 'USA', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, 0),
(45, 1, 28, '2006-04-07 00:00:00', '2006-04-07 00:00:00', 3, 'Amritansh Raghav', '3948 Woodridge Lane', 'Memphis', 'TN', '38115', 'USA', '40.0000', '0.0000', 'Credit Card', '2006-04-07 00:00:00', NULL, 0, NULL, 3),
(46, 7, 9, '2006-04-05 00:00:00', '2006-04-05 00:00:00', 1, 'Sven Mortensen', '2011 White River Way', 'Salt Lake City', 'UT', '84106', 'USA', '100.0000', '0.0000', 'Check', '2006-04-05 00:00:00', NULL, 0, NULL, 3),
(47, 6, 6, '2006-04-08 00:00:00', '2006-04-08 00:00:00', 2, 'Francisco Pérez-Olaeta', '715 Reeves Street', 'Milwaukee', 'WI', '53202', 'USA', '300.0000', '0.0000', 'Credit Card', '2006-04-08 00:00:00', NULL, 0, NULL, 3),
(48, 4, 8, '2006-04-05 00:00:00', '2006-04-05 00:00:00', 2, 'Elizabeth Andersen', '3547 Kincheloe Road', 'Portland', 'OR', '97230', 'USA', '50.0000', '0.0000', 'Check', '2006-04-05 00:00:00', NULL, 0, NULL, 3),
(50, 9, 25, '2006-04-05 00:00:00', '2006-04-05 00:00:00', 1, 'John Rodman', '4474 Cherry Camp Road', 'Chicago', 'IL', '60654', 'USA', '5.0000', '0.0000', 'Cash', '2006-04-05 00:00:00', NULL, 0, NULL, 3),
(51, 9, 26, '2006-04-05 00:00:00', '2006-04-05 00:00:00', 3, 'Run Liu', '2077 Marigold Lane', 'Miami', 'FL', '33176', 'USA', '60.0000', '0.0000', 'Credit Card', '2006-04-05 00:00:00', NULL, 0, NULL, 3),
(55, 1, 29, '2006-04-05 00:00:00', '2006-04-05 00:00:00', 2, 'Soo Jung Lee', '1143 Logan Lane', 'Denver', 'CO', '80239', 'USA', '200.0000', '0.0000', 'Check', '2006-04-05 00:00:00', NULL, 0, NULL, 3),
(56, 2, 6, '2006-04-03 00:00:00', '2006-04-03 00:00:00', 3, 'Francisco Pérez-Olaeta', '715 Reeves Street', 'Milwaukee', 'WI', '53202', 'USA', '0.0000', '0.0000', 'Check', '2006-04-03 00:00:00', NULL, 0, NULL, 3),
(57, 9, 27, '2006-04-22 00:00:00', '2006-04-22 00:00:00', 2, 'Karen Toh', '4322 Mesa Drive', 'Las Vegas', 'NV', '89101', 'USA', '200.0000', '0.0000', 'Check', '2006-04-22 00:00:00', NULL, 0, NULL, 0),
(58, 3, 4, '2006-04-22 00:00:00', '2006-04-22 00:00:00', 1, 'Christina Lee', '4409 Hoffman Avenue', 'New York', 'NY', '10016', 'USA', '5.0000', '0.0000', 'Credit Card', '2006-04-22 00:00:00', NULL, 0, NULL, 3),
(59, 4, 12, '2006-04-22 00:00:00', '2006-04-22 00:00:00', 2, 'John Edwards', '3749 Hall Street', 'Las Vegas', 'NV', '89119', 'USA', '5.0000', '0.0000', 'Credit Card', '2006-04-22 00:00:00', NULL, 0, NULL, 0),
(60, 6, 8, '2006-04-30 00:00:00', '2006-04-30 00:00:00', 3, 'Elizabeth Andersen', '3547 Kincheloe Road', 'Portland', 'OR', '97230', 'USA', '50.0000', '0.0000', 'Credit Card', '2006-04-30 00:00:00', NULL, 0, NULL, 3),
(61, 9, 4, '2006-04-07 00:00:00', '2006-04-07 00:00:00', 3, 'Christina Lee', '4409 Hoffman Avenue', 'New York', 'NY', '10016', 'USA', '4.0000', '0.0000', 'Check', '2006-04-07 00:00:00', NULL, 0, NULL, 0),
(62, 3, 29, '2006-04-12 00:00:00', '2006-04-12 00:00:00', 2, 'Soo Jung Lee', '1143 Logan Lane', 'Denver', 'CO', '80239', 'USA', '7.0000', '0.0000', 'Check', '2006-04-12 00:00:00', NULL, 0, NULL, 0),
(63, 4, 3, '2006-04-25 00:00:00', '2006-04-25 00:00:00', 2, 'Joseph McCormick', '1922 Edgewood Avenue', 'Fresno', 'CA', '93721', 'USA', '7.0000', '0.0000', 'Cash', '2006-04-25 00:00:00', NULL, 0, NULL, 3),
(64, 8, 6, '2006-05-09 00:00:00', '2006-05-09 00:00:00', 2, 'Francisco Pérez-Olaeta', '715 Reeves Street', 'Milwaukee', 'WI', '53202', 'USA', '12.0000', '0.0000', 'Credit Card', '2006-05-09 00:00:00', NULL, 0, NULL, 0),
(65, 9, 28, '2006-05-11 00:00:00', '2006-05-11 00:00:00', 3, 'Amritansh Raghav', '3948 Woodridge Lane', 'Memphis', 'TN', '38115', 'USA', '10.0000', '0.0000', 'Check', '2006-05-11 00:00:00', NULL, 0, NULL, 0),
(66, 3, 8, '2006-05-24 00:00:00', '2006-05-24 00:00:00', 3, 'Elizabeth Andersen', '3547 Kincheloe Road', 'Portland', 'OR', '97230', 'USA', '5.0000', '0.0000', 'Check', '2006-05-24 00:00:00', NULL, 0, NULL, 0),
(67, 4, 10, '2006-05-24 00:00:00', '2006-05-24 00:00:00', 2, 'Roland Wacker', '4531 Tator Patch Road', 'Chicago', 'IL', '60605', 'USA', '9.0000', '0.0000', 'Credit Card', '2006-05-24 00:00:00', NULL, 0, NULL, 3),
(68, 1, 7, '2006-05-24 00:00:00', NULL, NULL, 'Ming-Yang Xie', '730 Young Road', 'Boise', 'ID', '83702', 'USA', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, 0),
(69, 1, 10, '2006-05-24 00:00:00', NULL, 1, 'Roland Wacker', '4531 Tator Patch Road', 'Chicago', 'IL', '60605', 'USA', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, 0),
(70, 1, 11, '2006-05-24 00:00:00', NULL, 3, 'Peter Krschne', '1246 Travis Street', 'Miami', 'FL', '33169', 'USA', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, 0),
(71, 1, 1, '2006-05-24 00:00:00', NULL, 3, 'Anna Bedecs', '3989 Union Street', 'Seattle', 'WA', '98108', 'USA', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, 0),
(72, 1, 28, '2006-06-07 00:00:00', '2006-06-07 00:00:00', 3, 'Amritansh Raghav', '3948 Woodridge Lane', 'Memphis', 'TN', '38115', 'USA', '40.0000', '0.0000', 'Credit Card', '2006-06-07 00:00:00', NULL, 0, NULL, 3),
(73, 7, 9, '2006-06-05 00:00:00', '2006-06-05 00:00:00', 1, 'Sven Mortensen', '2011 White River Way', 'Salt Lake City', 'UT', '84106', 'USA', '100.0000', '0.0000', 'Check', '2006-06-05 00:00:00', NULL, 0, NULL, 3),
(74, 6, 6, '2006-06-08 00:00:00', '2006-06-08 00:00:00', 2, 'Francisco Pérez-Olaeta', '715 Reeves Street', 'Milwaukee', 'WI', '53202', 'USA', '300.0000', '0.0000', 'Credit Card', '2006-06-08 00:00:00', NULL, 0, NULL, 3),
(75, 4, 8, '2006-06-05 00:00:00', '2006-06-05 00:00:00', 2, 'Elizabeth Andersen', '3547 Kincheloe Road', 'Portland', 'OR', '97230', 'USA', '50.0000', '0.0000', 'Check', '2006-06-05 00:00:00', NULL, 0, NULL, 3),
(76, 9, 25, '2006-06-05 00:00:00', '2006-06-05 00:00:00', 1, 'John Rodman', '4474 Cherry Camp Road', 'Chicago', 'IL', '60654', 'USA', '5.0000', '0.0000', 'Cash', '2006-06-05 00:00:00', NULL, 0, NULL, 3),
(77, 9, 26, '2006-06-05 00:00:00', '2006-06-05 00:00:00', 3, 'Run Liu', '2077 Marigold Lane', 'Miami', 'FL', '33176', 'USA', '60.0000', '0.0000', 'Credit Card', '2006-06-05 00:00:00', NULL, 0, NULL, 3),
(78, 1, 29, '2006-06-05 00:00:00', '2006-06-05 00:00:00', 2, 'Soo Jung Lee', '1143 Logan Lane', 'Denver', 'CO', '80239', 'USA', '200.0000', '0.0000', 'Check', '2006-06-05 00:00:00', NULL, 0, NULL, 3),
(79, 2, 6, '2006-06-23 00:00:00', '2006-06-23 00:00:00', 3, 'Francisco Pérez-Olaeta', '715 Reeves Street', 'Milwaukee', 'WI', '53202', 'USA', '0.0000', '0.0000', 'Check', '2006-06-23 00:00:00', NULL, 0, NULL, 3),
(80, 2, 4, '2006-04-25 17:03:55', NULL, NULL, 'Christina Lee', '4409 Hoffman Avenue', 'New York', 'NY', '10016', 'USA', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, 0),
(81, 2, 3, '2006-04-25 17:26:53', NULL, NULL, 'Thomas Axen', '1476 Euclid Avenue', 'Los Angeles', 'CA', '90017', 'USA', '0.0000', '0.0000', NULL, NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `id` tinyint(4) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`id`, `status_name`) VALUES
(0, 'New'),
(1, 'Invoiced'),
(2, 'Shipped'),
(3, 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_tax_status`
--

CREATE TABLE `orders_tax_status` (
  `id` tinyint(4) NOT NULL,
  `tax_status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_tax_status`
--

INSERT INTO `orders_tax_status` (`id`, `tax_status_name`) VALUES
(0, 'Tax Exempt'),
(1, 'Taxable');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` decimal(18,4) NOT NULL DEFAULT 0.0000,
  `unit_price` decimal(19,4) DEFAULT 0.0000,
  `discount` double NOT NULL DEFAULT 0,
  `status_id` int(11) DEFAULT NULL,
  `date_allocated` datetime DEFAULT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `inventory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `discount`, `status_id`, `date_allocated`, `purchase_order_id`, `inventory_id`) VALUES
(27, 30, 34, '100.0000', '14.0000', 0, 2, NULL, 96, 83),
(28, 30, 80, '30.0000', '3.5000', 0, 2, NULL, NULL, 63),
(29, 31, 7, '10.0000', '30.0000', 0, 2, NULL, NULL, 64),
(30, 31, 51, '10.0000', '53.0000', 0, 2, NULL, NULL, 65),
(31, 31, 80, '10.0000', '3.5000', 0, 2, NULL, NULL, 66),
(32, 32, 1, '15.0000', '18.0000', 0, 2, NULL, NULL, 67),
(33, 32, 43, '20.0000', '46.0000', 0, 2, NULL, NULL, 68),
(34, 33, 19, '30.0000', '9.2000', 0, 2, NULL, 97, 81),
(35, 34, 19, '20.0000', '9.2000', 0, 2, NULL, NULL, 69),
(36, 35, 48, '10.0000', '12.7500', 0, 2, NULL, NULL, 70),
(37, 36, 41, '200.0000', '9.6500', 0, 2, NULL, 98, 79),
(38, 37, 8, '17.0000', '40.0000', 0, 2, NULL, NULL, 71),
(39, 38, 43, '300.0000', '46.0000', 0, 2, NULL, 99, 77),
(40, 39, 48, '100.0000', '12.7500', 0, 2, NULL, 100, 75),
(41, 40, 81, '200.0000', '2.9900', 0, 2, NULL, 101, 73),
(42, 41, 43, '300.0000', '46.0000', 0, 1, NULL, 102, 104),
(43, 42, 6, '10.0000', '25.0000', 0, 2, NULL, NULL, 84),
(44, 42, 4, '10.0000', '22.0000', 0, 2, NULL, NULL, 85),
(45, 42, 19, '10.0000', '9.2000', 0, 2, NULL, 103, 110),
(46, 43, 80, '20.0000', '3.5000', 0, 1, NULL, NULL, 86),
(47, 43, 81, '50.0000', '2.9900', 0, 1, NULL, NULL, 87),
(48, 44, 1, '25.0000', '18.0000', 0, 1, NULL, NULL, 88),
(49, 44, 43, '25.0000', '46.0000', 0, 1, NULL, NULL, 89),
(50, 44, 81, '25.0000', '2.9900', 0, 1, NULL, NULL, 90),
(51, 45, 41, '50.0000', '9.6500', 0, 2, NULL, 104, 116),
(52, 45, 40, '50.0000', '18.4000', 0, 2, NULL, NULL, 91),
(53, 46, 57, '100.0000', '19.5000', 0, 2, NULL, 105, 101),
(54, 46, 72, '50.0000', '34.8000', 0, 2, NULL, 106, 114),
(55, 47, 34, '300.0000', '14.0000', 0, 2, NULL, 107, 108),
(56, 48, 8, '25.0000', '40.0000', 0, 2, NULL, 108, 106),
(57, 48, 19, '25.0000', '9.2000', 0, 2, NULL, 109, 112),
(59, 50, 21, '20.0000', '10.0000', 0, 2, NULL, NULL, 92),
(60, 51, 5, '25.0000', '21.3500', 0, 2, NULL, NULL, 93),
(61, 51, 41, '30.0000', '9.6500', 0, 2, NULL, NULL, 94),
(62, 51, 40, '30.0000', '18.4000', 0, 2, NULL, NULL, 95),
(66, 56, 48, '10.0000', '12.7500', 0, 2, NULL, 111, 99),
(67, 55, 34, '87.0000', '14.0000', 0, 2, NULL, NULL, 117),
(68, 79, 7, '30.0000', '30.0000', 0, 2, NULL, NULL, 119),
(69, 79, 51, '30.0000', '53.0000', 0, 2, NULL, NULL, 118),
(70, 78, 17, '40.0000', '39.0000', 0, 2, NULL, NULL, 120),
(71, 77, 6, '90.0000', '25.0000', 0, 2, NULL, NULL, 121),
(72, 76, 4, '30.0000', '22.0000', 0, 2, NULL, NULL, 122),
(73, 75, 48, '40.0000', '12.7500', 0, 2, NULL, NULL, 123),
(74, 74, 48, '40.0000', '12.7500', 0, 2, NULL, NULL, 124),
(75, 73, 41, '10.0000', '9.6500', 0, 2, NULL, NULL, 125),
(76, 72, 43, '5.0000', '46.0000', 0, 2, NULL, NULL, 126),
(77, 71, 40, '40.0000', '18.4000', 0, 2, NULL, NULL, 127),
(78, 70, 8, '20.0000', '40.0000', 0, 2, NULL, NULL, 128),
(79, 69, 80, '15.0000', '3.5000', 0, 2, NULL, NULL, 129),
(80, 67, 74, '20.0000', '10.0000', 0, 2, NULL, NULL, 130),
(81, 60, 72, '40.0000', '34.8000', 0, 2, NULL, NULL, 131),
(82, 63, 3, '50.0000', '10.0000', 0, 2, NULL, NULL, 132),
(83, 63, 8, '3.0000', '40.0000', 0, 2, NULL, NULL, 133),
(84, 58, 20, '40.0000', '81.0000', 0, 2, NULL, NULL, 134),
(85, 58, 52, '40.0000', '7.0000', 0, 2, NULL, NULL, 135),
(86, 80, 56, '10.0000', '38.0000', 0, 1, NULL, NULL, 136),
(90, 81, 81, '0.0000', '2.9900', 0, 5, NULL, NULL, NULL),
(91, 81, 56, '0.0000', '38.0000', 0, 0, NULL, NULL, NULL),
(92, 57, 83, '10.0000', '1.8000', 0, 2, NULL, NULL, NULL),
(93, 57, 86, '50.0000', '15.9900', 0, 2, NULL, NULL, NULL),
(94, 59, 8, '110.0000', '40.0000', 0, 2, NULL, NULL, NULL),
(95, 59, 89, '20.0000', '1.5000', 0, 2, NULL, NULL, NULL),
(96, 61, 51, '20.0000', '53.0000', 0, 2, NULL, NULL, NULL),
(97, 61, 20, '20.0000', '81.0000', 0, 2, NULL, NULL, NULL),
(98, 61, 56, '10.0000', '38.0000', 0, 2, NULL, NULL, NULL),
(99, 62, 98, '30.0000', '1.8900', 0, 2, NULL, NULL, NULL),
(100, 62, 52, '20.0000', '7.0000', 0, 2, NULL, NULL, NULL),
(101, 64, 86, '10.0000', '15.9900', 0, 2, NULL, NULL, NULL),
(102, 64, 1, '20.0000', '18.0000', 0, 2, NULL, NULL, NULL),
(103, 64, 40, '30.0000', '18.4000', 0, 2, NULL, NULL, NULL),
(104, 65, 14, '10.0000', '23.2500', 0, 2, NULL, NULL, NULL),
(105, 65, 82, '10.0000', '4.0000', 0, 2, NULL, NULL, NULL),
(106, 65, 48, '120.0000', '12.7500', 0, 2, NULL, NULL, NULL),
(107, 66, 87, '30.0000', '4.0000', 0, 2, NULL, NULL, NULL),
(108, 66, 51, '10.0000', '53.0000', 0, 2, NULL, NULL, NULL),
(109, 68, 94, '60.0000', '1.5000', 0, 2, NULL, NULL, NULL),
(110, 68, 34, '30.0000', '14.0000', 0, 2, NULL, NULL, NULL),
(111, 68, 90, '30.0000', '1.8000', 0, 2, NULL, NULL, NULL),
(112, 68, 93, '10.0000', '1.2000', 0, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details_status`
--

CREATE TABLE `order_details_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details_status`
--

INSERT INTO `order_details_status` (`id`, `status_name`) VALUES
(0, 'None'),
(1, 'Allocated'),
(2, 'Invoiced'),
(3, 'Shipped'),
(4, 'On Order'),
(5, 'No Stock');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `privilege_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `privilege_name`) VALUES
(2, 'Purchase Approvals');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(25) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `standard_cost` decimal(19,4) DEFAULT 0.0000,
  `list_price` decimal(19,4) NOT NULL DEFAULT 0.0000,
  `reorder_level` int(11) DEFAULT NULL,
  `target_level` int(11) DEFAULT NULL,
  `quantity_per_unit` varchar(50) DEFAULT NULL,
  `discontinued` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_reorder_quantity` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `picture_url` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `description`, `standard_cost`, `list_price`, `reorder_level`, `target_level`, `quantity_per_unit`, `discontinued`, `minimum_reorder_quantity`, `category`, `picture_url`) VALUES
(1, 'NWTB-1', 'Northwind Traders Chai', NULL, '13.5000', '18.0000', 10, 40, '10 boxes x 20 bags', 0, 10, 'Beverages', 'nw_chai.png'),
(3, 'NWTCO-3', 'Northwind Traders Syrup', NULL, '7.5000', '10.0000', 25, 100, '12 - 550 ml bottles', 0, 25, 'Condiments', 'nw_syrup.jpg'),
(4, 'NWTCO-4', 'Northwind Traders Cajun Seasoning', NULL, '16.5000', '22.0000', 10, 40, '48 - 6 oz jars', 0, 10, 'Condiments', 'nw_cajun_seasoning.jpg'),
(5, 'NWTO-5', 'Northwind Traders Olive Oil', NULL, '16.0125', '21.3500', 10, 40, '36 boxes', 0, 10, 'Oil', 'nw_olive_oil.jpg'),
(6, 'NWTJP-6', 'Northwind Traders Boysenberry Spread', NULL, '18.7500', '25.0000', 25, 100, '12 - 8 oz jars', 0, 25, 'Jams, Preserves', 'nw_boysenberry_spread.png'),
(7, 'NWTDFN-7', 'Northwind Traders Dried Pears', NULL, '22.5000', '30.0000', 10, 40, '12 - 1 lb pkgs.', 0, 10, 'Dried Fruit & Nuts', 'nw_dried_pears.jpg'),
(8, 'NWTS-8', 'Northwind Traders Curry Sauce', NULL, '30.0000', '40.0000', 10, 40, '12 - 12 oz jars', 0, 10, 'Sauces', 'nw_curry_sauce.jpg'),
(14, 'NWTDFN-14', 'Northwind Traders Walnuts', NULL, '17.4375', '23.2500', 10, 40, '40 - 100 g pkgs.', 0, 10, 'Dried Fruit & Nuts', 'nw_walnuts.jpg'),
(17, 'NWTCFV-17', 'Northwind Traders Fruit Cocktail', NULL, '29.2500', '39.0000', 10, 40, '15.25 OZ', 0, 10, 'Canned Fruit & Vegetables', 'nw_fruit_cocktail.jpg'),
(19, 'NWTBGM-19', 'Northwind Traders Chocolate Biscuits Mix', NULL, '6.9000', '9.2000', 5, 20, '10 boxes x 12 pieces', 0, 5, 'Baked Goods & Mixes', 'nw_chocolate_biscuits_mix.png'),
(20, 'NWTJP-6', 'Northwind Traders Marmalade', NULL, '60.7500', '81.0000', 10, 40, '30 gift boxes', 0, 10, 'Jams, Preserves', 'nw_marmalade.jpg'),
(21, 'NWTBGM-21', 'Northwind Traders Scones', NULL, '7.5000', '10.0000', 5, 20, '24 pkgs. x 4 pieces', 0, 5, 'Baked Goods & Mixes', 'nw_scones.jpg'),
(34, 'NWTB-34', 'Northwind Traders Beer', NULL, '10.5000', '14.0000', 15, 60, '24 - 12 oz bottles', 0, 15, 'Beverages', 'nw_beer.png'),
(40, 'NWTCM-40', 'Northwind Traders Crab Meat', NULL, '13.8000', '18.4000', 30, 120, '24 - 4 oz tins', 0, 30, 'Canned Meat', 'nw_crab_meat.jpg'),
(41, 'NWTSO-41', 'Northwind Traders Clam Chowder', NULL, '7.2375', '9.6500', 10, 40, '12 - 12 oz cans', 0, 10, 'Soups', 'nw_clam_chowder.png'),
(43, 'NWTB-43', 'Northwind Traders Coffee', NULL, '34.5000', '46.0000', 25, 100, '16 - 500 g tins', 0, 25, 'Beverages', 'nw_coffee.png'),
(48, 'NWTCA-48', 'Northwind Traders Chocolate', NULL, '9.5625', '12.7500', 25, 100, '10 pkgs', 0, 25, 'Candy', 'nw_chocolate.png'),
(51, 'NWTDFN-51', 'Northwind Traders Dried Apples', NULL, '39.7500', '53.0000', 10, 40, '50 - 300 g pkgs.', 0, 10, 'Dried Fruit & Nuts', 'nw_dried_apples.png'),
(52, 'NWTG-52', 'Northwind Traders Long Grain Rice', NULL, '5.2500', '7.0000', 25, 100, '16 - 2 kg boxes', 0, 25, 'Grains', 'nw_long_grain_rice.jpg'),
(56, 'NWTP-56', 'Northwind Traders Gnocchi', NULL, '28.5000', '38.0000', 30, 120, '24 - 250 g pkgs.', 0, 30, 'Pasta', 'nw_gnocchi.jpg'),
(57, 'NWTP-57', 'Northwind Traders Ravioli', NULL, '14.6250', '19.5000', 20, 80, '24 - 250 g pkgs.', 0, 20, 'Pasta', 'nw_ravioli.jpg'),
(65, 'NWTS-65', 'Northwind Traders Hot Pepper Sauce', NULL, '15.7875', '21.0500', 10, 40, '32 - 8 oz bottles', 0, 10, 'Sauces', 'nw_hot_pepper_sauce.jpg'),
(66, 'NWTS-66', 'Northwind Traders Tomato Sauce', NULL, '12.7500', '17.0000', 20, 80, '24 - 8 oz jars', 0, 20, 'Sauces', 'nw_tomato_sauce.jpg'),
(72, 'NWTD-72', 'Northwind Traders Mozzarella', NULL, '26.1000', '34.8000', 10, 40, '24 - 200 g pkgs.', 0, 10, 'Dairy products', 'nw_mozzarella.jpg'),
(74, 'NWTDFN-74', 'Northwind Traders Almonds', NULL, '7.5000', '10.0000', 5, 20, '5 kg pkg.', 0, 5, 'Dried Fruit & Nuts', 'nw_almonds.png'),
(77, 'NWTCO-77', 'Northwind Traders Mustard', NULL, '9.7500', '13.0000', 15, 60, '12 boxes', 0, 15, 'Condiments', 'nw_mustard.jpg'),
(80, 'NWTDFN-80', 'Northwind Traders Dried Plums', NULL, '3.0000', '3.5000', 50, 75, '1 lb bag', 0, 25, 'Dried Fruit & Nuts', 'nw_dried_plums.jpg'),
(81, 'NWTB-81', 'Northwind Traders Green Tea', NULL, '2.0000', '2.9900', 100, 125, '20 bags per box', 0, 25, 'Beverages', 'nw_green_tea.jpg'),
(82, 'NWTC-82', 'Northwind Traders Granola', NULL, '2.0000', '4.0000', 20, 100, NULL, 0, NULL, 'Cereal', 'nw_granola.jpg'),
(83, 'NWTCS-83', 'Northwind Traders Potato Chips', NULL, '0.5000', '1.8000', 30, 200, NULL, 0, NULL, 'Chips, Snacks', 'nw_potato_chips.jpg'),
(85, 'NWTBGM-85', 'Northwind Traders Brownie Mix', NULL, '9.0000', '12.4900', 10, 20, '3 boxes', 0, 5, 'Baked Goods & Mixes', 'nw_brownie_mix.jpg'),
(86, 'NWTBGM-86', 'Northwind Traders Cake Mix', NULL, '10.5000', '15.9900', 10, 20, '4 boxes', 0, 5, 'Baked Goods & Mixes', 'nw_cake_mix.jpg'),
(87, 'NWTB-87', 'Northwind Traders Tea', NULL, '2.0000', '4.0000', 20, 50, '100 count per box', 0, NULL, 'Beverages', 'nw_tea.jpg'),
(88, 'NWTCFV-88', 'Northwind Traders Pears', NULL, '1.0000', '1.3000', 10, 40, '15.25 OZ', 0, NULL, 'Canned Fruit & Vegetables', 'nw_pears.jpg'),
(89, 'NWTCFV-89', 'Northwind Traders Peaches', NULL, '1.0000', '1.5000', 10, 40, '15.25 OZ', 0, NULL, 'Canned Fruit & Vegetables', 'nw_peaches.jpg'),
(90, 'NWTCFV-90', 'Northwind Traders Pineapple', NULL, '1.0000', '1.8000', 10, 40, '15.25 OZ', 0, NULL, 'Canned Fruit & Vegetables', 'nw_pineapple.jpg'),
(91, 'NWTCFV-91', 'Northwind Traders Cherry Pie Filling', NULL, '1.0000', '2.0000', 10, 40, '15.25 OZ', 0, NULL, 'Canned Fruit & Vegetables', 'nw_cherry_pie_filling.png'),
(92, 'NWTCFV-92', 'Northwind Traders Green Beans', NULL, '1.0000', '1.2000', 10, 40, '14.5 OZ', 0, NULL, 'Canned Fruit & Vegetables', 'nw_green_beans.jpg'),
(93, 'NWTCFV-93', 'Northwind Traders Corn', NULL, '1.0000', '1.2000', 10, 40, '14.5 OZ', 0, NULL, 'Canned Fruit & Vegetables', 'nw_corn.png'),
(94, 'NWTCFV-94', 'Northwind Traders Peas', NULL, '1.0000', '1.5000', 10, 40, '14.5 OZ', 0, NULL, 'Canned Fruit & Vegetables', 'nw_peas.jpg'),
(95, 'NWTCM-95', 'Northwind Traders Tuna Fish', NULL, '0.5000', '2.0000', 30, 50, '5 oz', 0, NULL, 'Canned Meat', 'nw_tuna_fish.jpg'),
(96, 'NWTCM-96', 'Northwind Traders Smoked Salmon', NULL, '2.0000', '4.0000', 30, 50, '5 oz', 0, NULL, 'Canned Meat', 'nw_smoked_salmon.jpg'),
(97, 'NWTC-82', 'Northwind Traders Hot Cereal', NULL, '3.0000', '5.0000', 50, 200, NULL, 0, NULL, 'Cereal', 'nw_hot_cereal.jpg'),
(98, 'NWTSO-98', 'Northwind Traders Vegetable Soup', NULL, '1.0000', '1.8900', 100, 200, NULL, 0, NULL, 'Soups', 'nw_vegetable_soup.jpg'),
(99, 'NWTSO-99', 'Northwind Traders Chicken Soup', NULL, '1.0000', '1.9500', 100, 200, NULL, 0, NULL, 'Soups', 'nw_chicken_soup.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_suppliers`
--

CREATE TABLE `product_suppliers` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_suppliers`
--

INSERT INTO `product_suppliers` (`id`, `product_id`, `supplier_id`) VALUES
(1, 1, 4),
(2, 3, 10),
(3, 4, 10),
(4, 5, 10),
(5, 6, 2),
(6, 6, 6),
(7, 7, 2),
(8, 8, 8),
(9, 14, 2),
(10, 14, 6),
(11, 17, 6),
(12, 19, 1),
(13, 20, 2),
(14, 20, 6),
(15, 21, 1),
(16, 34, 4),
(17, 40, 7),
(18, 41, 6),
(19, 43, 3),
(20, 43, 4),
(21, 48, 10),
(22, 51, 2),
(23, 52, 1),
(24, 56, 1),
(25, 57, 1),
(26, 65, 8),
(27, 66, 8),
(28, 72, 5),
(29, 74, 2),
(30, 74, 6),
(31, 77, 10),
(32, 80, 2),
(33, 81, 3),
(34, 82, 1),
(35, 83, 9),
(36, 85, 1),
(37, 86, 1),
(38, 87, 7),
(39, 88, 6),
(40, 89, 6),
(41, 90, 6),
(42, 91, 6),
(43, 92, 6),
(44, 93, 6),
(45, 94, 6),
(46, 95, 7),
(47, 96, 7),
(48, 97, 1),
(49, 98, 6),
(50, 99, 6);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `status_id` int(11) DEFAULT 0,
  `expected_date` datetime DEFAULT NULL,
  `shipping_fee` decimal(19,4) NOT NULL DEFAULT 0.0000,
  `taxes` decimal(19,4) NOT NULL DEFAULT 0.0000,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,4) DEFAULT 0.0000,
  `payment_method` varchar(50) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `submitted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `supplier_id`, `created_by`, `submitted_date`, `creation_date`, `status_id`, `expected_date`, `shipping_fee`, `taxes`, `payment_date`, `payment_amount`, `payment_method`, `notes`, `approved_by`, `approved_date`, `submitted_by`) VALUES
(90, 1, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, NULL, 2, '2006-01-22 00:00:00', 2),
(91, 3, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, NULL, 2, '2006-01-22 00:00:00', 2),
(92, 2, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, NULL, 2, '2006-01-22 00:00:00', 2),
(93, 5, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, NULL, 2, '2006-01-22 00:00:00', 2),
(94, 6, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, NULL, 2, '2006-01-22 00:00:00', 2),
(95, 4, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, NULL, 2, '2006-01-22 00:00:00', 2),
(96, 1, 5, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #30', 2, '2006-01-22 00:00:00', 5),
(97, 2, 7, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #33', 2, '2006-01-22 00:00:00', 7),
(98, 2, 4, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #36', 2, '2006-01-22 00:00:00', 4),
(99, 1, 3, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #38', 2, '2006-01-22 00:00:00', 3),
(100, 2, 9, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #39', 2, '2006-01-22 00:00:00', 9),
(101, 1, 2, '2006-01-14 00:00:00', '2006-01-22 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #40', 2, '2006-01-22 00:00:00', 2),
(102, 1, 1, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #41', 2, '2006-04-04 00:00:00', 1),
(103, 2, 1, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #42', 2, '2006-04-04 00:00:00', 1),
(104, 2, 1, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #45', 2, '2006-04-04 00:00:00', 1),
(105, 5, 7, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', 'Check', 'Purchase generated based on Order #46', 2, '2006-04-04 00:00:00', 7),
(106, 6, 7, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #46', 2, '2006-04-04 00:00:00', 7),
(107, 1, 6, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #47', 2, '2006-04-04 00:00:00', 6),
(108, 2, 4, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #48', 2, '2006-04-04 00:00:00', 4),
(109, 2, 4, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #48', 2, '2006-04-04 00:00:00', 4),
(110, 1, 3, '2006-03-24 00:00:00', '2006-03-24 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #49', 2, '2006-04-04 00:00:00', 3),
(111, 1, 2, '2006-03-31 00:00:00', '2006-03-31 00:00:00', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, 'Purchase generated based on Order #56', 2, '2006-04-04 00:00:00', 2),
(140, 6, NULL, '2006-04-25 00:00:00', '2006-04-25 16:40:51', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, NULL, 2, '2006-04-25 16:41:33', 2),
(141, 8, NULL, '2006-04-25 00:00:00', '2006-04-25 17:10:35', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, NULL, 2, '2006-04-25 17:10:55', 2),
(142, 8, NULL, '2006-04-25 00:00:00', '2006-04-25 17:18:29', 2, NULL, '0.0000', '0.0000', NULL, '0.0000', 'Check', NULL, 2, '2006-04-25 17:18:51', 2),
(146, 2, 2, '2006-04-26 18:26:37', '2006-04-26 18:26:37', 1, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, NULL, NULL, NULL, 2),
(147, 7, 2, '2006-04-26 18:33:28', '2006-04-26 18:33:28', 1, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, NULL, NULL, NULL, 2),
(148, 5, 2, '2006-04-26 18:33:52', '2006-04-26 18:33:52', 1, NULL, '0.0000', '0.0000', NULL, '0.0000', NULL, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_details`
--

CREATE TABLE `purchase_order_details` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` decimal(18,4) NOT NULL,
  `unit_cost` decimal(19,4) NOT NULL,
  `date_received` datetime DEFAULT NULL,
  `posted_to_inventory` tinyint(1) NOT NULL DEFAULT 0,
  `inventory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_order_details`
--

INSERT INTO `purchase_order_details` (`id`, `purchase_order_id`, `product_id`, `quantity`, `unit_cost`, `date_received`, `posted_to_inventory`, `inventory_id`) VALUES
(238, 90, 1, '40.0000', '14.0000', '2006-01-22 00:00:00', 1, 59),
(239, 91, 3, '100.0000', '8.0000', '2006-01-22 00:00:00', 1, 54),
(240, 91, 4, '40.0000', '16.0000', '2006-01-22 00:00:00', 1, 55),
(241, 91, 5, '40.0000', '16.0000', '2006-01-22 00:00:00', 1, 56),
(242, 92, 6, '100.0000', '19.0000', '2006-01-22 00:00:00', 1, 40),
(243, 92, 7, '40.0000', '22.0000', '2006-01-22 00:00:00', 1, 41),
(244, 92, 8, '40.0000', '30.0000', '2006-01-22 00:00:00', 1, 42),
(245, 92, 14, '40.0000', '17.0000', '2006-01-22 00:00:00', 1, 43),
(246, 92, 17, '40.0000', '29.0000', '2006-01-22 00:00:00', 1, 44),
(247, 92, 19, '20.0000', '7.0000', '2006-01-22 00:00:00', 1, 45),
(248, 92, 20, '40.0000', '61.0000', '2006-01-22 00:00:00', 1, 46),
(249, 92, 21, '20.0000', '8.0000', '2006-01-22 00:00:00', 1, 47),
(250, 90, 34, '60.0000', '10.0000', '2006-01-22 00:00:00', 1, 60),
(251, 92, 40, '120.0000', '14.0000', '2006-01-22 00:00:00', 1, 48),
(252, 92, 41, '40.0000', '7.0000', '2006-01-22 00:00:00', 1, 49),
(253, 90, 43, '100.0000', '34.0000', '2006-01-22 00:00:00', 1, 61),
(254, 92, 48, '100.0000', '10.0000', '2006-01-22 00:00:00', 1, 50),
(255, 92, 51, '40.0000', '40.0000', '2006-01-22 00:00:00', 1, 51),
(256, 93, 52, '100.0000', '5.0000', '2006-01-22 00:00:00', 1, 37),
(257, 93, 56, '120.0000', '28.0000', '2006-01-22 00:00:00', 1, 38),
(258, 93, 57, '80.0000', '15.0000', '2006-01-22 00:00:00', 1, 39),
(259, 91, 65, '40.0000', '16.0000', '2006-01-22 00:00:00', 1, 57),
(260, 91, 66, '80.0000', '13.0000', '2006-01-22 00:00:00', 1, 58),
(261, 94, 72, '40.0000', '26.0000', '2006-01-22 00:00:00', 1, 36),
(262, 92, 74, '20.0000', '8.0000', '2006-01-22 00:00:00', 1, 52),
(263, 92, 77, '60.0000', '10.0000', '2006-01-22 00:00:00', 1, 53),
(264, 95, 80, '75.0000', '3.0000', '2006-01-22 00:00:00', 1, 35),
(265, 90, 81, '125.0000', '2.0000', '2006-01-22 00:00:00', 1, 62),
(266, 96, 34, '100.0000', '10.0000', '2006-01-22 00:00:00', 1, 82),
(267, 97, 19, '30.0000', '7.0000', '2006-01-22 00:00:00', 1, 80),
(268, 98, 41, '200.0000', '7.0000', '2006-01-22 00:00:00', 1, 78),
(269, 99, 43, '300.0000', '34.0000', '2006-01-22 00:00:00', 1, 76),
(270, 100, 48, '100.0000', '10.0000', '2006-01-22 00:00:00', 1, 74),
(271, 101, 81, '200.0000', '2.0000', '2006-01-22 00:00:00', 1, 72),
(272, 102, 43, '300.0000', '34.0000', NULL, 0, NULL),
(273, 103, 19, '10.0000', '7.0000', '2006-04-17 00:00:00', 1, 111),
(274, 104, 41, '50.0000', '7.0000', '2006-04-06 00:00:00', 1, 115),
(275, 105, 57, '100.0000', '15.0000', '2006-04-05 00:00:00', 1, 100),
(276, 106, 72, '50.0000', '26.0000', '2006-04-05 00:00:00', 1, 113),
(277, 107, 34, '300.0000', '10.0000', '2006-04-05 00:00:00', 1, 107),
(278, 108, 8, '25.0000', '30.0000', '2006-04-05 00:00:00', 1, 105),
(279, 109, 19, '25.0000', '7.0000', '2006-04-05 00:00:00', 1, 109),
(280, 110, 43, '250.0000', '34.0000', '2006-04-10 00:00:00', 1, 103),
(281, 90, 1, '40.0000', '14.0000', NULL, 0, NULL),
(282, 92, 19, '20.0000', '7.0000', NULL, 0, NULL),
(283, 111, 34, '50.0000', '10.0000', '2006-04-04 00:00:00', 1, 102),
(285, 91, 3, '50.0000', '8.0000', NULL, 0, NULL),
(286, 91, 4, '40.0000', '16.0000', NULL, 0, NULL),
(288, 140, 85, '10.0000', '9.0000', NULL, 0, NULL),
(289, 141, 6, '10.0000', '18.7500', NULL, 0, NULL),
(290, 142, 1, '1.0000', '13.5000', NULL, 0, NULL),
(292, 146, 20, '40.0000', '60.0000', NULL, 0, NULL),
(293, 146, 51, '40.0000', '39.0000', NULL, 0, NULL),
(294, 147, 40, '120.0000', '13.0000', NULL, 0, NULL),
(295, 148, 72, '40.0000', '26.0000', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_status`
--

CREATE TABLE `purchase_order_status` (
  `id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_order_status`
--

INSERT INTO `purchase_order_status` (`id`, `status`) VALUES
(0, 'New'),
(1, 'Submitted'),
(2, 'Approved'),
(3, 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `id` int(11) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `business_phone` varchar(25) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `zip_postal_code` varchar(15) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `web_page` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`id`, `company`, `last_name`, `first_name`, `email_address`, `job_title`, `business_phone`, `home_phone`, `mobile_phone`, `fax_number`, `address`, `city`, `state_province`, `zip_postal_code`, `country_region`, `web_page`, `notes`) VALUES
(1, 'Shipping Company A', 'Fraley', 'Daniel', 'dfraley@shipa.com', NULL, '206-767-0220', '208-883-7738', '206-955-5143', NULL, '3989 Union Street', 'Moscow', 'ID', '98108', 'USA', NULL, NULL),
(2, 'Shipping Company B', 'Lucas', 'Susan', 'susan_lucas@shipb.com', NULL, NULL, '336-208-2429', '336-215-8463', NULL, '102 Bryan Street', 'Greensboro', 'NC', '27444', 'USA', NULL, NULL),
(3, 'Shipping Company C', 'Sands', 'Andrea', 'sandsa@shipc.com', NULL, NULL, '513-762-5281', '513-967-5644', NULL, '1899 Round Table Drive', 'Cincinnati', 'OH', '45202', 'USA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `business_phone` varchar(25) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `zip_postal_code` varchar(15) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `web_page` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `company`, `last_name`, `first_name`, `email_address`, `job_title`, `business_phone`, `home_phone`, `mobile_phone`, `fax_number`, `address`, `city`, `state_province`, `zip_postal_code`, `country_region`, `web_page`) VALUES
(1, 'Supplier A', 'Andersen', 'Elizabeth A.', 'elizabeth_andersen@suppliera.com', 'Sales Manager', '260-715-3006', NULL, '260-618-0147', NULL, '194 Pearcy Avenue', 'Fort Wayne', 'IN', '46804', 'USA', NULL),
(2, 'Supplier B', 'Weiler', 'Cornelia', 'weilerc@supplierb.com', 'Sales Manager', '770-308-9604', NULL, '404-444-9273', NULL, '4564 Fowler Avenue', 'Atlanta', 'GA', '30303', 'USA', NULL),
(3, 'Supplier C', 'Kelley', 'Madeleine', 'mkelley@supplierc.com', 'Sales Representative', '619-350-1878', NULL, '619-200-0504', NULL, '382 Ashcraft Court', 'San Diego', 'CA', '92121', 'USA', NULL),
(4, 'Supplier D', 'Sato', 'Naoki', 'naoki_sato@supplierd.com', 'Marketing Manager', '949-467-0273', NULL, '949-922-9740', NULL, '4835 Peck Court', 'Newport Beach', 'CA', '92660', 'USA', NULL),
(5, 'Supplier E', 'Hernandez-Echevarria', 'Amaya', 'amaya.hernandez-echevarria@suppliere.com', 'Sales Manager', '904-448-9485', NULL, '904-239-4758', NULL, '3208 Arrowood Drive', 'Jacksonville', 'FL', '32217', 'USA', NULL),
(6, 'Supplier F', 'Hayakawa', 'Satomi', 'satomi.hayakawa@supplierf.com', 'Marketing Assistant', '845-664-3495', NULL, '516-205-8355', NULL, '750 Marshville Road', 'Garden City', 'NY', '11530', 'USA', NULL),
(7, 'Supplier G', 'Glasson', 'Stuart', 'glassons@supplierg.com', 'Marketing Manager', '207-620-5045', NULL, '207-313-2807', NULL, '2867 Bloomfield Way', 'West Enfield', 'ME', '04493', 'USA', NULL),
(8, 'Supplier H', 'Dunton', 'Bryn Paul', 'bpdunton@supplierh.com', 'Sales Representative', '951-698-2094', NULL, '951-837-5257', NULL, '3961 Brown Bear Drive', 'Murrieta', 'CA', '92562', 'USA', NULL),
(9, 'Supplier I', 'Sandberg', 'Mikael', 'mikael_sandberg@supplieri.com', 'Sales Manager', '919-488-9449', NULL, '919-999-9897', NULL, '3356 Jennifer Lane', 'Raleigh', 'NC', '27604', 'USA', NULL),
(10, 'Supplier J', 'Sousa', 'Luis', 'luis_sousa@supplierj.com', 'Sales Manager', '205-316-6932', NULL, '205-480-8127', NULL, '1874 Retreat Avenue', 'Birmingham', 'AL', '35222', 'USA', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city` (`city`),
  ADD KEY `company` (`company`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `zip_postal_code` (`zip_postal_code`),
  ADD KEY `state_province` (`state_province`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city` (`city`),
  ADD KEY `company` (`company`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `zip_postal_code` (`zip_postal_code`),
  ADD KEY `state_province` (`state_province`);

--
-- Indexes for table `employee_privileges`
--
ALTER TABLE `employee_privileges`
  ADD PRIMARY KEY (`employee_id`,`privilege_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `privilege_id` (`privilege_id`);

--
-- Indexes for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_order_id` (`customer_order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `purchase_order_id` (`purchase_order_id`),
  ADD KEY `transaction_type` (`transaction_type`);

--
-- Indexes for table `inventory_transaction_types`
--
ALTER TABLE `inventory_transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `fk_invoices_orders1_idx` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `id` (`id`),
  ADD KEY `shipper_id` (`shipper_id`),
  ADD KEY `tax_status` (`tax_status_id`),
  ADD KEY `ship_zip_postal_code` (`ship_zip_postal_code`),
  ADD KEY `fk_orders_orders_status1` (`status_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_tax_status`
--
ALTER TABLE `orders_tax_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `purchase_order_id` (`purchase_order_id`),
  ADD KEY `fk_order_details_orders1_idx` (`order_id`),
  ADD KEY `fk_order_details_order_details_status1_idx` (`status_id`);

--
-- Indexes for table `order_details_status`
--
ALTER TABLE `order_details_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_code` (`product_code`);

--
-- Indexes for table `product_suppliers`
--
ALTER TABLE `product_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ps_product_id` (`product_id`),
  ADD KEY `fk_ps_supplier_id` (`supplier_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `purchase_order_id` (`purchase_order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `purchase_order_status`
--
ALTER TABLE `purchase_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city` (`city`),
  ADD KEY `company` (`company`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `zip_postal_code` (`zip_postal_code`),
  ADD KEY `state_province` (`state_province`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city` (`city`),
  ADD KEY `company` (`company`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `zip_postal_code` (`zip_postal_code`),
  ADD KEY `state_province` (`state_province`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `product_suppliers`
--
ALTER TABLE `product_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_privileges`
--
ALTER TABLE `employee_privileges`
  ADD CONSTRAINT `fk_employee_privileges_employees1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_employee_privileges_privileges1` FOREIGN KEY (`privilege_id`) REFERENCES `privileges` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD CONSTRAINT `fk_inventory_transactions_inventory_transaction_types1` FOREIGN KEY (`transaction_type`) REFERENCES `inventory_transaction_types` (`id`),
  ADD CONSTRAINT `fk_inventory_transactions_orders1` FOREIGN KEY (`customer_order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_inventory_transactions_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_inventory_transactions_purchase_orders1` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `fk_invoices_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `fk_orders_employees1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `fk_orders_orders_status1` FOREIGN KEY (`status_id`) REFERENCES `orders_status` (`id`),
  ADD CONSTRAINT `fk_orders_orders_tax_status1` FOREIGN KEY (`tax_status_id`) REFERENCES `orders_tax_status` (`id`),
  ADD CONSTRAINT `fk_orders_shippers1` FOREIGN KEY (`shipper_id`) REFERENCES `shippers` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_order_details_inventory_id` FOREIGN KEY (`inventory_id`) REFERENCES `inventory_transactions` (`id`),
  ADD CONSTRAINT `fk_order_details_order_details_status1` FOREIGN KEY (`status_id`) REFERENCES `order_details_status` (`id`),
  ADD CONSTRAINT `fk_order_details_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_order_details_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_order_details_purchase_id` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`);

--
-- Constraints for table `product_suppliers`
--
ALTER TABLE `product_suppliers`
  ADD CONSTRAINT `fk_ps_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_ps_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `fk_purchase_orders_employees1` FOREIGN KEY (`created_by`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `fk_purchase_orders_purchase_order_status1` FOREIGN KEY (`status_id`) REFERENCES `purchase_order_status` (`id`),
  ADD CONSTRAINT `fk_purchase_orders_suppliers1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD CONSTRAINT `fk_purchase_order_details_inventory_transactions1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory_transactions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_purchase_order_details_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_purchase_order_details_purchase_orders1` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
