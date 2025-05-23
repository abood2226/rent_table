-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 02:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `rent_table`
--

CREATE TABLE `rent_table` (
  `rentel_id` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `costume` varchar(50) NOT NULL,
  `rent_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `return_date` datetime DEFAULT NULL,
  `daily_rental` float DEFAULT NULL CHECK (`daily_rental` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rent_table`
--

INSERT INTO `rent_table` (`rentel_id`, `customer`, `costume`, `rent_date`, `return_date`, `daily_rental`) VALUES
(1, 'Alice Johnson', 'Imperial Officer', '2025-04-01 07:00:00', '2025-04-03 15:30:00', 25),
(2, 'Bob Smith', 'Galaxy Explorer', '2025-04-02 06:15:00', '2025-04-05 11:00:00', 20),
(3, 'Carol Lee', 'Time Traveler', '2025-04-03 12:50:00', '2025-04-06 16:00:00', 30),
(4, 'Dave Martinez', 'Robot Droid', '2025-04-17 15:20:00', '2025-04-19 14:15:00', 28.5),
(5, 'Eva Wang', 'Alien Monarch', '2025-04-13 12:00:00', '2025-04-15 17:05:00', 22),
(6, 'Frank Davis', 'Imperial Officer', '2025-04-03 12:40:00', '2025-04-05 21:00:00', 25),
(7, 'Grace Kim', 'Galaxy Explorer', '2025-04-05 09:00:00', NULL, 20),
(8, 'Henry Brown', 'Robot Droid', '2025-04-21 14:15:00', '2025-04-24 16:25:00', 28.5),
(9, 'Isabel Clark', 'Time Traveler', '2025-04-07 10:30:00', NULL, 30),
(10, 'John Doe', 'Alien Monarch', '2025-04-15 14:30:00', '2025-04-17 19:40:00', 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rent_table`
--
ALTER TABLE `rent_table`
  ADD PRIMARY KEY (`rentel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rent_table`
--
ALTER TABLE `rent_table`
  MODIFY `rentel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
