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
-- Table structure for table `poi_reviews`
--

DROP TABLE IF EXISTS `poi_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poi_reviews` (
  `id` tinyint(4) DEFAULT NULL,
  `poi_id` smallint(6) DEFAULT NULL,
  `review` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poi_reviews`
--

LOCK TABLES `poi_reviews` WRITE;
/*!40000 ALTER TABLE `poi_reviews` DISABLE KEYS */;
INSERT INTO `poi_reviews` VALUES (23,1,'test'),(24,23,'test'),(25,23,'test'),(26,295,'test'),(27,341,'test');
/*!40000 ALTER TABLE `poi_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poi_users`
--

DROP TABLE IF EXISTS `poi_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poi_users` (
  `id` tinyint(4) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `isAdmin` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poi_users`
--

LOCK TABLES `poi_users` WRITE;
/*!40000 ALTER TABLE `poi_users` DISABLE KEYS */;
INSERT INTO `poi_users` VALUES (1,'tim','tim123'),(2,'jane','jane123');
/*!40000 ALTER TABLE `poi_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pointsofinterest`
--

DROP TABLE IF EXISTS `pointsofinterest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pointsofinterest` (
  `id` smallint(32) DEFAULT NULL,
  `name` varchar(41) DEFAULT NULL,
  `type` varchar(36) DEFAULT NULL,
  `country` varchar(36) DEFAULT NULL,
  `region` varchar(36) DEFAULT NULL,
  `lon` varchar(32) DEFAULT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `description` varchar(51) DEFAULT NULL,
  `recommendations` varchar(32) DEFAULT NULL,
   `imgRef` varchar (32) DEFUALT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pointsofinterest`
--

LOCK TABLES `pointsofinterest` WRITE;
/*!40000 ALTER TABLE `pointsofinterest` DISABLE KEYS */;
INSERT INTO `pointsofinterest` VALUES (1,'test','test','test','test','1.0','1.0','test','1'),(2,'New York','city','USA','NY','-74.0','40.75','A very interesting place','0'),(3,'London','city','UK','London','-0.1','51.51','A very interesting place','0'),(4,'Oxford','city','UK','Oxfordshire','-1.25','51.75','A very interesting place','0'),(5,'Bath','city','UK','Somerset','-2.36','51.38','A very interesting place','0'),(6,'Paris','city','France','Paris','2.35','48.86','A very interesting place','0'),(7,'Rome','city','Italy','Rome','12.48','41.89','A very interesting place','0'),(8,'San Francisco','city','USA','California','-122.4','37.78','A very interesting place','0'),(9,'Los Angeles','city','USA','California','-118.2','34.05','A very interesting place','0'),(10,'Paderborn','city','Germany','Nordrhein_Westfalen','8.75','51.72','A very interesting place','0'),(11,'Hannover','city','Germany','Niedersachsen','9.74','52.38','A very interesting place','0'),(12,'Koeln','city','Germany','Nordrhein_Westfalen','6.96','50.94','A very interesting place','0'),(13,'Freiburg','city','Germany','Baden-Wuerttemberg','7.85','48.0','A very interesting place','0'),(14,'Garmisch-Partenkirchen','town','Germany','Bayern','11.1','47.49','A very interesting place','0'),(15,'Bergisch Gladbach','town','Germany','Nordrhein_Westfalen','7.13','50.99','A very interesting place','0'),(16,'Petersfield','town','UK','Hampshire','-0.937472','51.0038','A very interesting place','13'),(17,'Lyndhurst','town','UK','Hampshire','-1.57484','50.8728','A very interesting place','2'),(18,'New Milton','town','UK','Hampshire','-1.65519','50.7531','A very interesting place','3'),(19,'Southampton','city','UK','Hampshire','-1.4042','50.9035','A very interesting place','1'),(20,'Romsey','town','UK','Hampshire','-1.49973','50.9895','A very interesting place','1'),(21,'Hedge End','town','UK','Hampshire','-1.30714','50.9154','A very interesting place','1'),(22,'Hythe','town','UK','Hampshire','-1.40326','50.8694','A very interesting place','1'),(23,'Alton','town','UK','Hampshire','-0.972413','51.1456','A very interesting place','1'),(24,'Portsmouth','city','UK','Hampshire','-1.0744','50.8065','A very interesting place','1'),(25,'Ringwood','town','UK','Wiltshire','-1.79142','50.8469','A very interesting place','0'),(26,'Fordingbridge','town','UK','Wiltshire','-1.79235','50.9266','A very interesting place','0'),(27,'Havant','town','UK','Hampshire','-0.979901','50.8527','A very interesting place','1'),(28,'Andover','town','UK','Hampshire','-1.47935','51.2078','A very interesting place','1'),(29,'Farnborough','town','UK','Surrey','-0.756496','51.2941','A very interesting place','0'),(30,'Emsworth','town','UK','Hampshire','-0.937185','50.8449','A very interesting place','1'),(31,'Tadley','town','UK','Hampshire','-1.13834','51.3531','A very interesting place','1'),(32,'Waterlooville','town','UK','Hampshire','-1.03044','50.8803','A very interesting place','1'),(33,'Odiham','town','UK','Hampshire','-0.939688','51.2535','A very interesting place','1'),(34,'Hook','town','UK','Hampshire','-0.963113','51.2816','A very interesting place','1'),(35,'Eastleigh','town','UK','Hampshire','-1.35282','50.9676','A very interesting place','1'),(36,'South Hayling','town','UK','Hampshire','-0.974811','50.7864','A very interesting place','1'),(37,'Fleet','town','UK','Surrey','-0.83532','51.2749','A very interesting place','0'),(38,'Gosport','town','UK','Hampshire','-1.12649','50.793','A very interesting place','1'),(39,'Basingstoke','town','UK','Hampshire','-1.0862','51.2628','A very interesting place','1'),(40,'Bordon','town','UK','Surrey','-0.859336','51.1091','A very interesting place','0'),(41,'Whitchurch','town','UK','Hampshire','-1.33843','51.2299','A very interesting place','1'),(42,'Lymington','town','UK','Hampshire','-1.54269','50.7584','A very interesting place','1'),(43,'Blackwater','town','UK','Surrey','-0.77884','51.3306','A very interesting place','0'),(44,'Totton and Eling','town','UK','Hampshire','-1.49637','50.9177','A very interesting place','2'),(45,'Hartley Wintney','town','UK','Surrey','-0.899714','51.3062','A very interesting place','0'),(46,'Winchester','city','UK','Hampshire','-1.31355','51.0617','A very interesting place','1'),(47,'Chandlers Ford','town','UK','Hampshire','-1.38331','50.9828','A very interesting place','1'),(48,'Bishops Waltham','town','UK','Hampshire','-1.21801','50.9543','A very interesting place','1'),(49,'Aldershot','town','UK','Surrey','-0.756526','51.2519','A very interesting place','0'),(50,'New Alresford','town','UK','Hampshire','-1.15854','51.0854','A very interesting place','1'),(51,'Fareham','town','UK','Hampshire','-1.17925','50.854','A very interesting place','1'),(52,'Ludgershall','town','UK','Hampshire','-1.62337','51.257','A very interesting place','1'),(53,'Marlborough','town','UK','Wiltshire','-1.72895','51.421','A very interesting place','0'),(54,'Wilton','town','UK','Wiltshire','-1.8628','51.0804','A very interesting place','0'),(55,'Amesbury','town','UK','Wiltshire','-1.77511','51.1727','A very interesting place','0'),(56,'Devizes','town','UK','Wiltshire','-1.99266','51.3508','A very interesting place','0'),(57,'Salisbury','city','UK','Wiltshire','-1.79512','51.0737','A very interesting place','0'),(58,'Haslemere','town','UK','Sussex','-0.709777','51.0876','A very interesting place','0'),(59,'Woking','town','UK','Surrey','-0.556445','51.3202','A very interesting place','0'),(60,'Staines-upon-Thames','town','UK','Surrey','-0.511044','51.434','A very interesting place','0'),(61,'Farnham','town','UK','Surrey','-0.798015','51.2143','A very interesting place','0'),(62,'Godalming','town','UK','Surrey','-0.614907','51.1858','A very interesting place','0'),(63,'Camberley','town','UK','Surrey','-0.740629','51.3394','A very interesting place','0'),(64,'Egham','town','UK','Surrey','-0.547309','51.4313','A very interesting place','0'),(65,'Guildford','town','UK','Surrey','-0.565362','51.2353','A very interesting place','0'),(66,'Chertsey','town','UK','Surrey','-0.504125','51.3884','A very interesting place','0'),(67,'Littlehampton','town','UK','Sussex','-0.536691','50.8122','A very interesting place','0'),(68,'Petworth','town','UK','Sussex','-0.610109','50.9863','A very interesting place','0'),(69,'Midhurst','town','UK','Sussex','-0.742806','50.9819','A very interesting place','0'),(70,'Chichester','city','UK','Sussex','-0.778782','50.8367','A very interesting place','0'),(71,'Selsey','town','UK','Sussex','-0.79229','50.7328','A very interesting place','0'),(72,'Bognor Regis','town','UK','Sussex','-0.673072','50.7835','A very interesting place','0'),(73,'Arundel','town','UK','Sussex','-0.55345','50.8541','A very interesting place','0'),(74,'Vine Inn','pub','UK','Hampshire','-1.31197','50.8806','A very interesting place','1'),(75,'Fox and Hounds/Lone Barn','pub','UK','Hampshire','-1.31733','50.8829','A very interesting place','1'),(76,'Jolly Sailor','pub','UK','Hampshire','-1.3043','50.8818','A very interesting place','1'),(77,'Millers Pond','pub','UK','Hampshire','-1.36139','50.8977','A very interesting place','1'),(78,'White Swan','pub','UK','Hampshire','-1.36152','50.9381','A very interesting place','1'),(79,'Two Brothers','pub','UK','Hampshire','-1.35281','50.9326','A very interesting place','1'),(80,'The Royal Oak','pub','UK','Hampshire','-1.43167','50.8265','A very interesting place','1'),(81,'The Langley Tavern','pub','UK','Hampshire','-1.36811','50.8074','A very interesting place','1'),(82,'The Bridge','pub','UK','Hampshire','-1.39856','50.8259','A very interesting place','1'),(83,'Salmon Leap','pub','UK','Hampshire','-1.48754','50.9244','A very interesting place','1'),(84,'Cleveland Bay','pub','UK','Hampshire','-1.40201','50.9783','A very interesting place','1'),(85,'Fleming Arms','pub','UK','Hampshire','-1.37453','50.9423','A very interesting place','1'),(86,'Dog and Crook','pub','UK','Hampshire','-1.32791','50.9931','A very interesting place','1'),(87,'Stoneham Arms','pub','UK','Hampshire','-1.38775','50.9443','A very interesting place','1'),(88,'Travellers Rest','pub','UK','Hampshire','-1.3894','50.8553','A very interesting place','1'),(89,'The Forest Home','pub','UK','Hampshire','-1.39137','50.842','A very interesting place','1'),(90,'The Cottage','pub','UK','Hampshire','-1.34','50.88','A very interesting place','1'),(91,'The Roll Call','pub','UK','Hampshire','-1.33998','50.8811','A very interesting place','1'),(92,'The Swan','pub','UK','Hampshire','-1.3627','50.8957','A very interesting place','1'),(93,'Chamberlayne Arms','pub','UK','Hampshire','-1.35289','50.9052','A very interesting place','1'),(94,'The Manor','pub','UK','Hampshire','-1.37386','50.9007','A very interesting place','1'),(95,'Spike Islander','pub','UK','Hampshire','-1.35668','50.9028','A very interesting place','1'),(96,'Big Cheese','pub','UK','Hampshire','-1.35604','50.9207','A very interesting place','1'),(97,'Fox and Hounds','pub','UK','Hampshire','-1.35659','50.9181','A very interesting place','1'),(98,'The Obelisk','pub','UK','Hampshire','-1.37264','50.8943','A very interesting place','1'),(99,'Hare and Hounds','pub','UK','Hampshire','-1.33501','50.9197','A very interesting place','1'),(100,'The Rising Sun','pub','UK','Hampshire','-1.30588','50.8524','A very interesting place','1'),(101,'Stones','pub','UK','Hampshire','-1.35324','50.9683','A very interesting place','1'),(102,'Humble Plumb','pub','UK','Hampshire','-1.35371','50.9168','A very interesting place','1'),(103,'Peartree Inn','pub','UK','Hampshire','-1.37277','50.9043','A very interesting place','1'),(104,'Red Lion','pub','UK','Hampshire','-1.35828','50.9144','A very interesting place','1'),(105,'The Earl Of Locksley','pub','UK','Hampshire','-1.3596','50.904','A very interesting place','1'),(106,'Gardeners Arms','pub','UK','Hampshire','-1.35388','50.8915','A very interesting place','1'),(107,'The Ark','pub','UK','Hampshire','-1.35777','50.9292','A very interesting place','1'),(108,'The Cricketers','pub','UK','Hampshire','-1.37452','50.9614','A very interesting place','1'),(109,'The Sun Inn','pub','UK','Hampshire','-1.4854','50.9916','A very interesting place','1'),(110,'The Chamberlayne Arms','pub','UK','Hampshire','-1.35413','50.9661','A very interesting place','1'),(111,'The Grantham Arms','pub','UK','Hampshire','-1.35828','50.965','A very interesting place','1'),(112,'The Bent Brief','pub','UK','Hampshire','-1.39656','50.9197','A very interesting place','1'),(113,'The Litten Tree','pub','UK','Hampshire','-1.35329','50.9679','A very interesting place','1'),(114,'Percy Arms','pub','UK','Hampshire','-1.35407','50.9155','A very interesting place','1'),(115,'Good Companion','pub','UK','Hampshire','-1.35932','50.9697','A very interesting place','1'),(116,'Exford Arms','pub','UK','Hampshire','-1.34461','50.9175','A very interesting place','1'),(117,'Ham Farm Pub','pub','UK','Hampshire','-1.35087','50.9838','A very interesting place','1'),(118,'Ham Farm Harvester','restaurant','UK','Hampshire','-1.3505','50.984','A very interesting place','1'),(119,'Bishop Blaize','pub','UK','Hampshire','-1.49231','50.9894','A very interesting place','1'),(120,'Mono','pub','UK','Hampshire','-1.40464','50.9124','A very interesting place','1'),(121,'Orange Rooms','pub','UK','Hampshire','-1.40484','50.9123','A very interesting place','1'),(122,'The Pilgrim Inn','pub','UK','Hampshire','-1.4504','50.8846','A very interesting place','1'),(123,'The Anchor Inn','pub','UK','Hampshire','-1.48126','50.912','A very interesting place','1'),(124,'The Winston','pub','UK','Hampshire','-1.41503','50.9151','A very interesting place','1'),(125,'The Blue Keys','pub','UK','Hampshire','-1.41335','50.9162','A very interesting place','1'),(126,'The Bellemoor','pub','UK','Hampshire','-1.41625','50.9275','A very interesting place','1'),(127,'Chilworth Arms','pub','UK','Hampshire','-1.41718','50.9643','A very interesting place','1'),(128,'The Malvern','pub','UK','Hampshire','-1.42382','50.9319','A very interesting place','1'),(129,'Ice House','pub','UK','Hampshire','-1.43739','50.9279','A very interesting place','1'),(130,'Baddesley Arms','pub','UK','Hampshire','-1.43738','50.9777','A very interesting place','1'),(131,'The Platform Tavern','pub','UK','Hampshire','-1.40355','50.8964','A very interesting place','1'),(132,'The Mountbatten','pub','UK','Hampshire','-1.44906','50.9405','A very interesting place','1'),(133,'The Hop Inn','pub','UK','Hampshire','-1.37074','50.9327','A very interesting place','1'),(134,'The Queens Head','pub','UK','Hampshire','-1.30504','50.9856','A very interesting place','1'),(135,'The Bold Forester','pub','UK','Hampshire','-1.4654','50.8749','A very interesting place','1'),(136,'Anchor Inn','pub','UK','Hampshire','-1.47428','50.9218','A very interesting place','1'),(137,'The Hinkler','pub','UK','Hampshire','-1.33348','50.9077','A very interesting place','1'),(138,'The Bullseye','pub','UK','Hampshire','-1.34855','50.8986','A very interesting place','1'),(139,'Foresters Arms','pub','UK','Hampshire','-1.33119','50.9807','A very interesting place','1'),(140,'Longmead Arms','pub','UK','Hampshire','-1.33217','50.9765','A very interesting place','1'),(141,'Bald Faced Stag','pub','UK','Hampshire','-1.43132','50.918','A very interesting place','1'),(142,'The Old House at Home','pub','UK','Hampshire','-1.49548','50.99','A very interesting place','1'),(143,'William IV','pub','UK','Hampshire','-1.49784','50.9903','A very interesting place','1'),(144,'Wellington Arms','pub','UK','Hampshire','-1.42358','50.9124','A very interesting place','1'),(145,'The Freemantle','pub','UK','Hampshire','-1.42471','50.9134','A very interesting place','1'),(146,'Englishman','pub','UK','Hampshire','-1.43504','50.9184','A very interesting place','1'),(147,'Freemantle Arms','pub','UK','Hampshire','-1.42925','50.915','A very interesting place','1'),(148,'The Heath (Table Table)','pub','UK','Hampshire','-1.41705','50.8512','A very interesting place','1'),(149,'Bedes Lea','pub','UK','Hampshire','-1.4482','50.9762','A very interesting place','1'),(150,'Bricklayers Arms','pub','UK','Hampshire','-1.45476','50.924','A very interesting place','1'),(151,'The Ship','pub','UK','Hampshire','-1.47292','50.9211','A very interesting place','1'),(152,'Rising Sun','pub','UK','Hampshire','-1.31836','50.9974','A very interesting place','1'),(153,'Waterloo Arms','pub','UK','Hampshire','-1.42695','50.9113','A very interesting place','1'),(154,'Turfcutters Arms','pub','UK','Hampshire','-1.47021','50.8024','A very interesting place','1'),(155,'TGI Fridays','restaurant','UK','Hampshire','-1.41335','50.905','A very interesting place','1'),(156,'Ship Inn','pub','UK','Hampshire','-1.38045','50.8938','A very interesting place','1'),(157,'Frankie and Bennys','restaurant','UK','Hampshire','-1.35175','50.967','A very interesting place','1'),(158,'The Hunters','pub','UK','Hampshire','-1.46954','50.9986','A very interesting place','1'),(159,'Southampton Arms','pub','UK','Hampshire','-1.32057','50.9324','A very interesting place','1'),(160,'Prince Consort','pub','UK','Hampshire','-1.35279','50.8724','A very interesting place','1'),(161,'Zen','restaurant','UK','Hampshire','-1.40363','50.8994','A very interesting place','1'),(162,'The Red Lion','pub','UK','Hampshire','-1.40365','50.899','A very interesting place','1'),(163,'The Wagon Works','pub','UK','Hampshire','-1.35072','50.9695','A very interesting place','1'),(164,'Linden Tree','pub','UK','Hampshire','-1.31557','50.8886','A very interesting place','1'),(165,'The King Rufus','pub','UK','Hampshire','-1.47839','50.9074','A very interesting place','1'),(166,'The Village Bells','pub','UK','Hampshire','-1.4781','50.9073','A very interesting place','1'),(167,'King George','pub','UK','Hampshire','-1.44435','50.9216','A very interesting place','1'),(168,'Ennios','restaurant','UK','Hampshire','-1.40515','50.8968','A very interesting place','1'),(169,'La Regata','restaurant','UK','Hampshire','-1.40472','50.8967','A very interesting place','1'),(170,'The Manor House','pub','UK','Hampshire','-1.32754','50.8891','A very interesting place','1'),(171,'The Plough','pub','UK','Hampshire','-1.33021','50.8893','A very interesting place','1'),(172,'Grande CafÃƒÂ©','restaurant','UK','Hampshire','-1.39696','50.8975','A very interesting place','1'),(173,'La Cantina','restaurant','UK','Hampshire','-1.39273','50.8971','A very interesting place','1'),(174,'Gleneagles','pub','UK','Hampshire','-1.40555','50.8505','A very interesting place','1'),(175,'The Fitzhugh','pub','UK','Hampshire','-1.41','50.9146','A very interesting place','1'),(176,'Banana Wharf','restaurant','UK','Hampshire','-1.39084','50.8968','A very interesting place','1'),(177,'The Otter','pub','UK','Hampshire','-1.35408','50.9985','A very interesting place','1'),(178,'The Croft (Closed)','pub','UK','Hampshire','-1.40056','50.861','A very interesting place','1'),(179,'Sunrise Balti and Tandoori','restaurant','UK','Hampshire','-1.3764','50.9873','A very interesting place','1'),(180,'Nandos','restaurant','UK','Hampshire','-1.35199','50.9663','A very interesting place','1'),(181,'Windhover Manor','restaurant','UK','Hampshire','-1.31755','50.8948','A very interesting place','1'),(182,'The New Inn','pub','UK','Hampshire','-1.4969','50.907','A very interesting place','1'),(183,'Grove Tavern','pub','UK','Hampshire','-1.37777','50.8916','A very interesting place','1'),(184,'Firehouse','pub','UK','Hampshire','-1.40343','50.9048','A very interesting place','1'),(185,'Glen Bar','pub','UK','Hampshire','-1.40268','50.944','A very interesting place','1'),(186,'Regents Park','pub','UK','Hampshire','-1.44282','50.9158','A very interesting place','1'),(187,'Osbourne','pub','UK','Hampshire','-1.41873','50.9099','A very interesting place','1'),(188,'The Cricketers','pub','UK','Hampshire','-1.40498','50.9129','A very interesting place','1'),(189,'Key and Anchor','pub','UK','Hampshire','-1.42291','50.9093','A very interesting place','1'),(190,'Prezzo Romsey','restaurant','UK','Hampshire','-1.49592','50.9878','A very interesting place','1'),(191,'The Olive Tree','pub','UK','Hampshire','-1.49764','50.9895','A very interesting place','1'),(192,'Que Pasa','pub','UK','Hampshire','-1.40419','50.906','A very interesting place','1'),(193,'Yatess','pub','UK','Hampshire','-1.40471','50.9066','A very interesting place','1'),(194,'Namaste Kerala','restaurant','UK','Hampshire','-1.40495','50.907','A very interesting place','1'),(195,'The Stile','pub','UK','Hampshire','-1.42423','50.915','A very interesting place','1'),(196,'The Rover','pub','UK','Hampshire','-1.42554','50.916','A very interesting place','1'),(197,'Brass Monkey','pub','UK','Hampshire','-1.42916','50.9188','A very interesting place','1'),(198,'Table Table','restaurant','UK','Hampshire','-1.37371','50.9729','A very interesting place','1'),(199,'La Margherita','restaurant','UK','Hampshire','-1.40469','50.8957','A very interesting place','1'),(200,'The Hiltonbury Farmhouse','pub','UK','Hampshire','-1.39416','50.9955','A very interesting place','1'),(201,'Jolly Sailor','pub','UK','Hampshire','-1.33992','50.8271','A very interesting place','1'),(202,'Finicki Food Company','restaurant','UK','Hampshire','-1.41187','50.9086','A very interesting place','1'),(203,'Encore','pub','UK','Hampshire','-1.41074','50.9087','A very interesting place','1'),(204,'Aroma','restaurant','UK','Hampshire','-1.37968','50.8312','A very interesting place','1'),(205,'El Rancho','restaurant','UK','Hampshire','-1.40366','50.8992','A very interesting place','1'),(206,'The Standing Order (JD Wetherspoon)','pub','UK','Hampshire','-1.40377','50.9009','A very interesting place','1'),(207,'Bellinis','restaurant','UK','Hampshire','-1.3986','50.8978','A very interesting place','1'),(208,'The London Hotel','pub','UK','Hampshire','-1.39696','50.8979','A very interesting place','1'),(209,'Peking Phoenix','restaurant','UK','Hampshire','-1.35369','50.9693','A very interesting place','1'),(210,'Nashaa','restaurant','UK','Hampshire','-1.35383','50.9693','A very interesting place','1'),(211,'La Vista','restaurant','UK','Hampshire','-1.40148','50.873','A very interesting place','1'),(212,'The Tavern','pub','UK','Hampshire','-1.49776','50.9891','A very interesting place','1'),(213,'The Tudor Rose','pub','UK','Hampshire','-1.49926','50.9886','A very interesting place','1'),(214,'Thai Cottage','restaurant','UK','Hampshire','-1.38213','50.9825','A very interesting place','1'),(215,'The Ketch Rigger','pub','UK','Hampshire','-1.31169','50.8518','A very interesting place','1'),(216,'Boomerang','restaurant','UK','Hampshire','-1.31534','50.8589','A very interesting place','1'),(217,'Ye Olde Whyte Hart','pub','UK','Hampshire','-1.31668','50.8587','A very interesting place','1'),(218,'The Riverside Bar and Restaurant','pub','UK','Hampshire','-1.31259','50.8713','A very interesting place','1'),(219,'The Cinnamon Bay','restaurant','UK','Hampshire','-1.31902','50.8591','A very interesting place','1'),(220,'The Malt and Hops','pub','UK','Hampshire','-1.39846','50.8662','A very interesting place','1'),(221,'The Station','pub','UK','Hampshire','-1.37528','50.918','A very interesting place','1'),(222,'The Welcome Inn','pub','UK','Hampshire','-1.32216','50.9645','A very interesting place','1'),(223,'The New Clock Inn','pub','UK','Hampshire','-1.30655','50.9644','A very interesting place','1'),(224,'Unit Nightclub','pub','UK','Hampshire','-1.39923','50.9104','A very interesting place','1'),(225,'Capers','restaurant','UK','Hampshire','-1.41517','50.8527','A very interesting place','1'),(226,'Prezzo','restaurant','UK','Hampshire','-1.39848','50.8983','A very interesting place','1'),(227,'Saras','restaurant','UK','Hampshire','-1.39062','50.9271','A very interesting place','1'),(228,'The Victoria','pub','UK','Hampshire','-1.38049','50.8949','A very interesting place','1'),(229,'La Parissiene','restaurant','UK','Hampshire','-1.49963','50.988','A very interesting place','1'),(230,'Massala','restaurant','UK','Hampshire','-1.38006','50.8965','A very interesting place','1'),(231,'Pig n Whistle','pub','UK','Hampshire','-1.4209','50.9122','A very interesting place','1'),(232,'The Griffin','pub','UK','Hampshire','-1.43414','50.925','A very interesting place','1'),(233,'Shooting Star','pub','UK','Hampshire','-1.39588','50.9165','A very interesting place','1'),(234,'Giddy Bridge','pub','UK','Hampshire','-1.40448','50.911','A very interesting place','1'),(235,'Avondale House','pub','UK','Hampshire','-1.40394','50.9129','A very interesting place','1'),(236,'Plume of Feathers','pub','UK','Hampshire','-1.39688','50.9051','A very interesting place','1'),(237,'The Joiners','pub','UK','Hampshire','-1.39648','50.9045','A very interesting place','1'),(238,'Nicks Restaurant','restaurant','UK','Hampshire','-1.39957','50.9017','A very interesting place','1'),(239,'Park Hotel (closed long-term)','pub','UK','Hampshire','-1.42045','50.9114','A very interesting place','1'),(240,'Jewel in the Crown','restaurant','UK','Hampshire','-1.42655','50.9172','A very interesting place','1'),(241,'Pucchinis','restaurant','UK','Hampshire','-1.42735','50.9179','A very interesting place','1'),(242,'Kachina','restaurant','UK','Hampshire','-1.43059','50.9199','A very interesting place','1'),(243,'Spice of Life (B level)','restaurant','UK','Hampshire','-1.43428','50.933','A very interesting place','1'),(244,'Shield and Dagger','pub','UK','Hampshire','-1.43136','50.9264','A very interesting place','1'),(245,'Kings Arms','pub','UK','Hampshire','-1.43259','50.9231','A very interesting place','1'),(246,'The Waterfront','pub','UK','Hampshire','-1.38101','50.9103','A very interesting place','1'),(247,'Slug and Lettuce','pub','UK','Hampshire','-1.40471','50.9063','A very interesting place','1'),(248,'Bella Italia','restaurant','UK','Hampshire','-1.40469','50.9064','A very interesting place','1'),(249,'Supreme Chinese Restaurant','restaurant','UK','Hampshire','-1.40364','50.905','A very interesting place','1'),(250,'The Anglers Inn','pub','UK','Hampshire','-1.33787','50.9716','A very interesting place','1'),(251,'Nandos','restaurant','UK','Hampshire','-1.40747','50.9037','A very interesting place','1'),(252,'Yo! Sushi','restaurant','UK','Hampshire','-1.40778','50.9036','A very interesting place','1'),(253,'Pizza Hut','restaurant','UK','Hampshire','-1.40737','50.9034','A very interesting place','1'),(254,'Cafe Giardino','restaurant','UK','Hampshire','-1.40733','50.9037','A very interesting place','1'),(255,'ASDA Cafe','restaurant','UK','Hampshire','-1.40777','50.906','A very interesting place','1'),(256,'Mandarin Chef','restaurant','UK','Hampshire','-1.46734','50.9977','A very interesting place','1'),(257,'Fishers Pond','pub','UK','Hampshire','-1.30535','50.9866','A very interesting place','1'),(258,'Kutis Royal Thai Pier','restaurant','UK','Hampshire','-1.40703','50.897','A very interesting place','1'),(259,'Jewels','restaurant','UK','Hampshire','-1.35246','50.9329','A very interesting place','1'),(260,'Saffron','restaurant','UK','Hampshire','-1.3537','50.9679','A very interesting place','1'),(261,'Berties','restaurant','UK','Hampshire','-1.49607','50.9887','A very interesting place','1'),(262,'Park Inn','pub','UK','Hampshire','-1.43695','50.9236','A very interesting place','1'),(263,'The Swan Inn','pub','UK','Hampshire','-1.48449','50.9162','A very interesting place','1'),(264,'The Galley Restaurant','restaurant','UK','Hampshire','-1.48141','50.912','A very interesting place','1'),(265,'The Roebuck','pub','UK','Hampshire','-1.45103','50.8904','A very interesting place','1'),(266,'White Horse','pub','UK','Hampshire','-1.44774','50.8924','A very interesting place','1'),(267,'The Thai Corner Restaurant','restaurant','UK','Hampshire','-1.40016','50.8697','A very interesting place','1'),(268,'Royal Bengal','restaurant','UK','Hampshire','-1.32895','50.862','A very interesting place','1'),(269,'The Bugle','pub','UK','Hampshire','-1.31342','50.8582','A very interesting place','1'),(270,'The King and Queen','pub','UK','Hampshire','-1.31356','50.8586','A very interesting place','1'),(271,'The Victory Inn','pub','UK','Hampshire','-1.31415','50.8588','A very interesting place','1'),(272,'Rat and Parrot','pub','UK','Hampshire','-1.40442','50.9085','A very interesting place','1'),(273,'Goblets','pub','UK','Hampshire','-1.40455','50.9088','A very interesting place','1'),(274,'Bitterne Balti','restaurant','UK','Hampshire','-1.37573','50.9244','A very interesting place','1'),(275,'Charlie Chans','restaurant','UK','Hampshire','-1.39916','50.8983','A very interesting place','1'),(276,'Nazs Cuisine','restaurant','UK','Hampshire','-1.49699','50.9889','A very interesting place','1'),(277,'Purbani Tandoori Restaurant and Take Away','restaurant','UK','Hampshire','-1.4997','50.9882','A very interesting place','1'),(278,'South Garden Chinese Restaurant','restaurant','UK','Hampshire','-1.49974','50.9883','A very interesting place','1'),(279,'Water Margin','restaurant','UK','Hampshire','-1.44068','50.9794','A very interesting place','1'),(280,'The Master Builder','pub','UK','Hampshire','-1.34532','50.9303','A very interesting place','1'),(281,'Sanjha Restaurant','restaurant','UK','Hampshire','-1.4266','50.9168','A very interesting place','1'),(282,'test','test','test','test','1.0','1.0','test','0'),(283,'test','test','test','test','1.0','1.0','test','0'),(284,'Chalcroft Distribution Park','industrial estate','UK','Hampshire','-1.31209','50.9436','lovely ;-)','1'),(285,'harbour','point','UK','Southampton','-1.43166','50.9058','','0'),(286,'Britannia Wharf','Point','UK','Southampton','-1.38994','50.9047','','0'),(287,'Port of Southampton','Port','UK','Southampton','-1.44513','50.9095','Port','0'),(288,'Blackdown','hill','UK','Sussex','45719.3','51.0578','highest hill in sussex. great views','0'),(289,'Pikes Peak','mountain','USA','Colorado','-105.044','38.84','Colorado fourteener accessible via the Barr Trail. ','0'),(290,'Cauterets','town','France','Hautes-Pyrenees','-0.112953','42.8893','nice apparently. we will find out soon','0'),(291,'Dartmoor','moor','UK','Devon','-3.96606','50.6529','dark and mysterious','0'),(292,'The Crown','pub','UK','Hampshire','-1.4011','50.9319','nice pub','1'),(293,'Costa Coffee','restaurant','UK','Hampshire','-1.47879','51.208','Quality coffee and food','1'),(294,'Costa Coffee','restaurant','UK','Hampshire','-1.47879','51.208','Quality coffee and food','1'),(295,'Steve\'s Inn','pub','UK','Hampshire','-1.8223','51.3194','Cosy pub with fire place','1'),(296,'Costa Coffee','restaurant','UK','Hampshire','-1.33','51.3889','Quality coffee and food','1'),(297,'Highclere','town','UK','Berkshire','-1.3677','51.3469','Has a castle','0'),(298,'Small Eats','restaurant','UK','berkshire','-1.4062','51.3254','Quick bites','0'),(299,'Kingsclere','town','UK','Berkshire','-1.2366','51.3237','A town','0'),(300,'Cold Ash','town','UK','Berkshire','-1.2682','51.4249','Town','0'),(301,'Newbury','town','UK','Berkshire','-1.3176','51.3992','Great place','0'),(302,'Thatcham','town','UK','Berkshire','-1.2668','51.4052','Not great','0'),(303,'Donnington','town','UK','Berkshire','-1.3269','51.4227','posh','0'),(304,'Enborne','town','UK','berkshire','-1.3712','51.3899','Lots of fields','0'),(305,'Enborne','town','UK','berkshire','-1.3712','51.3899','Lots of fields','0'),(306,'Hurstbourne Tarrant','town','UK','Berkshire','-1.4508','51.2769','very small place','0'),(307,'Midgham','town','UK','Berkshire','-1.2007','51.4062','Has a very nice pub restaurant ','0'),(308,'chieveley','pub','UK','berkshire','-1.3326','51.4601','test','0'),(309,'east meon','town','UK','Hampshire','-1.0','51.0','test','1'),(310,'downs inn','pub','UK','Hampshire','-1.01','51.01','a nice pub','1'),(311,'downs inn','pub','UK','Hampshire','-1.012','51.012','a nice pub','1'),(312,'fernhurst','town','UK','Sussex','-0.72','51.05','a nice village','0'),(313,'testpub','pub','UK','Hampshire','-1.02','51.02','test','1'),(314,'Whitchurch','town','UK','Berkshire','-1.345','51.224','small place','0'),(315,'Testing','pub','UK','Berkshire','-1.4','51.1','Testing','0'),(316,'Testing','pub','UK','Berkshire','-1.4','51.1','Testing','0'),(317,'Pacifica','city','Pacific State','Pacific Ocean','181.0','0.0','lost city','0'),(318,'Southdown ','pub','england','sussex','-0.723724','50.9432','nice','0'),(319,'Speen','town','UK','Berkshire','-1.34829','51.4076','Lots of road humps','0'),(320,'Costa','restaurant','UK','Berkshire','-1.31758','51.3826','Exceptional coffee and light bites','0'),(321,'Pizza Hut','restaurant','UK','Berkshire','-1.31766','51.3848','Pizza and salad bar','0'),(322,'Sainsbury\'s Cafe','restaurant','UK','Berkshire','-1.31988','51.3992','Cafe','0'),(323,'Ask','restaurant','UK','Berkshire','-1.32329','51.4013','Italian food','0'),(324,'La Tasca','restaurant','UK','Berkshire','-1.3231','51.4013','Spanish food','0'),(325,'Canal Bar','pub','UK','Berkshire','-1.32303','51.4013','Gets really busy Friday and Saturday nights','0'),(326,'Subway','restaurant','UK','Berkshire','-1.3236','51.3997','Get the sandwich you want','0'),(327,'Pacifica','lost city','Pacifica','Pacifica','179.0','30.0','lost city','0'),(328,'Plaistow','city','UK','Sussex','-0.567307','51.0657','small isolated village. ','0'),(329,'Ropley','city','england','hampshire','-1.07803','51.0719','not a city really. home of the watercress line','2'),(330,'Cotswold Inn','Pob','UK','Cotswolds','-1.70563','51.6674','Nice','0'),(331,'Blackdown','Hill','UK','West Sussex','-0.690048','51.0581','highest hill in sussex','0'),(332,'test1','test1','test1','test1','1.0','1.0','',''),(333,'unknown_value_please_contact_support','unknown_value_please_contact_support','unknown_value_please_contact_support','unknown_value_please_contact_support','','','',''),(334,'test2','test2','test2','test2','','','',''),(335,'test2','test2','test2','test2','','','',''),(336,'test1','test1','test1','test1','1.0','1.0','',''),(337,'Random','Random','Random','Random','1.0','1.0','Random','0'),(338,'as','as','as','as','-0.86380005','51.106865','as','0'),(339,'random','random','random','random','-1.101','51.01','random','0'),(340,'Bordon','City','UK','hampshire','-0.86380005','51.106434','Bordon','2'),(341,'Haslemere','City','UK','hampshire','-0.77453613','51.084763','Haslemere','2'),(342,'unknown_value_please_contact_support','unknown_value_please_contact_support','unknown_value_please_contact_support','unknown_value_please_contact_support','-0.80200195','51.088215','','0'),(343,'unknown_value_please_contact_support','unknown_value_please_contact_support','unknown_value_please_contact_support','unknown_value_please_contact_support','-1.3252258','51.22656','','0'),(344,'unknown_value_please_contact_support','unknown_value_please_contact_support','unknown_value_please_contact_support','unknown_value_please_contact_support','-1.2414551','51.17407','','0'),(345,'test','test','test','test','-0.63446045','51.14823','test','0');
/*!40000 ALTER TABLE `pointsofinterest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(16) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('poi_reviews',27),('poi_users',2),('pointsofinterest',345);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-18 10:46:25
