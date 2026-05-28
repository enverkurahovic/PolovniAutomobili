-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2026 at 11:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `polovni_automobili`
--

-- --------------------------------------------------------

--
-- Table structure for table `boja`
--

CREATE TABLE `boja` (
  `BojaID` int(11) NOT NULL,
  `Naziv` varchar(30) DEFAULT NULL,
  `Opis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boja`
--

INSERT INTO `boja` (`BojaID`, `Naziv`, `Opis`) VALUES
(1, 'Crna', 'Metallic crna'),
(2, 'Bela', 'Sjaj bela'),
(3, 'Siva', 'Tamno siva'),
(4, 'Plava', 'Tamno plava');

-- --------------------------------------------------------

--
-- Table structure for table `gorivo`
--

CREATE TABLE `gorivo` (
  `GorivoID` int(11) NOT NULL,
  `Naziv` varchar(30) DEFAULT NULL,
  `Opis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gorivo`
--

INSERT INTO `gorivo` (`GorivoID`, `Naziv`, `Opis`) VALUES
(1, 'Dizel', 'Euro dizel'),
(2, 'Benzin', 'Bez olova'),
(3, 'Hibrid', 'Kombinovani pogon');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `ModelID` int(11) NOT NULL,
  `Naziv` varchar(50) NOT NULL,
  `ProizvodjacID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`ModelID`, `Naziv`, `ProizvodjacID`) VALUES
(1, 'A3', 1),
(2, 'A6', 1),
(3, 'X5', 2),
(4, '320', 2),
(5, 'C220', 3),
(6, 'Golf 7', 4),
(7, 'Polo', 4),
(8, 'Passat', 4),
(9, 'Touareg', 4),
(10, 'Tiguan', 4),
(11, 'Q3', 1),
(12, 'Q5', 1),
(13, 'Q7', 1),
(14, 'A3', 1),
(15, 'RS6', 1),
(16, 'X1', 2),
(17, 'X3', 2),
(18, 'X6', 2),
(19, 'M3', 2),
(20, 'M5', 2),
(21, 'E200', 3),
(22, 'E220', 3),
(23, 'C180', 3),
(24, 'GLE 350', 3),
(25, 'S500', 3),
(53, 'Giulietta', 5),
(54, 'Mito', 5),
(55, 'Clio 4', 6),
(56, 'Clio 5', 6),
(57, 'Megane', 6),
(58, '308', 7),
(59, '508', 7),
(60, 'Insignia', 8),
(102, '911 Carrera', 13),
(103, 'Panamera', 13),
(104, 'Urus', 3),
(105, 'Mustang GT', 14);

-- --------------------------------------------------------

--
-- Table structure for table `proizvodjac`
--

CREATE TABLE `proizvodjac` (
  `ProizvodjacID` int(11) NOT NULL,
  `Naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proizvodjac`
--

INSERT INTO `proizvodjac` (`ProizvodjacID`, `Naziv`) VALUES
(1, 'Audi'),
(2, 'BMW'),
(3, 'Mercedes'),
(4, 'Volkswagen'),
(5, 'Alfa Romeo'),
(6, 'Renault'),
(7, 'Peugeot'),
(8, 'Opel'),
(9, 'Fiat'),
(10, 'Toyota'),
(11, 'Honda'),
(12, 'Skoda'),
(13, 'Porsche'),
(14, 'Ford');

-- --------------------------------------------------------

--
-- Table structure for table `vozilo`
--

CREATE TABLE `vozilo` (
  `VoziloID` int(11) NOT NULL,
  `Registracija` varchar(20) DEFAULT NULL,
  `GodinaProizvodnje` int(11) DEFAULT NULL,
  `PredjenoKM` int(11) DEFAULT NULL,
  `ModelID` int(11) DEFAULT NULL,
  `BojaID` int(11) DEFAULT NULL,
  `GorivoID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vozilo`
--

INSERT INTO `vozilo` (`VoziloID`, `Registracija`, `GodinaProizvodnje`, `PredjenoKM`, `ModelID`, `BojaID`, `GorivoID`) VALUES
(1, 'BG123AA', 2018, 120000, 1, 1, 1),
(2, 'NS456BB', 2020, 80000, 2, 2, 2),
(3, 'PA789CC', 2017, 150000, 3, 3, 1),
(4, 'KG321DD', 2019, 95000, 4, 1, 2),
(5, 'SU654EE', 2021, 40000, 5, 4, 3),
(6, 'NI987FF', 2016, 180000, 6, 2, 1),
(7, 'BG777AA', 2015, 210000, 1, 1, 1),
(8, 'NS888BB', 2018, 150000, 2, 2, 2),
(9, 'PA999CC', 2020, 90000, 3, 3, 1),
(10, 'KG111DD', 2017, 175000, 4, 1, 2),
(11, 'SU222EE', 2021, 60000, 5, 4, 3),
(12, 'NI333FF', 2019, 120000, 6, 2, 1),
(13, 'BG444GG', 2016, 190000, 1, 3, 2),
(14, 'NS555HH', 2022, 30000, 2, 1, 3),
(15, 'PA666II', 2014, 240000, 3, 2, 1),
(16, 'KG777JJ', 2018, 130000, 4, 4, 2),
(17, 'SU888KK', 2020, 70000, 5, 1, 3),
(18, 'NI999LL', 2017, 160000, 6, 3, 1),
(19, 'BG101AA', 2018, 110000, 7, 1, 1),
(20, 'NS202BB', 2020, 80000, 8, 2, 2),
(21, 'PA303CC', 2019, 95000, 9, 3, 1),
(22, 'KG404DD', 2017, 150000, 10, 4, 2),
(23, 'SU505EE', 2016, 170000, 11, 1, 1),
(24, 'NI606FF', 2021, 60000, 12, 2, 2),
(25, 'BG707GG', 2022, 30000, 13, 3, 3),
(26, 'NS808HH', 2020, 75000, 14, 4, 2),
(27, 'PA909II', 2018, 125000, 15, 1, 1),
(45, 'BG111AA', 2018, 120000, 7, 1, 1),
(46, 'BG112AB', 2019, 90000, 8, 2, 2),
(47, 'NS221BB', 2020, 60000, 9, 3, 2),
(48, 'NS222BC', 2021, 40000, 10, 1, 3),
(49, 'PA331CC', 2018, 110000, 11, 2, 1),
(50, 'PA332CD', 2022, 30000, 12, 3, 2),
(51, 'KG441DD', 2016, 180000, 13, 1, 1),
(52, 'KG442DE', 2020, 70000, 14, 4, 2),
(53, 'SU551EE', 2019, 95000, 15, 2, 2),
(54, 'SU552EF', 2021, 50000, 16, 1, 3),
(55, 'NI661FF', 2018, 100000, 17, 3, 1),
(56, 'NI662FG', 2022, 25000, 18, 4, 3),
(88, 'BG999PP', 2024, 8000, 102, 1, 2),
(89, 'NS888PR', 2023, 15000, 103, 2, 2),
(90, 'KG777UR', 2022, 26000, 104, 4, 2),
(91, 'PA666GT', 2021, 34000, 105, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boja`
--
ALTER TABLE `boja`
  ADD PRIMARY KEY (`BojaID`);

--
-- Indexes for table `gorivo`
--
ALTER TABLE `gorivo`
  ADD PRIMARY KEY (`GorivoID`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`ModelID`),
  ADD KEY `ProizvodjacID` (`ProizvodjacID`);

--
-- Indexes for table `proizvodjac`
--
ALTER TABLE `proizvodjac`
  ADD PRIMARY KEY (`ProizvodjacID`);

--
-- Indexes for table `vozilo`
--
ALTER TABLE `vozilo`
  ADD PRIMARY KEY (`VoziloID`),
  ADD KEY `ModelID` (`ModelID`),
  ADD KEY `BojaID` (`BojaID`),
  ADD KEY `GorivoID` (`GorivoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boja`
--
ALTER TABLE `boja`
  MODIFY `BojaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gorivo`
--
ALTER TABLE `gorivo`
  MODIFY `GorivoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `ModelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `proizvodjac`
--
ALTER TABLE `proizvodjac`
  MODIFY `ProizvodjacID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vozilo`
--
ALTER TABLE `vozilo`
  MODIFY `VoziloID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`ProizvodjacID`) REFERENCES `proizvodjac` (`ProizvodjacID`);

--
-- Constraints for table `vozilo`
--
ALTER TABLE `vozilo`
  ADD CONSTRAINT `vozilo_ibfk_1` FOREIGN KEY (`ModelID`) REFERENCES `model` (`ModelID`),
  ADD CONSTRAINT `vozilo_ibfk_2` FOREIGN KEY (`BojaID`) REFERENCES `boja` (`BojaID`),
  ADD CONSTRAINT `vozilo_ibfk_3` FOREIGN KEY (`GorivoID`) REFERENCES `gorivo` (`GorivoID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
