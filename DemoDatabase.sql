-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: db4free.net    Database: testtest22
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clicks`
--

DROP TABLE IF EXISTS [clicks];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE clicks (
  [id] int check ([id] > 0) NOT NULL IDENTITY,
  [listing_id] int NOT NULL,
  [price] decimal(10,2) NOT NULL DEFAULT '0.00',
  [currency] char(3) NOT NULL DEFAULT 'USD',
  [created] datetime2(0) DEFAULT NULL,
  PRIMARY KEY ([id])
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clicks`
--

--LOCK TABLES [clicks] WRITE;
/*!40000 ALTER TABLE `clicks` DISABLE KEYS */;
INSERT INTO clicks VALUES (1,4.00,'USD','2013-09-15 16:18:43'),(1,3.50,'EUR','2013-09-15 16:18:43'),(6,2.00,'USD','2013-09-15 16:18:43'),(6,0.00,'USD','2013-09-15 16:18:43'),(1,1.00,'USD','2013-09-15 16:18:43'),(2,4.00,'USD','2013-09-15 16:18:43'),(6,2.00,'USD','2013-09-15 16:18:43'),(6,1.00,'USD','2014-09-15 16:18:43'),(5,0.00,'USD','2014-09-15 16:18:43'),(1,4.00,'USD','2014-09-15 16:18:43'),(1,3.50,'USD','2014-09-15 16:18:43'),(3,2.00,'USD','2014-09-15 16:18:43'),(4,0.00,'USD','2014-09-15 16:18:43'),(3,1.00,'USD','2014-09-15 16:18:43'),(4,0.00,'USD','2014-09-15 16:18:43'),(3,1.00,'USD','2014-09-15 16:18:43'),(2,4.00,'USD','2014-09-15 16:18:43'),(6,2.00,'USD','2014-09-15 16:18:43'),(2,4.00,'USD','2014-09-15 16:18:43'),(6,2.00,'USD','2014-09-15 16:18:43'),(4,0.00,'USD','2014-09-15 16:18:43'),(3,1.00,'USD','2014-09-15 16:18:43'),(2,4.00,'USD','2014-09-15 16:18:43'),(6,2.00,'USD','2014-09-15 16:18:43'),(6,1.00,'USD','2014-09-15 16:18:43'),(5,0.00,'USD','2014-09-15 16:18:43'),(2,1.00,'USD','2013-09-15 16:18:43'),(2,3.00,'USD','2013-09-15 16:18:43'),(10,4.00,'USD','2014-09-15 17:01:00'),(10,3.00,'USD','2013-09-15 16:18:43'),(3,4.00,'USD','2015-09-28 20:42:36'),(3,4.00,'USD','2018-10-20 22:43:41');
/*!40000 ALTER TABLE `clicks` ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS [listings];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE listings (
  [id] int check ([id] > 0) NOT NULL IDENTITY,
  [user_id] int DEFAULT NULL,
  [name] varchar(255) NOT NULL DEFAULT '',
  [status] int NOT NULL DEFAULT '2' ,
  PRIMARY KEY ([id])
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

--LOCK TABLES [listings] WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO listings VALUES (1,'Pineapple',2),(2,'Apple',3),(3,'Orange',2),(3,'Pumpkin',3),(1,'Lemon',3),(1,'Raspberry',2),(1,'Plum',2),(2,'Grapefruit',3),(4,'Apricot',2),(NULL,'Banana',3);
/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS [users];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE users (
  [id] int check ([id] > 0) NOT NULL IDENTITY,
  [first_name] varchar(255) NOT NULL DEFAULT '',
  [last_name] varchar(255) NOT NULL DEFAULT '',
  [email] varchar(255) NOT NULL DEFAULT '',
  [status] int NOT NULL DEFAULT '1' ,
  [created] datetime2(0) NOT NULL,
  PRIMARY KEY ([id]),
  CONSTRAINT [email] UNIQUE  ([email])
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

--LOCK TABLES [users] WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO users VALUES ('John','Doe','john@getapp.com',2,'2014-09-15 16:14:32'),('Sally','Jones','sally@getapp.com',1,'2014-09-15 16:14:59'),('Joan','Laporta','joan@getapp.com',2,'2014-09-15 16:15:23'),('Roger','Rabbit','roger@getapp.com',2,'2014-09-15 16:31:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
--UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-21  0:31:34
