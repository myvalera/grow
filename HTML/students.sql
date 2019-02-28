-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Фев 28 2019 г., 22:05
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `students`
--

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDS` int(11) NOT NULL,
  `POSTCODE` decimal(5,0) NOT NULL,
  `COUNTRY` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `CITY` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `STREET` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `HOUSE` decimal(4,0) NOT NULL,
  `FLAT` decimal(4,0) NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_2` (`ID`),
  KEY `IDS` (`IDS`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `ID` int(7) NOT NULL AUTO_INCREMENT,
  `AD_ID` int(7) NOT NULL,
  `NAME` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `SURENAME` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_B` date NOT NULL,
  `PHONE` decimal(12,0) NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `SURENAME` (`SURENAME`),
  KEY `AD_ID` (`AD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`IDS`) REFERENCES `address` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
