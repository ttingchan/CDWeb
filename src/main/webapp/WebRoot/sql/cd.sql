-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 12 月 07 日 15:15
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `cd`
--
CREATE DATABASE IF NOT EXISTS `cd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cd`;

-- --------------------------------------------------------

--
-- 表的结构 `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `issuing_date` date NOT NULL,
  `description` text NOT NULL,
  `price` int(5) NOT NULL,
  `num_like` int(20) NOT NULL,
  `id_author` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `id_author` (`id_author`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) NOT NULL,
  `comment` text NOT NULL,
  `date_of_comment` date NOT NULL,
  `num_like` int(20) NOT NULL,
  `id_album` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_album` (`id_album`),
  UNIQUE KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `song`
--

CREATE TABLE IF NOT EXISTS `song` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` int(3) NOT NULL,
  `num_like` int(10) NOT NULL,
  `description` text NOT NULL,
  `id_author` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_author` (`id_author`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `psw` varchar(20) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `phonenum` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 限制导出的表
--

--
-- 限制表 `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `author` (`id`);

--
-- 限制表 `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- 限制表 `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `author` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
