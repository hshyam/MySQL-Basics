# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: egon.cs.umn.edu (MySQL 5.5.20-log)
# Database: C4707F13U70
# Generation Time: 2013-12-09 21:07:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Class
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Class`;

CREATE TABLE `Class` (
  `name` char(20) NOT NULL DEFAULT '',
  `meets_at` time DEFAULT NULL,
  `room` char(20) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `fid` (`fid`),
  CONSTRAINT `Class_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `Faculty` (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Class` WRITE;
/*!40000 ALTER TABLE `Class` DISABLE KEYS */;

INSERT INTO `Class` (`name`, `meets_at`, `room`, `fid`)
VALUES
	('CSCI 4707','09:45:00','Phys 170',1),
	('CSCI 5523','04:00:00','Keller 3-230',3),
	('CSCI 5707','11:00:00','Keller 3-125',2),
	('CSCI 8715','01:30:00','Mech 102',2),
	('MATH 101','02:00:00','Mech 102',1);

/*!40000 ALTER TABLE `Class` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Enrolled
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Enrolled`;

CREATE TABLE `Enrolled` (
  `snum` int(11) NOT NULL DEFAULT '0',
  `cname` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`snum`,`cname`),
  KEY `cname` (`cname`),
  CONSTRAINT `Enrolled_ibfk_1` FOREIGN KEY (`cname`) REFERENCES `Class` (`name`),
  CONSTRAINT `Enrolled_ibfk_2` FOREIGN KEY (`snum`) REFERENCES `Student` (`snum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Enrolled` WRITE;
/*!40000 ALTER TABLE `Enrolled` DISABLE KEYS */;

INSERT INTO `Enrolled` (`snum`, `cname`)
VALUES
	(1,'CSCI 4707'),
	(3,'CSCI 4707'),
	(5,'CSCI 4707'),
	(6,'CSCI 4707'),
	(7,'CSCI 4707'),
	(8,'CSCI 4707'),
	(12,'CSCI 4707'),
	(15,'CSCI 4707'),
	(16,'CSCI 4707'),
	(17,'CSCI 4707'),
	(20,'CSCI 4707'),
	(21,'CSCI 4707'),
	(22,'CSCI 4707'),
	(24,'CSCI 4707'),
	(25,'CSCI 4707'),
	(26,'CSCI 4707'),
	(28,'CSCI 4707'),
	(30,'CSCI 4707'),
	(31,'CSCI 4707'),
	(35,'CSCI 4707'),
	(41,'CSCI 4707'),
	(45,'CSCI 4707'),
	(48,'CSCI 4707'),
	(50,'CSCI 4707'),
	(51,'CSCI 4707'),
	(53,'CSCI 4707'),
	(56,'CSCI 4707'),
	(57,'CSCI 4707'),
	(65,'CSCI 4707'),
	(67,'CSCI 4707'),
	(68,'CSCI 4707'),
	(70,'CSCI 4707'),
	(73,'CSCI 4707'),
	(75,'CSCI 4707'),
	(77,'CSCI 4707'),
	(78,'CSCI 4707'),
	(81,'CSCI 4707'),
	(86,'CSCI 4707'),
	(87,'CSCI 4707'),
	(92,'CSCI 4707'),
	(93,'CSCI 4707'),
	(94,'CSCI 4707'),
	(2,'CSCI 5523'),
	(5,'CSCI 5523'),
	(7,'CSCI 5523'),
	(9,'CSCI 5523'),
	(10,'CSCI 5523'),
	(11,'CSCI 5523'),
	(12,'CSCI 5523'),
	(13,'CSCI 5523'),
	(14,'CSCI 5523'),
	(15,'CSCI 5523'),
	(17,'CSCI 5523'),
	(23,'CSCI 5523'),
	(24,'CSCI 5523'),
	(25,'CSCI 5523'),
	(29,'CSCI 5523'),
	(30,'CSCI 5523'),
	(34,'CSCI 5523'),
	(36,'CSCI 5523'),
	(39,'CSCI 5523'),
	(40,'CSCI 5523'),
	(41,'CSCI 5523'),
	(42,'CSCI 5523'),
	(45,'CSCI 5523'),
	(47,'CSCI 5523'),
	(48,'CSCI 5523'),
	(50,'CSCI 5523'),
	(52,'CSCI 5523'),
	(54,'CSCI 5523'),
	(55,'CSCI 5523'),
	(56,'CSCI 5523'),
	(57,'CSCI 5523'),
	(58,'CSCI 5523'),
	(59,'CSCI 5523'),
	(60,'CSCI 5523'),
	(68,'CSCI 5523'),
	(69,'CSCI 5523'),
	(70,'CSCI 5523'),
	(71,'CSCI 5523'),
	(74,'CSCI 5523'),
	(76,'CSCI 5523'),
	(79,'CSCI 5523'),
	(81,'CSCI 5523'),
	(82,'CSCI 5523'),
	(85,'CSCI 5523'),
	(87,'CSCI 5523'),
	(88,'CSCI 5523'),
	(89,'CSCI 5523'),
	(90,'CSCI 5523'),
	(95,'CSCI 5523'),
	(1,'CSCI 5707'),
	(3,'CSCI 5707'),
	(4,'CSCI 5707'),
	(7,'CSCI 5707'),
	(9,'CSCI 5707'),
	(11,'CSCI 5707'),
	(13,'CSCI 5707'),
	(18,'CSCI 5707'),
	(19,'CSCI 5707'),
	(22,'CSCI 5707'),
	(23,'CSCI 5707'),
	(24,'CSCI 5707'),
	(25,'CSCI 5707'),
	(27,'CSCI 5707'),
	(28,'CSCI 5707'),
	(34,'CSCI 5707'),
	(35,'CSCI 5707'),
	(36,'CSCI 5707'),
	(38,'CSCI 5707'),
	(39,'CSCI 5707'),
	(42,'CSCI 5707'),
	(43,'CSCI 5707'),
	(47,'CSCI 5707'),
	(51,'CSCI 5707'),
	(53,'CSCI 5707'),
	(54,'CSCI 5707'),
	(55,'CSCI 5707'),
	(57,'CSCI 5707'),
	(61,'CSCI 5707'),
	(63,'CSCI 5707'),
	(64,'CSCI 5707'),
	(66,'CSCI 5707'),
	(68,'CSCI 5707'),
	(69,'CSCI 5707'),
	(75,'CSCI 5707'),
	(79,'CSCI 5707'),
	(81,'CSCI 5707'),
	(87,'CSCI 5707'),
	(88,'CSCI 5707'),
	(89,'CSCI 5707'),
	(94,'CSCI 5707'),
	(1,'CSCI 8715'),
	(6,'CSCI 8715'),
	(8,'CSCI 8715'),
	(9,'CSCI 8715'),
	(13,'CSCI 8715'),
	(23,'CSCI 8715'),
	(28,'CSCI 8715'),
	(29,'CSCI 8715'),
	(31,'CSCI 8715'),
	(32,'CSCI 8715'),
	(33,'CSCI 8715'),
	(34,'CSCI 8715'),
	(37,'CSCI 8715'),
	(44,'CSCI 8715'),
	(45,'CSCI 8715'),
	(46,'CSCI 8715'),
	(49,'CSCI 8715'),
	(50,'CSCI 8715'),
	(51,'CSCI 8715'),
	(57,'CSCI 8715'),
	(62,'CSCI 8715'),
	(65,'CSCI 8715'),
	(69,'CSCI 8715'),
	(72,'CSCI 8715'),
	(74,'CSCI 8715'),
	(75,'CSCI 8715'),
	(76,'CSCI 8715'),
	(77,'CSCI 8715'),
	(80,'CSCI 8715'),
	(83,'CSCI 8715'),
	(84,'CSCI 8715'),
	(85,'CSCI 8715'),
	(90,'CSCI 8715'),
	(91,'CSCI 8715'),
	(92,'CSCI 8715'),
	(93,'CSCI 8715');

/*!40000 ALTER TABLE `Enrolled` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Faculty
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Faculty`;

CREATE TABLE `Faculty` (
  `fid` int(11) NOT NULL DEFAULT '0',
  `fname` char(20) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Faculty` WRITE;
/*!40000 ALTER TABLE `Faculty` DISABLE KEYS */;

INSERT INTO `Faculty` (`fid`, `fname`, `deptid`)
VALUES
	(1,'Jaideep',12),
	(2,'Shashi',33),
	(3,'Vipin',15),
	(4,'John',33);

/*!40000 ALTER TABLE `Faculty` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Student`;

CREATE TABLE `Student` (
  `snum` int(11) NOT NULL DEFAULT '0',
  `sname` char(20) DEFAULT NULL,
  `major` char(20) DEFAULT NULL,
  `level` char(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`snum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;

INSERT INTO `Student` (`snum`, `sname`, `major`, `level`, `age`)
VALUES
	(1,'Nathen','CS','level0',19),
	(2,'Magdy','CS','level1',20),
	(3,'Victor','CS','level2',21),
	(4,'Nathaniel','CS','level3',22),
	(5,'Kevin Ray','CS','level4',23),
	(6,'Kyle','CS','level5',24),
	(7,'Stefan','CS','level6',25),
	(8,'Riley','CS','level0',26),
	(9,'Daniel','CS','level1',27),
	(10,'Carlos','MATH','level2',18),
	(11,'Yi','CS','level3',20),
	(12,'Deukyeol','CS','level4',22),
	(13,'Chase','CS','level5',24),
	(14,'Patrick','CS','level6',26),
	(15,'Joseph','CS','level0',28),
	(16,'Paul','CS','level1',30),
	(17,'Brent','MATH','level2',16),
	(18,'Sudeepto','MATH','level3',19),
	(19,'Lingfei','MATH','level4',22),
	(20,'David','CS','level5',25),
	(21,'Neha','MATH','level6',28),
	(22,'Heesun','CS','level0',31),
	(23,'Jungwoo','CS','level1',34),
	(24,'Albert','CS','level2',37),
	(25,'Jack','MATH','level3',40),
	(26,'Colton','CS','level4',17),
	(27,'Mark','CS','level5',18),
	(28,'Thomas','CS','level6',19),
	(29,'Maximillian','MATH','level4',20),
	(30,'Sam','CS','level5',21),
	(31,'David','CS','level6',22),
	(32,'Ryan','CS','level4',23),
	(33,'Nick','CS','level5',24),
	(34,'Stephen','MATH','level6',25),
	(35,'Christopher','MATH','level4',26),
	(36,'Andrew','MATH','level5',27),
	(37,'Daniel','MATH','level6',28),
	(38,'Tyler','MATH','level4',19),
	(39,'Peiqi','CS','level5',21),
	(40,'Johanna','MATH','level6',23),
	(41,'Chunxi','MATH','level4',25),
	(42,'Cuong','CS','level5',27),
	(43,'Qiyue','CS','level6',29),
	(44,'Elan','MATH','null',31),
	(45,'Dale','CS','null',33),
	(46,'Andrew','MATH','null',35),
	(47,'Eshitha','MATH','null',17),
	(48,'Will','CS','level4',18),
	(49,'Adam','CS','level5',19),
	(50,'Minh','CS','level6',20),
	(51,'Jacob','CS','level4',21),
	(52,'Jacob','CS','level5',22),
	(53,'Shraddha','CS','level6',23),
	(54,'Hieu','CS','level0',24),
	(55,'Kevin','CS','level1',25),
	(56,'Ashok','CS','level2',26),
	(57,'Thomas','CS','level3',27),
	(58,'Lingjun','CS','level4',28),
	(59,'Kanika','CS','null',29),
	(60,'Xiaoyi','CS','null',30),
	(61,'Van','CS','level0',31),
	(62,'Maxwell','CS','level1',32),
	(63,'Yohanna','CS','level2',33),
	(64,'Nicholas','CS','level3',34),
	(65,'Michael','CS','level4',35),
	(66,'David','Math','null',36),
	(67,'Efe','Math','null',37),
	(68,'Patrick','Math','null',16),
	(69,'Harrison','Math','null',18),
	(70,'Harshita','Math','null',20),
	(71,'Chirasak','Math','null',22),
	(72,'Daniel','Math','null',24),
	(73,'Qikai','Math','null',26),
	(74,'Zheng','Math','null',28),
	(75,'Alec','Math','level0',30),
	(76,'Michael','Math','level1',32),
	(77,'Shakil','Math','level2',34),
	(78,'Jeremiah','Math','level3',36),
	(79,'Nicholas','Math','level4',38),
	(80,'Grayson','Math','null',17),
	(81,'Pamela-Rose','Math','null',19),
	(82,'Stephen','Math','null',21),
	(83,'Louis','Math','null',23),
	(84,'Qin','Math','null',25),
	(85,'Joel','Math','null',27),
	(86,'Samuel','Math','null',29),
	(87,'Kyle','Math','null',31),
	(88,'Daryl','CS','level0',33),
	(89,'Yuanshun','CS','level1',35),
	(90,'Bowen','CS','level2',37),
	(91,'Chan Kit','CS','level3',39),
	(92,'Muhan','CS','level4',41),
	(93,'Yameng','CS','null',19),
	(94,'Zhen','CS','null',21),
	(95,'Cody','CS','null',20);

/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
