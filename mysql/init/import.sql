 -- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 172.16.104.131:3306
-- Generation Time:  
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

 

CREATE DATABASE IF NOT EXISTS `testdb`  ;
use `testdb`;


CREATE TABLE `llp_jiequ` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自增id',
  `title` varchar(200) NOT NULL COMMENT '街区标题',
  `jq_uid` int(10) NOT NULL DEFAULT '0' COMMENT '街主UID',
  `description` varchar(2000) DEFAULT NULL COMMENT '描述',
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='街区表';
