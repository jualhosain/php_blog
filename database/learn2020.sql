-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 10:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(10) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `post` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_name`, `post`) VALUES
(4, 'CSS', 1),
(5, 'JAVASCRIPT', 5),
(6, 'JQUERY', 3),
(7, 'React JS', 1),
(8, 'Boostrap', 0),
(9, 'PHP', 1),
(10, 'PYTHON', 0),
(11, 'NODE JS', 0),
(12, 'REACT NATIVE', 1),
(13, 'DJANGO', 0),
(14, 'FLASK', 1),
(15, 'TKINTER', 0),
(17, 'LARAVEL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `p_id` int(11) NOT NULL,
  `p_title` varchar(255) NOT NULL,
  `p_desc` text NOT NULL,
  `p_date` varchar(30) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `category` int(10) NOT NULL,
  `author` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`p_id`, `p_title`, `p_desc`, `p_date`, `p_image`, `category`, `author`) VALUES
(1, 'First Post in this blog', '                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati quibusdam aut fuga dolor quam voluptate quas accusamus quidem dolore labore maxime ullam, quaerat dicta temporibus et, ab adipisci inventore corrupti magni doloribus autem? Nostrum molestias illo doloribus similique at assumenda ipsam, vero, atque, modi iusto omnis maiores quasi reiciendis. At, suscipit soluta quia reiciendis corrupti debitis quam. Molestias assumenda illum excepturi blanditiis aliquid ea. Quisquam ad a tempora corporis numquam repellendus atque labore? Earum natus rem molestias qui molestiae minus minima aliquam quae dicta tenetur quis optio dolores, hic ipsam incidunt voluptates quibusdam nobis voluptas maxime. Necessitatibus nam dolores magni.Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati quibusdam aut fuga dolor quam voluptate quas accusamus quidem dolore labore maxime ullam, quaerat dicta temporibus et, ab adipisci inventore corrupti magni doloribus autem? Nostrum molestias illo doloribus similique at assumenda ipsam, vero, atque, modi iusto omnis maiores quasi reiciendis. At, suscipit soluta quia reiciendis corrupti debitis quam. Molestias assumenda illum excepturi blanditiis aliquid ea. Quisquam ad a tempora corporis numquam repellendus atque labore? Earum natus rem molestias qui molestiae minus minima aliquam quae dicta tenetur quis optio dolores, hic ipsam incidunt voluptates quibusdam nobis voluptas maxime. Necessitatibus nam dolores magni.                ', '18 Apr, 2020', '11.jpg', 4, 2),
(2, 'secound POst', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!', '17 Apr, 2020', 'jual.jpg', 17, 2),
(3, 'third post herer ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!', '17 Apr, 2020', 'world-emoji-day-apple-smiley-emoji.jpg', 6, 2),
(5, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis, quas.', '                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!                ', '18 Apr, 2020', '008.jpg', 9, 2),
(6, 'amet consectetur adipisicing elit. Omnis, quas.r, sit amet consectetur adipisicing elit. Omnis, quas.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis, quas.', '17 Apr, 2020', 'Factor4-cover-boek.jpeg', 12, 2),
(7, 'distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam', '                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!                ', '18 Apr, 2020', '08.jpg', 7, 2),
(8, 'distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam', 'distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totamLorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!', '17 Apr, 2020', 'Factor4-cover-boek.jpeg', 7, 2),
(9, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis', '                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi omnis culpa vero quis. Molestiae quaerat voluptates in dolor unde ipsum distinctio maiores sequi? Facilis, libero aliquid laboriosam debitis suscipit qui sit eveniet esse, ratione totam nihil magni minima quibusdam. Vitae tempora consequatur praesentium beatae, totam sit dolor maxime suscipit tenetur accusamus, ducimus soluta officiis perferendis animi ipsam, modi amet quae corporis excepturi ullam repellendus voluptatibus! Nisi reiciendis consequuntur quaerat magnam facere ipsum labore nostrum, facilis, non ut ratione architecto, harum quae laudantium voluptatibus commodi. Illo exercitationem laborum, saepe quas deleniti tempore fugiat placeat sapiente sit quasi, corporis eveniet pariatur minus!                ', '18 Apr, 2020', '9.jpg', 14, 2),
(11, 'Djangoand Made change js: ipsam minus error? Natus odio omnis autem, minus nulla similique vitae. Corporis, enim nesciunt modi, no', '                    hello: Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque id ea libero aut saepe nobis maxime cumque accusantium, dolore atque reprehenderit deleniti omnis laudantium vero in ad dolores hic cum temporibus culpa, qui voluptate aliquid repudiandae asperiores? Laborum officia excepturi saepe id maiores. Doloribus voluptatibus rem iure sed expedita laudantium dolor soluta odit sunt veritatis laborum excepturi et dolorum impedit ea provident quos cumque asperiores, ipsam minus error? Natus odio omnis autem, minus nulla similique vitae. Corporis, enim nesciunt modi, non dignissimos cupiditate omnis nam voluptas harum ea et! Minima cum, unde vero, magni aliquid praesentium, doloribus minus quae dignissimos harum officia veniam mollitia iusto blanditiis numquam sed voluptatum ullam similique fugiat iure sint autem aspernatur. Enim nulla magni aspernatur, voluptatem temporibus, totam similique pariatur earum corrupti ullam ad doloribus beatae optio, magnam quo tenetur quidem dicta officiis debitis repudiandae? Illo aliquam velit, possimus architecto dignissimos esse numquam temporibus beatae?                                                ', '18 Apr, 2020', 'lp.png', 5, 2),
(18, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Itaque eveniet temporibus nulla dolor consectetur iure inventore? Maxime', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Itaque eveniet temporibus nulla dolor consectetur iure inventore? Maxime provident tempora molestias accusamus doloribus, dolorem iure suscipit vitae ipsam quos doloremque consequuntur delectus, quaerat facilis reprehenderit beatae impedit inventore necessitatibus veniam odio nulla excepturi? Inventore impedit voluptatum, libero dolorem illum ipsum cumque nihil accusantium dolores tempore, amet, molestias necessitatibus reprehenderit delectus! Autem, eaque ex esse architecto qui hic laborum numquam inventore excepturi error sint delectus eveniet nostrum velit accusamus facilis fuga quod maxime. Libero nulla, vero ex illum maiores rem quis minima officiis aliquam cumque unde suscipit quas odit? Inventore perferendis molestias praesentium esse. Sapiente, aut reprehenderit soluta delectus fuga assumenda eius, voluptatum architecto dolor maxime eum velit voluptas deserunt, consequatur expedita aperiam quo at rerum? Facilis cumque sequi, natus voluptatem dolores perferendis quia vitae. Voluptas minus modi quaerat voluptatum? Nam architecto similique aspernatur maiores aperiam cum, earum officia suscipit molestiae ea! Cupiditate quod aliquam sunt nulla. Similique, vero error illum cupiditate animi laborum neque necessitatibus id aliquid ipsa quae incidunt natus ipsam voluptatibus sint qui eius. Eius, in! Suscipit illum accusamus amet tempore dolor eligendi, quod ipsa ipsam reprehenderit commodi a, hic, incidunt unde atque ad culpa mollitia dolores similique error.', '18 Apr, 2020', '11.jpg', 5, 2),
(20, 'psum dolor sit amet consectetur adipisicing elit. Magnam atque totam voluptatibus illo quod adipisci iste dicta similique, illum amet ducimus cupiditate saepe voluptates,', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magnam atque totam voluptatibus illo quod adipisci iste dicta similique, illum amet ducimus cupiditate saepe voluptates, quis libero sequi fuga iusto. Explicabo quos repellat cupiditate. Assumenda debitis, illum aut laborum sed iure porro provident, dolorem molestiae ab rerum molestias amet voluptas nisi quod at placeat aliquam! Reprehenderit temporibus debitis optio nostrum distinctio nulla dignissimos dolore culpa tenetur omnis iusto quos quisquam deleniti ducimus delectus libero natus velit ad provident illo at facere, minima asperiores id? Veniam illo exercitationem accusamus. Asperiores necessitatibus accusamus architecto eaque laboriosam consectetur pariatur nulla aspernatur illo autem et enim expedita, quod tempore dignissimos earum rem tempora soluta placeat atque magni ducimus corporis. Ad cupiditate itaque optio, molestiae voluptatem sunt aspernatur voluptas hic dolorem deleniti omnis delectus aut ea ipsam non nesciunt eos unde aliquam temporibus pariatur. Veniam aperiam dolorum voluptates ex iusto, ratione reiciendis eius quibusdam adipisci ipsam autem hic. Id iste aliquam aperiam esse magni officia. Eum illum architecto, quae at molestiae libero! Labore, cumque expedita suscipit enim quae unde accusamus odit quod! Reprehenderit porro eius fuga magni molestiae fugit corporis minima ducimus eos quasi fugiat hic a, quaerat quibusdam laboriosam delectus voluptates assumenda suscipit. Consequatur, in?', '18 Apr, 2020', '5.jpg', 5, 2),
(21, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magnam atque totam voluptatibus illo quod adipisci i', 'ste dicta similique, illum amet ducimus cupiditate saepe voluptates, quis libero sequi fuga iusto. Explicabo quos repellat cupiditate. Assumenda debitis, illum aut laborum sed iure porro provident, dolorem molestiae ab rerum molestias amet voluptas nisi quod at placeat aliquam! Reprehenderit temporibus debitis optio nostrum distinctio nulla dignissimos dolore culpa tenetur omnis iusto quos quisquam deleniti ducimus delectus libero natus velit ad provident illo at facere, minima asperiores id? Veniam illo exercitationem accusamus. Asperiores necessitatibus accusamus architecto eaque laboriosam consectetur pariatur nulla aspernatur illo autem et enim expedita, quod tempore dignissimos earum rem tempora soluta placeat atque magni ducimus corporis. Ad cupiditate itaque optio, molestiae voluptatem sunt aspernatur voluptas hic dolorem deleniti omnis delectus aut ea ipsam non nesciunt eos unde aliquam temporibus pariatur. Veniam aperiam dolorum voluptates ex iusto, ratione reiciendis eius quibusdam adipisci ipsam autem hic. Id iste aliquam aperiam esse magni officia. Eum illum architecto, quae at molestiae libero! Labore, cumque expedita suscipit enim quae unde accusamus odit quod! Reprehenderit porro eius fuga magni molestiae fugit corporis minima ducimus eos quasi fugiat hic a, quaerat quibusdam laboriosam delectus voluptates assumenda suscipit. Consequatur, in?', '18 Apr, 2020', '14.jpg', 5, 2),
(22, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magnam atque totam voluptatibus illo quod adipisci iste dicta similique, illum amet ducimus cupiditate ', 'saepe voluptates, quis libero sequi fuga iusto. Explicabo quos repellat cupiditate. Assumenda debitis, illum aut laborum sed iure porro provident, dolorem molestiae ab rerum molestias amet voluptas nisi quod at placeat aliquam! Reprehenderit temporibus debitis optio nostrum distinctio nulla dignissimos dolore culpa tenetur omnis iusto quos quisquam deleniti ducimus delectus libero natus velit ad provident illo at facere, minima asperiores id? Veniam illo exercitationem accusamus. Asperiores necessitatibus accusamus architecto eaque laboriosam consectetur pariatur nulla aspernatur illo autem et enim expedita, quod tempore dignissimos earum rem tempora soluta placeat atque magni ducimus corporis. Ad cupiditate itaque optio, molestiae voluptatem sunt aspernatur voluptas hic dolorem deleniti omnis delectus aut ea ipsam non nesciunt eos unde aliquam temporibus pariatur. Veniam aperiam dolorum voluptates ex iusto, ratione reiciendis eius quibusdam adipisci ipsam autem hic. Id iste aliquam aperiam esse magni officia. Eum illum architecto, quae at molestiae libero! Labore, cumque expedita suscipit enim quae unde accusamus odit quod! Reprehenderit porro eius fuga magni molestiae fugit corporis minima ducimus eos quasi fugiat hic a, quaerat quibusdam laboriosam delectus voluptates assumenda suscipit. Consequatur, in?', '18 Apr, 2020', '09.jpg', 5, 2),
(23, 'I am Juwel hosain and bisnu boss, zahed boss', 'saepe voluptates, quis libero sequi fuga iusto. Explicabo quos repellat cupiditate. Assumenda debitis, illum aut laborum sed iure porro provident, dolorem molestiae ab rerum molestias amet voluptas nisi quod at placeat aliquam! Reprehenderit temporibus debitis optio nostrum distinctio nulla dignissimos dolore culpa tenetur omnis iusto quos quisquam deleniti ducimus delectus libero natus velit ad provident illo at facere, minima asperiores id? Veniam illo exercitationem accusamus. Asperiores necessitatibus accusamus architecto eaque laboriosam consectetur pariatur nulla aspernatur illo autem et enim expedita, quod tempore dignissimos earum rem tempora soluta placeat atque magni ducimus corporis. Ad cupiditate itaque optio, molestiae voluptatem sunt aspernatur voluptas hic dolorem deleniti omnis delectus aut ea ipsam non nesciunt eos unde aliquam temporibus pariatur. Veniam aperiam dolorum voluptates ex iusto, ratione reiciendis eius quibusdam adipisci ipsam autem hic. Id iste aliquam aperiam esse magni officia. Eum illum architecto, quae at molestiae libero! Labore, cumque expedita suscipit enim quae unde accusamus odit quod! Reprehenderit porro eius fuga magni molestiae fugit corporis minima ducimus eos quasi fugiat hic a, quaerat quibusdam laboriosam delectus voluptates assumenda suscipit. Consequatur, in?', '20 Apr, 2020', '10.jpg', 6, 2),
(24, 'Some One is Posting', 'saepe voluptates, quis libero sequi fuga iusto. Explicabo quos repellat cupiditate. Assumenda debitis, illum aut laborum sed iure porro provident, dolorem molestiae ab rerum molestias amet voluptas nisi quod at placeat aliquam! Reprehenderit temporibus debitis optio nostrum distinctio nulla dignissimos dolore culpa tenetur omnis iusto quos quisquam deleniti ducimus delectus libero natus velit ad provident illo at facere, minima asperiores id? Veniam illo exercitationem accusamus. Asperiores necessitatibus accusamus architecto eaque laboriosam consectetur pariatur nulla aspernatur illo autem et enim expedita, quod tempore dignissimos earum rem tempora soluta placeat atque magni ducimus corporis. Ad cupiditate itaque optio, molestiae voluptatem sunt aspernatur voluptas hic dolorem deleniti omnis delectus aut ea ipsam non nesciunt eos unde aliquam temporibus pariatur. Veniam aperiam dolorum voluptates ex iusto, ratione reiciendis eius quibusdam adipisci ipsam autem hic. Id iste aliquam aperiam esse magni officia. Eum illum architecto, quae at molestiae libero! Labore, cumque expedita suscipit enim quae unde accusamus odit quod! Reprehenderit porro eius fuga magni molestiae fugit corporis minima ducimus eos quasi fugiat hic a, quaerat quibusdam laboriosam delectus voluptates assumenda suscipit. Consequatur, in?', '20 Apr, 2020', 'post-format.jpg', 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `web_name` varchar(50) NOT NULL,
  `web_logo` varchar(100) NOT NULL,
  `web_footer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`web_name`, `web_logo`, `web_footer`) VALUES
('News Websites', 'news.jpg', '© Copyright 2020 News | Powered by <a href=\'https://desiign.shop/\'>Desiign.shop</a>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `user_name`, `password`, `role`) VALUES
(2, 'Juwel', 'Hosain', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 'sohel Rana', 'Rana', 'sohel', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(5, 'Piash', 'Malaker', 'piash', '529fde80019652b81d05af4ed241196a', 0),
(7, 'Some', 'ONe', 'some', '03d59e663c1af9ac33a9949d1193505a', 0),
(9, 'bisnu', 'boss', 'bisnu', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(10, 'masum', 'boss', 'masum', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(11, 'sopon', 'boss', 'sopon', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(12, 'zahid', 'boss', 'zahid', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(13, 'tarikul', 'bondhu', 'tarikul', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(14, 'mohisn', 'bondhu', 'mohsin', '6345a8a1d2d04d5e9f0b3fea202bbfb2', 0),
(15, 'sopon', 'kundu bondhu', 'soponbondhu', '21232f297a57a5a743894a0e4a801fc3', 0),
(16, 'raju ', 'ahamed', 'raju', '21232f297a57a5a743894a0e4a801fc3', 0),
(17, 'ashik', 'kaka', 'ashik', '5d41402abc4b2a76b9719d911017c592', 0),
(18, 'jahid', 'hasan', 'jahid', '21232f297a57a5a743894a0e4a801fc3', 0),
(19, 'mamun', 'bondhu', 'mamun', '21232f297a57a5a743894a0e4a801fc3', 0),
(20, 'redwan ', 'ahmed', 'redwan', '5d41402abc4b2a76b9719d911017c592', 0),
(21, 'tonu', 'bondhu', 'tonu', '5d41402abc4b2a76b9719d911017c592', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
