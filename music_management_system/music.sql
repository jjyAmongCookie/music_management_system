-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES UTF8MB4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `album_id` char(8) NOT NULL,
  `album_name` varchar(30) NOT NULL,
  `album_language` varchar(10) DEFAULT NULL,
  `record_company` varchar(30) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `album_type` varchar(20) DEFAULT NULL,
  `singer_id` char(8) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `singer_id` (`singer_id`),
  CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`singer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES ('00000386','qgiuhst',NULL,NULL,NULL,NULL,'00009958'),('00000612','lmcjpaf',NULL,NULL,NULL,NULL,'00009042'),('00001215','jnakxyp',NULL,NULL,NULL,NULL,'00009042'),('00001706','ytzackh',NULL,NULL,NULL,NULL,'00001598'),('00002139','aougwyv',NULL,NULL,NULL,NULL,'00002014'),('00002326','jbzkxyr',NULL,NULL,NULL,NULL,'00005255'),('00002724','xbneamw',NULL,NULL,NULL,NULL,'00003878'),('00003821','lqmxrwd',NULL,NULL,NULL,NULL,'00006260'),('00004176','hvzlegm',NULL,NULL,NULL,NULL,'00006296'),('00004207','jofcbxi',NULL,NULL,NULL,NULL,'00002705'),('00004930','mkexzhq',NULL,NULL,NULL,NULL,'00009112'),('00005016','avjwmlr',NULL,NULL,NULL,NULL,'00009170'),('00005061','odezjfg',NULL,NULL,NULL,NULL,'00008045'),('00005810','iaevfcd',NULL,NULL,NULL,NULL,'00009016'),('00006003','fosjpwd',NULL,NULL,NULL,NULL,'00001134'),('00006440','hkpmuwq',NULL,NULL,NULL,NULL,'00004715'),('00006962','dwucnjp',NULL,NULL,NULL,NULL,'00001131'),('00007533','spvuchy',NULL,NULL,NULL,NULL,'00002014'),('00007662','rgqxwzy',NULL,NULL,NULL,NULL,'00000592'),('00007956','vgihroc',NULL,NULL,NULL,NULL,'00000592'),('00007981','yfqwerx',NULL,NULL,NULL,NULL,'00002014'),('00007983','vanlmip',NULL,NULL,NULL,NULL,'00008045'),('00008237','lcspfeu',NULL,NULL,NULL,NULL,'00009112'),('00008534','oafiljg',NULL,NULL,NULL,NULL,'00003597'),('00008711','uodpyks',NULL,NULL,NULL,NULL,'00003563'),('00008766','eirzctq',NULL,NULL,NULL,NULL,'00005117'),('00008996','iequwzr',NULL,NULL,NULL,NULL,'00003563'),('00009028','eapgsty',NULL,NULL,NULL,NULL,'00000592'),('00009427','earcixh',NULL,NULL,NULL,NULL,'00001953'),('00009457','ldtsyoi',NULL,NULL,NULL,NULL,'00009016');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composers`
--

DROP TABLE IF EXISTS `composers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composers` (
  `composer_id` char(8) NOT NULL,
  `composer_name` varchar(20) NOT NULL,
  `composer_nationality` varchar(20) DEFAULT NULL,
  `composer_birthplace` varchar(20) DEFAULT NULL,
  `composer_birth` date DEFAULT NULL,
  PRIMARY KEY (`composer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composers`
--

LOCK TABLES `composers` WRITE;
/*!40000 ALTER TABLE `composers` DISABLE KEYS */;
INSERT INTO `composers` VALUES ('00000232','xslcday',NULL,NULL,NULL),('00000241','kszaeth',NULL,NULL,NULL),('00000550','sqfcaoh',NULL,NULL,NULL),('00000584','dgspzjb',NULL,NULL,NULL),('00001356','mzhblqs',NULL,NULL,NULL),('00001898','mdhjwfn',NULL,NULL,NULL),('00002224','hxqaeyu',NULL,NULL,NULL),('00002828','cdmfgrt',NULL,NULL,NULL),('00002840','pbetwxo',NULL,NULL,NULL),('00002956','nrcqbah',NULL,NULL,NULL),('00003440','xtfuepg',NULL,NULL,NULL),('00004090','obklqgc',NULL,NULL,NULL),('00004187','mnkagiy',NULL,NULL,NULL),('00004266','wpthuvb',NULL,NULL,NULL),('00004653','igfuvkz',NULL,NULL,NULL),('00004862','gfyqkhd',NULL,NULL,NULL),('00005503','jqyuakl',NULL,NULL,NULL),('00005954','dbxmtri',NULL,NULL,NULL),('00006114','ebowyrh',NULL,NULL,NULL),('00006338','rhntsky',NULL,NULL,NULL),('00006456','mhvzoej',NULL,NULL,NULL),('00007179','nlbueym',NULL,NULL,NULL),('00007365','wdoencl',NULL,NULL,NULL),('00007648','ngvuebm',NULL,NULL,NULL),('00007686','olbhzsd',NULL,NULL,NULL),('00008077','dayqonb',NULL,NULL,NULL),('00008302','utmayfw',NULL,NULL,NULL),('00009365','bouhpay',NULL,NULL,NULL),('00009503','ngrafyd',NULL,NULL,NULL),('00009836','deblqtk',NULL,NULL,NULL);
/*!40000 ALTER TABLE `composers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lyricists`
--

DROP TABLE IF EXISTS `lyricists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lyricists` (
  `lyricist_id` char(8) NOT NULL,
  `lyricist_name` varchar(20) NOT NULL,
  `lyricist_nationality` varchar(20) DEFAULT NULL,
  `lyricist_birthplace` varchar(20) DEFAULT NULL,
  `lyricist_birth` date DEFAULT NULL,
  PRIMARY KEY (`lyricist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lyricists`
--

LOCK TABLES `lyricists` WRITE;
/*!40000 ALTER TABLE `lyricists` DISABLE KEYS */;
INSERT INTO `lyricists` VALUES ('00000005','oefyxuq',NULL,NULL,NULL),('00000865','ynbckrz',NULL,NULL,NULL),('00001186','akhjfxy',NULL,NULL,NULL),('00001553','zxtdbhe',NULL,NULL,NULL),('00001772','cunkvbl',NULL,NULL,NULL),('00002189','omjewsz',NULL,NULL,NULL),('00002525','ysupzqo',NULL,NULL,NULL),('00002700','rexjsvp',NULL,NULL,NULL),('00002724','nckmzqu',NULL,NULL,NULL),('00003312','pysuizd',NULL,NULL,NULL),('00003474','jwlycvo',NULL,NULL,NULL),('00003714','sxzijbc',NULL,NULL,NULL),('00004141','qhmbprj',NULL,NULL,NULL),('00004284','jstoylv',NULL,NULL,NULL),('00004838','nivhzux',NULL,NULL,NULL),('00005725','zhnvdfr',NULL,NULL,NULL),('00005960','iwvtdfu',NULL,NULL,NULL),('00006056','acfjtmr',NULL,NULL,NULL),('00006140','cxmruwa',NULL,NULL,NULL),('00006298','wtzhvry',NULL,NULL,NULL),('00006506','yjbxtzs',NULL,NULL,NULL),('00006554','rijxlyv',NULL,NULL,NULL),('00006811','rotbyha',NULL,NULL,NULL),('00007999','fdjyhkw',NULL,NULL,NULL),('00008340','vkwmqzt',NULL,NULL,NULL),('00008415','idpqfey',NULL,NULL,NULL),('00008754','lunrwfe',NULL,NULL,NULL),('00008838','dznlxur',NULL,NULL,NULL),('00009507','ahpmwyz',NULL,NULL,NULL),('00009881','psrgevk',NULL,NULL,NULL);
/*!40000 ALTER TABLE `lyricists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singers`
--

DROP TABLE IF EXISTS `singers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `singers` (
  `singer_id` char(8) NOT NULL,
  `singer_name` varchar(20) NOT NULL,
  `singer_nationality` varchar(20) DEFAULT NULL,
  `singer_constellation` varchar(10) DEFAULT NULL,
  `singer_height` decimal(4,1) DEFAULT NULL,
  `singer_weight` decimal(4,1) DEFAULT NULL,
  `singer_birthplace` varchar(20) DEFAULT NULL,
  `singer_birth` date DEFAULT NULL,
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singers`
--

LOCK TABLES `singers` WRITE;
/*!40000 ALTER TABLE `singers` DISABLE KEYS */;
INSERT INTO `singers` VALUES ('00000398','vpydhkn',NULL,NULL,NULL,NULL,NULL,NULL),('00000592','kdjlisc',NULL,NULL,NULL,NULL,NULL,NULL),('00001131','ajpbzor',NULL,NULL,NULL,NULL,NULL,NULL),('00001134','vigwoml',NULL,NULL,NULL,NULL,NULL,NULL),('00001598','uaqhexz',NULL,NULL,NULL,NULL,NULL,NULL),('00001953','oigtvhr',NULL,NULL,NULL,NULL,NULL,NULL),('00002014','jnpgorh',NULL,NULL,NULL,NULL,NULL,NULL),('00002705','nvogwqj',NULL,NULL,NULL,NULL,NULL,NULL),('00002878','jlxvtbw',NULL,NULL,NULL,NULL,NULL,NULL),('00003116','fghveqj',NULL,NULL,NULL,NULL,NULL,NULL),('00003284','therkja',NULL,NULL,NULL,NULL,NULL,NULL),('00003563','qxldigz',NULL,NULL,NULL,NULL,NULL,NULL),('00003597','zgwyfat',NULL,NULL,NULL,NULL,NULL,NULL),('00003878','bizerst',NULL,NULL,NULL,NULL,NULL,NULL),('00004715','inctxjy',NULL,NULL,NULL,NULL,NULL,NULL),('00005117','tsgmjik',NULL,NULL,NULL,NULL,NULL,NULL),('00005255','metdvck',NULL,NULL,NULL,NULL,NULL,NULL),('00005854','hqoxafz',NULL,NULL,NULL,NULL,NULL,NULL),('00006260','nyvgqac',NULL,NULL,NULL,NULL,NULL,NULL),('00006289','hyucigt',NULL,NULL,NULL,NULL,NULL,NULL),('00006296','lzobjhk',NULL,NULL,NULL,NULL,NULL,NULL),('00007391','hpvyxem',NULL,NULL,NULL,NULL,NULL,NULL),('00007688','ptlejux',NULL,NULL,NULL,NULL,NULL,NULL),('00008045','dkhzspy',NULL,NULL,NULL,NULL,NULL,NULL),('00008270','yliztkx',NULL,NULL,NULL,NULL,NULL,NULL),('00009016','eylpskc',NULL,NULL,NULL,NULL,NULL,NULL),('00009042','xgthplu',NULL,NULL,NULL,NULL,NULL,NULL),('00009112','qevwsju',NULL,NULL,NULL,NULL,NULL,NULL),('00009170','pxvsjym',NULL,NULL,NULL,NULL,NULL,NULL),('00009958','cahmptr',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `singers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `song_id` char(8) NOT NULL,
  `song_name` varchar(20) DEFAULT NULL,
  `publish_year` char(4) DEFAULT NULL,
  `singer_id` char(8) DEFAULT NULL,
  `composer_id` char(8) DEFAULT NULL,
  `lyricist_id` char(8) DEFAULT NULL,
  `album_id` char(8) DEFAULT NULL,
  PRIMARY KEY (`song_id`),
  KEY `singer_id` (`singer_id`),
  KEY `composer_id` (`composer_id`),
  KEY `lyricist_id` (`lyricist_id`),
  KEY `album_id` (`album_id`),
  CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`singer_id`),
  CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`composer_id`) REFERENCES `composers` (`composer_id`),
  CONSTRAINT `songs_ibfk_3` FOREIGN KEY (`lyricist_id`) REFERENCES `lyricists` (`lyricist_id`),
  CONSTRAINT `songs_ibfk_4` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES ('00001029','shtwoqb',NULL,'00004715','00006338','00001553','00003821'),('00001111','mabdxyv',NULL,'00005117','00004653','00002525','00006962'),('00001122','qwlbmht',NULL,'00003878','00007179','00002525','00005016'),('00001827','yjczxab',NULL,'00002014','00007648','00006140','00006440'),('00002107','kmaruqt',NULL,'00003563','00005503','00007999','00007956'),('00002199','nytxvfq',NULL,'00008045','00003440','00001553','00007956'),('00002420','bgznmfc',NULL,'00000398','00000550','00002700','00003821'),('00002556','qnzfvxc',NULL,'00009112','00009365','00000005','00008711'),('00002732','nibdtze',NULL,'00001598','00009836','00006506','00002724'),('00002878','drsgvup',NULL,'00003597','00008302','00001186','00004930'),('00002935','tyupvri',NULL,'00002705','00008077','00006140','00008766'),('00004484','vehxdkj',NULL,'00002878','00000232','00003714','00004207'),('00004593','srjypfv',NULL,'00008045','00008077','00003714','00006440'),('00004619','pktvslz',NULL,'00003597','00000550','00008415','00007983'),('00005138','aptezjf',NULL,'00006289','00009503','00004838','00009457'),('00005520','jnbmale',NULL,'00009170','00007648','00008838','00007983'),('00005724','smrbzyo',NULL,'00009042','00000584','00004838','00008766'),('00005738','ceniqsk',NULL,'00009958','00009503','00002724','00009457'),('00005819','klsqinb',NULL,'00008045','00006456','00004284','00000612'),('00006565','hfklcwg',NULL,'00004715','00006338','00006811','00009457'),('00006762','epnwzco',NULL,'00003116','00004187','00002724','00007956'),('00007304','hxtfdzs',NULL,'00009112','00005954','00009881','00008711'),('00007664','zumtkfw',NULL,'00003878','00009836','00009881','00008711'),('00008222','yfvoiac',NULL,'00006260','00004653','00002525','00006962'),('00008529','xgkievj',NULL,'00007688','00005503','00009507','00004930'),('00008729','bfjxzrn',NULL,'00002014','00007179','00005725','00004207'),('00009071','moegauk',NULL,'00009112','00000584','00003714','00009427'),('00009093','uvzmkpj',NULL,'00005117','00007179','00007999','00000386'),('00009321','xcdyisj',NULL,'00001598','00002828','00008415','00008534'),('00009840','vjzuegt',NULL,'00008045','00000550','00008415','00008237');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-13 21:42:55
