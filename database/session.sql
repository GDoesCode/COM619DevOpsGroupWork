-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

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
-- Table structure for table `express_session`
--

DROP TABLE IF EXISTS `express_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `express_session` (
  `id` varchar(32) DEFAULT NULL,
  `data` varchar(118) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `express_session`
--

LOCK TABLES `express_session` WRITE;
/*!40000 ALTER TABLE `express_session` DISABLE KEYS */;
INSERT INTO `express_session` VALUES ('ahBnAwjbMb6Ha3RL5YnVIizkIlTYviLz','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-03-21T13:44:31.138Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('AEdEhnm5-UXQSrWRvOOPyQe69q9q2H2v','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-03-29T01:38:04.686Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('KZMLYApGISgs_EVBYBCGjnOZ00Pat4nK','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-03-30T17:03:02.707Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('0ZolCG5TEIN4Iwx2WhW7Wcz-c-e4Nr9B','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-02T23:03:23.376Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('NqFuuX76q6-uWascrXJtb-myS-E35ajr','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-03T13:38:33.629Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('SrF5TP-cTQpel77DCVrcedb_F-5g-hju','{\"cookie\":{\"originalMaxAge\":599999,\"expires\":\"2023-04-11T15:21:02.712Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('RbPhWUEMCVrrU6xKpX96WmjNZc-k8302','{\"cookie\":{\"originalMaxAge\":599999,\"expires\":\"2023-04-11T16:07:25.719Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('CaebF8bj5ymVaoF9OWgT2ngHvK4B3v15','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-11T17:59:53.530Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('39hyvXWe_NJuZixqK5fhk16SrYgcaTus','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-14T15:17:29.322Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('Phx3o5arWP4Uf--77Iojk7BQZcO8t0cY','{\"cookie\":{\"originalMaxAge\":599999,\"expires\":\"2023-04-17T10:15:57.069Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('2TQ1wnPp7NtcTylv5RbelJbNLkHnj3jY','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-17T10:44:42.511Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('yodZED_POl0zkVNSswMuLhAi4i19pCZD','{\"cookie\":{\"originalMaxAge\":599998,\"expires\":\"2023-04-17T12:27:49.638Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('cHS5bxTUwP-RHuaS4fTK110oaj83lpBh','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-19T12:15:58.959Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('IX3AvumAta82LgQLZOc9LlcAbYXFSKJK','{\"cookie\":{\"originalMaxAge\":599999,\"expires\":\"2023-04-19T13:57:21.048Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('YXywjdqHrpfureLca5aN0tERb0kGm3U8','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-24T09:41:14.965Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('bjMNvNMFAeWmlyI2Gizkwuu-FmWK09Pa','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-24T10:23:26.508Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('aKhs_1Dj6N9fiSzsJJ5k489FJoI7eeHl','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-24T10:48:25.992Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('JHwhzNkr7JtOzSDegOJTf1gz7yeLTwcP','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-24T11:32:58.381Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('T7VlXNnYk5RnluZwt7gyosxfly8AHnzh','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-24T12:12:20.878Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('xqqDXzGgjoZs8tXbSKcikq_XxoIpPIQs','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-24T12:34:47.148Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('x-aOE_3gRVT2tpjnM971-4e2OWr1Zs0e','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-24T15:34:57.398Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('W-RjBEvoZSEONCcydThGAtJtlHqzjLvV','{\"cookie\":{\"originalMaxAge\":599999,\"expires\":\"2023-04-25T15:04:51.319Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('QAeYusNDU_C8avGgZ2pkSXw28uERtiLW','{\"cookie\":{\"originalMaxAge\":599999,\"expires\":\"2023-04-25T16:07:36.070Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('Y7m3WHWF2bqs2nfocHNmxQMy5ACWA1m4','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-25T16:20:55.104Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('2-sp4gBzxca9gW7vG_OVi5yz8UoxvjK1','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-25T17:21:11.834Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('78SSQoBDWBJsraEKBuvKje-N9yOKVTK3','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-25T20:55:49.362Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('8vTnT83tslcQCI22WRV9ZHILfei6zs0b','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-04-26T10:16:59.205Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('fInNc0gC1SbLBNidXJcmfhohJE52NtVr','{\"cookie\":{\"originalMaxAge\":599998,\"expires\":\"2023-04-26T15:10:58.208Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}'),('8USSCn-RQWr1UEt_vuPWU86YTpQ-sBcd','{\"cookie\":{\"originalMaxAge\":600000,\"expires\":\"2023-10-05T09:01:35.431Z\",\"httpOnly\":false,\"path\":\"/\"},\"username\":\"tim\"}');
/*!40000 ALTER TABLE `express_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-18 10:46:23

