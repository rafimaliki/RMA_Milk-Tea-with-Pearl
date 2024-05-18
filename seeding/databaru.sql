-- MariaDB dump 10.19-11.4.0-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tubes
-- ------------------------------------------------------
-- Server version	11.4.0-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asuransi`
--

DROP TABLE IF EXISTS `asuransi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asuransi` (
  `ID_Layanan` int(11) NOT NULL,
  `ID_Kendaraan` int(11) NOT NULL,
  PRIMARY KEY (`ID_Layanan`,`ID_Kendaraan`),
  KEY `ID_Kendaraan` (`ID_Kendaraan`),
  CONSTRAINT `asuransi_ibfk_1` FOREIGN KEY (`ID_Layanan`) REFERENCES `layanan_asuransi` (`ID_Layanan`) ON DELETE CASCADE,
  CONSTRAINT `asuransi_ibfk_2` FOREIGN KEY (`ID_Kendaraan`) REFERENCES `kendaraan` (`ID_Kendaraan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asuransi`
--

LOCK TABLES `asuransi` WRITE;
/*!40000 ALTER TABLE `asuransi` DISABLE KEYS */;
INSERT INTO `asuransi` VALUES
(33,4),
(93,4),
(114,4),
(131,10),
(145,23),
(60,32),
(126,36),
(114,39),
(88,41),
(93,41),
(97,42),
(51,48),
(36,50),
(53,52),
(144,53),
(131,64),
(113,72),
(17,74),
(138,92),
(96,93),
(66,106),
(131,107),
(129,113),
(18,115),
(15,116),
(76,117),
(117,117),
(81,118),
(145,120),
(66,122),
(93,126),
(57,144),
(80,149),
(36,150),
(33,159),
(140,159),
(45,164),
(60,171),
(18,175),
(91,190),
(105,194),
(45,200),
(113,208),
(58,209),
(65,212),
(115,228),
(102,229),
(117,235),
(141,236),
(138,243);
/*!40000 ALTER TABLE `asuransi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_kendaraan`
--

DROP TABLE IF EXISTS `detail_kendaraan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_kendaraan` (
  `Plat` varchar(11) NOT NULL,
  `Merek` varchar(255) NOT NULL,
  `Tipe_Mesin` enum('Electric','Non-Electric') NOT NULL,
  PRIMARY KEY (`Plat`),
  CONSTRAINT `detail_kendaraan_ibfk_1` FOREIGN KEY (`Plat`) REFERENCES `kendaraan` (`Plat`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_kendaraan`
--

LOCK TABLES `detail_kendaraan` WRITE;
/*!40000 ALTER TABLE `detail_kendaraan` DISABLE KEYS */;
INSERT INTO `detail_kendaraan` VALUES
('A 0544 GT','Bugatti','Electric'),
('A 123 BB','Opel','Non-Electric'),
('A 124 SA','Seat','Non-Electric'),
('A 417 ND','Alfa Romeo','Electric'),
('A 6121 EAL','Rolls-Royce','Non-Electric'),
('A 8049 WJ','Renault','Non-Electric'),
('A 962 XTQ','Bentley','Non-Electric'),
('AJ 2815 ZQ','Rolls-Royce','Non-Electric'),
('AR 656 GY','Smart','Non-Electric'),
('AS 268 LG','Citroen','Electric'),
('B 043 WVB','Jeep','Electric'),
('B 3642 IAB','Skoda','Non-Electric'),
('B 4042 KL','Hyundai','Electric'),
('B 4990 WK','Opel','Electric'),
('B 686 DRK','Land Rover','Electric'),
('B 834 VH','Skoda','Non-Electric'),
('BB 323 NM','Fiat','Non-Electric'),
('BD 445 YA','Porsche','Electric'),
('BG 9894 WFV','Dacia','Electric'),
('BQ 634 KFM','Land Rover','Electric'),
('BW 627 COK','Volkswagen','Electric'),
('BW 906 IEG','Alfa Romeo','Non-Electric'),
('C 110 LKE','Ferrari','Non-Electric'),
('C 521 SU','Mazda','Electric'),
('C 770 QU','Seat','Non-Electric'),
('CD 669 TS','Subaru','Electric'),
('CF 4619 MB','Smart','Non-Electric'),
('CF 6337 BIL','Kawasaki','Non-Electric'),
('CJ 9498 TND','Peugeot','Non-Electric'),
('CP 7822 NHE','Opel','Electric'),
('CQ 544 ATF','Renault','Non-Electric'),
('CR 6397 CA','Land Rover','Electric'),
('CT 9106 HCI','Ferrari','Electric'),
('CW 062 NT','Ferrari','Non-Electric'),
('D 014 SKO','Citroen','Non-Electric'),
('D 403 LP','Maserati','Non-Electric'),
('D 440 PGN','Bentley','Electric'),
('D 6476 GJW','Citroen','Electric'),
('D 871 LEB','Volvo','Non-Electric'),
('DB 8042 OKD','Jaguar','Non-Electric'),
('DH 506 BXV','Ford','Electric'),
('DI 993 WHC','Bugatti','Non-Electric'),
('E 178 GEY','Volvo','Electric'),
('E 293 IP','Land Rover','Electric'),
('E 6781 KIL','Jeep','Electric'),
('EH 880 DS','Rolls-Royce','Non-Electric'),
('EP 099 JLD','Fiat','Electric'),
('ES 452 PP','Rolls-Royce','Non-Electric'),
('F 5805 FI','Lamborghini','Non-Electric'),
('F 601 WQ','Suzuki','Non-Electric'),
('FE 825 YUW','Bugatti','Non-Electric'),
('FH 6298 IC','Lotus','Non-Electric'),
('FK 753 PD','Toyota','Electric'),
('FL 8686 CS','Land Rover','Electric'),
('FQ 148 GIM','Peugeot','Non-Electric'),
('FS 5908 NQH','Subaru','Electric'),
('FU 195 VCQ','KIA','Non-Electric'),
('FV 212 ZF','Rolls-Royce','Electric'),
('FZ 1092 UD','Bugatti','Non-Electric'),
('G 0072 VAU','Rolls-Royce','Electric'),
('G 434 RXC','McLaren','Non-Electric'),
('G 8585 BNC','Peugeot','Non-Electric'),
('GC 771 IT','Alfa Romeo','Non-Electric'),
('GP 509 YM','Bugatti','Electric'),
('GU 9957 HOB','Opel','Electric'),
('GV 368 JF','Ferrari','Non-Electric'),
('GW 198 AEV','Rolls-Royce','Electric'),
('GX 9029 VB','Lamborghini','Electric'),
('H 065 ABK','Jaguar','Non-Electric'),
('H 4611 HW','Jaguar','Non-Electric'),
('H 498 IRF','Jaguar','Non-Electric'),
('HA 7113 GQ','Maserati','Electric'),
('HC 225 LU','Bentley','Non-Electric'),
('HK 9873 XL','Fiat','Electric'),
('HS 224 KM','Porsche','Electric'),
('HY 918 ZWY','Dacia','Electric'),
('I 8611 ZK','Alfa Romeo','Electric'),
('I 9232 DL','Dacia','Electric'),
('IC 3464 QKU','Porsche','Non-Electric'),
('IM 328 HXU','Skoda','Non-Electric'),
('IR 376 SKI','Toyota','Electric'),
('IT 5063 UT','Maserati','Electric'),
('IW 1458 CM','Honda','Electric'),
('IW 698 OL','Lotus','Non-Electric'),
('IZ 052 KO','Nissan','Non-Electric'),
('J 138 UKP','Mini','Electric'),
('J 231 IV','Seat','Electric'),
('J 395 GGM','Jeep','Non-Electric'),
('J 3950 PXY','Lotus','Electric'),
('J 790 NC','Bentley','Non-Electric'),
('JC 3391 CZM','Lamborghini','Non-Electric'),
('JE 380 BH','Jaguar','Electric'),
('JF 668 ZA','Mercedes-Benz','Non-Electric'),
('JH 4481 RV','Mercedes-Benz','Non-Electric'),
('JH 537 DHW','Renault','Electric'),
('JL 141 AS','Lotus','Electric'),
('K 4642 BB','Dacia','Electric'),
('K 972 MND','Rolls-Royce','Non-Electric'),
('KP 551 CP','Volkswagen','Non-Electric'),
('KS 5193 QNX','Rolls-Royce','Non-Electric'),
('KX 3292 RVU','Alfa Romeo','Electric'),
('KY 956 SW','Aston Martin','Non-Electric'),
('L 244 EO','Smart','Non-Electric'),
('L 435 XIO','Rolls-Royce','Non-Electric'),
('L 6672 QY','Dacia','Non-Electric'),
('LA 3814 RKB','Skoda','Electric'),
('LB 9197 VXS','Rolls-Royce','Non-Electric'),
('LC 397 FGJ','Alfa Romeo','Non-Electric'),
('LG 9487 JAC','Porsche','Non-Electric'),
('LN 4631 KHB','Porsche','Electric'),
('LQ 4584 BM','Ford','Non-Electric'),
('LS 645 TZ','Ferrari','Non-Electric'),
('M 202 RF','Lamborghini','Electric'),
('M 587 MZ','Volvo','Non-Electric'),
('M 909 JIG','Volvo','Non-Electric'),
('M 9130 JRK','Jaguar','Non-Electric'),
('MA 0275 JC','Land Rover','Non-Electric'),
('ME 1921 MFX','Bentley','Electric'),
('MI 5081 DH','Volvo','Electric'),
('MN 353 OL','Audi','Electric'),
('MO 911 QE','Hyundai','Non-Electric'),
('MT 398 YPI','Aston Martin','Non-Electric'),
('MV 4581 QN','Fiat','Electric'),
('MY 0757 KU','Ferrari','Electric'),
('MZ 5327 QIK','Jeep','Electric'),
('N 1733 ECI','Jaguar','Non-Electric'),
('N 414 HNY','Volvo','Non-Electric'),
('N 573 LI','Jaguar','Non-Electric'),
('NA 382 FJ','Ferrari','Electric'),
('ND 897 CO','Honda','Non-Electric'),
('NF 5190 DPI','Rolls-Royce','Electric'),
('NL 0884 QR','Mini','Non-Electric'),
('NO 570 PEU','Bentley','Non-Electric'),
('NP 5211 FDL','Fiat','Electric'),
('O 0578 ZPD','Peugeot','Non-Electric'),
('O 3169 FJA','Renault','Electric'),
('O 4983 OVA','Renault','Non-Electric'),
('O 6104 JD','Land Rover','Non-Electric'),
('O 6806 KVQ','Volvo','Electric'),
('O 723 WP','Lotus','Electric'),
('O 7820 EA','Bentley','Non-Electric'),
('O 7844 DXN','Dacia','Electric'),
('OD 354 VSN','Mini','Electric'),
('OE 5176 YW','Alfa Romeo','Electric'),
('OI 459 HM','Aston Martin','Non-Electric'),
('P 0535 KR','Lamborghini','Electric'),
('P 6693 HEV','Renault','Electric'),
('P 983 RNQ','Volkswagen','Electric'),
('PB 982 XWS','Land Rover','Non-Electric'),
('PD 315 NI','Aston Martin','Non-Electric'),
('PF 792 QK','Lexus','Electric'),
('PK 6983 IRO','Bentley','Electric'),
('PU 685 TE','Skoda','Non-Electric'),
('PW 7616 KIF','Bentley','Electric'),
('PX 7594 UJQ','Jeep','Non-Electric'),
('Q 674 OM','Porsche','Non-Electric'),
('QD 338 ETJ','Lamborghini','Non-Electric'),
('QP 032 EJ','Bugatti','Electric'),
('QU 728 SEY','Rolls-Royce','Electric'),
('QX 587 RZ','Maserati','Electric'),
('QY 1937 HW','Peugeot','Electric'),
('R 5404 WOV','Toyota','Electric'),
('R 8794 KMS','Porsche','Non-Electric'),
('RA 093 ZSR','Lamborghini','Non-Electric'),
('RS 7701 HJG','Bugatti','Electric'),
('S 540 EKB','Porsche','Electric'),
('S 7802 FQA','Isuzu','Electric'),
('S 8894 MYU','Maserati','Non-Electric'),
('SE 517 FKL','Mitsubishi','Electric'),
('SK 2486 BX','Lotus','Electric'),
('SK 887 FGA','Mini','Electric'),
('SM 2272 ENY','Toyota','Non-Electric'),
('T 403 VY','Bugatti','Electric'),
('T 445 BA','Mercedes-Benz','Non-Electric'),
('T 596 XF','Mini','Electric'),
('T 8562 SOB','Maserati','Non-Electric'),
('T 872 EK','Daihatsu','Non-Electric'),
('T 9355 JT','Volvo','Non-Electric'),
('TM 7925 MYE','Jeep','Electric'),
('TW 7620 ZT','Alfa Romeo','Electric'),
('U 005 MG','Citroen','Electric'),
('U 0201 FNP','Aston Martin','Electric'),
('U 0699 YR','Alfa Romeo','Electric'),
('U 711 EXN','Bugatti','Non-Electric'),
('U 950 IO','Porsche','Non-Electric'),
('UL 9414 HFS','Ferrari','Non-Electric'),
('UM 024 AYR','Mitsubishi','Non-Electric'),
('UP 4010 VG','Jaguar','Electric'),
('UV 341 NH','Mini','Non-Electric'),
('UZ 895 KC','Aston Martin','Non-Electric'),
('V 171 AJ','Volkswagen','Electric'),
('V 1889 BZ','Lamborghini','Non-Electric'),
('V 233 CF','Volvo','Electric'),
('V 370 ST','Lamborghini','Electric'),
('V 5303 TAT','Citroen','Non-Electric'),
('V 585 WYA','Peugeot','Electric'),
('V 6020 IUB','Alfa Romeo','Electric'),
('V 707 PG','Volvo','Electric'),
('VC 791 GS','Rolls-Royce','Electric'),
('VH 8767 BWJ','Dacia','Non-Electric'),
('VM 073 AP','Ford','Electric'),
('VP 099 OVG','Dacia','Electric'),
('VQ 944 ZZO','Citroen','Non-Electric'),
('VY 3103 EK','Citroen','Non-Electric'),
('W 2177 AH','Lotus','Electric'),
('W 2819 RB','Honda','Electric'),
('W 6499 RC','Citroen','Electric'),
('W 8306 UB','Aston Martin','Non-Electric'),
('W 8923 IFC','Alfa Romeo','Non-Electric'),
('W 8990 AV','McLaren','Electric'),
('W 917 KKV','Skoda','Non-Electric'),
('WA 065 XMN','Rolls-Royce','Non-Electric'),
('WL 730 YCT','Ferrari','Non-Electric'),
('WV 7706 RN','Kawasaki','Electric'),
('WZ 3212 DD','McLaren','Non-Electric'),
('X 2625 PK','Jaguar','Non-Electric'),
('X 439 KV','Volvo','Non-Electric'),
('X 6014 UAF','Peugeot','Electric'),
('X 8629 MI','Peugeot','Non-Electric'),
('X 8833 CD','Jeep','Electric'),
('XG 806 GOM','Kawasaki','Non-Electric'),
('XG 8795 ZK','Dacia','Non-Electric'),
('XH 939 GY','Lamborghini','Non-Electric'),
('XN 619 EFN','Mini','Electric'),
('XO 9894 DNH','Seat','Electric'),
('XR 614 JP','Citroen','Non-Electric'),
('Y 3401 VZ','Dacia','Non-Electric'),
('Y 4395 WMT','Bugatti','Electric'),
('Y 5027 WY','Aston Martin','Electric'),
('YB 1603 RUG','Bentley','Non-Electric'),
('YE 1366 UM','Hyundai','Electric'),
('YF 7828 BFI','McLaren','Electric'),
('YK 538 ATL','Lexus','Electric'),
('YN 4384 KY','Porsche','Non-Electric'),
('YQ 7001 WC','Mercedes-Benz','Non-Electric'),
('YV 756 PBI','Peugeot','Non-Electric'),
('Z 0252 PP','Land Rover','Electric'),
('Z 051 VZ','Bentley','Electric'),
('Z 2866 CB','Ferrari','Electric'),
('Z 3921 TP','Ford','Electric'),
('Z 4233 GU','Bentley','Non-Electric'),
('Z 9374 WZY','Aston Martin','Non-Electric'),
('ZF 358 CLY','Mazda','Non-Electric'),
('ZF 7509 LUQ','McLaren','Electric'),
('ZH 1423 ORQ','Volkswagen','Non-Electric'),
('ZI 238 NB','Seat','Non-Electric'),
('ZN 5431 AB','Audi','Non-Electric'),
('ZO 857 CZ','Bugatti','Electric'),
('ZW 531 BT','Lamborghini','Electric'),
('ZZ 903 PH','Volvo','Electric');
/*!40000 ALTER TABLE `detail_kendaraan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_peminjaman`
--

DROP TABLE IF EXISTS `detail_peminjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_peminjaman` (
  `ID_Peminjaman` int(11) NOT NULL,
  `ID_Kendaraan` int(11) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Total_Harga` int(11) NOT NULL,
  PRIMARY KEY (`ID_Peminjaman`,`ID_Kendaraan`),
  KEY `ID_Kendaraan` (`ID_Kendaraan`),
  CONSTRAINT `detail_peminjaman_ibfk_1` FOREIGN KEY (`ID_Peminjaman`) REFERENCES `peminjaman` (`ID_Peminjaman`) ON DELETE CASCADE,
  CONSTRAINT `detail_peminjaman_ibfk_2` FOREIGN KEY (`ID_Kendaraan`) REFERENCES `kendaraan` (`ID_Kendaraan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_peminjaman`
--

LOCK TABLES `detail_peminjaman` WRITE;
/*!40000 ALTER TABLE `detail_peminjaman` DISABLE KEYS */;
INSERT INTO `detail_peminjaman` VALUES
(1,48,7,986000),
(2,120,7,204000),
(3,102,3,274000),
(4,129,3,626000),
(5,117,10,146000),
(6,191,8,200000),
(7,110,4,866000),
(8,228,5,956000),
(9,127,9,785000),
(10,32,4,749000),
(11,81,7,433000),
(12,110,4,407000),
(13,135,4,753000),
(14,186,9,131000),
(15,191,5,536000),
(16,245,8,710000),
(17,7,4,696000),
(18,202,5,649000),
(19,70,7,133000),
(20,118,1,195000),
(21,216,2,170000),
(22,109,9,284000),
(23,169,7,115000),
(24,12,7,806000),
(25,227,10,823000),
(26,242,10,782000),
(27,10,3,148000),
(28,186,10,902000),
(29,207,9,202000),
(30,118,6,887000),
(31,136,4,335000),
(32,183,10,416000),
(33,215,1,299000),
(34,201,5,556000),
(35,148,7,132000),
(36,11,2,430000),
(37,43,1,894000),
(38,152,9,704000),
(39,168,6,372000),
(40,229,6,909000),
(41,65,10,601000),
(42,94,8,866000),
(43,164,7,194000),
(44,191,9,699000),
(45,72,10,821000),
(46,171,4,116000),
(47,134,10,952000),
(47,236,8,124000),
(48,179,2,469000),
(48,202,3,550000),
(49,146,7,612000),
(49,164,3,143000),
(49,189,4,125000),
(49,206,4,966000),
(50,213,1,144000),
(51,42,5,475000),
(51,54,8,528000),
(51,127,1,472000),
(51,135,9,305000),
(52,113,7,921000),
(52,128,5,889000),
(52,145,6,443000),
(53,26,9,770000),
(53,144,4,501000),
(53,207,7,983000),
(53,246,7,446000),
(54,86,4,339000),
(54,126,6,637000),
(54,133,4,420000),
(55,75,2,636000),
(56,32,1,226000),
(56,110,1,132000),
(56,145,5,314000),
(56,161,4,258000),
(56,211,1,295000),
(56,233,1,518000),
(57,246,6,302000),
(58,184,4,362000),
(58,222,9,729000),
(58,229,3,488000),
(59,53,10,451000),
(59,163,4,222000),
(59,238,10,245000),
(60,57,6,536000),
(60,190,7,942000),
(61,111,9,602000),
(61,249,3,299000),
(62,136,6,483000),
(62,154,9,914000),
(63,137,10,363000),
(64,192,4,911000),
(65,27,8,533000),
(66,85,2,935000),
(66,168,10,823000),
(66,169,3,183000),
(66,222,6,248000),
(67,13,1,722000),
(67,55,8,766000),
(67,113,2,666000),
(67,154,7,540000),
(67,205,6,778000),
(68,68,10,558000),
(68,213,6,250000),
(69,106,6,439000),
(69,187,2,244000),
(70,65,8,535000),
(70,128,5,868000),
(71,6,3,179000),
(71,21,5,823000),
(71,98,4,402000),
(71,233,6,266000),
(72,14,6,392000),
(72,26,1,494000),
(73,82,8,523000),
(73,224,2,782000),
(74,43,2,310000),
(74,116,2,371000),
(74,167,10,1000000),
(74,205,7,289000),
(75,9,10,808000),
(76,47,4,959000),
(76,218,8,696000),
(77,3,8,898000),
(77,16,2,220000),
(77,89,8,523000),
(78,88,1,198000),
(78,103,8,620000),
(78,205,10,661000),
(79,51,7,170000),
(79,111,4,244000),
(79,137,4,165000),
(79,160,4,759000),
(79,188,9,252000),
(79,202,7,601000),
(79,211,8,819000),
(80,68,4,104000),
(80,219,3,736000),
(81,14,7,661000),
(81,137,9,784000),
(81,184,10,846000),
(81,249,6,879000),
(82,14,2,566000),
(82,34,2,629000),
(82,37,2,784000),
(82,91,6,473000),
(83,23,8,658000),
(83,74,5,979000),
(83,80,5,666000),
(83,88,7,536000),
(83,218,10,227000),
(83,234,5,836000),
(83,245,1,829000),
(84,116,3,937000),
(84,123,3,128000),
(85,124,3,482000),
(85,169,8,205000),
(86,87,4,997000),
(86,127,3,251000),
(86,188,7,167000),
(86,192,3,755000),
(87,8,9,565000),
(87,76,1,751000),
(87,127,1,672000),
(87,180,5,280000),
(88,214,1,545000),
(89,187,7,556000),
(90,64,4,470000),
(90,116,7,109000),
(90,141,3,229000),
(91,20,2,271000),
(91,134,5,445000),
(92,34,4,853000),
(92,144,7,957000),
(92,224,5,412000),
(92,228,3,655000),
(92,243,5,642000),
(93,71,8,653000),
(93,190,9,374000),
(93,208,9,299000),
(94,31,7,521000),
(94,32,3,625000),
(94,146,2,868000),
(95,126,2,986000),
(95,215,6,703000),
(95,226,1,176000),
(95,241,2,315000),
(95,247,5,884000),
(95,249,8,719000),
(95,250,10,769000),
(96,26,6,283000),
(96,233,5,602000),
(97,70,1,583000),
(97,175,8,273000),
(98,87,8,658000),
(98,93,9,117000),
(99,95,2,122000),
(99,96,3,537000),
(99,131,5,281000),
(99,162,9,545000),
(100,112,5,618000);
/*!40000 ALTER TABLE `detail_peminjaman` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER cek_asuransi
BEFORE INSERT ON detail_peminjaman
FOR EACH ROW
BEGIN
    DECLARE jumlah_asuransi INT;
    DECLARE jumlah_maintenance INT;

    SELECT COUNT(*) INTO jumlah_asuransi 
    FROM asuransi 
    WHERE ID_Kendaraan = NEW.ID_Kendaraan;

    SELECT COUNT(*) INTO jumlah_maintenance 
    FROM perawatan_rutin 
    WHERE ID_Kendaraan = NEW.ID_Kendaraan;

    IF jumlah_asuransi < 1 OR jumlah_maintenance < 1 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Klien belum memiliki asuransi atau belum melakukan maintenance';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger validate_kendaraan
before insert on detail_peminjaman
for each row
begin
    declare valid_count INT;
    select count(*) into valid_count
    from kendaraan as k
    join perawatan_rutin as pr on k.ID_kendaraan = pr.id_kendaraan
    join asuransi as a on pr.id_kendaraan = a.id_kendaraan
    join layanan_perawatan_rutin as lpr on pr.id_layanan = lpr.id_layanan
    join layanan_asuransi as la on a.id_layanan = la.id_layanan
    where k.id_kendaraan = new.id_kendaraan
    and lpr.tanggal_perawatan <= date_sub(curdate(), interval 6 month)
    and la.tanggal_berakhir >= date_add(curdate(), interval 2 year);
    if valid_count = 0 then
    signal sqlstate '45000'
    set message_text = 'Kendaraan belum memenuhi syarat perawatan atau asuransi';
  end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER after_insert_detail_peminjaman
AFTER INSERT ON detail_peminjaman
FOR EACH ROW
BEGIN
    CALL updateTotalHarga(NEW.ID_Peminjaman);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER after_update_detail_peminjaman
AFTER UPDATE ON detail_peminjaman
FOR EACH ROW
BEGIN
    CALL updateTotalHarga(NEW.ID_Peminjaman);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER after_delete_detail_peminjaman
AFTER DELETE ON detail_peminjaman
FOR EACH ROW
BEGIN
    CALL updateTotalHarga(OLD.ID_Peminjaman);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `kendaraan`
--

DROP TABLE IF EXISTS `kendaraan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kendaraan` (
  `ID_Kendaraan` int(11) NOT NULL AUTO_INCREMENT,
  `Merek` varchar(255) NOT NULL,
  `Plat` varchar(11) NOT NULL,
  `Tipe_Mesin` enum('Electric','Non-Electric') NOT NULL,
  PRIMARY KEY (`ID_Kendaraan`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kendaraan`
--

LOCK TABLES `kendaraan` WRITE;
/*!40000 ALTER TABLE `kendaraan` DISABLE KEYS */;
INSERT INTO `kendaraan` VALUES
(1,'Porsche','U 950 IO','Non-Electric'),
(2,'Smart','L 244 EO','Non-Electric'),
(3,'Land Rover','MA 0275 JC','Non-Electric'),
(4,'Land Rover','E 293 IP','Electric'),
(5,'Jaguar','N 1733 ECI','Non-Electric'),
(6,'Jaguar','DB 8042 OKD','Non-Electric'),
(7,'Jaguar','M 9130 JRK','Non-Electric'),
(8,'Renault','O 4983 OVA','Non-Electric'),
(9,'Mini','OD 354 VSN','Electric'),
(10,'Lotus','FH 6298 IC','Non-Electric'),
(11,'Porsche','R 8794 KMS','Non-Electric'),
(12,'Aston Martin','U 0201 FNP','Electric'),
(13,'Bentley','PK 6983 IRO','Electric'),
(14,'Dacia','I 9232 DL','Electric'),
(15,'Seat','C 770 QU','Non-Electric'),
(16,'Renault','A 8049 WJ','Non-Electric'),
(17,'Mini','J 138 UKP','Electric'),
(18,'Jaguar','X 2625 PK','Non-Electric'),
(19,'Maserati','D 403 LP','Non-Electric'),
(20,'Porsche','Q 674 OM','Non-Electric'),
(21,'Dacia','BG 9894 WFV','Electric'),
(22,'Hyundai','B 4042 KL','Electric'),
(23,'Jaguar','UP 4010 VG','Electric'),
(24,'Maserati','HA 7113 GQ','Electric'),
(25,'Bentley','ME 1921 MFX','Electric'),
(26,'Mercedes-Benz','JH 4481 RV','Non-Electric'),
(27,'Rolls-Royce','KS 5193 QNX','Non-Electric'),
(28,'Dacia','O 7844 DXN','Electric'),
(29,'Hyundai','MO 911 QE','Non-Electric'),
(30,'Subaru','FS 5908 NQH','Electric'),
(31,'McLaren','YF 7828 BFI','Electric'),
(32,'Rolls-Royce','A 6121 EAL','Non-Electric'),
(33,'Rolls-Royce','L 435 XIO','Non-Electric'),
(34,'Bugatti','RS 7701 HJG','Electric'),
(35,'Mitsubishi','UM 024 AYR','Non-Electric'),
(36,'Jaguar','JE 380 BH','Electric'),
(37,'Rolls-Royce','K 972 MND','Non-Electric'),
(38,'Suzuki','F 601 WQ','Non-Electric'),
(39,'Lamborghini','XH 939 GY','Non-Electric'),
(40,'Alfa Romeo','A 417 ND','Electric'),
(41,'Land Rover','BQ 634 KFM','Electric'),
(42,'Bentley','J 790 NC','Non-Electric'),
(43,'Citroen','XR 614 JP','Non-Electric'),
(44,'Lotus','O 723 WP','Electric'),
(45,'Mini','T 596 XF','Electric'),
(46,'Renault','JH 537 DHW','Electric'),
(47,'Aston Martin','W 8306 UB','Non-Electric'),
(48,'Dacia','HY 918 ZWY','Electric'),
(49,'Citroen','VQ 944 ZZO','Non-Electric'),
(50,'Rolls-Royce','QU 728 SEY','Electric'),
(51,'Opel','GU 9957 HOB','Electric'),
(52,'Lamborghini','QD 338 ETJ','Non-Electric'),
(53,'Toyota','SM 2272 ENY','Non-Electric'),
(54,'Porsche','BD 445 YA','Electric'),
(55,'Peugeot','X 6014 UAF','Electric'),
(56,'Ford','LQ 4584 BM','Non-Electric'),
(57,'Honda','ND 897 CO','Non-Electric'),
(58,'Kawasaki','XG 806 GOM','Non-Electric'),
(59,'Jeep','TM 7925 MYE','Electric'),
(60,'Bentley','Z 051 VZ','Electric'),
(61,'Dacia','VP 099 OVG','Electric'),
(62,'Bugatti','U 711 EXN','Non-Electric'),
(63,'Lamborghini','GX 9029 VB','Electric'),
(64,'Bentley','A 962 XTQ','Non-Electric'),
(65,'Ferrari','Z 2866 CB','Electric'),
(66,'Alfa Romeo','OE 5176 YW','Electric'),
(67,'Bugatti','Y 4395 WMT','Electric'),
(68,'Lamborghini','ZW 531 BT','Electric'),
(69,'Mini','XN 619 EFN','Electric'),
(70,'Renault','CQ 544 ATF','Non-Electric'),
(71,'Volkswagen','V 171 AJ','Electric'),
(72,'Smart','AR 656 GY','Non-Electric'),
(73,'McLaren','W 8990 AV','Electric'),
(74,'Fiat','EP 099 JLD','Electric'),
(75,'Isuzu','S 7802 FQA','Electric'),
(76,'Ferrari','CW 062 NT','Non-Electric'),
(77,'Ford','DH 506 BXV','Electric'),
(78,'Ferrari','CT 9106 HCI','Electric'),
(79,'Lexus','YK 538 ATL','Electric'),
(80,'Maserati','S 8894 MYU','Non-Electric'),
(81,'Dacia','XG 8795 ZK','Non-Electric'),
(82,'Opel','B 4990 WK','Electric'),
(83,'McLaren','ZF 7509 LUQ','Electric'),
(84,'Mazda','C 521 SU','Electric'),
(85,'Porsche','HS 224 KM','Electric'),
(86,'Bugatti','T 403 VY','Electric'),
(87,'Lamborghini','V 370 ST','Electric'),
(88,'Volvo','E 178 GEY','Electric'),
(89,'Volvo','O 6806 KVQ','Electric'),
(90,'Mazda','ZF 358 CLY','Non-Electric'),
(91,'Bentley','HC 225 LU','Non-Electric'),
(92,'Fiat','NP 5211 FDL','Electric'),
(93,'Fiat','MV 4581 QN','Electric'),
(94,'Land Rover','B 686 DRK','Electric'),
(95,'Rolls-Royce','FV 212 ZF','Electric'),
(96,'Jeep','PX 7594 UJQ','Non-Electric'),
(97,'Maserati','IT 5063 UT','Electric'),
(98,'Bugatti','ZO 857 CZ','Electric'),
(99,'Jeep','J 395 GGM','Non-Electric'),
(100,'Citroen','W 6499 RC','Electric'),
(101,'McLaren','WZ 3212 DD','Non-Electric'),
(102,'Aston Martin','OI 459 HM','Non-Electric'),
(103,'Rolls-Royce','LB 9197 VXS','Non-Electric'),
(104,'Alfa Romeo','W 8923 IFC','Non-Electric'),
(105,'Volkswagen','BW 627 COK','Electric'),
(106,'Subaru','CD 669 TS','Electric'),
(107,'Volvo','M 909 JIG','Non-Electric'),
(108,'Peugeot','YV 756 PBI','Non-Electric'),
(109,'Citroen','AS 268 LG','Electric'),
(110,'Aston Martin','Z 9374 WZY','Non-Electric'),
(111,'Dacia','VH 8767 BWJ','Non-Electric'),
(112,'Land Rover','Z 0252 PP','Electric'),
(113,'Honda','IW 1458 CM','Electric'),
(114,'Rolls-Royce','G 0072 VAU','Electric'),
(115,'Aston Martin','MT 398 YPI','Non-Electric'),
(116,'Bentley','Z 4233 GU','Non-Electric'),
(117,'Ferrari','WL 730 YCT','Non-Electric'),
(118,'Alfa Romeo','LC 397 FGJ','Non-Electric'),
(119,'Mitsubishi','SE 517 FKL','Electric'),
(120,'Peugeot','QY 1937 HW','Electric'),
(121,'Seat','A 124 SA','Non-Electric'),
(122,'Jeep','B 043 WVB','Electric'),
(123,'KIA','FU 195 VCQ','Non-Electric'),
(124,'Lamborghini','P 0535 KR','Electric'),
(125,'Rolls-Royce','WA 065 XMN','Non-Electric'),
(126,'Skoda','IM 328 HXU','Non-Electric'),
(127,'Jeep','E 6781 KIL','Electric'),
(128,'Dacia','Y 3401 VZ','Non-Electric'),
(129,'Jaguar','H 498 IRF','Non-Electric'),
(130,'McLaren','G 434 RXC','Non-Electric'),
(131,'Bentley','D 440 PGN','Electric'),
(132,'Skoda','PU 685 TE','Non-Electric'),
(133,'Peugeot','FQ 148 GIM','Non-Electric'),
(134,'Dacia','K 4642 BB','Electric'),
(135,'Lamborghini','JC 3391 CZM','Non-Electric'),
(136,'Rolls-Royce','EH 880 DS','Non-Electric'),
(137,'Land Rover','FL 8686 CS','Electric'),
(138,'Alfa Romeo','V 6020 IUB','Electric'),
(139,'Ferrari','LS 645 TZ','Non-Electric'),
(140,'Mercedes-Benz','JF 668 ZA','Non-Electric'),
(141,'Rolls-Royce','NF 5190 DPI','Electric'),
(142,'Skoda','B 834 VH','Non-Electric'),
(143,'Volvo','N 414 HNY','Non-Electric'),
(144,'Volvo','T 9355 JT','Non-Electric'),
(145,'Lamborghini','F 5805 FI','Non-Electric'),
(146,'Volvo','MI 5081 DH','Electric'),
(147,'Fiat','BB 323 NM','Non-Electric'),
(148,'Land Rover','O 6104 JD','Non-Electric'),
(149,'Rolls-Royce','AJ 2815 ZQ','Non-Electric'),
(150,'Lotus','JL 141 AS','Electric'),
(151,'Porsche','IC 3464 QKU','Non-Electric'),
(152,'Peugeot','G 8585 BNC','Non-Electric'),
(153,'Land Rover','PB 982 XWS','Non-Electric'),
(154,'Kawasaki','CF 6337 BIL','Non-Electric'),
(155,'Citroen','V 5303 TAT','Non-Electric'),
(156,'Ferrari','UL 9414 HFS','Non-Electric'),
(157,'Kawasaki','WV 7706 RN','Electric'),
(158,'Renault','P 6693 HEV','Electric'),
(159,'Mercedes-Benz','YQ 7001 WC','Non-Electric'),
(160,'Bugatti','QP 032 EJ','Electric'),
(161,'Bugatti','DI 993 WHC','Non-Electric'),
(162,'Aston Martin','UZ 895 KC','Non-Electric'),
(163,'Peugeot','V 585 WYA','Electric'),
(164,'Citroen','D 014 SKO','Non-Electric'),
(165,'Lamborghini','RA 093 ZSR','Non-Electric'),
(166,'Citroen','D 6476 GJW','Electric'),
(167,'Land Rover','CR 6397 CA','Electric'),
(168,'Bentley','O 7820 EA','Non-Electric'),
(169,'Porsche','LN 4631 KHB','Electric'),
(170,'Ford','Z 3921 TP','Electric'),
(171,'Lamborghini','M 202 RF','Electric'),
(172,'Bugatti','FZ 1092 UD','Non-Electric'),
(173,'Citroen','U 005 MG','Electric'),
(174,'Renault','O 3169 FJA','Electric'),
(175,'Honda','W 2819 RB','Electric'),
(176,'Nissan','IZ 052 KO','Non-Electric'),
(177,'Opel','A 123 BB','Non-Electric'),
(178,'Lotus','IW 698 OL','Non-Electric'),
(179,'Porsche','S 540 EKB','Electric'),
(180,'Seat','ZI 238 NB','Non-Electric'),
(181,'Maserati','QX 587 RZ','Electric'),
(182,'Volvo','M 587 MZ','Non-Electric'),
(183,'Fiat','HK 9873 XL','Electric'),
(184,'Ferrari','NA 382 FJ','Electric'),
(185,'Jaguar','H 065 ABK','Non-Electric'),
(186,'Toyota','FK 753 PD','Electric'),
(187,'Alfa Romeo','I 8611 ZK','Electric'),
(188,'Volkswagen','P 983 RNQ','Electric'),
(189,'Hyundai','YE 1366 UM','Electric'),
(190,'Ferrari','MY 0757 KU','Electric'),
(191,'Lotus','W 2177 AH','Electric'),
(192,'Alfa Romeo','KX 3292 RVU','Electric'),
(193,'Smart','CF 4619 MB','Non-Electric'),
(194,'Seat','XO 9894 DNH','Electric'),
(195,'Rolls-Royce','VC 791 GS','Electric'),
(196,'Alfa Romeo','GC 771 IT','Non-Electric'),
(197,'Alfa Romeo','U 0699 YR','Electric'),
(198,'Aston Martin','KY 956 SW','Non-Electric'),
(199,'Skoda','LA 3814 RKB','Electric'),
(200,'Rolls-Royce','GW 198 AEV','Electric'),
(201,'Jaguar','H 4611 HW','Non-Electric'),
(202,'Toyota','IR 376 SKI','Electric'),
(203,'Peugeot','O 0578 ZPD','Non-Electric'),
(204,'Peugeot','CJ 9498 TND','Non-Electric'),
(205,'Skoda','W 917 KKV','Non-Electric'),
(206,'Alfa Romeo','TW 7620 ZT','Electric'),
(207,'Bentley','YB 1603 RUG','Non-Electric'),
(208,'Volkswagen','ZH 1423 ORQ','Non-Electric'),
(209,'Ferrari','C 110 LKE','Non-Electric'),
(210,'Bugatti','GP 509 YM','Electric'),
(211,'Rolls-Royce','ES 452 PP','Non-Electric'),
(212,'Volvo','X 439 KV','Non-Electric'),
(213,'Volvo','D 871 LEB','Non-Electric'),
(214,'Jeep','X 8833 CD','Electric'),
(215,'Dacia','L 6672 QY','Non-Electric'),
(216,'Volvo','V 233 CF','Electric'),
(217,'Mini','SK 887 FGA','Electric'),
(218,'Lotus','SK 2486 BX','Electric'),
(219,'Alfa Romeo','BW 906 IEG','Non-Electric'),
(220,'Opel','CP 7822 NHE','Electric'),
(221,'Maserati','T 8562 SOB','Non-Electric'),
(222,'Lamborghini','V 1889 BZ','Non-Electric'),
(223,'Seat','J 231 IV','Electric'),
(224,'Volkswagen','KP 551 CP','Non-Electric'),
(225,'Volvo','V 707 PG','Electric'),
(226,'Audi','MN 353 OL','Electric'),
(227,'Porsche','LG 9487 JAC','Non-Electric'),
(228,'Skoda','B 3642 IAB','Non-Electric'),
(229,'Bugatti','A 0544 GT','Electric'),
(230,'Bentley','PW 7616 KIF','Electric'),
(231,'Citroen','VY 3103 EK','Non-Electric'),
(232,'Volvo','ZZ 903 PH','Electric'),
(233,'Bentley','NO 570 PEU','Non-Electric'),
(234,'Aston Martin','Y 5027 WY','Electric'),
(235,'Mini','UV 341 NH','Non-Electric'),
(236,'Aston Martin','PD 315 NI','Non-Electric'),
(237,'Bugatti','FE 825 YUW','Non-Electric'),
(238,'Ferrari','GV 368 JF','Non-Electric'),
(239,'Lotus','J 3950 PXY','Electric'),
(240,'Ford','VM 073 AP','Electric'),
(241,'Daihatsu','T 872 EK','Non-Electric'),
(242,'Mercedes-Benz','T 445 BA','Non-Electric'),
(243,'Jaguar','N 573 LI','Non-Electric'),
(244,'Toyota','R 5404 WOV','Electric'),
(245,'Jeep','MZ 5327 QIK','Electric'),
(246,'Mini','NL 0884 QR','Non-Electric'),
(247,'Audi','ZN 5431 AB','Non-Electric'),
(248,'Porsche','YN 4384 KY','Non-Electric'),
(249,'Lexus','PF 792 QK','Electric'),
(250,'Peugeot','X 8629 MI','Non-Electric');
/*!40000 ALTER TABLE `kendaraan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `kendaraan_memenuhi_kriteria`
--

DROP TABLE IF EXISTS `kendaraan_memenuhi_kriteria`;
/*!50001 DROP VIEW IF EXISTS `kendaraan_memenuhi_kriteria`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `kendaraan_memenuhi_kriteria` AS SELECT
 1 AS `id_kendaraan`,
  1 AS `merek`,
  1 AS `plat`,
  1 AS `tipe_mesin` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `kontak`
--

DROP TABLE IF EXISTS `kontak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kontak` (
  `ID_Perusahaan` int(11) NOT NULL,
  `Kontak` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Perusahaan`,`Kontak`),
  CONSTRAINT `kontak_ibfk_1` FOREIGN KEY (`ID_Perusahaan`) REFERENCES `perusahaan` (`ID_Perusahaan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kontak`
--

LOCK TABLES `kontak` WRITE;
/*!40000 ALTER TABLE `kontak` DISABLE KEYS */;
INSERT INTO `kontak` VALUES
(1,'+62-837-5803-6021'),
(2,'+62-838-7078-7542'),
(3,'+62-861-6108-3206'),
(3,'+62-886-3379-4921'),
(3,'+62-896-9509-7848'),
(4,'+62-830-2869-9624'),
(4,'+62-834-3903-7612'),
(4,'+62-836-9663-6340'),
(5,'+62-885-0066-0050'),
(5,'+62-885-2857-0515'),
(5,'+62-895-1159-6310'),
(6,'+62-866-9323-5840'),
(6,'+62-886-3993-7290'),
(7,'+62-836-6566-1263'),
(8,'+62-810-7810-0680'),
(8,'+62-822-2733-0048'),
(8,'+62-894-9072-3000'),
(9,'+62-815-2025-7642'),
(9,'+62-843-8801-6074'),
(10,'+62-890-1372-6440'),
(11,'+62-847-8334-1942'),
(12,'+62-832-4168-9440'),
(13,'+62-851-1249-4006'),
(14,'+62-814-6125-2230'),
(14,'+62-836-9556-7292'),
(14,'+62-866-8904-2762'),
(15,'+62-825-1195-0680'),
(16,'+62-838-4955-3408'),
(16,'+62-892-4089-7872'),
(17,'+62-883-2506-8905'),
(17,'+62-899-6311-6441'),
(18,'+62-816-1531-9004'),
(18,'+62-848-3411-1438'),
(18,'+62-862-5385-8024'),
(19,'+62-812-1073-7265'),
(20,'+62-890-2815-8040'),
(21,'+62-813-6807-2028'),
(21,'+62-836-8922-2135'),
(21,'+62-868-2917-6101'),
(22,'+62-812-3766-8822'),
(22,'+62-826-7637-8240'),
(22,'+62-828-1016-5188'),
(22,'+62-846-7886-1536'),
(22,'+62-866-8063-6170'),
(23,'+62-832-1509-5453'),
(23,'+62-848-3044-9590'),
(23,'+62-895-3641-7005'),
(24,'+62-890-5054-4336'),
(25,'+62-825-9400-5350'),
(25,'+62-870-2786-8500'),
(25,'+62-875-2249-2750'),
(25,'+62-890-6627-5900'),
(26,'+62-818-7586-2780'),
(26,'+62-824-2155-7314'),
(27,'+62-892-3573-3176'),
(28,'+62-884-3748-5984'),
(29,'+62-861-1508-1349'),
(29,'+62-876-7477-7702'),
(30,'+62-870-8026-1140'),
(31,'+62-877-5570-1301'),
(32,'+62-846-2885-8032'),
(32,'+62-848-6697-7824'),
(32,'+62-896-5594-0464'),
(33,'+62-826-7156-0446'),
(33,'+62-843-8331-5266'),
(33,'+62-847-1769-2964'),
(33,'+62-868-5914-9269'),
(34,'+62-818-0104-1220'),
(34,'+62-846-8778-5328'),
(35,'+62-815-2795-1480'),
(36,'+62-812-4047-8056'),
(36,'+62-898-4533-7240'),
(37,'+62-843-9382-2218'),
(37,'+62-897-4643-3562'),
(38,'+62-816-4674-3320'),
(39,'+62-852-9117-4481'),
(39,'+62-892-5002-3346'),
(40,'+62-870-2937-9040'),
(40,'+62-880-1536-7720'),
(41,'+62-824-9725-8261'),
(42,'+62-866-4050-6144'),
(42,'+62-878-2015-0932'),
(43,'+62-824-0288-1485'),
(43,'+62-874-3472-1054'),
(44,'+62-880-2736-0504'),
(44,'+62-882-1797-5672'),
(44,'+62-892-3923-9768'),
(45,'+62-825-7903-3190'),
(45,'+62-890-7142-9085'),
(46,'+62-818-1607-6304'),
(46,'+62-842-6244-9358'),
(46,'+62-858-6849-9218'),
(47,'+62-842-9399-6802'),
(47,'+62-858-8992-0902'),
(47,'+62-883-9908-7225'),
(48,'+62-876-7420-4352'),
(48,'+62-892-6890-5968'),
(49,'+62-826-7439-7557'),
(49,'+62-841-6734-6143'),
(49,'+62-846-4614-9121'),
(49,'+62-899-5208-6347'),
(50,'+62-830-9629-0100'),
(50,'+62-870-1045-1150'),
(51,'+62-816-1623-4431'),
(51,'+62-863-3951-6957'),
(52,'+62-868-1594-6100'),
(52,'+62-888-9972-8140'),
(52,'+62-896-9616-4268'),
(52,'+62-898-9583-5888'),
(53,'+62-845-4860-5366'),
(53,'+62-865-5887-6455'),
(53,'+62-894-8174-2482'),
(54,'+62-846-8747-3546'),
(54,'+62-868-7202-9808'),
(55,'+62-845-5148-7840'),
(55,'+62-850-5063-5090'),
(56,'+62-852-9921-0464'),
(56,'+62-872-5846-8080'),
(57,'+62-811-3990-6677'),
(57,'+62-822-1120-7226'),
(58,'+62-846-2867-6698'),
(58,'+62-854-2280-8274'),
(58,'+62-856-9035-5486'),
(58,'+62-872-3224-0162'),
(59,'+62-833-6423-3111'),
(59,'+62-883-5421-4880'),
(60,'+62-820-0823-0160'),
(60,'+62-860-5749-0120'),
(61,'+62-812-8994-0836'),
(61,'+62-868-1152-9360'),
(61,'+62-871-1012-5846'),
(62,'+62-820-4983-0212'),
(63,'+62-867-2849-3373'),
(64,'+62-878-2030-2784'),
(65,'+62-875-4865-8215'),
(66,'+62-836-2346-0938'),
(66,'+62-836-5324-0230'),
(66,'+62-886-5173-5986'),
(67,'+62-878-5161-9739'),
(68,'+62-852-1913-9680'),
(69,'+62-825-3739-8107'),
(70,'+62-820-5672-0430'),
(70,'+62-860-2265-1400'),
(70,'+62-880-3760-3720'),
(71,'+62-845-0106-4332'),
(72,'+62-820-4374-2264'),
(72,'+62-872-8347-3376'),
(72,'+62-874-1022-7832'),
(72,'+62-896-6776-9408'),
(73,'+62-856-8895-3726'),
(73,'+62-896-6111-1816'),
(74,'+62-812-5488-9738'),
(74,'+62-832-1200-6526'),
(75,'+62-825-8836-1325'),
(75,'+62-835-6789-9675'),
(76,'+62-884-5702-3596'),
(77,'+62-816-3813-6187'),
(77,'+62-838-9308-3138'),
(77,'+62-862-1610-9227'),
(78,'+62-840-9594-8066'),
(79,'+62-817-3073-7768'),
(80,'+62-860-3225-4320'),
(80,'+62-880-2209-5840'),
(81,'+62-847-9562-6950'),
(82,'+62-868-7066-4418'),
(82,'+62-890-5486-0224'),
(83,'+62-838-9787-2923'),
(83,'+62-893-4297-9299'),
(84,'+62-878-5223-2768'),
(85,'+62-835-1117-6850'),
(86,'+62-842-6100-8396'),
(86,'+62-856-5961-0850'),
(86,'+62-864-5257-3998'),
(87,'+62-812-9263-2221'),
(88,'+62-828-0661-3400'),
(88,'+62-836-4663-5792'),
(88,'+62-852-9975-4344'),
(88,'+62-874-0009-6040'),
(89,'+62-878-5747-6441'),
(90,'+62-820-0717-1080'),
(90,'+62-820-2459-1860'),
(90,'+62-830-7370-2980'),
(90,'+62-880-3430-5200'),
(91,'+62-844-2322-1556'),
(92,'+62-872-1306-0644'),
(92,'+62-878-6282-8156'),
(93,'+62-844-6135-9482'),
(93,'+62-857-8199-0323'),
(94,'+62-878-1865-1482'),
(95,'+62-810-2696-9390'),
(95,'+62-815-5633-5465'),
(95,'+62-820-7385-3570'),
(95,'+62-830-2496-2430'),
(96,'+62-828-9589-5664'),
(96,'+62-838-0401-7216'),
(97,'+62-823-5684-8402'),
(97,'+62-841-9291-8813'),
(97,'+62-856-4812-3102'),
(98,'+62-830-9279-7366'),
(99,'+62-878-0660-8311'),
(99,'+62-879-8076-3400'),
(100,'+62-840-0215-8500'),
(101,'+62-851-9746-2604'),
(101,'+62-857-9153-8146'),
(102,'+62-844-7176-0916'),
(102,'+62-852-0591-9932'),
(103,'+62-849-1611-6313'),
(104,'+62-820-7670-4016'),
(104,'+62-856-2574-6168'),
(105,'+62-810-7520-7170'),
(105,'+62-875-4276-7665'),
(106,'+62-812-3102-7354'),
(106,'+62-896-2546-3240'),
(107,'+62-876-9632-0843'),
(107,'+62-879-2937-1665'),
(108,'+62-850-9549-2908'),
(109,'+62-868-8963-2966'),
(109,'+62-885-7309-5937'),
(110,'+62-850-6767-1920'),
(110,'+62-850-8085-6060'),
(110,'+62-890-7453-6660'),
(111,'+62-822-7713-1425'),
(111,'+62-843-0020-7993'),
(111,'+62-899-4377-4971'),
(112,'+62-880-9397-3888'),
(113,'+62-854-1570-8065'),
(114,'+62-864-6924-8036'),
(115,'+62-825-7588-1910'),
(115,'+62-860-6564-6090'),
(115,'+62-875-8286-8995'),
(116,'+62-856-5010-7900'),
(116,'+62-882-8414-9140'),
(117,'+62-847-7023-7966'),
(117,'+62-852-1716-3928'),
(117,'+62-896-2257-1626'),
(117,'+62-897-8067-5474'),
(118,'+62-818-9652-6194'),
(119,'+62-827-7582-8271'),
(119,'+62-839-3347-8857'),
(119,'+62-896-8111-8192'),
(120,'+62-830-6403-5400'),
(121,'+62-846-3800-1546'),
(122,'+62-826-8190-2914'),
(122,'+62-838-0217-4528'),
(122,'+62-866-2083-5932'),
(123,'+62-826-8518-8869'),
(123,'+62-851-6401-3503'),
(124,'+62-826-7559-3540'),
(124,'+62-852-1947-3548'),
(125,'+62-820-0235-2125'),
(125,'+62-835-6134-3375'),
(125,'+62-865-5367-3500'),
(126,'+62-896-2190-9534'),
(127,'+62-836-3798-1371'),
(128,'+62-834-2434-9344'),
(128,'+62-838-7040-0320'),
(128,'+62-872-5126-8976'),
(129,'+62-811-2361-2488'),
(130,'+62-810-9187-1620'),
(131,'+62-837-8212-7617'),
(131,'+62-858-0460-0687'),
(132,'+62-886-4127-2920'),
(133,'+62-885-8187-5610'),
(134,'+62-870-5211-0642'),
(134,'+62-884-0685-2740'),
(135,'+62-815-0135-6865'),
(135,'+62-875-6985-6385'),
(136,'+62-856-9232-8408'),
(136,'+62-892-5008-5160'),
(137,'+62-827-8929-3587'),
(137,'+62-849-9087-6808'),
(137,'+62-879-7082-9912'),
(137,'+62-899-3169-9503'),
(138,'+62-846-7422-0290'),
(138,'+62-892-6055-1812'),
(139,'+62-827-7453-6021'),
(139,'+62-866-2541-9210'),
(139,'+62-898-8514-7096'),
(140,'+62-810-9886-7040'),
(140,'+62-840-4994-3880'),
(140,'+62-860-7341-3120'),
(141,'+62-822-8267-7961'),
(141,'+62-834-6252-3259'),
(141,'+62-846-2302-1330'),
(142,'+62-886-1176-6828'),
(143,'+62-848-4141-7799'),
(143,'+62-865-2068-0758'),
(144,'+62-874-5908-5344'),
(145,'+62-815-0637-1215'),
(145,'+62-895-7399-3630'),
(146,'+62-868-5761-0422'),
(146,'+62-872-8779-0000'),
(146,'+62-882-6647-6934'),
(147,'+62-829-5744-2967'),
(147,'+62-898-4440-5821'),
(148,'+62-836-7734-0868'),
(148,'+62-862-0632-8112'),
(149,'+62-894-0876-4276'),
(150,'+62-820-6508-8050'),
(150,'+62-850-8396-7150');
/*!40000 ALTER TABLE `kontak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan`
--

DROP TABLE IF EXISTS `layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layanan` (
  `ID_Layanan` int(11) NOT NULL AUTO_INCREMENT,
  `Biaya` int(11) NOT NULL,
  PRIMARY KEY (`ID_Layanan`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan`
--

LOCK TABLES `layanan` WRITE;
/*!40000 ALTER TABLE `layanan` DISABLE KEYS */;
INSERT INTO `layanan` VALUES
(1,206000),
(2,973000),
(3,570000),
(4,943000),
(5,904000),
(6,154000),
(7,480000),
(8,340000),
(9,285000),
(10,645000),
(11,195000),
(12,694000),
(13,896000),
(14,298000),
(15,148000),
(16,307000),
(17,229000),
(18,527000),
(19,987000),
(20,918000),
(21,447000),
(22,377000),
(23,832000),
(24,299000),
(25,731000),
(26,527000),
(27,180000),
(28,276000),
(29,197000),
(30,457000),
(31,571000),
(32,419000),
(33,295000),
(34,614000),
(35,679000),
(36,263000),
(37,167000),
(38,950000),
(39,215000),
(40,246000),
(41,548000),
(42,352000),
(43,410000),
(44,137000),
(45,537000),
(46,384000),
(47,626000),
(48,406000),
(49,660000),
(50,925000),
(51,139000),
(52,201000),
(53,164000),
(54,551000),
(55,203000),
(56,620000),
(57,602000),
(58,589000),
(59,693000),
(60,372000),
(61,727000),
(62,175000),
(63,800000),
(64,771000),
(65,550000),
(66,724000),
(67,774000),
(68,168000),
(69,930000),
(70,452000),
(71,381000),
(72,700000),
(73,517000),
(74,867000),
(75,915000),
(76,567000),
(77,502000),
(78,533000),
(79,375000),
(80,364000),
(81,378000),
(82,927000),
(83,317000),
(84,641000),
(85,334000),
(86,194000),
(87,174000),
(88,628000),
(89,859000),
(90,110000),
(91,377000),
(92,557000),
(93,967000),
(94,202000),
(95,453000),
(96,741000),
(97,839000),
(98,648000),
(99,482000),
(100,555000),
(101,764000),
(102,606000),
(103,956000),
(104,605000),
(105,273000),
(106,517000),
(107,931000),
(108,157000),
(109,926000),
(110,333000),
(111,326000),
(112,955000),
(113,654000),
(114,173000),
(115,789000),
(116,944000),
(117,655000),
(118,422000),
(119,243000),
(120,897000),
(121,635000),
(122,396000),
(123,253000),
(124,597000),
(125,217000),
(126,917000),
(127,126000),
(128,652000),
(129,537000),
(130,224000),
(131,970000),
(132,447000),
(133,940000),
(134,718000),
(135,206000),
(136,152000),
(137,578000),
(138,606000),
(139,209000),
(140,407000),
(141,523000),
(142,595000),
(143,783000),
(144,401000),
(145,629000),
(146,180000),
(147,721000),
(148,754000),
(149,100000),
(150,472000);
/*!40000 ALTER TABLE `layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan_asuransi`
--

DROP TABLE IF EXISTS `layanan_asuransi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layanan_asuransi` (
  `ID_Layanan` int(11) NOT NULL,
  `Perusahaan_Asuransi` int(11) NOT NULL,
  `Tanggal_Berakhir` date NOT NULL,
  PRIMARY KEY (`ID_Layanan`),
  KEY `Perusahaan_Asuransi` (`Perusahaan_Asuransi`),
  CONSTRAINT `layanan_asuransi_ibfk_1` FOREIGN KEY (`ID_Layanan`) REFERENCES `layanan` (`ID_Layanan`) ON DELETE CASCADE,
  CONSTRAINT `layanan_asuransi_ibfk_2` FOREIGN KEY (`Perusahaan_Asuransi`) REFERENCES `perusahaan_asuransi` (`ID_Perusahaan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_asuransi`
--

LOCK TABLES `layanan_asuransi` WRITE;
/*!40000 ALTER TABLE `layanan_asuransi` DISABLE KEYS */;
INSERT INTO `layanan_asuransi` VALUES
(1,34,'2025-04-02'),
(4,104,'2025-04-01'),
(11,6,'2025-02-22'),
(12,29,'2025-01-02'),
(15,76,'2025-04-03'),
(17,1,'2025-02-19'),
(18,111,'2025-01-22'),
(21,3,'2025-03-08'),
(23,24,'2025-02-16'),
(27,143,'2025-01-13'),
(30,19,'2025-01-16'),
(32,50,'2025-05-01'),
(33,81,'2025-02-05'),
(34,37,'2025-01-17'),
(36,72,'2025-04-15'),
(41,107,'2025-03-17'),
(43,87,'2025-01-29'),
(44,114,'2025-02-04'),
(45,27,'2025-03-15'),
(46,2,'2025-03-27'),
(49,5,'2025-01-31'),
(51,69,'2025-02-10'),
(53,15,'2025-02-06'),
(56,85,'2025-04-06'),
(57,126,'2025-04-26'),
(58,68,'2025-04-10'),
(60,89,'2025-03-13'),
(65,110,'2025-01-29'),
(66,136,'2025-02-12'),
(68,16,'2025-03-30'),
(69,129,'2025-03-10'),
(71,53,'2025-02-09'),
(75,57,'2025-02-11'),
(76,86,'2025-02-18'),
(79,137,'2025-04-23'),
(80,121,'2025-01-11'),
(81,148,'2025-02-01'),
(88,103,'2025-02-22'),
(90,14,'2025-02-04'),
(91,61,'2025-04-22'),
(92,30,'2025-04-04'),
(93,102,'2025-02-25'),
(94,12,'2025-04-02'),
(96,113,'2025-03-07'),
(97,65,'2025-02-17'),
(99,10,'2025-03-12'),
(100,92,'2025-01-12'),
(102,42,'2025-01-21'),
(105,63,'2025-01-03'),
(106,43,'2025-02-21'),
(108,128,'2025-03-08'),
(111,94,'2025-04-01'),
(113,78,'2025-02-28'),
(114,141,'2025-04-16'),
(115,130,'2025-03-29'),
(116,38,'2025-01-22'),
(117,45,'2025-04-23'),
(118,83,'2025-02-25'),
(119,139,'2025-05-02'),
(120,11,'2025-03-31'),
(122,17,'2025-04-08'),
(123,39,'2025-01-14'),
(126,48,'2025-01-21'),
(129,97,'2025-01-15'),
(130,149,'2025-03-13'),
(131,74,'2025-02-27'),
(133,117,'2025-02-12'),
(138,62,'2025-04-10'),
(139,33,'2025-02-21'),
(140,58,'2025-02-18'),
(141,108,'2025-01-17'),
(142,28,'2025-05-03'),
(144,77,'2025-01-16'),
(145,133,'2025-04-19'),
(147,21,'2025-01-23');
/*!40000 ALTER TABLE `layanan_asuransi` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ASURANSI_IS_NOT_MAINTENANCE_INSERT`
BEFORE INSERT ON Layanan_Asuransi
FOR EACH ROW
BEGIN
    IF EXISTS ( SELECT 1 
                FROM Layanan_Perawatan_Rutin 
                WHERE ID_Layanan = NEW.ID_Layanan)
    THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ID_Layanan sudah ada di Layanan Perawatan Rutin';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ASURANSI_IS_NOT_MAINTENANCE_UPDATE`
BEFORE UPDATE ON Layanan_Asuransi
FOR EACH ROW
BEGIN
    IF EXISTS ( SELECT 1 
                FROM Layanan_Perawatan_Rutin 
                WHERE ID_Layanan = NEW.ID_Layanan)
    THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ID_Layanan sudah ada di Layanan Perawatan Rutin';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `layanan_perawatan_rutin`
--

DROP TABLE IF EXISTS `layanan_perawatan_rutin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layanan_perawatan_rutin` (
  `ID_Layanan` int(11) NOT NULL,
  `Perusahaan_Perawatan` int(11) NOT NULL,
  `Tipe_Perawatan` varchar(255) NOT NULL,
  `Tanggal_Perawatan` date NOT NULL,
  PRIMARY KEY (`ID_Layanan`),
  KEY `Perusahaan_Perawatan` (`Perusahaan_Perawatan`),
  CONSTRAINT `layanan_perawatan_rutin_ibfk_1` FOREIGN KEY (`ID_Layanan`) REFERENCES `layanan` (`ID_Layanan`) ON DELETE CASCADE,
  CONSTRAINT `layanan_perawatan_rutin_ibfk_2` FOREIGN KEY (`Perusahaan_Perawatan`) REFERENCES `perusahaan_perawatan` (`ID_Perusahaan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_perawatan_rutin`
--

LOCK TABLES `layanan_perawatan_rutin` WRITE;
/*!40000 ALTER TABLE `layanan_perawatan_rutin` DISABLE KEYS */;
INSERT INTO `layanan_perawatan_rutin` VALUES
(2,70,'Cleaning','2024-04-15'),
(3,35,'Filter','2024-04-15'),
(5,134,'Mesin','2024-04-09'),
(6,124,'Tune-Up','2024-04-12'),
(7,127,'Kaki-Kaki','2024-04-09'),
(8,8,'Kaki-Kaki','2024-04-23'),
(9,64,'Kelistrikan','2024-04-16'),
(10,115,'Kelistrikan','2024-04-04'),
(13,116,'Overhaul','2024-04-19'),
(14,20,'Knalpot','2024-04-15'),
(16,131,'Karburator','2024-04-07'),
(19,142,'Kelistrikan','2024-04-27'),
(20,59,'Knalpot','2024-04-26'),
(22,82,'Kaki-Kaki','2024-04-04'),
(24,52,'Mesin','2024-04-04'),
(25,138,'Kopling','2024-04-06'),
(26,95,'Kaki-Kaki','2024-04-21'),
(28,22,'Rem','2024-04-22'),
(29,145,'Kaki-Kaki','2024-04-04'),
(31,146,'Tune-Up','2024-04-28'),
(35,41,'Overhaul','2024-04-25'),
(37,140,'Filter','2024-04-15'),
(38,118,'Oli','2024-04-09'),
(39,105,'Tune-Up','2024-04-11'),
(40,4,'Overhaul','2024-04-24'),
(42,13,'Kaki-Kaki','2024-04-06'),
(47,144,'Ban','2024-04-10'),
(48,90,'Cleaning','2024-04-16'),
(50,36,'Mesin','2024-04-29'),
(52,26,'Rem','2024-04-21'),
(54,71,'Karburator','2024-04-26'),
(55,9,'Tune-Up','2024-04-09'),
(59,125,'Karburator','2024-04-21'),
(61,135,'Pelek','2024-04-13'),
(62,54,'Mesin','2024-04-07'),
(63,79,'Karburator','2024-04-23'),
(64,31,'Overhaul','2024-04-22'),
(67,46,'Rem','2024-04-19'),
(70,106,'Rem','2024-05-02'),
(72,7,'Overhaul','2024-04-14'),
(73,47,'Kelistrikan','2024-04-05'),
(74,25,'Pelek','2024-04-25'),
(77,56,'Lampu','2024-04-24'),
(78,150,'Kelistrikan','2024-04-17'),
(82,122,'Rem','2024-04-20'),
(83,66,'Rem','2024-04-23'),
(84,119,'Rem','2024-04-19'),
(85,100,'Cleaning','2024-04-15'),
(86,49,'Kaki-Kaki','2024-04-14'),
(87,91,'Oli','2024-04-10'),
(89,80,'Ban','2024-04-15'),
(95,84,'Tune-Up','2024-04-08'),
(98,98,'Overhaul','2024-04-18'),
(101,32,'Cat','2024-05-02'),
(103,44,'Filter','2024-04-23'),
(104,93,'Pelek','2024-04-28'),
(107,40,'Kopling','2024-05-02'),
(109,73,'Rem','2024-04-27'),
(110,75,'Cat','2024-04-22'),
(112,99,'Tune-Up','2024-04-27'),
(121,67,'Lampu','2024-04-09'),
(124,23,'Filter','2024-04-14'),
(125,132,'Mesin','2024-04-24'),
(127,96,'Tune-Up','2024-05-01'),
(128,109,'Kelistrikan','2024-04-09'),
(132,120,'Oli','2024-04-08'),
(134,18,'Filter','2024-04-13'),
(135,101,'Tune-Up','2024-04-28'),
(136,55,'Cleaning','2024-04-18'),
(137,112,'Rem','2024-04-27'),
(143,123,'Rem','2024-04-15'),
(146,147,'Overhaul','2024-04-16'),
(148,60,'Overhaul','2024-04-16'),
(149,88,'Tune-Up','2024-05-01'),
(150,51,'Kopling','2024-05-02');
/*!40000 ALTER TABLE `layanan_perawatan_rutin` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `MAINTENANCE_IS_NOT_ASURANSI_INSERT`
BEFORE INSERT ON Layanan_Perawatan_Rutin
FOR EACH ROW
BEGIN
    IF EXISTS ( SELECT 1 
                FROM Layanan_Asuransi 
                WHERE ID_Layanan = NEW.ID_Layanan)
    THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ID_Layanan sudah ada di Layanan Asuransi';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `MAINTENANCE_IS_NOT_ASURANSI_UPDATE`
BEFORE UPDATE ON Layanan_Perawatan_Rutin
FOR EACH ROW
BEGIN
    IF EXISTS ( SELECT 1 
                FROM Layanan_Asuransi 
                WHERE ID_Layanan = NEW.ID_Layanan)
    THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ID_Layanan sudah ada di Layanan Asuransi';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `metodepembayaran`
--

DROP TABLE IF EXISTS `metodepembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metodepembayaran` (
  `nomorTransaksi` int(11) NOT NULL,
  `ID_Peminjaman` int(11) NOT NULL,
  `tanggalPembayaran` date DEFAULT NULL,
  `StatusPembayaran` enum('Pending','Completed') NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`nomorTransaksi`),
  KEY `metode_pembayaran_ibfk_1` (`ID_Peminjaman`),
  CONSTRAINT `metode_pembayaran_ibfk_1` FOREIGN KEY (`ID_Peminjaman`) REFERENCES `peminjaman` (`ID_Peminjaman`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodepembayaran`
--

LOCK TABLES `metodepembayaran` WRITE;
/*!40000 ALTER TABLE `metodepembayaran` DISABLE KEYS */;
INSERT INTO `metodepembayaran` VALUES
(1,80,'2024-05-15','Completed'),
(2,47,NULL,'Pending'),
(3,10,NULL,'Pending'),
(4,44,NULL,'Pending'),
(5,96,NULL,'Pending'),
(6,74,NULL,'Pending'),
(7,91,NULL,'Pending'),
(8,51,NULL,'Pending'),
(9,7,NULL,'Pending'),
(10,25,NULL,'Pending'),
(11,95,NULL,'Pending'),
(12,4,NULL,'Pending'),
(13,6,NULL,'Pending'),
(14,30,NULL,'Pending'),
(15,76,'2024-05-13','Completed'),
(16,42,NULL,'Pending'),
(17,14,NULL,'Pending'),
(18,32,NULL,'Pending'),
(19,3,NULL,'Pending'),
(20,79,NULL,'Pending'),
(21,78,'2024-04-24','Completed'),
(22,36,NULL,'Pending'),
(23,16,NULL,'Pending'),
(24,2,NULL,'Pending'),
(25,18,NULL,'Pending'),
(26,75,NULL,'Pending'),
(27,56,NULL,'Pending'),
(28,72,'2024-05-03','Completed'),
(29,64,NULL,'Pending'),
(30,24,NULL,'Pending'),
(31,19,'2024-05-08','Completed'),
(32,94,NULL,'Pending'),
(33,65,NULL,'Pending'),
(34,23,NULL,'Pending'),
(35,8,NULL,'Pending'),
(36,37,NULL,'Pending'),
(37,54,'2024-04-23','Completed'),
(38,66,NULL,'Pending'),
(39,22,NULL,'Pending'),
(40,89,NULL,'Pending'),
(41,35,NULL,'Pending'),
(42,87,NULL,'Pending'),
(43,49,NULL,'Pending'),
(44,83,NULL,'Pending'),
(45,71,NULL,'Pending'),
(46,40,NULL,'Pending'),
(47,67,'2024-04-27','Completed'),
(48,52,NULL,'Pending'),
(49,33,NULL,'Pending'),
(50,50,'2024-05-11','Completed'),
(51,58,'2024-05-08','Completed'),
(52,45,NULL,'Pending'),
(53,82,NULL,'Pending'),
(54,9,NULL,'Pending'),
(55,17,NULL,'Pending'),
(56,59,NULL,'Pending'),
(57,55,NULL,'Pending'),
(58,61,'2024-04-20','Completed'),
(59,98,NULL,'Pending'),
(60,28,NULL,'Pending'),
(61,29,NULL,'Pending'),
(62,53,NULL,'Pending'),
(63,57,NULL,'Pending'),
(64,43,'2024-04-18','Completed'),
(65,5,NULL,'Pending'),
(66,70,'2024-04-21','Completed'),
(67,38,NULL,'Pending'),
(68,100,NULL,'Pending'),
(69,13,NULL,'Pending'),
(70,62,NULL,'Pending'),
(71,21,'2024-04-23','Completed'),
(72,27,NULL,'Pending'),
(73,60,'2024-05-08','Completed'),
(74,20,NULL,'Pending'),
(75,46,NULL,'Pending'),
(76,39,NULL,'Pending'),
(77,69,NULL,'Pending'),
(78,31,NULL,'Pending'),
(79,93,NULL,'Pending'),
(80,86,NULL,'Pending'),
(81,97,NULL,'Pending'),
(82,68,NULL,'Pending'),
(83,81,NULL,'Pending'),
(84,12,'2024-04-30','Completed'),
(85,85,NULL,'Pending'),
(86,34,NULL,'Pending'),
(87,77,NULL,'Pending'),
(88,73,NULL,'Pending'),
(89,1,NULL,'Pending'),
(90,63,NULL,'Pending'),
(91,84,NULL,'Pending'),
(92,15,NULL,'Pending'),
(93,92,NULL,'Pending'),
(94,41,'2024-05-12','Completed'),
(95,11,NULL,'Pending'),
(96,99,NULL,'Pending'),
(97,26,'2024-05-16','Completed'),
(98,90,NULL,'Pending'),
(99,48,NULL,'Pending'),
(100,88,NULL,'Pending');
/*!40000 ALTER TABLE `metodepembayaran` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_peminjaman` 
AFTER INSERT ON `metodePembayaran` 
FOR EACH ROW
BEGIN
    IF NEW.statusPembayaran = 'Pending' THEN
        UPDATE peminjaman 
        SET Status_Peminjaman = 'Pending' 
        WHERE ID_Peminjaman = NEW.ID_Peminjaman;
    ELSE
        UPDATE peminjaman 
        SET Status_Peminjaman = 'Rented' 
        WHERE ID_Peminjaman = NEW.ID_Peminjaman;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_peminjaman` 
AFTER UPDATE ON `metodePembayaran` 
FOR EACH ROW
BEGIN
    IF NEW.statusPembayaran = 'Pending' THEN
        UPDATE peminjaman 
        SET Status_Peminjaman = 'Pending' 
        WHERE ID_Peminjaman = NEW.ID_Peminjaman;
    ELSE
        UPDATE peminjaman 
        SET Status_Peminjaman = 'Rented' 
        WHERE ID_Peminjaman = NEW.ID_Peminjaman;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mobil`
--

DROP TABLE IF EXISTS `mobil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobil` (
  `ID_Kendaraan` int(11) NOT NULL,
  `Jumlah_Kursi` int(11) NOT NULL,
  `Kelas` enum('Normal','SUV','Vans') NOT NULL,
  PRIMARY KEY (`ID_Kendaraan`),
  CONSTRAINT `mobil_ibfk_1` FOREIGN KEY (`ID_Kendaraan`) REFERENCES `kendaraan` (`ID_Kendaraan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobil`
--

LOCK TABLES `mobil` WRITE;
/*!40000 ALTER TABLE `mobil` DISABLE KEYS */;
INSERT INTO `mobil` VALUES
(1,4,'Vans'),
(7,4,'Normal'),
(9,7,'Normal'),
(10,2,'SUV'),
(13,7,'Vans'),
(21,3,'Vans'),
(23,8,'Vans'),
(28,7,'Normal'),
(29,8,'Vans'),
(31,7,'Normal'),
(32,4,'Vans'),
(33,7,'Normal'),
(35,4,'Vans'),
(37,6,'SUV'),
(39,2,'Normal'),
(40,6,'Normal'),
(44,6,'Vans'),
(46,6,'SUV'),
(47,2,'SUV'),
(51,4,'Vans'),
(52,3,'SUV'),
(54,5,'SUV'),
(55,2,'Vans'),
(57,8,'SUV'),
(58,3,'Normal'),
(59,4,'Normal'),
(60,4,'Vans'),
(62,6,'Vans'),
(63,3,'Normal'),
(65,4,'Normal'),
(68,3,'Normal'),
(72,7,'Normal'),
(74,5,'Vans'),
(75,8,'Vans'),
(76,3,'SUV'),
(77,4,'SUV'),
(78,8,'Vans'),
(80,3,'SUV'),
(84,7,'SUV'),
(85,7,'Normal'),
(88,2,'Vans'),
(89,5,'Normal'),
(90,8,'SUV'),
(93,5,'SUV'),
(94,4,'SUV'),
(97,4,'Normal'),
(98,6,'Vans'),
(99,3,'Normal'),
(100,3,'Normal'),
(101,3,'Normal'),
(104,7,'Normal'),
(107,4,'Normal'),
(108,5,'Vans'),
(109,7,'Vans'),
(111,7,'SUV'),
(113,5,'Normal'),
(114,3,'Normal'),
(116,5,'SUV'),
(117,8,'SUV'),
(119,6,'Vans'),
(121,8,'Normal'),
(122,8,'Vans'),
(125,7,'Vans'),
(126,2,'Normal'),
(127,3,'SUV'),
(129,4,'Normal'),
(130,5,'Vans'),
(131,3,'Normal'),
(132,6,'Vans'),
(133,6,'SUV'),
(134,5,'Normal'),
(135,6,'Vans'),
(138,3,'SUV'),
(139,3,'Vans'),
(142,8,'SUV'),
(143,2,'Normal'),
(144,8,'Normal'),
(145,6,'Normal'),
(147,4,'Normal'),
(150,7,'Normal'),
(152,8,'Normal'),
(153,4,'Normal'),
(154,4,'SUV'),
(155,2,'Vans'),
(158,6,'Vans'),
(160,7,'SUV'),
(163,2,'Vans'),
(165,4,'SUV'),
(168,4,'SUV'),
(169,4,'Normal'),
(172,4,'Normal'),
(173,2,'SUV'),
(176,5,'Normal'),
(180,8,'Normal'),
(183,4,'Normal'),
(184,8,'Normal'),
(185,3,'Vans'),
(187,3,'Normal'),
(188,4,'Vans'),
(189,7,'SUV'),
(195,8,'SUV'),
(198,6,'Vans'),
(203,2,'Vans'),
(207,8,'SUV'),
(208,2,'Normal'),
(210,3,'Normal'),
(212,8,'Normal'),
(214,4,'SUV'),
(216,2,'Normal'),
(217,5,'Normal'),
(220,8,'Normal'),
(221,5,'Normal'),
(224,5,'Normal'),
(226,7,'Vans'),
(229,3,'Vans'),
(230,3,'Normal'),
(236,5,'Normal'),
(237,2,'Normal'),
(238,7,'Normal'),
(242,5,'SUV'),
(243,2,'Normal'),
(244,3,'Vans'),
(246,4,'SUV'),
(247,6,'SUV'),
(248,8,'SUV');
/*!40000 ALTER TABLE `mobil` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_insert_mobil
BEFORE INSERT ON Mobil
FOR EACH ROW
BEGIN
   IF EXISTS (SELECT 1 FROM Motor WHERE Motor.Id_Kendaraan = NEW.Id_Kendaraan) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Motor dengan Id yang sama sudah ada';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_update_mobil
BEFORE UPDATE ON Mobil
FOR EACH ROW
BEGIN
   IF EXISTS (SELECT 1 FROM Motor WHERE Motor.Id_Kendaraan = NEW.Id_Kendaraan) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Motor dengan Id yang sama sudah ada';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `motor`
--

DROP TABLE IF EXISTS `motor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motor` (
  `ID_Kendaraan` int(11) NOT NULL,
  `Kapasitas_Mesin` int(11) NOT NULL,
  PRIMARY KEY (`ID_Kendaraan`),
  CONSTRAINT `motor_ibfk_1` FOREIGN KEY (`ID_Kendaraan`) REFERENCES `kendaraan` (`ID_Kendaraan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motor`
--

LOCK TABLES `motor` WRITE;
/*!40000 ALTER TABLE `motor` DISABLE KEYS */;
INSERT INTO `motor` VALUES
(2,300),
(3,900),
(4,600),
(5,400),
(6,500),
(8,500),
(11,700),
(12,300),
(14,600),
(15,700),
(16,200),
(17,700),
(18,100),
(19,600),
(20,300),
(22,500),
(24,800),
(25,200),
(26,200),
(27,600),
(30,300),
(34,700),
(36,700),
(38,600),
(41,600),
(42,500),
(43,200),
(45,400),
(48,600),
(49,200),
(50,800),
(53,600),
(56,800),
(61,300),
(64,300),
(66,400),
(67,300),
(69,800),
(70,400),
(71,500),
(73,300),
(79,400),
(81,400),
(82,700),
(83,400),
(86,300),
(87,100),
(91,400),
(92,700),
(95,500),
(96,800),
(102,200),
(103,100),
(105,200),
(106,200),
(110,800),
(112,800),
(115,300),
(118,400),
(120,600),
(123,700),
(124,500),
(128,600),
(136,700),
(137,100),
(140,600),
(141,300),
(146,900),
(148,1000),
(149,400),
(151,800),
(156,500),
(157,800),
(159,700),
(161,700),
(162,100),
(164,900),
(166,500),
(167,900),
(170,300),
(171,700),
(174,200),
(175,700),
(177,200),
(178,900),
(179,200),
(181,200),
(182,600),
(186,300),
(190,500),
(191,900),
(192,200),
(193,500),
(194,600),
(196,900),
(197,200),
(199,700),
(200,600),
(201,900),
(202,500),
(204,300),
(205,1000),
(206,500),
(209,900),
(211,700),
(213,100),
(215,600),
(218,900),
(219,300),
(222,800),
(223,600),
(225,200),
(227,600),
(228,900),
(231,400),
(232,200),
(233,400),
(234,400),
(235,200),
(239,700),
(240,200),
(241,500),
(245,1000),
(249,600),
(250,800);
/*!40000 ALTER TABLE `motor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_insert_motor
BEFORE INSERT ON Motor
FOR EACH ROW
BEGIN
   IF EXISTS (SELECT 1 FROM Mobil WHERE Mobil.Id_Kendaraan = NEW.Id_Kendaraan) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Mobil dengan Id yang sama sudah ada';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_update_motor
BEFORE UPDATE ON Motor
FOR EACH ROW
BEGIN
   IF EXISTS (SELECT 1 FROM Mobil WHERE Mobil.Id_Kendaraan = NEW.Id_Kendaraan) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Mobil dengan Id yang sama sudah ada';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai` (
  `NIP` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `No_Telp` varchar(255) NOT NULL,
  `Jabatan` varchar(255) DEFAULT NULL,
  `Atasan` int(11) DEFAULT NULL,
  PRIMARY KEY (`NIP`),
  UNIQUE KEY `Email` (`Email`),
  KEY `Atasan` (`Atasan`),
  CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`Atasan`) REFERENCES `pegawai` (`NIP`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai`
--

LOCK TABLES `pegawai` WRITE;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` VALUES
(1,'Bakiono Dabukke','rinaprakasa@example.com','(008) 766 8775','Health physicist',NULL),
(2,'Tgk. Hana Gunawan, M.M.','kalimputra@example.com','089 600 2039','Location manager',1),
(3,'Usman Handayani','respatisamosir@example.net','+62-027-073-1072','Lecturer, higher education',1),
(4,'Puti Tania Siregar, S.I.Kom','jsuryono@example.com','+62 (346) 383-2579','Museum education officer',3),
(5,'Cut Vivi Fujiati, M.Ak','kairav73@example.com','+62 (23) 503 7511','Buyer, retail',2),
(6,'Ida Irawan','zsaputra@example.org','+62 (34) 171-0950','Administrator, Civil Service',NULL),
(7,'Rika Prakasa','halimahdarijan@example.net','+62 (0572) 932-8448','Community education officer',NULL),
(8,'Harsaya Adriansyah','banawi71@example.com','(0222) 688-7102','Commercial horticulturist',NULL),
(9,'drg. Clara Wibowo','bsihotang@example.net','+62-71-641-2269','Midwife',NULL),
(10,'Rosman Pradana','purwantimaryadi@example.net','+62 (062) 208-9538','Herpetologist',NULL),
(11,'Drs. Warta Marpaung','kacung38@example.net','+62-0141-359-8661','Health service manager',7),
(12,'Bakiman Wacana','gsimbolon@example.net','+62 (98) 785-3127','Tourism officer',6),
(13,'Harsana Halim','gmarpaung@example.com','0837453046','Nurse, mental health',NULL),
(14,'Kamila Waskita','karmanwinarsih@example.net','085 979 8303','Software engineer',NULL),
(15,'Yulia Kuswoyo, M.TI.','puti94@example.net','(028) 419-4533','Production assistant, radio',NULL),
(16,'Hafshah Laksmiwati, S.H.','mahesa19@example.com','0825654439','Radio broadcast assistant',7),
(17,'Vega Mardhiyah, S.Farm','nadine85@example.org','+62 (043) 030-5349','Teacher, special educational needs',NULL),
(18,'Wakiman Yuliarti','nwijayanti@example.com','0880497858','Chiropractor',15),
(19,'Salwa Namaga','thamrinpaiman@example.com','+62 (0266) 737-9821','Arts development officer',NULL),
(20,'Ciaobella Haryanto','hardiansyahjaka@example.net','+62 (075) 964 9720','Therapist, nutritional',NULL),
(21,'Sabar Prasetya','jailanizelaya@example.org','+62 (66) 078-1552','Medical sales representative',NULL),
(22,'KH. Viman Kusmawati','sanggraini@example.com','+62-720-566-1573','Investment analyst',20),
(23,'Patricia Kusmawati','gusada@example.net','+62-984-583-3006','Science writer',NULL),
(24,'Jarwa Adriansyah','ewidiastuti@example.org','+62-062-015-1518','Furniture designer',16),
(25,'Laila Anggriawan','grajata@example.com','+62 (0314) 884 7065','Counselling psychologist',9),
(26,'Tgk. Kani Zulkarnain, M.Ak','endrasimbolon@example.org','+62 (0200) 832 7028','Financial controller',NULL),
(27,'Edi Widiastuti, M.Kom.','bakionouyainah@example.org','(0333) 668-5247','Engineer, energy',2),
(28,'Caket Maulana','melanidwi@example.net','+62 (008) 155-2303','Police officer',6),
(29,'Mustofa Nainggolan, S.Pt','jessica22@example.org','+62 (600) 513 1029','Geneticist, molecular',NULL),
(30,'Suci Handayani','irawankarma@example.net','+62 (52) 980 6975','Company secretary',13),
(31,'Jono Permata','joko72@example.net','(0847) 718-7727','Equality and diversity officer',NULL),
(32,'Uli Winarsih','ihsanhartati@example.com','+62 (065) 615-9223','Industrial/product designer',16),
(33,'Anita Pratiwi','tbudiyanto@example.com','+62 (0446) 634 7309','Accounting technician',NULL),
(34,'Lutfan Pudjiastuti','nadia80@example.net','+62 (55) 721-5130','Acupuncturist',8),
(35,'Lasmanto Habibi','kaylakuswandari@example.com','+62 (0732) 593 7084','Multimedia specialist',19),
(36,'drg. Indah Winarno','wacanaluwes@example.net','+62-544-634-0661','Physiotherapist',17),
(37,'Upik Maulana','aslijan72@example.net','+62 (403) 135 5634','Archaeologist',20),
(38,'Hardi Firmansyah','omar99@example.com','+62-719-447-9138','Building surveyor',1),
(39,'drg. Vivi Hardiansyah, S.Gz','ejarajasa@example.org','+62 (0043) 566-0416','Geneticist, molecular',NULL),
(40,'Ana Hidayanto','hasta26@example.com','+62-738-768-3770','Engineer, maintenance (IT)',NULL),
(41,'Zulaikha Salahudin','belindajanuar@example.com','+62 (09) 951 7169','Counsellor',27),
(42,'Nadia Mandasari','nababanratih@example.org','(030) 354-9485','Neurosurgeon',NULL),
(43,'Bagus Damanik, M.Pd','apalastri@example.net','(0687) 170-6341','Agricultural engineer',NULL),
(44,'Cawisadi Hasanah','wadi62@example.com','+62-011-460-2398','Sub',30),
(45,'Mutia Nasyidah','nasrullahhasanah@example.org','085 544 8441','Designer, television/film set',NULL),
(46,'Dr. Amalia Maryadi, S.E.I','hsitompul@example.net','(0414) 149 9882','Financial adviser',NULL),
(47,'Dt. Budi Mulyani, M.TI.','mitra54@example.net','(0270) 999 3400','Emergency planning/management officer',NULL),
(48,'Wirda Rajasa','bahuwirya72@example.net','+62 (0429) 019-4679','Television production assistant',NULL),
(49,'Elisa Prastuti','hyuliarti@example.net','+62 (056) 122 2767','Child psychotherapist',NULL),
(50,'Jaswadi Kuswandari','mujurmelani@example.com','(0896) 373 8948','Contracting civil engineer',NULL),
(51,'Hasna Yuniar, S.Gz','kuncaraiswahyudi@example.com','+62 (25) 070 3087','Community pharmacist',NULL),
(52,'R. Sabar Yuniar','habibielon@example.org','+62 (78) 767-0732','Police officer',32),
(53,'Asirwada Putra','gsaefullah@example.com','+62-37-796-7737','Lighting technician, broadcasting/film/video',NULL),
(54,'Warji Purnawati','umaya18@example.com','+62 (0018) 069-4931','Therapist, sports',8),
(55,'Viktor Farida','rsuwarno@example.org','+62 (058) 758 3323','Buyer, industrial',30),
(56,'Virman Hassanah','qwulandari@example.org','+62 (260) 498-7258','Airline pilot',NULL),
(57,'Wawan Anggriawan','syahrini01@example.org','+62 (0367) 917-2895','Rural practice surveyor',3),
(58,'Kairav Wijaya, S.Pt','zahra77@example.net','+62 (0942) 549 1281','Nurse, adult',NULL),
(59,'Ilsa Simanjuntak','budiyantoamalia@example.org','+62 (973) 303-2661','Soil scientist',NULL),
(60,'Jail Samosir, S.Gz','rmansur@example.org','(0776) 629 9451','Psychotherapist, child',56),
(61,'Ozy Lazuardi','respati69@example.com','+62-0327-556-4398','Psychologist, sport and exercise',NULL),
(62,'Siska Usamah','ikinlaksmiwati@example.net','+62-351-044-6798','Community development worker',NULL),
(63,'Zaenab Utami, M.Farm','zelaya03@example.org','+62 (10) 086-9244','Engineer, mining',7),
(64,'Zelda Gunawan, M.Pd','hidayatsiska@example.org','+62 (031) 652 5919','Hospital doctor',45),
(65,'Olivia Halimah','diswahyudi@example.org','+62-54-377-8034','Radio broadcast assistant',15),
(66,'Salimah Simbolon, S.E.','nugrohopangestu@example.com','(0833) 446 5444','Actor',15),
(67,'Karya Hasanah','eman00@example.net','+62 (692) 776-7995','Fisheries officer',52),
(68,'Jamil Astuti','gastuti@example.com','084 395 8198','Radiation protection practitioner',NULL),
(69,'Adikara Lazuardi','dsitompul@example.net','(080) 204-3468','Facilities manager',NULL),
(70,'dr. Rina Wahyuni, M.Farm','tpangestu@example.com','(0716) 276-4531','Engineer, automotive',2),
(71,'Wasis Mansur, M.Ak','kadriansyah@example.org','+62 (911) 769-8671','Radio producer',54),
(72,'Gatra Rajata, S.E.','bhartati@example.com','(024) 662 0795','Engineer, structural',NULL),
(73,'Puti Ellis Pudjiastuti, S.Pt','ehartati@example.com','+62 (0662) 315-0086','Mudlogger',2),
(74,'Gatot Firgantoro','jhutagalung@example.net','+62 (054) 877 4073','Theatre stage manager',NULL),
(75,'Laila Hasanah, M.TI.','galur38@example.net','+62 (67) 382 1475','Holiday representative',NULL),
(76,'drg. Budi Adriansyah, M.TI.','purwantikezia@example.net','+62 (0086) 340-8383','Architectural technologist',58),
(77,'Luthfi Winarno','maulanacatur@example.org','+62 (0384) 667-8495','Designer, graphic',NULL),
(78,'Dina Wulandari','hardipermata@example.net','0866447417','Site engineer',43),
(79,'Cut Tina Padmasari, M.M.','waskitacapa@example.org','+62 (04) 080-2516','Press sub',NULL),
(80,'Violet Andriani','pangestubanara@example.org','+62 (78) 501 2016','Politician\'s assistant',NULL),
(81,'Tari Saefullah, M.Kom.','irasamosir@example.net','+62-24-086-0079','Product designer',16),
(82,'Mila Yuliarti, M.Ak','ianmansur@example.org','+62 (072) 612 0203','Educational psychologist',NULL),
(83,'Yusuf Maulana','gnurdiyanti@example.org','+62 (035) 172-7221','English as a second language teacher',NULL),
(84,'Dian Mayasari','dadap45@example.net','+62 (264) 560 4490','Associate Professor',28),
(85,'Hj. Elisa Permata, S.I.Kom','waluyofirgantoro@example.org','+62 (041) 077 3018','Amenity horticulturist',6),
(86,'Amelia Kuswoyo','pradanaanita@example.net','+62 (913) 850 2787','Fast food restaurant manager',18),
(87,'Qori Tarihoran','nasim83@example.net','+62 (0783) 353 9065','Armed forces technical officer',83),
(88,'Anastasia Permata, S.Ked','mangunsongika@example.com','+62 (103) 442 9549','Financial manager',53),
(89,'Daliono Rajasa','uwasita@example.net','+62 (434) 100-2557','Investment analyst',NULL),
(90,'KH. Nyana Narpati','mursita79@example.com','(052) 321-5556','General practice doctor',NULL),
(91,'Luhung Yuniar','marsito31@example.net','+62 (00) 400 6260','Customer service manager',51),
(92,'Luwes Haryanti','hwastuti@example.com','(0732) 987-9648','Call centre manager',NULL),
(93,'Daru Pradipta','rwinarsih@example.net','+62 (066) 600 3597','Dentist',36),
(94,'Agus Sirait','wacanabahuraksa@example.org','(008) 814 4332','Chief Marketing Officer',71),
(95,'Gangsa Rahayu','zwastuti@example.net','(0772) 428 1987','Operational researcher',NULL),
(96,'T. Ganda Sudiati','sakurapurnawati@example.org','+62 (405) 989 9820','Museum education officer',NULL),
(97,'Tgk. Bakiman Yuniar','slamet70@example.net','(092) 003-8938','Tree surgeon',63),
(98,'Empluk Tarihoran','ulailasari@example.com','+62-553-220-1388','Physiotherapist',NULL),
(99,'Indah Kurniawan','amalia60@example.net','085 854 2021','Legal secretary',69),
(100,'Rina Pranowo','rahmisihotang@example.com','+62 (0718) 267-1539','Catering manager',51);
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER VALID_ATASAN_SENDIRI_INSERT
BEFORE INSERT ON Pegawai
FOR EACH ROW
BEGIN
  IF NEW.NIP = NEW.Atasan THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Pegawai tidak bisa menjadi atasannya sendiri';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER VALID_ATASAN_SENDIRI_UPDATE
BEFORE UPDATE ON Pegawai
FOR EACH ROW
BEGIN
  IF NEW.NIP = NEW.Atasan THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Pegawai tidak bisa menjadi atasannya sendiri';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggan` (
  `NIK` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `No_Telp` varchar(255) NOT NULL,
  PRIMARY KEY (`NIK`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` VALUES
(1,'R. Rika Irawan','maryatiwisnu@example.org','+62-006-124-1259'),
(2,'Langgeng Sihotang','akarsana01@example.net','+62 (0254) 605 7024'),
(3,'Sutan Kala Siregar, M.Ak','umansur@example.com','+62 (43) 921 6167'),
(4,'Zizi Sinaga, S.E.I','setya27@example.org','(039) 916 9416'),
(5,'Reksa Wijayanti','estiawanmegantara@example.net','+62 (0882) 898 3048'),
(6,'Cahyono Dabukke','wutama@example.org','+62 (048) 074 1739'),
(7,'Ulya Sitompul','jindrawulandari@example.com','+62 (0196) 111-5718'),
(8,'Drs. Sakura Salahudin','pdabukke@example.net','+62-092-098-6623'),
(9,'Elvina Maryadi','hassanahmala@example.org','(081) 474 6595'),
(10,'Bella Widiastuti','suryonodalima@example.net','0854097440'),
(11,'Dasa Mayasari','prabakusumo@example.org','(078) 157 4617'),
(12,'Tgk. Elvina Wasita, M.TI.','dian86@example.com','(003) 746 7791'),
(13,'Damar Pratama','gandiusamah@example.org','(033) 552-1494'),
(14,'Hj. Kartika Najmudin','palastricahya@example.com','+62 (064) 528 5851'),
(15,'Koko Situmorang','luthfi11@example.com','+62 (0526) 324 0800'),
(16,'Dr. Cindy Firmansyah','nilam66@example.net','+62 (498) 862-6747'),
(17,'Warsa Halimah','novitasarijaya@example.org','(043) 325-2624'),
(18,'R.A. Ulya Januar','gilangmardhiyah@example.org','+62 (78) 383-2693'),
(19,'Ajimin Maheswara, S.Kom','mulyono43@example.net','+62 (0296) 171-2158'),
(20,'Jasmin Wibisono','gunartosamiah@example.org','+62 (0006) 734-5066'),
(21,'Ibrahim Winarno','mandasarihafshah@example.com','(021) 051 7208'),
(22,'Dr. Adhiarja Wijaya','syuniar@example.org','+62 (0974) 902 7422'),
(23,'drg. Agnes Widiastuti, S.Farm','budi77@example.org','+62-076-887-6790'),
(24,'dr. Balijan Wahyudin, S.Kom','talia31@example.org','(0401) 153 9831'),
(25,'Padmi Damanik','vpermadi@example.com','+62-0454-793-6531'),
(26,'Nalar Firmansyah','prakasaupik@example.net','+62 (062) 910-8790'),
(27,'Tgk. Rika Padmasari','marbunmurti@example.com','+62 (66) 158-2093'),
(28,'Sutan Gara Sihotang','gaimanrahimah@example.org','+62-710-170-1862'),
(29,'Hadi Laksmiwati','mandasariophelia@example.net','+62 (0425) 919-2323'),
(30,'Tgk. Halim Pradana, S.IP','darmana82@example.net','(0724) 480-6184'),
(31,'Simon Sudiati','wirda54@example.net','+62 (47) 849-5406'),
(32,'Prasetyo Wastuti','hadi41@example.com','(0292) 050 5391'),
(33,'drg. Yuni Prayoga','azalea26@example.com','+62 (0622) 063 5657'),
(34,'Cagak Santoso','darmantowinarsih@example.org','+62 (98) 006-3836'),
(35,'Cawuk Maulana, S.E.I','hastutigaiman@example.com','+62 (0671) 030-2898'),
(36,'Hj. Gawati Nasyiah','karta76@example.org','+62-0060-440-1358'),
(37,'Nardi Pudjiastuti','qsuryono@example.net','080 374 5050'),
(38,'Paris Sihombing','simanjuntakbambang@example.org','+62 (95) 310 0303'),
(39,'Sutan Waluyo Fujiati','ibrahim89@example.com','(031) 829-3267'),
(40,'Dr. Baktiadi Purwanti, M.M.','nbudiman@example.org','+62-98-604-2200'),
(41,'Vicky Anggraini','primahassanah@example.org','+62 (91) 971 6050'),
(42,'Sutan Ghani Lestari, S.IP','xtarihoran@example.com','+62 (51) 743-0500'),
(43,'Rachel Siregar','ganep62@example.org','0828163721'),
(44,'Queen Jailani, S.E.I','agus77@example.net','+62 (0949) 101-7002'),
(45,'Maryadi Siregar','dalimanirawan@example.com','(0190) 917-0666'),
(46,'Drajat Maulana','ridwan54@example.net','(0356) 292 7343'),
(47,'H. Hendra Puspasari, S.E.','amangunsong@example.org','0866466417'),
(48,'R.M. Okto Fujiati, S.E.I','tarimustofa@example.org','0853653648'),
(49,'Lulut Andriani, S.T.','opheliayuniar@example.com','0803442438'),
(50,'Ian Prabowo','kurniawansakti@example.org','(076) 719 1117');
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelayanan`
--

DROP TABLE IF EXISTS `pelayanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelayanan` (
  `NIP` int(11) NOT NULL,
  `ID_Peminjaman` int(11) NOT NULL,
  `NIK` int(11) NOT NULL,
  PRIMARY KEY (`NIP`,`ID_Peminjaman`,`NIK`),
  KEY `ID_Peminjaman` (`ID_Peminjaman`),
  KEY `NIK` (`NIK`),
  CONSTRAINT `pelayanan_ibfk_1` FOREIGN KEY (`NIP`) REFERENCES `pegawai` (`NIP`) ON DELETE CASCADE,
  CONSTRAINT `pelayanan_ibfk_2` FOREIGN KEY (`ID_Peminjaman`) REFERENCES `peminjaman` (`ID_Peminjaman`) ON DELETE CASCADE,
  CONSTRAINT `pelayanan_ibfk_3` FOREIGN KEY (`NIK`) REFERENCES `pelanggan` (`NIK`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelayanan`
--

LOCK TABLES `pelayanan` WRITE;
/*!40000 ALTER TABLE `pelayanan` DISABLE KEYS */;
INSERT INTO `pelayanan` VALUES
(5,1,27),
(14,2,3),
(47,3,4),
(68,4,30),
(70,5,15),
(40,6,39),
(53,7,49),
(76,8,27),
(77,9,9),
(69,10,16),
(85,11,42),
(29,12,35),
(78,13,47),
(60,14,27),
(58,15,18),
(76,16,15),
(29,17,41),
(38,18,22),
(56,19,46),
(83,20,26),
(47,21,35),
(58,22,43),
(59,23,35),
(57,24,22),
(59,25,41),
(2,26,33),
(99,27,29),
(47,28,3),
(50,29,16),
(53,30,4),
(98,31,48),
(48,32,1),
(10,33,39),
(36,34,22),
(43,35,49),
(24,36,31),
(59,37,16),
(33,38,42),
(87,39,41),
(89,40,10),
(24,41,48),
(53,42,18),
(45,43,31),
(96,44,40),
(28,45,8),
(37,46,1),
(62,47,17),
(83,48,17),
(15,49,13),
(50,50,45),
(6,51,28),
(69,52,7),
(58,53,23),
(90,54,26),
(75,55,17),
(82,56,29),
(59,57,21),
(41,58,27),
(91,59,34),
(18,60,45),
(73,61,2),
(12,62,50),
(65,63,43),
(74,64,40),
(17,65,50),
(59,66,19),
(3,67,38),
(16,68,37),
(42,69,22),
(71,70,42),
(84,71,8),
(26,72,23),
(49,73,49),
(89,74,28),
(87,75,13),
(75,76,19),
(96,77,33),
(6,78,15),
(48,79,34),
(61,80,30),
(7,81,37),
(40,82,44),
(70,83,49),
(7,84,6),
(12,85,29),
(76,86,25),
(17,87,3),
(28,88,48),
(64,89,25),
(54,90,30),
(82,91,20),
(38,92,47),
(56,93,18),
(65,94,14),
(68,95,3),
(72,96,35),
(96,97,23),
(44,98,47),
(34,99,26),
(58,100,43);
/*!40000 ALTER TABLE `pelayanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjaman`
--

DROP TABLE IF EXISTS `peminjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peminjaman` (
  `ID_Peminjaman` int(11) NOT NULL AUTO_INCREMENT,
  `Status_Peminjaman` enum('Rented','Pending','Returned') NOT NULL,
  `Tanggal_Mulai` date NOT NULL DEFAULT curdate(),
  `Tanggal_Berakhir` date NOT NULL DEFAULT (curdate() + interval 1 day),
  `totalHarga` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Peminjaman`),
  CONSTRAINT `VALID_DATE` CHECK (`Tanggal_Berakhir` >= `Tanggal_Mulai`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjaman`
--

LOCK TABLES `peminjaman` WRITE;
/*!40000 ALTER TABLE `peminjaman` DISABLE KEYS */;
INSERT INTO `peminjaman` VALUES
(1,'Pending','2024-05-16','2024-05-24',986000),
(2,'Returned','2024-04-17','2024-04-20',204000),
(3,'Rented','2024-04-11','2024-05-17',274000),
(4,'Pending','2024-05-26','2024-05-28',626000),
(5,'Returned','2024-04-15','2024-04-17',146000),
(6,'Returned','2024-04-13','2024-04-28',200000),
(7,'Returned','2024-04-10','2024-04-20',866000),
(8,'Pending','2024-05-27','2024-05-27',956000),
(9,'Returned','2024-04-16','2024-04-17',785000),
(10,'Pending','2024-06-02','2024-06-02',749000),
(11,'Returned','2024-04-11','2024-04-24',433000),
(12,'Returned','2024-04-26','2024-04-29',407000),
(13,'Pending','2024-05-08','2024-05-19',753000),
(14,'Pending','2024-05-24','2024-05-26',131000),
(15,'Returned','2024-04-19','2024-04-24',536000),
(16,'Returned','2024-04-18','2024-04-30',710000),
(17,'Returned','2024-04-28','2024-05-02',696000),
(18,'Pending','2024-05-23','2024-05-30',649000),
(19,'Pending','2024-05-07','2024-05-13',133000),
(20,'Returned','2024-04-11','2024-04-25',195000),
(21,'Rented','2024-04-14','2024-05-18',170000),
(22,'Returned','2024-04-04','2024-04-21',284000),
(23,'Returned','2024-04-15','2024-04-23',115000),
(24,'Rented','2024-04-23','2024-05-26',806000),
(25,'Rented','2024-05-02','2024-05-16',823000),
(26,'Pending','2024-05-25','2024-05-27',782000),
(27,'Returned','2024-04-16','2024-04-25',148000),
(28,'Pending','2024-05-18','2024-05-18',902000),
(29,'Returned','2024-04-06','2024-04-12',202000),
(30,'Pending','2024-06-02','2024-06-02',887000),
(31,'Returned','2024-04-16','2024-04-23',335000),
(32,'Pending','2024-05-25','2024-05-29',416000),
(33,'Rented','2024-04-04','2024-05-20',299000),
(34,'Rented','2024-05-01','2024-05-29',556000),
(35,'Returned','2024-04-19','2024-04-22',132000),
(36,'Rented','2024-04-24','2024-05-15',430000),
(37,'Returned','2024-04-06','2024-04-22',894000),
(38,'Returned','2024-04-27','2024-04-27',704000),
(39,'Returned','2024-05-02','2024-05-02',372000),
(40,'Returned','2024-04-06','2024-04-29',909000),
(41,'Returned','2024-04-10','2024-04-26',601000),
(42,'Returned','2024-04-28','2024-04-29',866000),
(43,'Returned','2024-04-23','2024-04-24',194000),
(44,'Rented','2024-05-01','2024-06-02',699000),
(45,'Pending','2024-05-11','2024-05-27',821000),
(46,'Pending','2024-05-12','2024-05-12',116000),
(47,'Rented','2024-04-08','2024-05-24',1076000),
(48,'Rented','2024-04-30','2024-06-02',1019000),
(49,'Pending','2024-05-10','2024-05-23',1846000),
(50,'Rented','2024-04-18','2024-05-10',144000),
(51,'Returned','2024-04-24','2024-04-26',1780000),
(52,'Rented','2024-04-09','2024-05-24',2253000),
(53,'Pending','2024-05-21','2024-06-01',2700000),
(54,'Returned','2024-04-20','2024-04-28',1396000),
(55,'Rented','2024-04-06','2024-05-22',636000),
(56,'Pending','2024-05-12','2024-05-21',1743000),
(57,'Returned','2024-04-27','2024-05-02',302000),
(58,'Rented','2024-04-16','2024-05-31',1579000),
(59,'Returned','2024-04-09','2024-04-14',918000),
(60,'Rented','2024-04-18','2024-05-27',1478000),
(61,'Pending','2024-05-22','2024-05-25',901000),
(62,'Returned','2024-04-26','2024-04-28',1397000),
(63,'Rented','2024-04-21','2024-05-24',363000),
(64,'Rented','2024-04-12','2024-05-18',911000),
(65,'Rented','2024-04-12','2024-05-19',533000),
(66,'Pending','2024-05-14','2024-05-14',2189000),
(67,'Returned','2024-04-14','2024-05-01',3472000),
(68,'Pending','2024-05-26','2024-05-30',808000),
(69,'Returned','2024-04-14','2024-04-21',683000),
(70,'Rented','2024-04-06','2024-05-30',1403000),
(71,'Pending','2024-05-26','2024-06-02',1670000),
(72,'Rented','2024-04-13','2024-05-16',886000),
(73,'Returned','2024-04-29','2024-05-01',1305000),
(74,'Rented','2024-05-01','2024-05-06',1970000),
(75,'Returned','2024-04-07','2024-04-08',808000),
(76,'Returned','2024-04-19','2024-04-30',1655000),
(77,'Returned','2024-04-29','2024-04-29',1641000),
(78,'Returned','2024-04-14','2024-04-27',1479000),
(79,'Returned','2024-04-08','2024-04-12',3010000),
(80,'Rented','2024-04-07','2024-05-14',840000),
(81,'Returned','2024-05-02','2024-05-02',3170000),
(82,'Returned','2024-04-23','2024-04-29',2452000),
(83,'Pending','2024-06-02','2024-06-02',4731000),
(84,'Returned','2024-04-16','2024-04-21',1065000),
(85,'Returned','2024-04-23','2024-04-26',687000),
(86,'Returned','2024-04-05','2024-04-27',2170000),
(87,'Rented','2024-04-29','2024-05-20',2268000),
(88,'Rented','2024-04-27','2024-05-07',545000),
(89,'Pending','2024-05-05','2024-05-29',556000),
(90,'Pending','2024-05-06','2024-05-18',808000),
(91,'Rented','2024-04-16','2024-05-29',716000),
(92,'Pending','2024-05-25','2024-05-28',3519000),
(93,'Pending','2024-05-31','2024-06-01',1326000),
(94,'Returned','2024-05-02','2024-05-02',2014000),
(95,'Pending','2024-05-29','2024-06-01',4552000),
(96,'Pending','2024-05-06','2024-05-16',885000),
(97,'Rented','2024-04-10','2024-05-31',856000),
(98,'Returned','2024-04-15','2024-04-28',775000),
(99,'Rented','2024-04-27','2024-06-01',1485000),
(100,'Returned','2024-04-29','2024-05-02',618000);
/*!40000 ALTER TABLE `peminjaman` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_status_peminjaman_transition BEFORE UPDATE ON peminjaman
FOR EACH ROW
BEGIN
  IF OLD.Status_Peminjaman = 'Pending' AND NEW.Status_Peminjaman = 'Returned' THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot directly change status from Pending to Returned';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `perawatan_rutin`
--

DROP TABLE IF EXISTS `perawatan_rutin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perawatan_rutin` (
  `ID_Layanan` int(11) NOT NULL,
  `ID_Kendaraan` int(11) NOT NULL,
  PRIMARY KEY (`ID_Layanan`,`ID_Kendaraan`),
  KEY `ID_Kendaraan` (`ID_Kendaraan`),
  CONSTRAINT `perawatan_rutin_ibfk_1` FOREIGN KEY (`ID_Layanan`) REFERENCES `layanan_perawatan_rutin` (`ID_Layanan`) ON DELETE CASCADE,
  CONSTRAINT `perawatan_rutin_ibfk_2` FOREIGN KEY (`ID_Kendaraan`) REFERENCES `kendaraan` (`ID_Kendaraan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perawatan_rutin`
--

LOCK TABLES `perawatan_rutin` WRITE;
/*!40000 ALTER TABLE `perawatan_rutin` DISABLE KEYS */;
INSERT INTO `perawatan_rutin` VALUES
(134,2),
(149,2),
(52,8),
(35,9),
(74,11),
(61,17),
(77,17),
(146,18),
(28,20),
(74,25),
(14,26),
(98,35),
(13,37),
(86,40),
(9,45),
(146,49),
(48,51),
(87,54),
(85,65),
(89,65),
(112,79),
(104,101),
(149,102),
(10,108),
(132,113),
(137,113),
(104,132),
(2,137),
(89,137),
(9,139),
(82,140),
(135,144),
(55,160),
(109,162),
(40,166),
(64,177),
(14,180),
(8,183),
(3,203),
(42,209),
(112,211),
(59,216),
(6,220),
(35,222),
(16,225),
(124,233),
(84,237),
(109,237),
(9,245),
(62,246);
/*!40000 ALTER TABLE `perawatan_rutin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perusahaan`
--

DROP TABLE IF EXISTS `perusahaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perusahaan` (
  `ID_Perusahaan` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Perusahaan`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perusahaan`
--

LOCK TABLES `perusahaan` WRITE;
/*!40000 ALTER TABLE `perusahaan` DISABLE KEYS */;
INSERT INTO `perusahaan` VALUES
(1,'CV Thamrin Wahyudin Tbk'),
(2,'CV Mulyani Melani (Persero) Tbk'),
(3,'PD Sihombing Usamah Tbk'),
(4,'PD Hasanah Nasyidah (Persero) Tbk'),
(5,'Perum Lestari (Persero) Tbk'),
(6,'Perum Sihotang Sitompul (Persero) Tbk'),
(7,'PT Mahendra Tbk'),
(8,'Perum Waluyo (Persero) Tbk'),
(9,'UD Pranowo'),
(10,'UD Sirait Dabukke'),
(11,'PT Pranowo Laksita'),
(12,'PT Mayasari Puspasari'),
(13,'PT Wacana'),
(14,'PD Tarihoran (Persero) Tbk'),
(15,'CV Kusumo Marbun (Persero) Tbk'),
(16,'UD Gunarto'),
(17,'CV Halimah Pranowo'),
(18,'Perum Safitri Suryatmi (Persero) Tbk'),
(19,'UD Fujiati Prakasa'),
(20,'UD Hartati Puspita Tbk'),
(21,'PD Kuswandari'),
(22,'PT Laksmiwati Mustofa (Persero) Tbk'),
(23,'PT Habibi Firmansyah Tbk'),
(24,'CV Mayasari Tbk'),
(25,'PT Rahimah Wibowo'),
(26,'Perum Widiastuti Thamrin Tbk'),
(27,'Perum Purwanti'),
(28,'CV Marpaung (Persero) Tbk'),
(29,'PT Nurdiyanti Maryati Tbk'),
(30,'PT Lestari Suryono Tbk'),
(31,'CV Handayani'),
(32,'Perum Riyanti'),
(33,'CV Hutasoit (Persero) Tbk'),
(34,'PD Yuliarti'),
(35,'PD Wahyuni Tbk'),
(36,'PD Hartati Tbk'),
(37,'PT Rajasa Tbk'),
(38,'UD Habibi Adriansyah'),
(39,'UD Padmasari'),
(40,'Perum Fujiati Utami'),
(41,'PD Maryadi'),
(42,'CV Firmansyah Hidayat Tbk'),
(43,'CV Utami Tbk'),
(44,'Perum Latupono Iswahyudi'),
(45,'UD Hardiansyah Winarno Tbk'),
(46,'PD Pranowo'),
(47,'PT Hartati Dabukke'),
(48,'Perum Prastuti Sitorus'),
(49,'PT Halimah'),
(50,'CV Budiyanto Mansur'),
(51,'PT Kusumo'),
(52,'UD Prakasa Tbk'),
(53,'PD Mahendra (Persero) Tbk'),
(54,'PT Riyanti Tbk'),
(55,'Perum Natsir'),
(56,'PD Yuliarti Tbk'),
(57,'UD Mustofa'),
(58,'Perum Anggraini Tbk'),
(59,'PT Sihotang'),
(60,'CV Simanjuntak Prasetyo'),
(61,'PT Manullang Tbk'),
(62,'Perum Wastuti Dongoran Tbk'),
(63,'Perum Wibowo (Persero) Tbk'),
(64,'CV Suryatmi'),
(65,'PD Puspita Tbk'),
(66,'CV Hastuti Laksmiwati'),
(67,'PD Riyanti Pratama Tbk'),
(68,'UD Santoso Zulkarnain Tbk'),
(69,'PD Wijayanti Permadi'),
(70,'PT Hartati Nashiruddin Tbk'),
(71,'PT Tampubolon (Persero) Tbk'),
(72,'Perum Tamba Anggraini'),
(73,'CV Mansur Oktaviani'),
(74,'CV Maulana'),
(75,'PD Samosir Tbk'),
(76,'Perum Marpaung'),
(77,'UD Simanjuntak (Persero) Tbk'),
(78,'Perum Namaga Kuswandari Tbk'),
(79,'UD Uwais Tbk'),
(80,'PT Prabowo Tbk'),
(81,'PD Pertiwi (Persero) Tbk'),
(82,'CV Rajasa Dongoran'),
(83,'UD Tampubolon'),
(84,'PT Hidayat Tbk'),
(85,'CV Thamrin Natsir Tbk'),
(86,'PT Wijayanti'),
(87,'Perum Najmudin (Persero) Tbk'),
(88,'UD Palastri'),
(89,'UD Haryanto Padmasari (Persero) Tbk'),
(90,'Perum Rajasa Tbk'),
(91,'Perum Safitri Susanti'),
(92,'PD Wibisono'),
(93,'CV Hariyah'),
(94,'UD Wastuti'),
(95,'PT Wastuti Wulandari (Persero) Tbk'),
(96,'PT Nuraini'),
(97,'UD Yolanda'),
(98,'PD Januar Tbk'),
(99,'CV Siregar Hutasoit Tbk'),
(100,'CV Fujiati'),
(101,'CV Pertiwi Astuti (Persero) Tbk'),
(102,'PT Usada Siregar Tbk'),
(103,'UD Firmansyah'),
(104,'PT Napitupulu (Persero) Tbk'),
(105,'PD Halimah'),
(106,'PT Wulandari Hidayat'),
(107,'PT Sinaga Prastuti Tbk'),
(108,'UD Mulyani Tbk'),
(109,'UD Mansur Palastri Tbk'),
(110,'CV Wasita Winarno'),
(111,'PD Napitupulu (Persero) Tbk'),
(112,'Perum Handayani Wacana'),
(113,'PD Hakim Tbk'),
(114,'PT Rajata Wulandari (Persero) Tbk'),
(115,'PT Manullang Sinaga'),
(116,'UD Nababan'),
(117,'Perum Firmansyah Tbk'),
(118,'PT Prasetyo Halim'),
(119,'PT Wulandari Tbk'),
(120,'Perum Sudiati Pratama'),
(121,'PD Yuliarti Pratama'),
(122,'PD Dongoran'),
(123,'PT Nababan Tbk'),
(124,'PT Hassanah Usamah (Persero) Tbk'),
(125,'PD Puspita'),
(126,'PT Firmansyah'),
(127,'PD Widodo Aryani'),
(128,'Perum Wibisono (Persero) Tbk'),
(129,'Perum Haryanto Suwarno (Persero) Tbk'),
(130,'CV Kuswoyo Tbk'),
(131,'CV Haryanti'),
(132,'Perum Thamrin Pranowo Tbk'),
(133,'PT Nainggolan'),
(134,'PT Susanti Samosir'),
(135,'Perum Sihombing'),
(136,'CV Rahayu'),
(137,'UD Pangestu Tbk'),
(138,'PT Adriansyah Fujiati Tbk'),
(139,'Perum Wibowo Sitorus (Persero) Tbk'),
(140,'PT Rahayu Tbk'),
(141,'PD Sinaga Tbk'),
(142,'UD Mahendra Tbk'),
(143,'PT Natsir Lailasari'),
(144,'CV Nurdiyanti (Persero) Tbk'),
(145,'Perum Nasyiah Tbk'),
(146,'CV Prayoga (Persero) Tbk'),
(147,'CV Wastuti'),
(148,'UD Yuniar Namaga Tbk'),
(149,'Perum Tamba Hartati (Persero) Tbk'),
(150,'Perum Farida');
/*!40000 ALTER TABLE `perusahaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perusahaan_asuransi`
--

DROP TABLE IF EXISTS `perusahaan_asuransi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perusahaan_asuransi` (
  `ID_Perusahaan` int(11) NOT NULL,
  PRIMARY KEY (`ID_Perusahaan`),
  CONSTRAINT `perusahaan_asuransi_ibfk_1` FOREIGN KEY (`ID_Perusahaan`) REFERENCES `perusahaan` (`ID_Perusahaan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perusahaan_asuransi`
--

LOCK TABLES `perusahaan_asuransi` WRITE;
/*!40000 ALTER TABLE `perusahaan_asuransi` DISABLE KEYS */;
INSERT INTO `perusahaan_asuransi` VALUES
(1),
(2),
(3),
(5),
(6),
(10),
(11),
(12),
(14),
(15),
(16),
(17),
(19),
(21),
(24),
(27),
(28),
(29),
(30),
(33),
(34),
(37),
(38),
(39),
(42),
(43),
(45),
(48),
(50),
(53),
(57),
(58),
(61),
(62),
(63),
(65),
(68),
(69),
(72),
(74),
(76),
(77),
(78),
(81),
(83),
(85),
(86),
(87),
(89),
(92),
(94),
(97),
(102),
(103),
(104),
(107),
(108),
(110),
(111),
(113),
(114),
(117),
(121),
(126),
(128),
(129),
(130),
(133),
(136),
(137),
(139),
(141),
(143),
(148),
(149);
/*!40000 ALTER TABLE `perusahaan_asuransi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perusahaan_perawatan`
--

DROP TABLE IF EXISTS `perusahaan_perawatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perusahaan_perawatan` (
  `ID_Perusahaan` int(11) NOT NULL,
  `Spesialisasi` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Perusahaan`),
  CONSTRAINT `perusahaan_perawatan_ibfk_1` FOREIGN KEY (`ID_Perusahaan`) REFERENCES `perusahaan` (`ID_Perusahaan`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perusahaan_perawatan`
--

LOCK TABLES `perusahaan_perawatan` WRITE;
/*!40000 ALTER TABLE `perusahaan_perawatan` DISABLE KEYS */;
INSERT INTO `perusahaan_perawatan` VALUES
(4,'Overhaul'),
(7,'Overhaul'),
(8,'Kaki-Kaki'),
(9,'Tune-Up'),
(13,'Kaki-Kaki'),
(18,'Filter'),
(20,'Knalpot'),
(22,'Rem'),
(23,'Filter'),
(25,'Pelek'),
(26,'Rem'),
(31,'Overhaul'),
(32,'Cat'),
(35,'Filter'),
(36,'Mesin'),
(40,'Kopling'),
(41,'Overhaul'),
(44,'Filter'),
(46,'Rem'),
(47,'Kelistrikan'),
(49,'Kaki-Kaki'),
(51,'Kopling'),
(52,'Mesin'),
(54,'Mesin'),
(55,'Cleaning'),
(56,'Lampu'),
(59,'Knalpot'),
(60,'Overhaul'),
(64,'Kelistrikan'),
(66,'Rem'),
(67,'Lampu'),
(70,'Cleaning'),
(71,'Karburator'),
(73,'Rem'),
(75,'Cat'),
(79,'Karburator'),
(80,'Ban'),
(82,'Kaki-Kaki'),
(84,'Tune-Up'),
(88,'Tune-Up'),
(90,'Cleaning'),
(91,'Oli'),
(93,'Pelek'),
(95,'Kaki-Kaki'),
(96,'Tune-Up'),
(98,'Overhaul'),
(99,'Tune-Up'),
(100,'Cleaning'),
(101,'Tune-Up'),
(105,'Tune-Up'),
(106,'Rem'),
(109,'Kelistrikan'),
(112,'Rem'),
(115,'Kelistrikan'),
(116,'Overhaul'),
(118,'Oli'),
(119,'Rem'),
(120,'Oli'),
(122,'Rem'),
(123,'Rem'),
(124,'Tune-Up'),
(125,'Karburator'),
(127,'Kaki-Kaki'),
(131,'Karburator'),
(132,'Mesin'),
(134,'Mesin'),
(135,'Pelek'),
(138,'Kopling'),
(140,'Filter'),
(142,'Kelistrikan'),
(144,'Ban'),
(145,'Kaki-Kaki'),
(146,'Tune-Up'),
(147,'Overhaul'),
(150,'Kelistrikan');
/*!40000 ALTER TABLE `perusahaan_perawatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `recent_customer_data`
--

DROP TABLE IF EXISTS `recent_customer_data`;
/*!50001 DROP VIEW IF EXISTS `recent_customer_data`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `recent_customer_data` AS SELECT
 1 AS `NIK`,
  1 AS `Nama`,
  1 AS `Email`,
  1 AS `No_Telp` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipe_kendaraan`
--

DROP TABLE IF EXISTS `tipe_kendaraan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipe_kendaraan` (
  `ID_Kendaraan` int(11) NOT NULL,
  `Tipe_Kendaraan` enum('Mobil','Motor') NOT NULL,
  PRIMARY KEY (`ID_Kendaraan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipe_kendaraan`
--

LOCK TABLES `tipe_kendaraan` WRITE;
/*!40000 ALTER TABLE `tipe_kendaraan` DISABLE KEYS */;
INSERT INTO `tipe_kendaraan` VALUES
(1,'Mobil'),
(2,'Motor'),
(3,'Motor'),
(4,'Motor'),
(5,'Motor'),
(6,'Motor'),
(7,'Mobil'),
(8,'Motor'),
(9,'Mobil'),
(10,'Mobil'),
(11,'Motor'),
(12,'Motor'),
(13,'Mobil'),
(14,'Motor'),
(15,'Motor'),
(16,'Motor'),
(17,'Motor'),
(18,'Motor'),
(19,'Motor'),
(20,'Motor'),
(21,'Mobil'),
(22,'Motor'),
(23,'Mobil'),
(24,'Motor'),
(25,'Motor'),
(26,'Motor'),
(27,'Motor'),
(28,'Mobil'),
(29,'Mobil'),
(30,'Motor'),
(31,'Mobil'),
(32,'Mobil'),
(33,'Mobil'),
(34,'Motor'),
(35,'Mobil'),
(36,'Motor'),
(37,'Mobil'),
(38,'Motor'),
(39,'Mobil'),
(40,'Mobil'),
(41,'Motor'),
(42,'Motor'),
(43,'Motor'),
(44,'Mobil'),
(45,'Motor'),
(46,'Mobil'),
(47,'Mobil'),
(48,'Motor'),
(49,'Motor'),
(50,'Motor'),
(51,'Mobil'),
(52,'Mobil'),
(53,'Motor'),
(54,'Mobil'),
(55,'Mobil'),
(56,'Motor'),
(57,'Mobil'),
(58,'Mobil'),
(59,'Mobil'),
(60,'Mobil'),
(61,'Motor'),
(62,'Mobil'),
(63,'Mobil'),
(64,'Motor'),
(65,'Mobil'),
(66,'Motor'),
(67,'Motor'),
(68,'Mobil'),
(69,'Motor'),
(70,'Motor'),
(71,'Motor'),
(72,'Mobil'),
(73,'Motor'),
(74,'Mobil'),
(75,'Mobil'),
(76,'Mobil'),
(77,'Mobil'),
(78,'Mobil'),
(79,'Motor'),
(80,'Mobil'),
(81,'Motor'),
(82,'Motor'),
(83,'Motor'),
(84,'Mobil'),
(85,'Mobil'),
(86,'Motor'),
(87,'Motor'),
(88,'Mobil'),
(89,'Mobil'),
(90,'Mobil'),
(91,'Motor'),
(92,'Motor'),
(93,'Mobil'),
(94,'Mobil'),
(95,'Motor'),
(96,'Motor'),
(97,'Mobil'),
(98,'Mobil'),
(99,'Mobil'),
(100,'Mobil'),
(101,'Mobil'),
(102,'Motor'),
(103,'Motor'),
(104,'Mobil'),
(105,'Motor'),
(106,'Motor'),
(107,'Mobil'),
(108,'Mobil'),
(109,'Mobil'),
(110,'Motor'),
(111,'Mobil'),
(112,'Motor'),
(113,'Mobil'),
(114,'Mobil'),
(115,'Motor'),
(116,'Mobil'),
(117,'Mobil'),
(118,'Motor'),
(119,'Mobil'),
(120,'Motor'),
(121,'Mobil'),
(122,'Mobil'),
(123,'Motor'),
(124,'Motor'),
(125,'Mobil'),
(126,'Mobil'),
(127,'Mobil'),
(128,'Motor'),
(129,'Mobil'),
(130,'Mobil'),
(131,'Mobil'),
(132,'Mobil'),
(133,'Mobil'),
(134,'Mobil'),
(135,'Mobil'),
(136,'Motor'),
(137,'Motor'),
(138,'Mobil'),
(139,'Mobil'),
(140,'Motor'),
(141,'Motor'),
(142,'Mobil'),
(143,'Mobil'),
(144,'Mobil'),
(145,'Mobil'),
(146,'Motor'),
(147,'Mobil'),
(148,'Motor'),
(149,'Motor'),
(150,'Mobil'),
(151,'Motor'),
(152,'Mobil'),
(153,'Mobil'),
(154,'Mobil'),
(155,'Mobil'),
(156,'Motor'),
(157,'Motor'),
(158,'Mobil'),
(159,'Motor'),
(160,'Mobil'),
(161,'Motor'),
(162,'Motor'),
(163,'Mobil'),
(164,'Motor'),
(165,'Mobil'),
(166,'Motor'),
(167,'Motor'),
(168,'Mobil'),
(169,'Mobil'),
(170,'Motor'),
(171,'Motor'),
(172,'Mobil'),
(173,'Mobil'),
(174,'Motor'),
(175,'Motor'),
(176,'Mobil'),
(177,'Motor'),
(178,'Motor'),
(179,'Motor'),
(180,'Mobil'),
(181,'Motor'),
(182,'Motor'),
(183,'Mobil'),
(184,'Mobil'),
(185,'Mobil'),
(186,'Motor'),
(187,'Mobil'),
(188,'Mobil'),
(189,'Mobil'),
(190,'Motor'),
(191,'Motor'),
(192,'Motor'),
(193,'Motor'),
(194,'Motor'),
(195,'Mobil'),
(196,'Motor'),
(197,'Motor'),
(198,'Mobil'),
(199,'Motor'),
(200,'Motor'),
(201,'Motor'),
(202,'Motor'),
(203,'Mobil'),
(204,'Motor'),
(205,'Motor'),
(206,'Motor'),
(207,'Mobil'),
(208,'Mobil'),
(209,'Motor'),
(210,'Mobil'),
(211,'Motor'),
(212,'Mobil'),
(213,'Motor'),
(214,'Mobil'),
(215,'Motor'),
(216,'Mobil'),
(217,'Mobil'),
(218,'Motor'),
(219,'Motor'),
(220,'Mobil'),
(221,'Mobil'),
(222,'Motor'),
(223,'Motor'),
(224,'Mobil'),
(225,'Motor'),
(226,'Mobil'),
(227,'Motor'),
(228,'Motor'),
(229,'Mobil'),
(230,'Mobil'),
(231,'Motor'),
(232,'Motor'),
(233,'Motor'),
(234,'Motor'),
(235,'Motor'),
(236,'Mobil'),
(237,'Mobil'),
(238,'Mobil'),
(239,'Motor'),
(240,'Motor'),
(241,'Motor'),
(242,'Mobil'),
(243,'Mobil'),
(244,'Mobil'),
(245,'Motor'),
(246,'Mobil'),
(247,'Mobil'),
(248,'Mobil'),
(249,'Motor'),
(250,'Motor');
/*!40000 ALTER TABLE `tipe_kendaraan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_mobil`
--

DROP TABLE IF EXISTS `view_mobil`;
/*!50001 DROP VIEW IF EXISTS `view_mobil`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_mobil` AS SELECT
 1 AS `ID_Kendaraan`,
  1 AS `Merek`,
  1 AS `Tipe_Bahan_Bakar`,
  1 AS `Jumlah_Rental` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_motor`
--

DROP TABLE IF EXISTS `view_motor`;
/*!50001 DROP VIEW IF EXISTS `view_motor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_motor` AS SELECT
 1 AS `ID_Kendaraan`,
  1 AS `Merek`,
  1 AS `Tipe_Bahan_Bakar`,
  1 AS `Jumlah_Rental` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `kendaraan_memenuhi_kriteria`
--

/*!50001 DROP VIEW IF EXISTS `kendaraan_memenuhi_kriteria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kendaraan_memenuhi_kriteria` AS select `k`.`ID_Kendaraan` AS `id_kendaraan`,`k`.`Merek` AS `merek`,`k`.`Plat` AS `plat`,`k`.`Tipe_Mesin` AS `tipe_mesin` from ((((`kendaraan` `k` join `perawatan_rutin` `pr`) join `asuransi` `a`) join `layanan_perawatan_rutin` `lpr`) join `layanan_asuransi` `la`) where `k`.`ID_Kendaraan` = `pr`.`ID_Kendaraan` and `pr`.`ID_Kendaraan` = `a`.`ID_Kendaraan` and `pr`.`ID_Layanan` = `lpr`.`ID_Layanan` and `a`.`ID_Layanan` = `la`.`ID_Layanan` and `lpr`.`Tanggal_Perawatan` <= curdate() - interval 6 month and `la`.`Tanggal_Berakhir` >= curdate() + interval 2 year */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recent_customer_data`
--

/*!50001 DROP VIEW IF EXISTS `recent_customer_data`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recent_customer_data` AS select distinct `pg`.`NIK` AS `NIK`,`pg`.`Nama` AS `Nama`,`pg`.`Email` AS `Email`,`pg`.`No_Telp` AS `No_Telp` from ((`peminjaman` `pm` join `pelayanan` `pl` on(`pm`.`ID_Peminjaman` = `pl`.`ID_Peminjaman`)) join `pelanggan` `pg` on(`pg`.`NIK` = `pl`.`NIK`)) where year(`pm`.`Tanggal_Mulai`) >= 2020 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_mobil`
--

/*!50001 DROP VIEW IF EXISTS `view_mobil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_mobil` AS select `k`.`ID_Kendaraan` AS `ID_Kendaraan`,`k`.`Merek` AS `Merek`,`k`.`Tipe_Mesin` AS `Tipe_Bahan_Bakar`,sum(`dp`.`Jumlah`) AS `Jumlah_Rental` from ((`kendaraan` `k` join `mobil` `m` on(`k`.`ID_Kendaraan` = `m`.`ID_Kendaraan`)) join `detail_peminjaman` `dp` on(`k`.`ID_Kendaraan` = `dp`.`ID_Kendaraan`)) group by `k`.`ID_Kendaraan` order by sum(`dp`.`Jumlah`) desc limit 25 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_motor`
--

/*!50001 DROP VIEW IF EXISTS `view_motor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_motor` AS select `k`.`ID_Kendaraan` AS `ID_Kendaraan`,`k`.`Merek` AS `Merek`,`k`.`Tipe_Mesin` AS `Tipe_Bahan_Bakar`,sum(`dp`.`Jumlah`) AS `Jumlah_Rental` from ((`kendaraan` `k` join `motor` `m` on(`k`.`ID_Kendaraan` = `m`.`ID_Kendaraan`)) join `detail_peminjaman` `dp` on(`k`.`ID_Kendaraan` = `dp`.`ID_Kendaraan`)) group by `k`.`ID_Kendaraan` order by sum(`dp`.`Jumlah`) desc limit 25 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-18 21:23:46
