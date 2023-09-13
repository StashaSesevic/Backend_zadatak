-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 08:09 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zadatak3`
--

-- --------------------------------------------------------

--
-- Table structure for table `kontakt_forma`
--

CREATE TABLE `kontakt_forma` (
  `id` int(11) NOT NULL,
  `ime_prezime` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefon` varchar(30) NOT NULL,
  `komentar` text NOT NULL,
  `vrsta_poruke` varchar(255) NOT NULL,
  `objekat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontakt_forma`
--

INSERT INTO `kontakt_forma` (`id`, `ime_prezime`, `email`, `telefon`, `komentar`, `vrsta_poruke`, `objekat`) VALUES
(9, 'Ceca Jovanovic', 'ceca@gmail.com', '0656783733', 'Zdravo, zelim da zakazem trening u sredu u 7h.', 'zakazivanjeTreninga', 'Zemun'),
(10, 'Milena Jankovic', 'milena.jankovicc@gmail.com', '067889384', 'Zelim da pohvalim vase teretane! Jako su prijatne i osoblje je veoma ljubazno! <3', 'pohvalaZamerka', 'BezanijskaKosa'),
(11, 'Nenad', 'Radovanovic', '0617567575', 'Zeleo bih da se zaposlim kao personalni trener kod vas. Da li me mozete obavestiti o proceduri prijave. Hvala unapred.', 'zaposljavanje', 'Vracar'),
(12, 'Mila Gagic', 'mila1332gagic@gmail.com', '064773838', 'Mnogo mi se svidj Vasa teretana na Fontani!', 'pohvalaZamerka', 'Fontana'),
(14, 'Lana Obrenovic', 'lanalaki@gmail.com', '063590091', 'Zelim da se zaposlim kod vas!', 'zaposljavanje', 'NemamClanarinu'),
(15, 'Milos Sekulic', 'miki@gmail.com', '063567244', 'Hej, ekstra vam je teretana!', 'pohvalaZamerka', 'Vracar'),
(16, 'Darko', 'Babic', '062567334', 'Zelim da zamrznem svoju clanarinu.', 'zamrzavanjeClanarine', 'BezanijskaKosa'),
(17, 'Marijana Ristic', 'makic4@gmail.com', '062567666', 'Zelim da zamrznem svoju clanarinu. Hvala unapred.', 'zamrzavanjeClanarine', 'Zemun'),
(18, 'Vukota Kokic', 'vukotakokic22@gmail.com', '065847622', 'Postovani/a,\r\nZelim da zamrznem svoju clanarinu na mesec dana. Hvala unapred.', 'zamrzavanjeClanarine', 'Fontana'),
(19, 'Dragna Ostojic', 'gaga4@gmail.com', '06547383', 'Treneri i ljudi za pultom su jako ljubazni. Sve pohvale!', 'pohvalaZamerka', 'Vracar'),
(20, 'Dragna Ostojic', 'gaga4@gmail.com', '06547383', 'Treneri i ljudi za pultom su jako ljubazni. Sve pohvale!', 'pohvalaZamerka', 'Vracar'),
(21, 'Mirjana Tasic', 'tasicka@gmail.com', '0613243684', 'Pozdrav, da li ste zainteresovani za poslovnu saradnju sa kompanijom Najbolji Suplementu? ', 'poslovnaSaradnja', 'NemamClanarinu'),
(22, 'Marija', 'Petrovic', '067353633', 'Ćao, sve pohvale za devojku koja radi za pultom, Anu.', 'pohvalaZamerka', 'Vracar'),
(23, 'Marija', 'Petrovic', '067353633', 'Cao, sve pohvale za devojku koja radi za pultom, Anu.', 'pohvalaZamerka', 'Vracar'),
(24, 'Kosta', 'Kostic', '066755361', 'Zdravo, sve pohvale za koncept teretane.', 'pohvalaZamerka', 'Zemun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kontakt_forma`
--
ALTER TABLE `kontakt_forma`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontakt_forma`
--
ALTER TABLE `kontakt_forma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
