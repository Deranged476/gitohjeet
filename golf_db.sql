-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15.11.2023 klo 07:51
-- Palvelimen versio: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `golf_db`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `kayttajat`
--

CREATE TABLE `kayttajat` (
  `kayttaja_id` int(6) NOT NULL,
  `etunimi` varchar(30) NOT NULL,
  `sukunimi` varchar(30) NOT NULL,
  `kayttaja_salasana` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Vedos taulusta `kayttajat`
--

INSERT INTO `kayttajat` (`kayttaja_id`, `etunimi`, `sukunimi`, `kayttaja_salasana`) VALUES
(1, 'Joonas', 'Virtanen', 'abc123');

-- --------------------------------------------------------

--
-- Rakenne taululle `pelin_tiedot`
--

CREATE TABLE `pelin_tiedot` (
  `pelimuoto` varchar(25) NOT NULL DEFAULT 'valitse pelimuoto',
  `pisteet` int(6) NOT NULL,
  `väylä` int(6) NOT NULL,
  `kayttaja_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kayttajat`
--
ALTER TABLE `kayttajat`
  ADD PRIMARY KEY (`kayttaja_id`);

--
-- Indexes for table `pelin_tiedot`
--
ALTER TABLE `pelin_tiedot`
  ADD KEY `kayttaja_id` (`kayttaja_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kayttajat`
--
ALTER TABLE `kayttajat`
  MODIFY `kayttaja_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `pelin_tiedot`
--
ALTER TABLE `pelin_tiedot`
  ADD CONSTRAINT `pelin_tiedot_ibfk_1` FOREIGN KEY (`kayttaja_id`) REFERENCES `kayttajat` (`kayttaja_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
