-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2018 at 03:34 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monkediadb`
--
CREATE DATABASE IF NOT EXISTS `monkediadb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `monkediadb`;

-- --------------------------------------------------------

--
-- Table structure for table `app_clients`
--

CREATE TABLE `app_clients` (
  `clientID` int(6) NOT NULL,
  `first_name` varchar(35) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` char(5) NOT NULL,
  `country` varchar(35) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `app_clients`
--

TRUNCATE TABLE `app_clients`;
--
-- Dumping data for table `app_clients`
--

INSERT INTO `app_clients` (`clientID`, `first_name`, `last_name`, `company_name`, `address`, `city`, `state`, `zip`, `country`, `phone`, `mobile`, `email`, `website`) VALUES
(1, 'James', 'Butt', 'Benton, John B Jr', '6649 N Blue Gum St', 'New Orleans', 'LA', '70116', 'Orleans', '504-621-8927', '504-845-1427', 'jbutt@gmail.com', 'http://www.bentonjohnbjr.com'),
(2, 'Josephine', 'Darakjy', 'Chanay, Jeffrey A Esq', '4 B Blue Ridge Blvd', 'Brighton', 'MI', '48116', 'Livingston', '810-292-9388', '810-374-9840', 'josephine_darakjy@darakjy.org', 'http://www.chanayjeffreyaesq.com'),
(3, 'Art', 'Venere', 'Chemel, James L Cpa', '8 W Cerritos Ave #54', 'Bridgeport', 'NJ', '8014', 'Gloucester', '856-636-8749', '856-264-4130', 'art@venere.org', 'http://www.chemeljameslcpa.com'),
(4, 'Lenna', 'Paprocki', 'Feltz Printing Service', '639 Main St', 'Anchorage', 'AK', '99501', 'Anchorage', '907-385-4412', '907-921-2010', 'lpaprocki@hotmail.com', 'http://www.feltzprintingservice.com'),
(5, 'Donette', 'Foller', 'Printing Dimensions', '34 Center St', 'Hamilton', 'OH', '45011', 'Butler', '513-570-1893', '513-549-4561', 'donette.foller@cox.net', 'http://www.printingdimensions.com'),
(6, 'Simona', 'Morasca', 'Chapman, Ross E Esq', '3 Mcauley Dr', 'Ashland', 'OH', '44805', 'Ashland', '419-503-2484', '419-800-6759', 'simona@morasca.com', 'http://www.chapmanrosseesq.com'),
(7, 'Mitsue', 'Tollner', 'Morlong Associates', '7 Eads St', 'Chicago', 'IL', '60632', 'Cook', '773-573-6914', '773-924-8565', 'mitsue_tollner@yahoo.com', 'http://www.morlongassociates.com'),
(8, 'Leota', 'Dilliard', 'Commercial Press', '7 W Jackson Blvd', 'San Jose', 'CA', '95111', 'Santa Clara', '408-752-3500', '408-813-1105', 'leota@hotmail.com', 'http://www.commercialpress.com'),
(9, 'Sage', 'Wieser', 'Truhlar And Truhlar Attys', '5 Boston Ave #88', 'Sioux Falls', 'SD', '57105', 'Minnehaha', '605-414-2147', '605-794-4895', 'sage_wieser@cox.net', 'http://www.truhlarandtruhlarattys.com'),
(10, 'Kris', 'Marrier', 'King, Christopher A Esq', '228 Runamuck Pl #2808', 'Baltimore', 'MD', '21224', 'Baltimore City', '410-655-8723', '410-804-4694', 'kris@gmail.com', 'http://www.kingchristopheraesq.com'),
(11, 'Minna', 'Amigon', 'Dorl, James J Esq', '2371 Jerrold Ave', 'Kulpsville', 'PA', '19443', 'Montgomery', '215-874-1229', '215-422-8694', 'minna_amigon@yahoo.com', 'http://www.dorljamesjesq.com'),
(12, 'Abel', 'Maclead', 'Rangoni Of Florence', '37275 St  Rt 17m M', 'Middle Island', 'NY', '11953', 'Suffolk', '631-335-3414', '631-677-3675', 'amaclead@gmail.com', 'http://www.rangoniofflorence.com'),
(13, 'Kiley', 'Caldarera', 'Feiner Bros', '25 E 75th St #69', 'Los Angeles', 'CA', '90034', 'Los Angeles', '310-498-5651', '310-254-3084', 'kiley.caldarera@aol.com', 'http://www.feinerbros.com'),
(14, 'Graciela', 'Ruta', 'Buckley Miller & Wright', '98 Connecticut Ave Nw', 'Chagrin Falls', 'OH', '44023', 'Geauga', '440-780-8425', '440-579-7763', 'gruta@cox.net', 'http://www.buckleymillerwright.com'),
(15, 'Cammy', 'Albares', 'Rousseaux, Michael Esq', '56 E Morehead St', 'Laredo', 'TX', '78045', 'Webb', '956-537-6195', '956-841-7216', 'calbares@gmail.com', 'http://www.rousseauxmichaelesq.com'),
(16, 'Mattie', 'Poquette', 'Century Communications', '73 State Road 434 E', 'Phoenix', 'AZ', '85013', 'Maricopa', '602-277-4385', '602-953-6360', 'mattie@aol.com', 'http://www.centurycommunications.com'),
(17, 'Meaghan', 'Garufi', 'Bolton, Wilbur Esq', '69734 E Carrillo St', 'Mc Minnville', 'TN', '37110', 'Warren', '931-313-9635', '931-235-7959', 'meaghan@hotmail.com', 'http://www.boltonwilburesq.com'),
(18, 'Gladys', 'Rim', 'T M Byxbee Company Pc', '322 New Horizon Blvd', 'Milwaukee', 'WI', '53207', 'Milwaukee', '414-661-9598', '414-377-2880', 'gladys.rim@rim.org', 'http://www.tmbyxbeecompanypc.com'),
(19, 'Yuki', 'Whobrey', 'Farmers Insurance Group', '1 State Route 27', 'Taylor', 'MI', '48180', 'Wayne', '313-288-7937', '313-341-4470', 'yuki_whobrey@aol.com', 'http://www.farmersinsurancegroup.com'),
(20, 'Fletcher', 'Flosi', 'Post Box Services Plus', '394 Manchester Blvd', 'Rockford', 'IL', '61109', 'Winnebago', '815-828-2147', '815-426-5657', 'fletcher.flosi@yahoo.com', 'http://www.postboxservicesplus.com'),
(21, 'Bette', 'Nicka', 'Sport En Art', '6 S 33rd St', 'Aston', 'PA', '19014', 'Delaware', '610-545-3615', '610-492-4643', 'bette_nicka@cox.net', 'http://www.sportenart.com'),
(22, 'Veronika', 'Inouye', 'C 4 Network Inc', '6 Greenleaf Ave', 'San Jose', 'CA', '95111', 'Santa Clara', '408-540-1785', '408-813-4592', 'vinouye@aol.com', 'http://www.cnetworkinc.com'),
(23, 'Willard', 'Kolmetz', 'Ingalls, Donald R Esq', '618 W Yakima Ave', 'Irving', 'TX', '75062', 'Dallas', '972-303-9197', '972-896-4882', 'willard@hotmail.com', 'http://www.ingallsdonaldresq.com'),
(24, 'Maryann', 'Royster', 'Franklin, Peter L Esq', '74 S Westgate St', 'Albany', 'NY', '12204', 'Albany', '518-966-7987', '518-448-8982', 'mroyster@royster.com', 'http://www.franklinpeterlesq.com'),
(25, 'Alisha', 'Slusarski', 'Wtlz Power 107 Fm', '3273 State St', 'Middlesex', 'NJ', '8846', 'Middlesex', '732-658-3154', '732-635-3453', 'alisha@slusarski.com', 'http://www.wtlzpowerfm.com'),
(26, 'Allene', 'Iturbide', 'Ledecky, David Esq', '1 Central Ave', 'Stevens Point', 'WI', '54481', 'Portage', '715-662-6764', '715-530-9863', 'allene_iturbide@cox.net', 'http://www.ledeckydavidesq.com'),
(27, 'Chanel', 'Caudy', 'Professional Image Inc', '86 Nw 66th St #8673', 'Shawnee', 'KS', '66218', 'Johnson', '913-388-2079', '913-899-1103', 'chanel.caudy@caudy.org', 'http://www.professionalimageinc.com'),
(28, 'Ezekiel', 'Chui', 'Sider, Donald C Esq', '2 Cedar Ave #84', 'Easton', 'MD', '21601', 'Talbot', '410-669-1642', '410-235-8738', 'ezekiel@chui.com', 'http://www.siderdonaldcesq.com'),
(29, 'Willow', 'Kusko', 'U Pull It', '90991 Thorburn Ave', 'New York', 'NY', '10011', 'New York', '212-582-4976', '212-934-5167', 'wkusko@yahoo.com', 'http://www.upullit.com'),
(30, 'Bernardo', 'Figeroa', 'Clark, Richard Cpa', '386 9th Ave N', 'Conroe', 'TX', '77301', 'Montgomery', '936-336-3951', '936-597-3614', 'bfigeroa@aol.com', 'http://www.clarkrichardcpa.com');

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `userID` int(6) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `UserPsswrd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `app_users`
--

TRUNCATE TABLE `app_users`;
--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`userID`, `UserName`, `FirstName`, `LastName`, `UserPsswrd`) VALUES
(1, 'linda.mcgraw@me.com', 'Linda', 'McGraw', '8f8b3db9b6e0912e1a42a79351d5facb'),
(2, 'amanda.harrison@monkedia.com', 'Amanda', 'Harrison', '8f8b3db9b6e0912e1a42a79351d5facb'),
(3, 'kyra.jacob@monkedia.com', 'Kyra', 'Jacob', '8f8b3db9b6e0912e1a42a79351d5facb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_clients`
--
ALTER TABLE `app_clients`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_clients`
--
ALTER TABLE `app_clients`
  MODIFY `clientID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `userID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
