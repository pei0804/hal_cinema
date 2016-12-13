-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016 年 11 月 19 日 21:13
-- サーバのバージョン： 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+09:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema`
--
CREATE DATABASE IF NOT EXISTS `cinema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cinema`;

-- --------------------------------------------------------

--
-- テーブルの構造 `m_article`
--

DROP TABLE IF EXISTS `m_article`;
CREATE TABLE `m_article` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `release_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `member_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `m_article`
--

INSERT INTO `m_article` (`id`, `title`, `content`, `release_at`, `created_at`, `updated_at`, `member_id`) VALUES
(1, 'タイトル1', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:01:19', 31),
(2, 'タイトル2', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:01:48', 31),
(3, 'タイトル3', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:01:50', 31),
(4, 'タイトル4', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:01:52', 31),
(5, 'タイトル5', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:01:54', 31),
(6, 'タイトル6', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:01:57', 31),
(7, 'タイトル7', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:02:01', 31),
(8, 'タイトル8', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:02:04', 31),
(9, 'タイトル9', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:02:06', 31),
(10, 'タイトル10', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:02:09', 31),
(11, 'タイトル11', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:02:10', 31),
(12, 'タイトル12', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:02:12', 31),
(13, '未公開13', '未公開記事', '2217-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:02:13', 31),
(14, '未公開14', '未公開記事', '2217-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:02:15', 31),
(15, '未公開15', '未公開記事', '2217-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:02:18', 31),
(16, 'タイトル16', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:02:20', 31),
(17, 'タイトル17', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2016-11-10 05:58:09', '2016-11-09 02:58:09', '2016-11-09 03:02:22', 31);

-- --------------------------------------------------------

--
-- テーブルの構造 `m_member`
--

DROP TABLE IF EXISTS `m_member`;
CREATE TABLE `m_member` (
  `id` int(10) UNSIGNED NOT NULL,
  `password` varchar(16) NOT NULL,
  `name` varchar(50) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `credit_no` char(16) DEFAULT NULL,
  `credit_sec_code` char(4) DEFAULT NULL,
  `credit_expiration_date` char(6) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class` enum('customer','employee') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `m_member`
--

INSERT INTO `m_member` (`id`, `password`, `name`, `tel`, `mail`, `credit_no`, `credit_sec_code`, `credit_expiration_date`, `created_at`, `updated_at`, `class`) VALUES
(1, 'password', 'ユーザー1', '09050427111', 'example1@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:07', 'customer'),
(2, 'password', 'ユーザー2', '09050427111', 'example2@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:15', 'customer'),
(3, 'password', 'ユーザー3', '09050427111', 'example3@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:19', 'customer'),
(4, 'password', 'ユーザー4', '09050427111', 'example4@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:22', 'customer'),
(5, 'password', 'ユーザー5', '09050427111', 'example5@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:28', 'customer'),
(6, 'password', 'ユーザー6', '09050427111', 'example6@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:32', 'customer'),
(7, 'password', 'ユーザー7', '09050427111', 'example7@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:35', 'customer'),
(8, 'password', 'ユーザー8', '09050427111', 'example8@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:38', 'customer'),
(9, 'password', 'ユーザー9', '09050427111', 'example9@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:41', 'customer'),
(10, 'password', 'ユーザー10', '09050427111', 'example10@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:44', 'customer'),
(11, 'password', 'ユーザー11', '09050427111', 'example11@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:46', 'customer'),
(12, 'password', 'ユーザー12', '09050427111', 'example12@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:50', 'customer'),
(13, 'password', 'ユーザー13', '09050427111', 'example13@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:55', 'customer'),
(14, 'password', 'ユーザー14', '09050427111', 'example14@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:54:58', 'customer'),
(15, 'password', 'ユーザー15', '09050427111', 'example15@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:02', 'customer'),
(16, 'password', 'ユーザー16', '09050427111', 'example16@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:05', 'customer'),
(17, 'password', 'ユーザー17', '09050427111', 'example17@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:09', 'customer'),
(18, 'password', 'ユーザー18', '09050427111', 'example18@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:14', 'customer'),
(19, 'password', 'ユーザー19', '09050427111', 'example19@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:17', 'customer'),
(20, 'password', 'ユーザー20', '09050427111', 'example20@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:20', 'customer'),
(21, 'password', 'ユーザー21', '09050427111', 'example21@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:23', 'customer'),
(22, 'password', 'ユーザー22', '09050427111', 'example22@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:25', 'customer'),
(23, 'password', 'ユーザー23', '09050427111', 'example23@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:27', 'customer'),
(24, 'password', 'ユーザー24', '09050427111', 'example24@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:30', 'customer'),
(25, 'password', 'ユーザー25', '09050427111', 'example25@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:33', 'customer'),
(26, 'password', 'ユーザー26', '09050427111', 'example26@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:35', 'customer'),
(27, 'password', 'ユーザー27', '09050427111', 'example27@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:37', 'customer'),
(28, 'password', 'ユーザー28', '09050427111', 'example28@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:40', 'customer'),
(29, 'password', 'ユーザー29', '09050427111', 'example29@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:43', 'customer'),
(30, 'password', 'ユーザー30', '09050427111', 'example30@gmail.com', '1234567890123456', '907', '16/03', '2016-11-09 02:48:14', '2016-11-09 02:55:47', 'customer'),
(31, 'password', 'root', '09050427111', 'example31@gmail.com', 'NULL', 'NULL', 'NULL', '2016-11-09 02:48:14', '2016-11-09 02:55:49', 'employee'),
(32, 'password', 'root2', '09050427111', 'example32@gmail.com', 'NULL', 'NULL', 'NULL', '2016-11-09 02:57:25', '2016-11-09 02:58:00', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_movie`
--

DROP TABLE IF EXISTS `m_movie`;
CREATE TABLE `m_movie` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text,
  `movie_time` time DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `img_url` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `member_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `m_movie`
--

INSERT INTO `m_movie` (`id`, `title`, `description`, `movie_time`, `release_date`, `created_at`, `updated_at`, `member_id`) VALUES
(1, 'タイトル1', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '02:00:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:07', 31),
(2, 'タイトル2', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '02:00:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:10', 31),
(3, 'タイトル3', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '02:00:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:11', 31),
(4, 'タイトル4', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '02:00:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:12', 31),
(5, 'タイトル5', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '02:30:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:14', 31),
(6, 'タイトル6', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '01:00:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:19', 31),
(7, 'タイトル7', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '02:20:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:23', 31),
(8, 'タイトル8', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '01:20:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:27', 31),
(9, 'タイトル9', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '03:00:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:34', 31),
(10, 'タイトル10', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '02:00:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:38', 31),
(11, 'タイトル11', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '02:30:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:42', 31),
(12, 'タイトル12', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '01:20:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:45', 31),
(13, 'タイトル13', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '02:30:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:48', 31),
(14, 'タイトル14', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '01:20:00', '2016-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:50', 31),
(15, 'タイトル15', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', '03:00:00', '2226-11-10', '2016-11-09 03:04:23', '2016-11-09 03:12:53', 31),
(16, '非公開16', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', NULL, '2226-11-10', '2016-11-09 03:04:23', '2016-11-09 03:05:45', 31),
(17, '非公開17', '説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明説明', NULL, '2226-11-10', '2016-11-09 03:04:23', '2016-11-09 03:05:48', 31);

-- --------------------------------------------------------

--
-- テーブルの構造 `m_price_type`
--

DROP TABLE IF EXISTS `m_price_type`;
CREATE TABLE `m_price_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `class` enum('normal','discount') NOT NULL,
  `week_number` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `member_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `m_price_type`
--

INSERT INTO `m_price_type` (`id`, `name`, `price`, `description`, `class`, `week_number`, `created_at`, `updated_at`, `member_id`) VALUES
(1, '一般', 1800, NULL, 'normal', NULL, '2016-11-09 03:33:32', '2016-11-09 03:33:35', 31),
(2, '学生（大高生）', 1500, '在学確認は学生証を提示して頂きます。', 'normal', NULL, '2016-11-09 03:33:32', '2016-11-09 03:47:25', 31),
(3, '小中学生', 800, NULL, 'normal', NULL, '2016-11-09 03:33:32', '2016-11-09 03:34:24', 31),
(4, '幼児（3〜6歳）', 500, NULL, 'normal', NULL, '2016-11-09 03:33:32', '2016-11-09 03:35:03', 31),
(5, '3D専用メガネ', 300, '3D映画専用。鑑賞料金に対して加算致します。', 'normal', NULL, '2016-11-09 03:33:32', '2016-11-09 03:47:32', 31),
(6, '毎月1日', 1100, NULL, 'discount', NULL, '2016-11-09 03:42:20', '2016-11-09 03:43:04', 31),
(7, 'レディースデイ', 1100, NULL, 'discount', 2, '2016-11-09 03:42:20', '2016-11-09 03:43:38', 31),
(8, 'シニアデー', 1000, '５０歳以上だと確認できるものを提示して頂きます。', 'discount', 1, '2016-11-09 03:42:20', '2016-11-09 03:47:45', 31),
(9, '夫婦デー（2名）', 1000, '５０歳以上かつ夫婦だと確認できるものを提示して頂きます。', 'discount', 1, '2016-11-09 03:42:20', '2016-11-09 03:47:48', 31);

-- --------------------------------------------------------

--
-- テーブルの構造 `m_theater`
--

DROP TABLE IF EXISTS `m_theater`;
CREATE TABLE `m_theater` (
  `id` int(10) UNSIGNED NOT NULL,
  `seat_count` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `member_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `m_theater`
--

INSERT INTO `m_theater` (`id`, `created_at`, `updated_at`, `member_id`) VALUES
(1, '2016-11-09 03:07:27', '2016-11-09 03:07:27', 31),
(2, '2016-11-09 03:07:27', '2016-11-09 03:07:27', 31),
(3, '2016-11-09 03:07:27', '2016-11-09 03:07:27', 31),
(4, '2016-11-09 03:07:27', '2016-11-09 03:07:27', 31),
(5, '2016-11-09 03:07:27', '2016-11-09 03:07:27', 31),
(6, '2016-11-09 03:07:27', '2016-11-09 03:07:27', 31),
(7, '2016-11-09 03:07:27', '2016-11-09 03:07:27', 31),
(8, '2016-11-09 03:07:27', '2016-11-09 03:07:27', 31);

-- --------------------------------------------------------

--
-- テーブルの構造 `t_movie_schedule`
--

DROP TABLE IF EXISTS `t_movie_schedule`;
CREATE TABLE `t_movie_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `theater_id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `member_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `t_movie_schedule`
--

INSERT INTO `t_movie_schedule` (`id`, `theater_id`, `movie_id`, `start_at`, `end_at`, `created_at`, `updated_at`, `member_id`) VALUES
(1, 1, 1, '2016-11-10 10:00:00', '2016-11-10 12:00:00', '2016-11-09 03:08:03', '2016-11-12 01:58:37', 31),
(2, 1, 1, '2016-11-10 12:00:00', '2016-11-10 14:00:00', '2016-11-09 03:08:03', '2016-11-12 01:58:41', 31),
(3, 1, 1, '2016-11-10 14:00:00', '2016-11-10 16:00:00', '2016-11-09 03:08:03', '2016-11-12 01:58:47', 31),
(4, 1, 1, '2016-11-10 18:00:00', '2016-11-10 20:00:00', '2016-11-09 03:08:03', '2016-11-12 01:58:52', 31),
(6, 2, 2, '2016-11-10 12:00:00', '2016-11-10 14:00:00', '2016-11-09 03:08:03', '2016-11-12 01:58:55', 31),
(7, 2, 2, '2016-11-10 14:00:00', '2016-11-10 16:00:00', '2016-11-09 03:08:03', '2016-11-12 01:58:59', 31),
(8, 2, 2, '2016-11-10 16:00:00', '2016-11-10 18:00:00', '2016-11-09 03:08:03', '2016-11-12 01:59:04', 31),
(9, 1, 1, '2016-11-11 16:00:00', '2016-11-11 18:00:00', '2016-11-09 03:08:03', '2016-11-12 01:59:12', 31),
(10, 1, 1, '2016-11-11 18:00:00', '2016-11-11 20:00:00', '2016-11-09 03:08:03', '2016-11-12 01:59:16', 31),
(11, 1, 1, '2016-11-11 20:00:00', '2016-11-11 21:00:00', '2016-11-09 03:08:03', '2016-11-12 01:59:20', 31),
(12, 1, 3, '2016-11-12 20:00:00', '2016-11-12 21:00:00', '2016-11-09 03:08:03', '2016-11-12 01:59:24', 31),
(13, 1, 3, '2016-11-11 21:00:00', '2016-11-11 22:00:00', '2016-11-09 03:08:03', '2016-11-12 01:59:26', 31);

-- --------------------------------------------------------

--
-- テーブルの構造 `t_reserve`
--

DROP TABLE IF EXISTS `t_reserve`;
CREATE TABLE `t_reserve` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `schedule_id` int(10) UNSIGNED NOT NULL,
  `pay_all_price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `t_reserve`
--

INSERT INTO `t_reserve` (`id`, `member_id`, `schedule_id`, `pay_all_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1800, '2016-11-09 03:28:59', '2016-11-09 03:50:22'),
(2, 2, 1, 1800, '2016-11-09 03:58:35', '2016-11-09 03:58:35'),
(3, 3, 1, 1500, '2016-11-09 03:59:17', '2016-11-09 03:59:17');

-- --------------------------------------------------------

--
-- テーブルの構造 `t_seat`
--

DROP TABLE IF EXISTS `t_seat`;
CREATE TABLE `t_seat` (
  `theater_id` int(10) UNSIGNED NOT NULL,
  `seat` char(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `member_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `t_seat`
--

INSERT INTO `t_seat` (`theater_id`, `seat`, `created_at`, `updated_at`, `member_id`) VALUES
(1, 'A_1', '2016-11-09 03:55:01', '2016-11-19 12:10:05', 31),
(1, 'A_2', '2016-11-09 03:55:01', '2016-11-19 12:10:11', 31),
(1, 'A_3', '2016-11-09 03:55:01', '2016-11-19 12:10:17', 31),
(1, 'A_4', '2016-11-09 03:55:01', '2016-11-19 12:10:13', 31),
(1, 'A_5', '2016-11-09 03:55:01', '2016-11-19 12:10:22', 31),
(1, 'A_6', '2016-11-09 03:55:01', '2016-11-19 12:10:19', 31),
(1, 'A_7', '2016-11-09 03:55:01', '2016-11-19 12:10:28', 31),
(1, 'A_8', '2016-11-09 03:55:01', '2016-11-19 12:10:25', 31),
(1, 'B_1', '2016-11-09 03:55:01', '2016-11-19 12:10:31', 31),
(1, 'B_2', '2016-11-09 03:55:01', '2016-11-19 12:10:37', 31),
(1, 'B_3', '2016-11-09 03:55:01', '2016-11-19 12:10:34', 31),
(1, 'B_4', '2016-11-09 03:55:01', '2016-11-19 12:10:42', 31),
(1, 'B_5', '2016-11-09 03:55:01', '2016-11-19 12:10:39', 31),
(1, 'B_6', '2016-11-09 03:55:01', '2016-11-19 12:10:47', 31),
(1, 'B_7', '2016-11-09 03:55:01', '2016-11-19 12:10:45', 31),
(1, 'B_8', '2016-11-09 03:55:01', '2016-11-19 12:10:50', 31),
(1, 'C_1', '2016-11-09 03:55:01', '2016-11-19 12:10:56', 31),
(1, 'C_2', '2016-11-09 03:55:01', '2016-11-19 12:11:00', 31),
(1, 'C_3', '2016-11-09 03:55:01', '2016-11-19 12:10:58', 31),
(1, 'C_4', '2016-11-09 03:55:01', '2016-11-19 12:11:06', 31),
(1, 'C_5', '2016-11-09 03:55:01', '2016-11-19 12:11:03', 31),
(1, 'C_6', '2016-11-09 03:55:01', '2016-11-19 12:11:12', 31),
(1, 'C_7', '2016-11-09 03:55:01', '2016-11-19 12:11:09', 31),
(1, 'C_8', '2016-11-09 03:55:01', '2016-11-19 12:11:15', 31),
(1, 'D_1', '2016-11-09 03:55:01', '2016-11-19 12:11:20', 31),
(1, 'D_2', '2016-11-09 03:55:01', '2016-11-19 12:11:25', 31),
(1, 'D_3', '2016-11-09 03:55:01', '2016-11-19 12:11:22', 31),
(1, 'D_4', '2016-11-09 03:55:01', '2016-11-19 12:11:30', 31),
(1, 'D_5', '2016-11-09 03:55:01', '2016-11-19 12:11:28', 31),
(1, 'D_6', '2016-11-09 03:55:01', '2016-11-19 12:11:43', 31),
(1, 'D_7', '2016-11-09 03:55:01', '2016-11-19 12:11:33', 31),
(1, 'D_8', '2016-11-09 03:55:01', '2016-11-19 12:11:38', 31);

-- --------------------------------------------------------

--
-- テーブルの構造 `t_ticket`
--

DROP TABLE IF EXISTS `t_ticket`;
CREATE TABLE `t_ticket` (
  `reserve_id` int(10) UNSIGNED NOT NULL,
  `ticket_no` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `seat` char(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `t_ticket`
--

INSERT INTO `t_ticket` (`reserve_id`, `ticket_no`, `type_id`, `price`, `seat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1800, 'B_4', '2016-11-09 03:50:34', '2016-11-19 12:13:20'),
(2, 1, 2, 1500, 'A_1', '2016-11-09 03:59:05', '2016-11-19 12:13:22'),
(3, 1, 1, 1800, 'B_5', '2016-11-09 03:50:34', '2016-11-19 12:13:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_article`
--
ALTER TABLE `m_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `m_member`
--
ALTER TABLE `m_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indexes for table `m_movie`
--
ALTER TABLE `m_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `m_price_type`
--
ALTER TABLE `m_price_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `m_theater`
--
ALTER TABLE `m_theater`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `t_movie_schedule`
--
ALTER TABLE `t_movie_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `theater_id` (`theater_id`);

--
-- Indexes for table `t_reserve`
--
ALTER TABLE `t_reserve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `t_seat`
--
ALTER TABLE `t_seat`
  ADD PRIMARY KEY (`theater_id`,`seat`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `t_ticket`
--
ALTER TABLE `t_ticket`
  ADD PRIMARY KEY (`ticket_no`,`reserve_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `id` (`reserve_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_article`
--
ALTER TABLE `m_article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `m_member`
--
ALTER TABLE `m_member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `m_movie`
--
ALTER TABLE `m_movie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `m_theater`
--
ALTER TABLE `m_theater`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `t_movie_schedule`
--
ALTER TABLE `t_movie_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `t_reserve`
--
ALTER TABLE `t_reserve`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `t_ticket`
--
ALTER TABLE `t_ticket`
  MODIFY `ticket_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `m_article`
--
ALTER TABLE `m_article`
  ADD CONSTRAINT `m_article_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `m_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `m_movie`
--
ALTER TABLE `m_movie`
  ADD CONSTRAINT `m_movie_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `m_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `m_price_type`
--
ALTER TABLE `m_price_type`
  ADD CONSTRAINT `m_price_type_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `m_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `m_theater`
--
ALTER TABLE `m_theater`
  ADD CONSTRAINT `m_theater_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `m_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `t_movie_schedule`
--
ALTER TABLE `t_movie_schedule`
  ADD CONSTRAINT `t_movie_schedule_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `m_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_movie_schedule_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `m_movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_movie_schedule_ibfk_3` FOREIGN KEY (`theater_id`) REFERENCES `m_theater` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `t_reserve`
--
ALTER TABLE `t_reserve`
  ADD CONSTRAINT `t_reserve_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `m_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_reserve_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `t_movie_schedule` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `t_seat`
--
ALTER TABLE `t_seat`
  ADD CONSTRAINT `t_seat_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `m_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_seat_ibfk_2` FOREIGN KEY (`theater_id`) REFERENCES `m_theater` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- テーブルの制約 `t_ticket`
--
ALTER TABLE `t_ticket`
  ADD CONSTRAINT `t_ticket_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `m_price_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_ticket_ibfk_2` FOREIGN KEY (`reserve_id`) REFERENCES `t_reserve` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
