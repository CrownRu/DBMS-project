-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2022 年 06 月 22 日 07:06
-- 伺服器版本: 5.7.33-0ubuntu0.16.04.1
-- PHP 版本： 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `A1093356`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Brand`
--

CREATE TABLE `Brand` (
  `number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `series` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `bname` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `Brand`
--

INSERT INTO `Brand` (`number`, `series`, `bname`) VALUES
('CZ0790-041', 'air jordan 1 low ', 'Nike'),
('DD1399-800', 'dunk high', 'Nike'),
('DD1503-118', 'dunk low', 'Nike'),
('DJ5019-001', 'air max 97', 'Nike'),
('DM0807-400', 'sb dunk low', 'Nike'),
('DN1635-100', 'air jordan 1 low', 'Nike'),
('DO6290-001', 'Air Force 1 mid x Off-White', 'Nike'),
('DO6290-100', 'Air Force 1 mid x Off-White', 'Nike'),
('DQ4909-100', 'air jordan 4', 'Nike'),
('F36640', 'YEEZY 500', 'Adidas'),
('FZ1267', 'YEEZY BOOST 350 V2', 'Adidas'),
('GX3607', 'yeezy 500', 'Adidas'),
('GX5049', 'YEEZY QNTM', 'Adidas'),
('HQ6316', 'YEEZY BOOST 350 V2', 'Adidas'),
('ML408A', '408', 'New balance'),
('ML408D', '408', 'New balance'),
('ML725G', '725V1', 'New balance'),
('ML725I', '725V1', 'New balance'),
('MS327LF1', '327', 'New balance'),
('MS327LJ1', '327', 'New balance'),
('MS327LK1', '327', 'New balance');

-- --------------------------------------------------------

--
-- 資料表結構 `Customer`
--

CREATE TABLE `Customer` (
  `cid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `cname` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `Customer`
--

INSERT INTO `Customer` (`cid`, `cname`, `phone`) VALUES
('F1', 'Olivia', '0923458968'),
('F10', 'Luna', '0932031212'),
('F11', 'Rose', '0923458964'),
('F2', 'Emma', '0912475985'),
('F3', 'Ava', '0974853962'),
('F4', 'Sophia', '0903454781'),
('F5', 'Isabella', '0901411604'),
('F6', 'Zoe', '0906565400'),
('F7', 'Riley', '0905121320'),
('F8', 'Victoria', '0910772010'),
('F9', 'Scarlett', '0970445505'),
('M1', 'Fred', '0905354621'),
('M10', 'Isaac', '0987098787'),
('M11', '地精', '0912546136'),
('M2', 'Eric', '0978456123'),
('M3', 'Liam', '0983621854'),
('M4', 'Noah', '0912856941'),
('M5', 'Oliver', '0901230236'),
('M6', 'William', '0905450450'),
('M7', 'Elijah', '0987948741'),
('M8', 'Arthur', '0945120202'),
('M9', 'George', '0970890101');

-- --------------------------------------------------------

--
-- 資料表結構 `income`
--

CREATE TABLE `income` (
  `brand_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `shoes_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sum` int(5) NOT NULL,
  `total_earning` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `income`
--

INSERT INTO `income` (`brand_name`, `shoes_name`, `number`, `sum`, `total_earning`) VALUES
('Adidas', 'yeezy boost 350 V2 CORE BLACK/RED', 'CP9652', 0, 0),
('Nike', 'air jordan 1 low Mystic Navy', 'CZ0790-041', 1, 4500),
('Nike', 'dunk high Orange and Deep Royal ', 'DD1399-800', 3, 10500),
('Nike', 'dunk low Rose Whisper', 'DD1503-118', 0, 0),
('Nike', 'Air Max 97 Off Noir and Summit White', 'DJ5019-001', 0, 0),
('Nike', 'dunk sb low Blue Raspberry', 'DM0807-400', 0, 0),
('Nike', 'air jordan 1 low White and Phantom', 'DN1635-100', 0, 0),
('Nike', 'Air Force 1 mid x Off-White White', 'DO6290-100', 0, 0),
('Nike', 'air jordan 4 Sail', 'DQ4909-100', 1, 6700),
('Adidas', 'yeezy 500 Utility Black', 'F36640', 0, 0),
('Adidas', 'yeezy boost 350 V2 ZYON', 'FZ1267', 1, 8800),
('Adidas', 'yeezy 500 ASH GREY', 'GX3607', 2, 15200),
('Adidas', 'yeezy qntm Frozen Blue', 'GX5049', 0, 0),
('Adidas', 'yeezy boost 350 V2 ONYX & BONE', 'HQ6316', 1, 8800),
('New balance', '408白藍', 'ML408A', 0, 0),
('New balance', '408白', 'ML408D', 0, 0),
('New balance', '725V1米灰', 'ML725G', 1, 2384),
('New balance', '725V1米銀', 'ML725I', 0, 0),
('New balance', '725V1紅灰', 'ML725N', 0, 0),
('New balance', '327黑灰', 'MS327LF1', 0, 0),
('New balance', '327靛青', 'MS327LJ1', 0, 0),
('New balance', '327棕灰', 'MS327LK1', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `Shoes`
--

CREATE TABLE `Shoes` (
  `shoes_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `brand_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `Shoes`
--

INSERT INTO `Shoes` (`shoes_name`, `brand_name`, `color`, `size`) VALUES
('327棕灰', 'New balance', '草菇與月亮灰', 'US5'),
('327靛青', 'New balance', '天然靛青與晨霧', 'US8'),
('327黑灰', 'New balance', '黑與霧灰', 'US9'),
('408白', 'New balance', '白與北卡藍', 'US9.5'),
('408白藍', 'New balance', '白與天然靛青', 'US8'),
('725V1米灰', 'New balance', '月亮灰與米褐色', 'US8'),
('725V1米銀', 'New balance', '雪狐銀與米褐色', 'US12'),
('725V1紅灰', 'New balance', '淺鋁灰與罌粟紅', 'US8'),
('air jordan 1 low White and Phantom', 'Nike', '灰白', 'US8'),
('air jordan 4 Sail', 'Nike', '白藍紅', 'US5W'),
('Air Max 97 Off Noir and Summit White', 'Nike', '黑白', 'US9'),
('dunk high Orange and Deep Royal', 'Nike', '橘深藍', 'US10.5'),
('dunk low Rose Whisper', 'Nike', '玫瑰粉', 'US6W'),
('dunk sb low Blue Raspberry', 'Nike', '藍', 'US10'),
('yeezy 500 ASH GREY', 'Adidas', '石灰', 'US10'),
('yeezy 500 Utility Black', 'Adidas', '黑', 'US10'),
('yeezy boost 350 V2 CORE BLACK/RED', 'Adidas', '紅黑', 'US8.5'),
('yeezy boost 350 V2 ONYX & BONE', 'Adidas', '灰白', 'US9'),
('yeezy boost 350 V2 ZYON', 'Adidas', '灰黑白', 'US7'),
('yeezy qntm Frozen Blue', 'Adidas', '藍', 'US9');

-- --------------------------------------------------------

--
-- 資料表結構 `Suppliers`
--

CREATE TABLE `Suppliers` (
  `name` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `Suppliers`
--

INSERT INTO `Suppliers` (`name`, `address`) VALUES
('佳順全', '100 臺北市中正區延平南路30號'),
('佳順益', '100 臺北市中正區延平東路123號'),
('偉祥', '946 屏東縣恆春鎮風沙路23號'),
('凱昇', '821 高雄市路竹區平和路19號'),
('千美', '326 桃園市楊梅區長青西街4號'),
('協長', '308 新竹縣寶山鄉環湖一路3號'),
('大廣', '612 嘉義縣太保市祥和一路16號'),
('寶公', '638 雲林縣麥寮鄉義和5號'),
('巨復', '358 苗栗縣苑裡鎮大同路5號'),
('捷偉', '929 屏東縣琉球鄉中正路20號'),
('捷凱', '266 宜蘭縣三星鄉雙和三路6號'),
('旺隆', '522 彰化縣田尾鄉建平路14號'),
('泰洪潤', '708 臺南市安平區育平二街12號'),
('盛華', '302 新竹縣竹北市西濱路23號'),
('美合瑞', '234 新北市永和區豫溪街20號'),
('耀優復', '432 臺中市大肚區文昌路33號'),
('謙利益', '112 臺北市北投區一心路32號'),
('謙高', '435 臺中市梧棲區東環路26號'),
('輝謙', '333 桃園市龜山區大坑路33號'),
('飛大', '411 臺中市太平區大源十四街16號'),
('高欣', '632 雲林縣虎尾鎮大成十一街15號');

-- --------------------------------------------------------

--
-- 資料表結構 `Warehouse`
--

CREATE TABLE `Warehouse` (
  `number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(3) NOT NULL,
  `price` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `Warehouse`
--

INSERT INTO `Warehouse` (`number`, `bname`, `size`, `stock`, `price`) VALUES
('CZ0790-041', 'air jordan 1 low Mystic Navy', 'US9', 1, 4500),
('DD1399-800', 'dunk high Orange and Deep Royal', 'US10.5', 7, 3500),
('DD1503-118', 'dunk low Rose Whisper', 'US6W', 8, 5400),
('DJ5019-001', 'Air Max 97 Off Noir and Summit White', 'US9', 5, 6700),
('DM0807-400', 'dunk sb low Blue Raspberry', 'US10', 8, 5600),
('DN1635-100', 'air jordan 1 low White and Phantom', 'US8', 5, 3800),
('DO6290-100', 'Air Force 1 mid x Off-White White', 'US10', 5, 7200),
('DQ4909-100', 'air jordan 4 Sail', 'US5W', 2, 6700),
('F36640', 'yeezy 500 Utility Black', 'US10', 1, 7600),
('FZ1267', 'yeezy boost 350 V2 ZYON', 'US7', 3, 8800),
('GX3607', 'yeezy 500 ASH GREY', 'US10', 2, 7600),
('GX5049', 'yeezy qntm Frozen Blue', 'US9', 2, 9600),
('HQ6316', 'yeezy boost 350 V2 ONYX & BONE', 'US9', 6, 8800),
('ML408A', '408白藍', 'US8', 4, 2980),
('ML408D', '408白', 'US9.5', 2, 2980),
('ML725G', '725V1米灰', 'US8', 1, 2384),
('ML725I', '725V1米銀', 'US12', 3, 2384),
('MS327LF1', '327黑灰', 'US9', 3, 2400),
('MS327LJ1', '327靛青', 'US8', 4, 2400),
('MS327LK1', '327棕灰', 'US5', 1, 2400);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `Brand`
--
ALTER TABLE `Brand`
  ADD PRIMARY KEY (`number`);

--
-- 資料表索引 `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`cid`);

--
-- 資料表索引 `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`number`);

--
-- 資料表索引 `Shoes`
--
ALTER TABLE `Shoes`
  ADD PRIMARY KEY (`shoes_name`);

--
-- 資料表索引 `Suppliers`
--
ALTER TABLE `Suppliers`
  ADD PRIMARY KEY (`name`);

--
-- 資料表索引 `Warehouse`
--
ALTER TABLE `Warehouse`
  ADD PRIMARY KEY (`number`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
