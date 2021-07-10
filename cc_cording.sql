-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 08:59 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cc_cording`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `users_id`) VALUES
(1, 'a@a.c', '1234', 1),
(2, 'res@r.c', '1234', 2),
(3, 'chinese@dragon.com', 'abc', 3),
(4, 'ios@wall.com', 'def', 4),
(5, 'world@lanka.com', 'sam', 5),
(6, 'alley@us.com', 'thisal', 6),
(7, '45world@lanka.com', 'sdfg', 7),
(8, 'world@chinese.com', 'asdf', 8),
(9, 'pizza@hut.com', 'pizza', 9),
(10, 'dominos@pizza.hut', 'qwerty', 10),
(11, 'thisalatukorale@gmail.com', 'asdf', 11);

-- --------------------------------------------------------

--
-- Table structure for table `resturent`
--

CREATE TABLE `resturent` (
  `id` int(11) NOT NULL,
  `store_name` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resturent`
--

INSERT INTO `resturent` (`id`, `store_name`, `address`, `phone_number`, `email`, `users_id`) VALUES
(1, 'Thisal Resturent', '411/24, Dutugemunu Mawatha, 4th Lane', '0760751001', 'res@r.c', 2),
(2, 'Chinese Dragon', 'Nawala Road', '0112367342', 'chinese@dragon.com', 3),
(3, 'Great wall', 'Kollpityta 6th lane', '0923213441', 'ios@wall.com', 4),
(4, 'lanka world', 'Malabe ', '778212443', 'world@lanka.com', 5),
(5, 'crab alley ', 'Nawala ', '778123123', 'alley@us.com', 6),
(6, 'hiworld', '8th lane ', '77892341', '45world@lanka.com', 7),
(7, 'chinese world', 'Kotte road', '77123449', 'world@chinese.com', 8),
(8, 'pizza hut', 'Malabe', '012223134', 'pizza@hut.com', 9),
(9, 'dominos ', 'Rajagiriya', '0118232442', 'dominos@pizza.hut', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `contact_number` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `user_types_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `address`, `contact_number`, `email`, `user_types_id`) VALUES
(1, 'Thisal Atukorale', '411/24, Dutugemunu Mawatha, 4th Lane', '0760751001', 'a@a.c', 2),
(2, 'Thisal Resturent', '411/24, Dutugemunu Mawatha, 4th Lane', '0760751001', 'res@r.c', 3),
(3, 'Chinese Dragon', 'Nawala Road', '0112367342', 'chinese@dragon.com', 3),
(4, 'Great wall', 'Kollpityta 6th lane', '0923213441', 'ios@wall.com', 3),
(5, 'lanka world', 'Malabe ', '778212443', 'world@lanka.com', 3),
(6, 'crab alley ', 'Nawala ', '778123123', 'alley@us.com', 3),
(7, 'hiworld', '8th lane ', '77892341', '45world@lanka.com', 3),
(8, 'chinese world', 'Kotte road', '77123449', 'world@chinese.com', 3),
(9, 'pizza hut', 'Malabe', '012223134', 'pizza@hut.com', 3),
(10, 'dominos ', 'Rajagiriya', '0118232442', 'dominos@pizza.hut', 3),
(11, 'Thisal Atukorale', '411/24, Dutugemunu Mawatha, 4th Lane', '0760751001', 'thisalatukorale@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type`) VALUES
(1, 'Admin'),
(2, 'Customer'),
(3, 'Resturent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_login_users1` (`users_id`);

--
-- Indexes for table `resturent`
--
ALTER TABLE `resturent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_resturent_users1` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_user_types` (`user_types_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `resturent`
--
ALTER TABLE `resturent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `fk_login_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `resturent`
--
ALTER TABLE `resturent`
  ADD CONSTRAINT `fk_resturent_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_user_types` FOREIGN KEY (`user_types_id`) REFERENCES `user_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
