-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: new_schema
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `synthetic_address_data`
--

DROP TABLE IF EXISTS `synthetic_address_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `synthetic_address_data` (
  `id` int DEFAULT NULL,
  `address` text,
  `address2` text,
  `district` text,
  `city_id` int DEFAULT NULL,
  `postal_code` bigint DEFAULT NULL,
  `phone` text,
  `last_update` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synthetic_address_data`
--

LOCK TABLES `synthetic_address_data` WRITE;
/*!40000 ALTER TABLE `synthetic_address_data` DISABLE KEYS */;
INSERT INTO `synthetic_address_data` VALUES (1,'30122 Jerry Radial Apt. 037, Hernandezside, MO 49899','1340 Lee Bridge Apt. 900, Denisehaven, AR 75256','Karen Crossing',15,78595,'001-865-106-7928x2769','2019-09-10'),(2,'36060 Kimberly Drives Suite 610, Loweburgh, NC 88658','084 Walker Pike, East Kathrynmouth, VI 71842','Hopkins Lane',17,83697,'(043)209-1128','2021-09-02'),(3,'96608 Wendy Neck, North Juanton, CO 50568','6574 Rodriguez Loop, East Michelestad, WA 34655','Bernard Station',19,65338,'072.962.3674x50983','2019-06-09'),(4,'683 Eric Station Suite 324, Wagnerfort, MO 21035','373 Hernandez Highway, Morganstad, HI 27972','Michael Place',10,6742,'(849)251-6616x2164','2022-01-05'),(5,'979 Gonzales Walks Apt. 243, West Russell, DE 54200','431 Vincent Brook, Taylorstad, NV 04285','Johnson Centers',7,33559,'001-705-518-0826','2019-01-23'),(6,'89220 Jose Station, Clarkehaven, MP 69938','7908 Charles Coves, East Cynthiaville, VA 88603','Thompson Wall',20,50962,'461-857-1174','2020-12-26'),(7,'693 Alex Mission Apt. 471, North Denisechester, MP 27430','735 Porter Wells Suite 872, Johnsonborough, OK 09262','Shelley Wall',1,73396,'001-411-326-1816','2018-09-19'),(8,'1960 Shannon Keys Apt. 105, East Carlos, MT 50770','6187 Gerald Shoals, South Michelle, AL 50274','Nancy Track',13,87066,'(246)874-6077','2022-02-23'),(9,'98104 Brett Vista Apt. 011, Paulview, PA 29934','6123 Kevin Drives Apt. 127, Deborahport, CA 10774','Long Row',20,21262,'(140)136-2839x085','2018-08-30'),(10,'346 Anderson Mill, New Eric, VI 59571','688 Gregory Brooks, Edwardsstad, CO 83485','Williams Neck',2,84641,'(528)705-0303','2022-06-24'),(11,'2374 Michael Causeway, Reyesport, PA 56690','788 Laura Club Suite 537, Nguyenhaven, WV 45548','Erica Light',13,11926,'(023)927-6669','2018-12-27'),(12,'316 Randy Isle Suite 598, Paulaville, OH 53275','400 Thomas Estates, Jackhaven, CT 59007','Brooks Via',15,61073,'(101)496-7824','2021-03-26'),(13,'962 Mendoza Throughway Suite 995, West Donald, FL 77158','04314 Wilson Cliffs Apt. 732, Johnsonchester, OK 54492','Moore Vista',11,3562,'057-767-0393','2021-06-08'),(14,'6145 Mendez Shoal Suite 054, North Carmenbury, FL 95305','063 Dillon Knoll, East Robertville, NV 33323','Luis Stream',2,66052,'260-278-7835','2021-02-13'),(15,'833 Benjamin Camp Suite 567, Johnside, AK 92659','741 Bell Square Suite 942, Leahshire, MI 23541','Snow Road',15,48787,'3924281788','2020-06-14'),(16,'064 Jeanette Harbor, West Lukeborough, MH 35760','3001 Roger Way, Annshire, HI 20821','Novak Flat',3,23552,'+1-710-341-9954x926','2020-02-16'),(17,'678 Brendan Drives, South Christopher, AL 36255','123 Avila Forks, New Misty, DC 52524','Hopkins Meadows',11,10478,'001-508-579-6342x499','2020-06-02'),(18,'883 Chambers Burg Apt. 019, South Chadhaven, SC 66696','087 Lopez Shores Apt. 037, East Hectorview, OR 92794','Christina Valley',12,24358,'(539)366-7123','2019-09-21'),(19,'55148 Kelly Drives Suite 231, Rebeccaton, LA 98760','465 Peterson Square Apt. 989, North Thomaschester, MN 38153','Julie Cape',12,80486,'844-685-5633','2019-05-05'),(20,'40759 Kevin Locks Apt. 214, Dakotaborough, WA 03983','89964 Wendy Trafficway, North Biancahaven, DE 68899','Lee Cliff',17,40006,'930.146.2152x99411','2020-11-28'),(21,'Unit 0370 Box 8429, DPO AA 52217','30234 Hurley Mall, East Christineberg, WY 31965','Stephenson Loaf',9,44269,'001-720-621-7211','2023-04-18'),(22,'043 Jeremy Mountains Suite 084, Briannaton, MD 41976','5906 Michael Route Suite 521, Lake Claudia, DC 38748','Dunn Meadow',9,15728,'001-905-077-3061x31691','2022-09-28'),(23,'22074 Daniel Expressway Suite 184, East Douglasfurt, TX 43180','Unit 9629 Box 5780, DPO AA 02380','Morgan Extension',18,12596,'001-558-622-1057x9970','2022-08-07'),(24,'2440 Malone Light, Lynchburgh, MN 15050','696 Oscar Spurs Suite 000, Singhview, PR 11030','Kimberly Hollow',10,53621,'8399189857','2019-10-10'),(25,'5421 David Creek, Heatherton, HI 10710','66022 Hatfield Camp, Lake Sherrimouth, FL 24787','Guzman Union',8,4697,'+1-932-564-0664x75423','2022-05-29'),(26,'457 Barnes Plaza Suite 679, East Henry, SC 46783','7201 Paul Points, Murrayfort, FM 52622','White Prairie',16,89632,'001-271-052-4434','2020-02-15'),(27,'705 Paul Lodge, Rachelhaven, LA 18652','39866 Underwood Crossing Apt. 023, East Deanna, FM 32768','Julian Neck',15,88989,'+1-111-537-1067','2021-01-05'),(28,'928 James Estate, East Deborah, WV 61491','3165 Peter Dam Suite 963, West Patrick, MP 07074','Boyd Crescent',11,50808,'001-685-338-0924','2019-06-04'),(29,'852 Dunlap Mission Suite 683, New Robin, MS 28837','6001 Peters Expressway, West Randyshire, PR 86669','Francis Square',5,16384,'001-202-972-9804x123','2022-02-23'),(30,'3560 Hannah Road, Port Donnaville, NM 32795','250 Noble Roads Apt. 828, Fergusonshire, VI 67743','Wang Camp',13,56653,'355-148-8826x36669','2019-11-07'),(31,'5933 Kiara Place Apt. 602, Salazarton, MO 59912','731 Wendy Springs Suite 622, Scottfort, MI 00897','Blackburn Street',16,92628,'(601)388-2276x21825','2020-11-18'),(32,'25196 Carter Glens, North Ryanmouth, NV 63456','804 William Circles Apt. 838, Mcdonaldport, GU 69239','Mary Mills',6,69117,'548.658.2006','2019-06-02'),(33,'5395 Nicholson Spur Suite 254, Port Lori, KY 64677','56546 Hernandez Fields Suite 489, North Kimberly, GU 79542','Bond Ferry',1,13112,'(821)355-3285','2020-12-19'),(34,'49470 Durham Haven Apt. 874, North Juliefurt, VA 49699','085 Adriana Springs, Jillianport, CO 81332','Wright Plaza',20,76066,'001-218-564-3816','2022-03-09'),(35,'8447 Rogers Crescent Apt. 398, Lake Lauren, IA 33241','60795 James Oval Apt. 209, Port Andrew, VI 14892','Andrew Road',3,15394,'972-873-3146','2019-02-11'),(36,'3200 Morton Groves, Ericmouth, MO 95925','2317 Malik Mission Apt. 078, New Danielberg, AR 57631','Oliver Cove',19,83182,'129.622.9799','2021-10-30'),(37,'Unit 5612 Box 4323, DPO AA 74063','381 Lucas Summit Suite 849, Heathertown, DE 77322','Samuel Stream',2,60972,'8339837861','2022-05-09'),(38,'789 Misty Court Apt. 806, West Daniel, UT 23502','Unit 2616 Box 1570, DPO AP 64023','Tucker Lane',12,43590,'+1-582-610-9780x3223','2020-08-19'),(39,'732 Jonathan Avenue Apt. 395, North Samanthashire, RI 84079','69769 Alison Locks, Caldwellland, PA 87543','Kramer Parks',13,48455,'+1-210-606-9263x09780','2022-02-16'),(40,'2565 Tiffany River Apt. 287, Gutierreztown, CO 25531','PSC 1312, Box 1356, APO AE 11720','Ashley Drive',1,77110,'+1-339-873-3824x74322','2022-07-31'),(41,'22739 John Highway Apt. 584, Ortizhaven, IL 20190','149 Mata Valley, West Josephport, PR 81696','Wyatt Squares',11,16479,'(901)746-6977','2018-05-26'),(42,'9628 Katherine Row, Medinafort, LA 89714','356 Fischer Hollow Suite 149, Port Debraside, VI 57514','Wilson Keys',11,88363,'001-904-117-8881x125','2019-07-16'),(43,'Unit 2517 Box 3794, DPO AP 97936','713 Anita Groves Suite 507, Port Karen, MP 45020','Kevin Point',2,62625,'001-103-990-7345x22445','2020-02-28'),(44,'01773 April Hollow Suite 736, Andrewberg, IA 36227','27771 Green Crest, Port Rebecca, KS 64533','Jackson Spur',19,5116,'001-622-845-8785','2021-07-28'),(45,'520 Kevin Key, Michellehaven, GU 01973','45360 Nicholas Parkway Suite 979, Lake Robertburgh, KY 60610','Paul Mount',12,49070,'001-843-140-2333','2022-01-18'),(46,'USNV Mann, FPO AE 54639','Unit 8390 Box 4774, DPO AA 20664','Alex Place',11,6922,'727-494-9886x4936','2019-08-13'),(47,'1087 Morris Summit, Lake Christina, NE 64541','499 Kennedy Fork Suite 683, Scottview, MS 11600','Holly Alley',7,38143,'6729384668','2020-12-20'),(48,'57836 Trujillo Islands, Isaacville, FM 30278','871 Brandon Ports Apt. 699, Bradshawhaven, MS 69084','Summers Terrace',6,73981,'(150)779-4598x15305','2021-06-14'),(49,'138 John Cliffs Suite 500, East Amyshire, OK 93210','030 Madden River Suite 075, North Anthonyside, MS 70082','Brown Drives',15,22375,'044.591.2942x5991','2019-11-11'),(50,'53378 Spence Drives Apt. 336, Langstad, KY 00874','Unit 6999 Box 1385, DPO AA 59775','Wilson Creek',16,13691,'915-768-0460x129','2020-10-23');
/*!40000 ALTER TABLE `synthetic_address_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-01 22:00:35
