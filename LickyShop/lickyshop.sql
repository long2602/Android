-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 04:12 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lickyshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `IdAccount` int(11) NOT NULL,
  `Username` varchar(30) DEFAULT NULL,
  `APassword` varchar(30) DEFAULT NULL,
  `Role` varchar(10) DEFAULT NULL,
  `CreateDate` date DEFAULT NULL,
  `AImg` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`IdAccount`, `Username`, `APassword`, `Role`, `CreateDate`, `AImg`) VALUES
(45, 'long', '123456', 'admin', '2021-06-16', NULL),
(48, 'nghia299', '123', 'admin', '2021-06-21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `IdAddress` int(11) NOT NULL,
  `Number` varchar(100) DEFAULT NULL,
  `SubDistrict` varchar(30) DEFAULT NULL,
  `District` varchar(10) DEFAULT NULL,
  `City` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`IdAddress`, `Number`, `SubDistrict`, `District`, `City`) VALUES
(51, '948, Le Duc Tho', '15', 'Go Vap', 'Ho Chi Min'),
(52, '256/2, To Van Ngan', 'Linh Trung', 'Thu Duc', 'Ho Chi Min'),
(53, '948/43/1, Let Duc Tho', '15', 'Go Vap', 'Ho Chi Min'),
(54, '948/43/1, Let Duc Tho', '15', 'Go Vap', 'HCM'),
(55, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `IdBill` int(11) NOT NULL,
  `IdCust` int(11) DEFAULT NULL,
  `BDateTime` date DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `Payment` varchar(100) DEFAULT NULL,
  `Messenger` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`IdBill`, `IdCust`, `BDateTime`, `Total`, `Payment`, `Messenger`) VALUES
(32, 45, '2021-06-17', 609000, 'Thanh toán khi giao hàng (COD)', NULL),
(33, 45, '2021-06-17', 430000, 'Thanh toán khi giao hàng (COD)', NULL),
(34, 45, '2021-06-20', 618000, 'Thanh toán khi giao hàng (COD)', NULL),
(35, 45, '2021-06-20', 600000, 'Thanh toán khi giao hàng (COD)', NULL),
(36, 45, '2021-06-22', 289000, 'Thanh toán khi giao hàng (COD)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--

CREATE TABLE `billdetail` (
  `IdBillDetail` int(11) NOT NULL,
  `IdBill` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `IdPro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billdetail`
--

INSERT INTO `billdetail` (`IdBillDetail`, `IdBill`, `Amount`, `Price`, `Total`, `IdPro`) VALUES
(31, 32, 1, 300000, 300000, 45),
(32, 32, 1, 159000, 159000, 46),
(33, 32, 1, 150000, 150000, 43),
(34, 33, 1, 280000, 280000, 44),
(35, 33, 1, 150000, 150000, 43),
(36, 34, 1, 300000, 300000, 45),
(37, 34, 2, 159000, 318000, 46),
(38, 35, 2, 300000, 600000, 45),
(39, 36, 1, 289000, 289000, 48);

-- --------------------------------------------------------

--
-- Table structure for table `cusandandress`
--

CREATE TABLE `cusandandress` (
  `IdCus` int(11) DEFAULT NULL,
  `IdAdd` int(11) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cusandandress`
--

INSERT INTO `cusandandress` (`IdCus`, `IdAdd`, `Title`) VALUES
(45, 51, 'Địa chỉ nơi ở'),
(45, 52, 'Địa chỉ nơi ở'),
(45, 53, 'Địa chỉ nơi ở'),
(45, 54, 'Địa chỉ nơi ở'),
(48, 55, 'Địa chỉ nơi ở');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `IdCus` int(11) NOT NULL,
  `FullName` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`IdCus`, `FullName`, `DOB`, `Gender`, `Email`, `Phone`) VALUES
(45, 'Long Nguyen Tran Thanh', '2000-02-26', 'Nam', 'longng2602@gmail.com', '741258963'),
(48, 'Nguyen Trong Nghia', NULL, NULL, NULL, '963258741');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `IdImage` int(11) NOT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `IdProduct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`IdImage`, `Image`, `IdProduct`) VALUES
(1, 'https://product.hstatic.net/1000344185/product/img_7685_e833ba4d883943db980f1f90e43688f7_master.png?fbclid=IwAR0AAcw8iiWWWSrkc0gTlPERiW4Sjnb9JdSRjHoReqHaifG1JGhbh2-tWKU ', 1),
(2, 'https://regods.com/wp-content/uploads/2020/07/1-TE9100-TX01-1-scaled.jpg ', 2),
(3, 'https://regods.com/wp-content/uploads/2020/07/4-TE9100-TX01-1-scaled.jpg ', 3),
(4, 'https://regods.com/wp-content/uploads/2020/07/6-TE9100-TX01-2-scaled.jpg ', 4),
(5, 'https://static.dosi-in.com/images/detailed/106/dosiin-pudd-studio-smiley-tee-106336106336.jpg ', 5),
(6, 'https://static.dosi-in.com/images/detailed/106/dosiin-pudd-studio-smiley-tee-106323106323.jpg ', 6),
(7, 'https://static.dosi-in.com/images/detailed/121/dosiin-goldie-vietnam-goldie-tropic-tshirt-121228121228.jpg', 7),
(8, 'https://static.dosi-in.com/images/detailed/121/dosiin-goldie-vietnam-goldie-vibe-tshirt-mint-121303121303.jpg ', 8),
(9, 'https://static.dosi-in.com/images/detailed/116/dosiin-goldie-vietnam-goldie-patchwork-tshirt-116173116173.jpg ', 9),
(10, 'https://static.dosi-in.com/images/detailed/121/dosiin-goldie-vietnam-daft-punk-tshirt-121621121621.jpg ', 10),
(11, 'https://static.dosi-in.com/images/detailed/121/dosiin-dizi-clothing-burn-baby-burn-tee-121597121597.jpeg ', 11),
(12, 'https://static.dosi-in.com/images/detailed/121/dosiin-goldie-vietnam-goldie-virgil-abloh-polo-121276121276.jpg ', 12),
(13, 'https://static.dosi-in.com/images/detailed/114/dosiin-goldie-vietnam-logo-fleece-jacket-light-grey-114136114136.jpg ', 13),
(14, 'https://static.dosi-in.com/images/detailed/121/dosiin-goldie-vietnam-embossed-oversized-tshirt-grey-dyed-121216121216.jpg ', 14),
(15, 'https://static.dosi-in.com/images/detailed/121/dosiin-goldie-vietnam-goldie-brush-longsleeves-121290121290.jpg ', 15),
(16, 'https://dosi-in.com/images/detailed/112/dosiin-kak-ao-icon-mat-x-dau-lau-ma-mikak-112927112927.jpg ', 16),
(17, 'https://static.dosi-in.com/images/detailed/53/dosiin-legal-criminal-ao-trang-yoga-bulldogform-oversize-5377553775.jpg ', 17),
(18, 'https://static.dosi-in.com/images/detailed/74/dosiin-kak-ao-self-love-chu-typo-colorful-sac-mau-ngot-ngao-lith-trang-7435274352.jpg ', 18),
(19, 'https://static.dosi-in.com/images/detailed/54/dosiin-legal-criminal-ao-xanh-drunk-catform-oversize-5402854028.jpg ', 19),
(20, 'https://static.dosi-in.com/images/detailed/58/dosiin-kak-ao-thun-thang-sinh-thangden-ka-5831358313.jpg ', 20),
(21, 'https://static.dosi-in.com/images/detailed/50/dosiin-grfd-track-pantssmainline-5079250792.jpg', 21),
(22, 'https://static.dosi-in.com/images/detailed/87/dosiin-mvr-maverick-quan-jogger-dai-theu-logo-mvr-jogger-pant-mvr-den-8772987729.jpg', 22),
(23, 'https://static.dosi-in.com/images/detailed/96/dosiin-saw-let-s-smile-sweatshorts-9636796367.jpg', 23),
(24, 'https://static.dosi-in.com/images/detailed/119/dosiin-sly-quan-dai-kaki-sunset-box-nau-nhat-119155119155.jpg', 24),
(25, 'https://static.dosi-in.com/images/detailed/104/dosiin-mayer-clothing-shapes-pants-104673104673.jpg', 25),
(26, 'https://static.dosi-in.com/images/detailed/113/dosiin-snazzy-zipback-stack-cargo-pants-black-113535113535.jpg', 26),
(27, 'https://static.dosi-in.com/images/detailed/111/dosiin-dkmv-dkmv-short-jean-black-111360111360.jpeg', 27),
(28, 'https://static.dosi-in.com/images/detailed/117/dosiin-dkmv-dkmv-ripped-jeans-117896117896.jpeg', 28),
(29, 'https://static.dosi-in.com/images/detailed/121/dosiin-whitehand-studio-whitehand-three-color-sweatpants-121612121612.jpg', 29),
(30, 'https://static.dosi-in.com/images/detailed/111/dosiin-goblin-d-blue-sea-pants-111143111143.jpg', 30),
(31, 'https://static.dosi-in.com/images/detailed/121/dosiin-urban-outfits-ao-hoodie-nu-nam-form-rong-urban-outfits-future-land-hoo-cotton-ni-121684121684.jpg', 31),
(32, 'https://static.dosi-in.com/images/detailed/113/dosiin-arrow-light-ao-hoodezipperclone-113825113825.jpg', 32),
(33, 'https://dosi-in.com/images/detailed/106/dosiin-talk-ao-hoodie-hologram-mihi-game-on-misthy-106015106015.jpeg', 33),
(34, 'https://static.dosi-in.com/images/detailed/114/dosiin-birdy-bag-birdy-penguin-jacketpink-114289114289.jpg', 34),
(35, 'https://static.dosi-in.com/images/detailed/85/dosiin-envylook-ao-len-mau-orange-cardigan-daily-envylook-daily-boxy-cardigan-8583885838.jpg', 35),
(36, 'https://static.dosi-in.com/images/detailed/99/dosiin-dtmsout-don-t-miss-out-corduroy-jacket-navy-9915499154.jpg', 36),
(37, 'https://dosi-in.com/images/detailed/117/dosiin-ar-mous-cardigan-teddy-117042117042.jpg', 37),
(38, 'https://static.dosi-in.com/images/detailed/77/dosiin-ar-mous-cardigan-armous-green-7733577335.jpg', 38),
(39, 'https://static.dosi-in.com/images/detailed/118/dosiin-max-bucket-hat-velvet-118664118664.jpeg', 39),
(40, 'https://static.dosi-in.com/images/detailed/118/dosiin-max-rim-tote-bag-118647118647.jpeg', 40),
(41, 'https://static.dosi-in.com/images/detailed/117/dosiin-max-checked-bag-117696117696.jpeg', 41),
(42, 'https://img.baza.vn/upload/products-var-7chdpbcm/e6UVg7Urlarge.jpg?v=634769233590874000&width=500', 42),
(43, 'https://img.baza.vn/upload/products-var-UQVAjTAz/eTuYHtyTlarge.jpg?v=634762320691301161&width=500', 43),
(44, 'https://static.dosi-in.com/images/detailed/118/dosiin-max-travel-bag-118638118638.jpeg', 44),
(45, 'https://www.claires.com/dw/image/v2/BBTK_PRD/on/demandware.static/-/Sites-master-catalog/default/dw9a3f20e7/images/hi-res/10733_1.jpg?sw=2000&sh=2000&sm=fit', 45),
(46, 'https://www.claires.com/dw/image/v2/BBTK_PRD/on/demandware.static/-/Sites-master-catalog/default/dw7eb3c28a/images/hi-res/94543_1.jpg?sw=2000&sh=2000&sm=fit', 46),
(47, 'https://www.claires.com/dw/image/v2/BBTK_PRD/on/demandware.static/-/Sites-master-catalog/default/dw8c64d9ea/images/hi-res/99014_1.jpg?sw=2000&sh=2000&sm=fit', 47),
(48, 'https://www.claires.com/dw/image/v2/BBTK_PRD/on/demandware.static/-/Sites-master-catalog/default/dw69e2b49f/images/hi-res/36371_1.jpg?sw=734&sh=734&sm=fit', 48);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Imei` varchar(30) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `IdType` int(11) DEFAULT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`IdProduct`, `Name`, `Imei`, `Description`, `IdType`, `price`) VALUES
(1, 'COLLAGE TEE-BLACK ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 250000),
(2, ' TEE BASIC-BLACK ', 'COL1', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 350000),
(3, 'TEE BASIC-BLUE ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 400000),
(4, ' TEE BASIC-YELLOW ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 220000),
(5, 'SMILEY TEE-BLUE ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 250000),
(6, 'SMILEY TEE-BLACK ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 250000),
(7, 'TROPIC-TSHIRT-WHITE ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 300000),
(8, 'GOLDIE –TSHIRT ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 350000),
(9, 'PATCHWORK –TSHIRT ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 500000),
(10, 'PUNK –TSHIRT ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 400000),
(11, 'BURNBABY –TSHIRT ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 350000),
(12, 'VIRGIL –POLO ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 320000),
(13, 'FLEECE-JACKET ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 299000),
(14, 'EMOSSED-OVR-TSHIRT ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 250000),
(15, 'BRUSH-LONGSLEEVES ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 250000),
(16, 'ICON-TSHIRT ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 300000),
(17, 'LEGAL TSHIRT ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 350000),
(18, 'SELFLOVE TSHIRT ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 400000),
(19, 'CAT TSHIRT ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 250000),
(20, 'DUNK TSHIRT ', 'COL1 ', 'Áo thun tay lỡ hay còn gọi là áo phông tay lỡ form rộng là mặt hàng thời trang phổ biến nhất hiện nay. Lợi ích của dòng phông tay lỡ này là dễ phối đồ, dễ mặc', 1, 300000),
(21, 'TRACK PANT', 'COL3', 'Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính.Đường may tinh tế, chỉn chu, khéo léo.Màu sắc đa dạng, trẻ trung.', 3, 200000),
(22, 'JOGGER', 'COL3', 'Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính.Đường may tinh tế, chỉn chu, khéo léo.Màu sắc đa dạng, trẻ trung.', 3, 210000),
(23, 'SWEAT SHORT', 'COL3', 'Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính.Đường may tinh tế, chỉn chu, khéo léo.Màu sắc đa dạng, trẻ trung.', 3, 160000),
(24, 'KAKI PANT', 'COL3', 'Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính.Đường may tinh tế, chỉn chu, khéo léo.Màu sắc đa dạng, trẻ trung.', 3, 320000),
(25, 'SHAPES PANT', 'COL3', 'Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính.Đường may tinh tế, chỉn chu, khéo léo.Màu sắc đa dạng, trẻ trung.', 3, 300000),
(26, 'ZIPBACK PANTS', 'COL3', 'Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính.Đường may tinh tế, chỉn chu, khéo léo.Màu sắc đa dạng, trẻ trung.', 3, 199000),
(27, 'SHORT JEAN', 'COL3', 'Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính.Đường may tinh tế, chỉn chu, khéo léo.Màu sắc đa dạng, trẻ trung.', 3, 250000),
(28, 'RIPPED JEAN', 'COL3', 'Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính.Đường may tinh tế, chỉn chu, khéo léo.Màu sắc đa dạng, trẻ trung.', 3, 279000),
(29, 'RIPPED WHITEHAND PANT', 'COL3', 'Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính.Đường may tinh tế, chỉn chu, khéo léo.Màu sắc đa dạng, trẻ trung.', 3, 350000),
(30, 'BLUE JEAN', 'COL3', 'Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính.Đường may tinh tế, chỉn chu, khéo léo.Màu sắc đa dạng, trẻ trung.', 3, 330000),
(31, 'HOODIE', 'COL2', 'Chất liệu vải dù cán 2 lớp dày dặn, chống nắng cho ngày nắng gắt & chống mưa chống gió lạnh cho ngày mưa.Bên trong áo có lót dù thoáng khí mát mẻ, tạo cảm giác vận động thoải mái khi mặc.Đường chỉ may sắc sảo, cực kì chắc chắn & 2 lớp dày dặn.', 2, 450000),
(32, 'HOODIE ZIPPER', 'COL2', 'Chất liệu vải dù cán 2 lớp dày dặn, chống nắng cho ngày nắng gắt & chống mưa chống gió lạnh cho ngày mưa.Bên trong áo có lót dù thoáng khí mát mẻ, tạo cảm giác vận động thoải mái khi mặc.Đường chỉ may sắc sảo, cực kì chắc chắn & 2 lớp dày dặn.', 2, 280000),
(33, 'HOODIE ZIPPER MISTHY', 'COL2', 'Chất liệu vải dù cán 2 lớp dày dặn, chống nắng cho ngày nắng gắt & chống mưa chống gió lạnh cho ngày mưa.Bên trong áo có lót dù thoáng khí mát mẻ, tạo cảm giác vận động thoải mái khi mặc.Đường chỉ may sắc sảo, cực kì chắc chắn & 2 lớp dày dặn.', 2, 320000),
(34, 'JACKETPINK', 'COL2', 'Chất liệu vải dù cán 2 lớp dày dặn, chống nắng cho ngày nắng gắt & chống mưa chống gió lạnh cho ngày mưa.Bên trong áo có lót dù thoáng khí mát mẻ, tạo cảm giác vận động thoải mái khi mặc.Đường chỉ may sắc sảo, cực kì chắc chắn & 2 lớp dày dặn.', 2, 350000),
(35, 'CARDIGAN', 'COL2', 'Chất liệu vải dù cán 2 lớp dày dặn, chống nắng cho ngày nắng gắt & chống mưa chống gió lạnh cho ngày mưa.Bên trong áo có lót dù thoáng khí mát mẻ, tạo cảm giác vận động thoải mái khi mặc.Đường chỉ may sắc sảo, cực kì chắc chắn & 2 lớp dày dặn.', 2, 370000),
(36, 'JACKET NAVY', 'COL2', 'Chất liệu vải dù cán 2 lớp dày dặn, chống nắng cho ngày nắng gắt & chống mưa chống gió lạnh cho ngày mưa.Bên trong áo có lót dù thoáng khí mát mẻ, tạo cảm giác vận động thoải mái khi mặc.Đường chỉ may sắc sảo, cực kì chắc chắn & 2 lớp dày dặn.', 2, 280000),
(37, 'CARDIGAN TEDDY', 'COL2', 'Chất liệu vải dù cán 2 lớp dày dặn, chống nắng cho ngày nắng gắt & chống mưa chống gió lạnh cho ngày mưa.Bên trong áo có lót dù thoáng khí mát mẻ, tạo cảm giác vận động thoải mái khi mặc.Đường chỉ may sắc sảo, cực kì chắc chắn & 2 lớp dày dặn.', 2, 350000),
(38, 'CARDIGAN ARMOUS', 'COL2', 'Chất liệu vải dù cán 2 lớp dày dặn, chống nắng cho ngày nắng gắt & chống mưa chống gió lạnh cho ngày mưa.Bên trong áo có lót dù thoáng khí mát mẻ, tạo cảm giác vận động thoải mái khi mặc.Đường chỉ may sắc sảo, cực kì chắc chắn & 2 lớp dày dặn.', 2, 399000),
(39, 'BUCKET HAT', 'COL4', 'Vành nón có thể uốn cong được theo ý thích.Cỡ mũ phổ thông, vừa vặn với hầu hết mọi người, khóa kim loại kiểu răng cưa rất chắc chắn.Chất liệu: Cotton pha trộn 100%, chất lượng cao.Màu sắc: nhiều màu khác nhau cho các bạn lựa chọn', 4, 200000),
(40, 'RIM TOE BAG', 'COL4', 'Vành nón có thể uốn cong được theo ý thích.Cỡ mũ phổ thông, vừa vặn với hầu hết mọi người, khóa kim loại kiểu răng cưa rất chắc chắn.Chất liệu: Cotton pha trộn 100%, chất lượng cao.Màu sắc: nhiều màu khác nhau cho các bạn lựa chọn', 4, 210000),
(41, 'CHECKED BAG', 'COL4', 'Vành nón có thể uốn cong được theo ý thích.Cỡ mũ phổ thông, vừa vặn với hầu hết mọi người, khóa kim loại kiểu răng cưa rất chắc chắn.Chất liệu: Cotton pha trộn 100%, chất lượng cao.Màu sắc: nhiều màu khác nhau cho các bạn lựa chọn', 4, 210000),
(42, 'BRACELET', 'COL4', 'Hãy đeo một chiếc vòng tay kim loại khi bạn muốn nổi bật và thu hút sự chú ý của người khác, đồng thời kết hợp với quần áo đơn giản nhưng thanh lịch, sang trọng để nó tự “tỏa sáng” mỗi khi xuất hiện sau gấu tay áo của bạn.', 4, 250000),
(43, 'NECKLACE', 'COL4', 'Hãy đeo một chiếc vòng tay kim loại khi bạn muốn nổi bật và thu hút sự chú ý của người khác, đồng thời kết hợp với quần áo đơn giản nhưng thanh lịch, sang trọng để nó tự “tỏa sáng” mỗi khi xuất hiện sau gấu tay áo của bạn.', 4, 150000),
(44, 'TRAVEL BAG', 'COL4', 'Kiểu dáng tuy đơn giản nhưng vẫn tạo nên được nét cá tính, năng động cho người sử dụng. Điểm nhấn thu hút chính là đường may tinh tế  với gam màu classic, đường cắt táo bạo tạo nên tổng thể hoàn hảo cho sản phẩm đơn giản cổ điển nhưng cũng thật nổi bật.', 4, 280000),
(45, 'GLASS', 'COL4', 'Mắt vuông mang phong cách trẻ trung cá tính với họa tiết Titanium mang phong cách Gothic mạnh mẽ .Chất liệu: Titanium kết hợp nhựa Acetate cao cấp', 4, 300000),
(46, 'MASK', 'COL4', 'Tất là item không thể thiếu của mỗi quý ông. Chất vải cotton dày dặn, bền bỉ, không xù lông theo thời gian. Thiết kế đơn giản, Tất Leonardo giúp set đồ của bạn thêm hoàn hảo.', 4, 159000),
(47, 'SOCK', 'COL4', 'Tất là item không thể thiếu của mỗi quý ông. Chất vải cotton dày dặn, bền bỉ, không xù lông theo thời gian. Thiết kế đơn giản, Tất Leonardo giúp set đồ của bạn thêm hoàn hảo.', 4, 159000),
(48, 'GLASS', 'COL4', 'Mắt vuông mang phong cách trẻ trung cá tính với họa tiết Titanium mang phong cách Gothic mạnh mẽ .Chất liệu: Titanium kết hợp nhựa Acetate cao cấp', 4, 289000);

-- --------------------------------------------------------

--
-- Table structure for table `sizeandinventory`
--

CREATE TABLE `sizeandinventory` (
  `IdSize` int(11) NOT NULL,
  `STitle` varchar(30) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `IdProduct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sizeandinventory`
--

INSERT INTO `sizeandinventory` (`IdSize`, `STitle`, `Amount`, `IdProduct`) VALUES
(1, 'oversize', 20, 1),
(2, 'oversize', 20, 2),
(3, 'oversize', 20, 3),
(4, 'oversize', 20, 4),
(5, 'oversize', 20, 5),
(6, 'oversize', 20, 6),
(7, 'oversize', 20, 7),
(8, 'oversize', 20, 8),
(9, 'oversize', 20, 9),
(10, 'oversize', 20, 10),
(11, 'oversize', 20, 11),
(12, 'oversize', 20, 12),
(13, 'oversize', 20, 13),
(14, 'oversize', 20, 14),
(15, 'oversize', 20, 15),
(16, 'oversize', 20, 16),
(17, 'oversize', 20, 17),
(18, 'oversize', 20, 18),
(19, 'oversize', 20, 19),
(20, 'oversize', 20, 20),
(97, 'oversize', 20, 31),
(98, 'oversize', 20, 32),
(99, 'oversize', 20, 33),
(100, 'oversize', 20, 34),
(101, 'oversize', 20, 35),
(102, 'oversize', 20, 36),
(103, 'oversize', 20, 37),
(104, 'oversize', 20, 38),
(113, 'oversize', 15, 21),
(114, 'oversize', 15, 22),
(115, 'oversize', 15, 23),
(116, 'oversize', 15, 24),
(117, 'oversize', 15, 25),
(118, 'oversize', 15, 26),
(119, 'oversize', 15, 27),
(120, 'oversize', 15, 28),
(121, 'oversize', 15, 29),
(122, 'oversize', 15, 30),
(123, 'oversize', 15, 40),
(124, 'oversize', 15, 41),
(125, 'oversize', 15, 42),
(126, 'oversize', 15, 43),
(127, 'oversize', 15, 44),
(128, 'oversize', 15, 45),
(129, 'oversize', 15, 46),
(130, 'oversize', 15, 47),
(131, 'oversize', 15, 48);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `IdType` int(11) NOT NULL,
  `Title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`IdType`, `Title`) VALUES
(1, 'TOPS'),
(2, 'OUTERWEAR'),
(3, 'BOTTOMS'),
(4, 'ACCESSORIES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`IdAccount`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`IdAddress`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`IdBill`),
  ADD KEY `Fk_bill_Cus` (`IdCust`);

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`IdBillDetail`),
  ADD KEY `Fk_detail_bill` (`IdBill`),
  ADD KEY `Fk_detail_product` (`IdPro`);

--
-- Indexes for table `cusandandress`
--
ALTER TABLE `cusandandress`
  ADD UNIQUE KEY `Fk_customer_address` (`IdCus`,`IdAdd`),
  ADD KEY `Fk_Add_CusAdd` (`IdAdd`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`IdCus`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`IdImage`),
  ADD KEY `Fk_image_product` (`IdProduct`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`IdProduct`),
  ADD KEY `Fk_product_type` (`IdType`);

--
-- Indexes for table `sizeandinventory`
--
ALTER TABLE `sizeandinventory`
  ADD PRIMARY KEY (`IdSize`),
  ADD KEY `Fk_size_product` (`IdProduct`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`IdType`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `IdAccount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `IdAddress` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `IdBill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `IdBillDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `IdCus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `IdImage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `IdProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sizeandinventory`
--
ALTER TABLE `sizeandinventory`
  MODIFY `IdSize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `IdType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`IdAccount`) REFERENCES `customer` (`IdCus`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `Fk_bill_Cus` FOREIGN KEY (`IdCust`) REFERENCES `customer` (`IdCus`);

--
-- Constraints for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `Fk_detail_bill` FOREIGN KEY (`IdBill`) REFERENCES `bill` (`IdBill`),
  ADD CONSTRAINT `Fk_detail_product` FOREIGN KEY (`IdPro`) REFERENCES `product` (`IdProduct`);

--
-- Constraints for table `cusandandress`
--
ALTER TABLE `cusandandress`
  ADD CONSTRAINT `Fk_Add_CusAdd` FOREIGN KEY (`IdAdd`) REFERENCES `address` (`IdAddress`),
  ADD CONSTRAINT `Fk_Cus_CusAdd` FOREIGN KEY (`IdCus`) REFERENCES `customer` (`IdCus`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `Fk_image_product` FOREIGN KEY (`IdProduct`) REFERENCES `product` (`IdProduct`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `Fk_product_type` FOREIGN KEY (`IdType`) REFERENCES `type` (`IdType`);

--
-- Constraints for table `sizeandinventory`
--
ALTER TABLE `sizeandinventory`
  ADD CONSTRAINT `Fk_size_product` FOREIGN KEY (`IdProduct`) REFERENCES `product` (`IdProduct`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
