-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 08:20 AM
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
-- Database: `vijayant`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(255) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `time_stamp`) VALUES
(1, 'Indian Spices', '2023-08-26 10:04:55'),
(2, 'Basmati Rice', '2023-08-26 10:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(200) NOT NULL,
  `cat_id` int(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_img` varchar(200) NOT NULL,
  `product_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cat_id`, `product_name`, `product_img`, `product_details`, `time_stamp`) VALUES
(1, 1, '8mm Green Cardamom', '8mm-green-cardamom.jpg', '{\"Cardamom size \":\"8 mm\", \r\n\"Grade\":\"AGEB(Alleppey Green Extra Bold)\",\r\n\"Shelf Life\":\"12 Months\",\r\n\"Color\":\"Greenish\",\r\n\"Storage\":\"Keep It In A Cool And Dry Place\",\r\n\"Package Type\":\"Loose\",\r\n\"Usage\":\"Use For Cooking\",\r\n\"Country of Origin\":\"India\"\r\n}', '2024-04-03 13:00:10'),
(2, 1, 'Organic Coriander Powder', 'dhaniya-powder-1445x.jpg', '{\"Form \":\"Seeds Powder\", \r\n\"Type\":\"Dried\",\r\n\"Usage/Application\":\"Use For Cooking\",\r\n\"Color\":\"Brown\", \r\n\"Shelf Life\":\"12 Months\",\r\n\"Moisture\":\"4%\",\r\n\"Is it Organic\":\"Yes\"\r\n}', '2024-04-03 13:00:16'),
(3, 1, 'A Grade Green Chilli', 'green-chilli.jpg', '{\"Variety Available\":\"Green Chilli\", \r\n\"Quality Available\":\"A Grade\",\r\n\"Usage/Application\":\"Cooking\",\r\n\"Length\":\"4inch\", \r\n\"Storing Period\":\"15 Days\",\r\n\"Packaging Type\":\"Loose\",\r\n\"Storage Instructions\":\"Store In Cool And Dry Place\"\r\n}', '2024-04-03 13:00:23'),
(4, 1, 'White Fresh Garlic', 'fresh-garlic.jpg', '{\"Garlic Size \":\"1inch\", \r\n\"Quality Available\":\"A Grade\",\r\n\"Storage Temperature\":\"Room Temperatures\",\r\n\"Shelf Life\":\"1 Months\", \r\n\"Packaging Type	\":\"Loose\",\r\n\"Purity\":\"98%\",\r\n\"Usage\":\"Use For Cooking\",\r\n\"Color\":\"White\"\r\n}', '2024-04-03 13:00:28'),
(5, 1, 'Brown Cumin Powder', 'brown-cumin-powder.jpg', '{\"Variety\":\"Jeera ( Cumin Seed )\", \r\n\"Grade\":\"European Quality\",\r\n\"Color\":\"Brown\",\r\n\"Shelf Life\":\"12 Months\", \r\n\"Storage Condition\":\"Cool and Dry Place\",\r\n\"Form\":\"Powder\",\r\n\"Moisture\":\"5%\",\r\n\"Package Type\":\"Loose\",\r\n\"Usage\":\"For Cooking\"\r\n}', '2024-04-03 13:00:34'),
(6, 1, 'Yellow Turmeric Powder', 'yellow-turmeric-powder.jpg', '{\"Form\":\"Powder\", \r\n\"Variety Of Turmeric Available\":\"Salem\",\r\n\"Shelf Life\":\"12 Months\",\r\n\"Grade Standard	\":\"Food Grade\", \r\n\"Color\":\"Yellow\",\r\n\"Storage Information\":\"Store In Cool And Dry Place\",\r\n\"Package Type\":\"Loose\",\r\n\"Usage/Application\":\"Use For Cooking\"\r\n}', '2024-04-03 13:00:41'),
(16, 2, 'Indian Basmati Rice', 'indian-basmati-rice.jpg', '{\"Packaging Size\":\"25 Kg\", \r\n\"Type\":\"Basmati 386\",\r\n\"Packaging Type\":\"Jute Bag\",\r\n\"Variety\":\"Long-Grain Rice\", \r\n\"Polished\":\"Fully Polished\",\r\n\"Broken\":\"No\",\r\n\"Texture\":\"Soft\"\r\n}', '2024-04-03 13:00:47'),
(17, 2, 'Pusa 1401 Steam Basmati Rice', 'pusa-1401-steam-basmati-rice.jpg', '{\"Type\":\"Pusa Basmati\", \r\n\"Variety\":\"Long-Grain Rice\",\r\n\"Color\":\"White\",\r\n\"Polished\":\"Fully Polished\", \r\n\"Texture\":\"Soft\",\r\n\"Cuisine Type\":\"Indian\",\r\n\"Country of Origin\":\"Made in India\"\r\n}', '2024-04-03 13:00:53'),
(18, 2, 'Pusa 1401 White Sella Basmati Rice', 'pusa-1401-white-sella-basmati-rice.jpg', '{\"Type\":\"Pusa Basmati\", \r\n\"Variety\":\"Long-Grain Rice\",\r\n\"Color\":\"White\",\r\n\"Polished\":\"Fully Polished\", \r\n\"Texture\":\"Soft\",\r\n\"Cuisine Type\":\"Indian\",\r\n\"Country of Origin\":\"Made in India\"\r\n}', '2024-04-03 13:00:59'),
(19, 2, 'Basmati Steam Rice', 'basmati-steam-rice.jpg', '{\"Packaging Type\":\"Loose\", \r\n\"Variety\":\"Long-Grain Rice\",\r\n\"Color\":\"White\",\r\n\"Broken\":\"No\", \r\n\"Country of Origin\":\"Made in India\"\r\n}', '2024-04-03 13:01:04'),
(40, 1, 'Black Pepper Seeds', 'black-pepper-seeds.jpg', '{\"Form\":\"Seed\", \r\n\"Variety Of Turmeric Available\":\"Salem\",\r\n\"Shelf Life\":\"12 Months\",\r\n\"Purity\":\"98%\", \r\n\"Color\":\"Black\",\r\n\"Storage Condition\":\"Store In Cool And Dry Place\",\r\n\"Moisture\":\"3%\",\r\n\"Usage\":\"For Cooking\",\r\n\"Package Type\":\"Loose\",\r\n\"Product Variety\":\"Black Pepper\"\r\n}', '2024-04-03 13:01:09'),
(41, 1, 'Brown Clove Powder', 'clove-powder.jpg', '{\"Variety\":\"Zanzibar\", \r\n\"Flavor\":\"Spicy\",\r\n\"Form\":\"Fine Powder\",\r\n\"Moisture\":\"3%\", \r\n\"Is It Organic\":\"Yes\",\r\n\"Usage\":\"Use For Cooking\",\r\n\"Color\":\"Brown\"\r\n}', '2024-04-03 13:01:13'),
(42, 1, 'Black Pepper Powder', 'black-pepper-powder.jpg', '{\"Variety\":\"Tellicherry -India\", \r\n\"Flavor\":\"Spicy\",\r\n\"Is It Dried\":\"Dried\",\r\n\"Features\":\"Gluten Free\", \r\n\"Storage Instructions\":\"Store In Cool And Dry Place\",\r\n\"Usage\":\"Use For Cooking\",\r\n\"Package Type\":\"Loose\",\r\n\"Form\":\"Powder\"\r\n}', '2024-04-03 13:01:26'),
(43, 1, 'Kashmiri Red Chilli Powder', 'kashmiri-red-chilli-powder.jpg', '{\"Shelf Life\":\"12 Months\", \r\n\"Is it Organic\":\"Yes\",\r\n\"Color\":\"Red\",\r\n\"Form\":\"Powder\", \r\n\"Usage\":\"Use For Cooking\",\r\n\"Type of Chilli\":\"Kashmiri Chilli\"\r\n}', '2024-04-03 13:01:33'),
(44, 1, 'Red Chilli Powder', 'red-chilli-powder.jpg', '{\"Type of Chilli\":\"Teja\", \r\n\"Spiciness (in SHU)\":\"2000\",\r\n\"Shelf Life\":\"12 Months\",\r\n\"Form\":\"Powder\", \r\n\"Product Color\":\"Red\",\r\n\"Usage/Application\":\"Use For Cooking\"\r\n}', '2024-04-03 13:01:40'),
(45, 1, 'Dry Red Chilli', 'dry-red-chilli.jpg', '{\"Variety\":\"Longi Mirch\", \r\n\"Color\":\"Red\",\r\n\"Is It Organic\":\"Yes\",\r\n\"Storage Instructions\":Dry Place\", \r\n\"Usage\":\"Use For Cooking\",\r\n\"Moisture\":\"5%\",\r\n\"Is It Dried\":\"Yes\",\r\n\"Package Type\":\"Loose\"\r\n}', '2024-04-03 13:01:45'),
(46, 1, 'Brown Dry Cloves', 'dry-cloves.jpg', '{\"Variety\":\"Indian Clove\", \r\n\"Color\":\"Brown\",\r\n\"Form\":\"Whole\",\r\n\"Shelf Life\":\"12 Months\", \r\n\"Packaging Type	\":\"Loose\",\r\n\"Usage\":\"SUse For Cooking\",\r\n\"Storage Instructions\":\"Store In Cool And Dry Place\",\r\n\"Moisture\":\"6%\"\r\n}', '2024-04-03 13:01:51'),
(47, 1, 'Brown Ginger Powder', 'brown-ginger-powder.jpg', '{\"Variety\":\"Calicut Quality\", \r\n\"Flavor\":\"Spicy\",\r\n\"Storage Instructions\":\"Dry Place\",\r\n\"Is It Organic\":\"Yes\", \r\n\"Is It Dried\":\"Dried\",\r\n\"Color\":\"Brown\",\r\n\"Package Type\":\"Loose\",\r\n\"Usage/Application\":\"Use For Cooking\"\r\n}', '2024-04-03 13:01:57'),
(48, 1, 'Organic Coriander Seed', 'organic-coriander-seed.jpg', '{\"Form\":\"Whole\", \r\n\"Type\":\"Dried\",\r\n\"Usage/Application\":\"Use For Cooking\",\r\n\"Shelf Life\":\"12 Months\", \r\n\"Color\":\"Brown\",\r\n\"Is it Organic\":\"Yes\",\r\n\"Package Type\":\"Loose\",\r\n\"Moisture\":\"10%\"\r\n}', '2024-04-03 13:02:01'),
(49, 1, 'Brown Garam Masala Powder', 'garam-masala-other-blended-masala.jpg', '{\"Form\":\"Powder\", \r\n\"Masala Type\":\"Garam Masala\",\r\n\"Shelf Life\":\"12 Months\",\r\n\"Storage\":\"Store In Cool And Dry Place\", \r\n\"Color\":\"Brown\",\r\n\"Usage/Application\":\"Use For Cooking\"\r\n}', '2024-04-03 13:02:08'),
(50, 1, 'Brown Cinnamon Sticks', 'cassia-cinnamon-powder-and-sticks.jpg', '{\"Variety\":\"Indian Cassia\", \r\n\"Physical Form\":\"Whole / Stick\",\r\n\"Usage/Application\":\"Making Mixed Spices\",\r\n\"Length\":\"4 inch\", \r\n\"Color\":\"Brown\",\r\n\"Form\":\"Stick\",\r\n\"Shelf Life\":\"12 Months\"\r\n}', '2024-04-03 13:02:13'),
(51, 1, 'White Pepper Powder', 'white-pepper-powder.jpg', '{\"Flavor\":\"Spicy\", \r\n\"Is It Dried\":\"Dried\",\r\n\"Storage Instructions\":\"Keep It In A Cool And Dry Place\",\r\n\"Shelf Life\":\"12 Months\", \r\n\"Package Type\":\"Loose\",\r\n\"Form\":\"Powder\",\r\n\"Variety\":\"White Pepper\"\r\n}', '2024-04-03 13:02:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
