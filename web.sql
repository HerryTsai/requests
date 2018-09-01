-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1:3306
-- 產生時間： 2018-09-01 16:56:58
-- 伺服器版本: 5.7.21
-- PHP 版本： 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `tourism`
--

-- --------------------------------------------------------

--
-- 資料表結構 `web`
--

DROP TABLE IF EXISTS `web`;
CREATE TABLE IF NOT EXISTS `web` (
  `id` int(11) NOT NULL,
  `weburl` char(255) NOT NULL,
  `ajaxurl` char(255) NOT NULL,
  PRIMARY KEY (`weburl`),
  UNIQUE KEY `ajaxurl` (`ajaxurl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `web`
--

INSERT INTO `web` (`id`, `weburl`, `ajaxurl`) VALUES
(0, 'https://www.tripresso.com/detail?group_code=AUMA9CI8905A&tour_key=GLORIA-AUMA9', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-AUMA9/AUMA9CI8905A'),
(2, 'https://www.tripresso.com/detail?group_code=AUSM8CI8923A&tour_key=GLORIA-AUSM8-1', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-AUSM8-1/AUSM8CI8923A'),
(1, 'https://www.tripresso.com/detail?group_code=AUSM8CI8A25A&tour_key=GLORIA-AUSM8', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-AUSM8/AUSM8CI8A25A'),
(3, 'https://www.tripresso.com/detail?group_code=AUSS6CI8907A&tour_key=GLORIA-AUSS6-1', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-AUSS6-1/AUSS6CI8907A'),
(4, 'https://www.tripresso.com/detail?group_code=AUSS6CI8913A&tour_key=GLORIA-AUSS6-2', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-AUSS6-2/AUSS6CI8913A'),
(6, 'https://www.tripresso.com/detail?group_code=AUSS7CI8907A&tour_key=GLORIA-AUSS7CI-C-2', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-AUSS7CI-C-2/AUSS7CI8907A'),
(5, 'https://www.tripresso.com/detail?group_code=AUSS7CI8B21A&tour_key=GLORIA-AUSS7CI-C', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-AUSS7CI-C/AUSS7CI8B21A'),
(7, 'https://www.tripresso.com/detail?group_code=BKIA5MH8907A&tour_key=GLORIA-BKIA5MH', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-BKIA5MH/BKIA5MH8907A'),
(8, 'https://www.tripresso.com/detail?group_code=BKKBFCI8911A&tour_key=GLORIA-BKKBF', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-BKKBF/BKKBFCI8911A'),
(9, 'https://www.tripresso.com/detail?group_code=BKKBKCI8911A&tour_key=GLORIA-BKKBKCI-1', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-BKKBKCI-1/BKKBKCI8911A'),
(10, 'https://www.tripresso.com/detail?group_code=CEBC5BR8911A&tour_key=GLORIA-CEBC5BR', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-CEBC5BR/CEBC5BR8911A'),
(11, 'https://www.tripresso.com/detail?group_code=CEBC5PR8906A&tour_key=GLORIA-CEBC5PR', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-CEBC5PR/CEBC5PR8906A'),
(12, 'https://www.tripresso.com/detail?group_code=CJU04IT8A03A&tour_key=GLORIA-CJU04', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-CJU04/CJU04IT8A03A'),
(14, 'https://www.tripresso.com/detail?group_code=CJU05IT8908A&tour_key=GLORIA-CJU051', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-CJU051/CJU05IT8908A'),
(13, 'https://www.tripresso.com/detail?group_code=CJU05IT8A05A&tour_key=GLORIA-CJU05', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-CJU05/CJU05IT8A05A'),
(15, 'https://www.tripresso.com/detail?group_code=CNXAABR8923A&tour_key=GLORIA-CNXAA-BR', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-CNXAA-BR/CNXAABR8923A'),
(16, 'https://www.tripresso.com/detail?group_code=CNXABBR8920A&tour_key=GLORIA-CNXAB-BR', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-CNXAB-BR/CNXABBR8920A'),
(17, 'https://www.tripresso.com/detail?group_code=CSAM6MU8A20A&tour_key=GLORIA-CSAM6-3', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-CSAM6-3/CSAM6MU8A20A'),
(18, 'https://www.tripresso.com/detail?group_code=CSAM7MU8903A&tour_key=GLORIA-CSAM7-2', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-CSAM7-2/CSAM7MU8903A'),
(19, 'https://www.tripresso.com/detail?group_code=DADA5FE8924B&tour_key=GLORIA-DADA5', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-DADA5/DADA5FE8924B'),
(20, 'https://www.tripresso.com/detail?group_code=DPSA5CI8913B&tour_key=GLORIA-DPSA5', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-DPSA5/DPSA5CI8913B'),
(21, 'https://www.tripresso.com/detail?group_code=DPSASCI8913A&tour_key=GLORIA-DPSAS', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-DPSAS/DPSASCI8913A'),
(22, 'https://www.tripresso.com/detail?group_code=DPSBFCI8913A&tour_key=GLORIA-DPSBF-2018', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-DPSBF-2018/DPSBFCI8913A'),
(23, 'https://www.tripresso.com/detail?group_code=DPSFVCI8913A&tour_key=GLORIA-DPSFV-2016', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-DPSFV-2016/DPSFVCI8913A'),
(24, 'https://www.tripresso.com/detail?group_code=DPSLBCI8911A&tour_key=GLORIA-DPSLB-2017', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-DPSLB-2017/DPSLBCI8911A'),
(25, 'https://www.tripresso.com/detail?group_code=DPSPACI8A01A&tour_key=GLORIA-DPSPA-2016', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-DPSPA-2016/DPSPACI8A01A'),
(26, 'https://www.tripresso.com/detail?group_code=DPSPGCI8910A&tour_key=GLORIA-DPSPG-2015', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-DPSPG-2015/DPSPGCI8910A'),
(27, 'https://www.tripresso.com/detail?group_code=DYGA6CZ8905A&tour_key=GLORIA-DYGA6', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-DYGA6/DYGA6CZ8905A'),
(28, 'https://www.tripresso.com/detail?group_code=HANB5CI8904A&tour_key=GLORIA-HANB5', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-HANB5/HANB5CI8904A'),
(29, 'https://www.tripresso.com/detail?group_code=HAND5CI8904A&tour_key=GLORIA-HAND5-2017', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-HAND5-2017/HAND5CI8904A'),
(30, 'https://www.tripresso.com/detail?group_code=HANF5CI8907A&tour_key=GLORIA-HANF5-2018', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-HANF5-2018/HANF5CI8907A'),
(31, 'https://www.tripresso.com/detail?group_code=HANH5CI8911A&tour_key=GLORIA-HANH5', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-HANH5/HANH5CI8911A'),
(32, 'https://www.tripresso.com/detail?group_code=HANP5CI8907A&tour_key=GLORIA-HANP5-2018', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-HANP5-2018/HANP5CI8907A'),
(33, 'https://www.tripresso.com/detail?group_code=HKTTETG8904A&tour_key=GLORIA-HKTTE', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-HKTTE/HKTTETG8904A'),
(34, 'https://www.tripresso.com/detail?group_code=HLDAACA8A02A&tour_key=GLORIA-HLDAA', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-HLDAA/HLDAACA8A02A'),
(35, 'https://www.tripresso.com/detail?group_code=HRBAACA8A02A&tour_key=GLORIA-HRBAA', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-HRBAA/HRBAACA8A02A'),
(37, 'https://www.tripresso.com/detail?group_code=JFFF5CI8908A&tour_key=GLORIA-JFFF5-2018-3', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JFFF5-2018-3/JFFF5CI8908A'),
(36, 'https://www.tripresso.com/detail?group_code=JFFF5CI8A18A&tour_key=GLORIA-JFFC5-201707', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JFFC5-201707/JFFF5CI8A18A'),
(38, 'https://www.tripresso.com/detail?group_code=JFFK5CI8A26A&tour_key=GLORIA-JFFF5-110117', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JFFF5-110117/JFFK5CI8A26A'),
(39, 'https://www.tripresso.com/detail?group_code=JFOK5CI8904A&tour_key=GLORIA-JFOK5-2108', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JFOK5-2108/JFOK5CI8904A'),
(40, 'https://www.tripresso.com/detail?group_code=JLPK7JL8913A&tour_key=GLORIA-JLPK7-2017C', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JLPK7-2017C/JLPK7JL8913A'),
(42, 'https://www.tripresso.com/detail?group_code=JLPK7JL8918A&tour_key=GLORIA-JLPK7-201706', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JLPK7-201706/JLPK7JL8918A'),
(41, 'https://www.tripresso.com/detail?group_code=JLPK7JL8A19A&tour_key=GLORIA-JLPK7-2017D', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JLPK7-2017D/JLPK7JL8A19A'),
(43, 'https://www.tripresso.com/detail?group_code=JNIJ4FE8928A&tour_key=GLORIA-JNIJ4-201703', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JNIJ4-201703/JNIJ4FE8928A'),
(44, 'https://www.tripresso.com/detail?group_code=JNIJ5FE8A01A&tour_key=GLORIA-JNIJ5-2017', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JNIJ5-2017/JNIJ5FE8A01A'),
(45, 'https://www.tripresso.com/detail?group_code=JNPL6CI8902A&tour_key=GLORIA-JNPL6-CI-A', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JNPL6-CI-A/JNPL6CI8902A'),
(46, 'https://www.tripresso.com/detail?group_code=JOAA5CI8907A&tour_key=GLORIA-JOAA5-2013C', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JOAA5-2013C/JOAA5CI8907A'),
(47, 'https://www.tripresso.com/detail?group_code=JOKA4CI8917B&tour_key=GLORIA-JOKA4-CI1', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JOKA4-CI1/JOKA4CI8917B'),
(49, 'https://www.tripresso.com/detail?group_code=JSPK5BR8909B&tour_key=GLORIA-JSPK5BR2018N', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JSPK5BR2018N/JSPK5BR8909B'),
(50, 'https://www.tripresso.com/detail?group_code=JSPK5BR8A23C&tour_key=GLORIA-JSPK5BR2018R', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JSPK5BR2018R/JSPK5BR8A23C'),
(48, 'https://www.tripresso.com/detail?group_code=JSPK5CI8903A&tour_key=GLORIA-JSPK5-201809', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JSPK5-201809/JSPK5CI8903A'),
(51, 'https://www.tripresso.com/detail?group_code=JTAK5CI8902A&tour_key=GLORIA-JTAK5-PAK', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JTAK5-PAK/JTAK5CI8902A'),
(52, 'https://www.tripresso.com/detail?group_code=JTAK6CI8907A&tour_key=GLORIA-JTAK6-PAK', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JTAK6-PAK/JTAK6CI8907A'),
(53, 'https://www.tripresso.com/detail?group_code=JTIT5CI8905B&tour_key=GLORIA-JTIT5-2015', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JTIT5-2015/JTIT5CI8905B'),
(55, 'https://www.tripresso.com/detail?group_code=JTOK5CI8B04A&tour_key=GLORIA-JTOK5-201611', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JTOK5-201611/JTOK5CI8B04A'),
(54, 'https://www.tripresso.com/detail?group_code=JTOK5CX8915A&tour_key=GLORIA-JTOK5-2018CX', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JTOK5-2018CX/JTOK5CX8915A'),
(56, 'https://www.tripresso.com/detail?group_code=JZHG8BR8903A&tour_key=GLORIA-JZHG8', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-JZHG8/JZHG8BR8903A'),
(57, 'https://www.tripresso.com/detail?group_code=KMGM8MU8920A&tour_key=GLORIA-KMGM8-KMG', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-KMGM8-KMG/KMGM8MU8920A'),
(58, 'https://www.tripresso.com/detail?group_code=KS205CI8902A&tour_key=GLORIA-KS205', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-KS205/KS205CI8902A'),
(59, 'https://www.tripresso.com/detail?group_code=KULN5CI8904A&tour_key=GLORIA-KULN5', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-KULN5/KULN5CI8904A'),
(60, 'https://www.tripresso.com/detail?group_code=KULS5CI8902A&tour_key=GLORIA-KULS5-CI', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-KULS5-CI/KULS5CI8902A'),
(61, 'https://www.tripresso.com/detail?group_code=KWLB5CZ8909A&tour_key=GLORIA-KWLB5', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-KWLB5/KWLB5CZ8909A'),
(62, 'https://www.tripresso.com/detail?group_code=KWLC5CZ8905A&tour_key=GLORIA-KWLC5-CZ1', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-KWLC5-CZ1/KWLC5CZ8905A'),
(63, 'https://www.tripresso.com/detail?group_code=PEKC5CI8B11A&tour_key=GLORIA-PEKC5-CI3', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-PEKC5-CI3/PEKC5CI8B11A'),
(64, 'https://www.tripresso.com/detail?group_code=PENA5CI8904A&tour_key=GLORIA-PENA5', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-PENA5/PENA5CI8904A'),
(65, 'https://www.tripresso.com/detail?group_code=PENI5CI8904A&tour_key=GLORIA-PENI5', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-PENI5/PENI5CI8904A'),
(66, 'https://www.tripresso.com/detail?group_code=PPSA5PR8B30A&tour_key=GLORIA-PPSA5PR', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-PPSA5PR/PPSA5PR8B30A'),
(67, 'https://www.tripresso.com/detail?group_code=PPSD5PR8C14A&tour_key=GLORIA-PPSD5PR', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-PPSD5PR/PPSD5PR8C14A'),
(70, 'https://www.tripresso.com/detail?group_code=SELA5CI8912B&tour_key=GLORIA-SELA5-A092', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA5-A092/SELA5CI8912B'),
(69, 'https://www.tripresso.com/detail?group_code=SELA5CI8A08A&tour_key=GLORIA-SELA5-A091', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA5-A091/SELA5CI8A08A'),
(72, 'https://www.tripresso.com/detail?group_code=SELA5OZ8906A&tour_key=GLORIA-SELA5-ABC5', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA5-ABC5/SELA5OZ8906A'),
(77, 'https://www.tripresso.com/detail?group_code=SELA5OZ8906B&tour_key=GLORIA-SELA5-AG6', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA5-AG6/SELA5OZ8906B'),
(71, 'https://www.tripresso.com/detail?group_code=SELA5OZ8906C&tour_key=GLORIA-SELA5-ABC3', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA5-ABC3/SELA5OZ8906C'),
(76, 'https://www.tripresso.com/detail?group_code=SELA5OZ8907A&tour_key=GLORIA-SELA5-ABC51', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA5-ABC51/SELA5OZ8907A'),
(78, 'https://www.tripresso.com/detail?group_code=SELA5OZ8907B&tour_key=GLORIA-SELA5-AH6', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA5-AH6/SELA5OZ8907B'),
(75, 'https://www.tripresso.com/detail?group_code=SELA5OZ8907C&tour_key=GLORIA-SELA5-ABC31', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA5-ABC31/SELA5OZ8907C'),
(68, 'https://www.tripresso.com/detail?group_code=SELA5OZ8927D&tour_key=GLORIA-SELA5-A2TZD', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA5-A2TZD/SELA5OZ8927D'),
(73, 'https://www.tripresso.com/detail?group_code=SELA5OZ8927E&tour_key=GLORIA-SELA5-ABC10', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA5-ABC10/SELA5OZ8927E'),
(74, 'https://www.tripresso.com/detail?group_code=SELA5OZ8A03D&tour_key=GLORIA-SELA5-ABC11', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA5-ABC11/SELA5OZ8A03D'),
(79, 'https://www.tripresso.com/detail?group_code=SELA6OZ8904A&tour_key=GLORIA-SELA6-OZ', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELA6-OZ/SELA6OZ8904A'),
(80, 'https://www.tripresso.com/detail?group_code=SELB5BX8904A&tour_key=GLORIA-SELB5-C5', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SELB5-C5/SELB5BX8904A'),
(81, 'https://www.tripresso.com/detail?group_code=SHEG8B78903A&tour_key=GLORIA-SHEG8', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SHEG8/SHEG8B78903A'),
(82, 'https://www.tripresso.com/detail?group_code=SINA4CI8902A&tour_key=GLORIA-SINA4-CI', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SINA4-CI/SINA4CI8902A'),
(83, 'https://www.tripresso.com/detail?group_code=SIND4CI8902A&tour_key=GLORIA-SIND4', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SIND4/SIND4CI8902A'),
(84, 'https://www.tripresso.com/detail?group_code=SINI4CI8902A&tour_key=GLORIA-SINI4-CI', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SINI4-CI/SINI4CI8902A'),
(85, 'https://www.tripresso.com/detail?group_code=SK505CI8904A&tour_key=GLORIA-SK505', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SK505/SK505CI8904A'),
(86, 'https://www.tripresso.com/detail?group_code=SK605CI8904A&tour_key=GLORIA-SK605', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-SK605/SK605CI8904A'),
(87, 'https://www.tripresso.com/detail?group_code=TAOB8CI8905A&tour_key=GLORIA-TAOB8', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-TAOB8/TAOB8CI8905A'),
(88, 'https://www.tripresso.com/detail?group_code=TSNA5CA8A12A&tour_key=GLORIA-TSNA5', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-TSNA5/TSNA5CA8A12A'),
(89, 'https://www.tripresso.com/detail?group_code=TXNA8CA8908A&tour_key=GLORIA-TXNA8-MF', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-TXNA8-MF/TXNA8CA8908A'),
(90, 'https://www.tripresso.com/detail?group_code=TXNG6BR8902A&tour_key=GLORIA-TXNG6-1', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-TXNG6-1/TXNG6BR8902A'),
(91, 'https://www.tripresso.com/detail?group_code=USU055J8908A&tour_key=GLORIA-USU055J', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-USU055J/USU055J8908A'),
(92, 'https://www.tripresso.com/detail?group_code=XIYA8MU8905A&tour_key=GLORIA-XIYA8', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-XIYA8/XIYA8MU8905A'),
(93, 'https://www.tripresso.com/detail?group_code=XIYC8MU8905A&tour_key=GLORIA-XIYC8', 'https://www.tripresso.com/detail/ajaxTourInfo/GLORIA-XIYC8/XIYC8MU8905A');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
