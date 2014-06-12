-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.29


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema criccast
--

CREATE DATABASE IF NOT EXISTS criccast;
USE criccast;

--
-- Definition of table `extras`
--

DROP TABLE IF EXISTS `extras`;
CREATE TABLE `extras` (
  `id` int(11) NOT NULL,
  `tournmentId` varchar(45) DEFAULT NULL,
  `matchId` varchar(45) DEFAULT NULL,
  `teamId` varchar(45) DEFAULT NULL,
  `playerId` varchar(45) DEFAULT NULL,
  `extraType` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extras`
--

/*!40000 ALTER TABLE `extras` DISABLE KEYS */;
/*!40000 ALTER TABLE `extras` ENABLE KEYS */;


--
-- Definition of table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `Locationname` varchar(45) DEFAULT NULL,
  `GPSCoordinates` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `matches`
--

DROP TABLE IF EXISTS `matches`;
CREATE TABLE `matches` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `team1id` varchar(45) DEFAULT NULL,
  `team2id` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `locationid` int(11) DEFAULT NULL,
  `tournmentID` int(11) DEFAULT NULL,
  `noOfOvers` int(11) DEFAULT NULL,
  `loginId` int(11) DEFAULT NULL,
  `matchStatus` varchar(45) DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `umpireId` varchar(45) DEFAULT NULL,
  `matchType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='			';

--
-- Dumping data for table `matches`
--

/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;


--
-- Definition of table `over`
--

DROP TABLE IF EXISTS `over`;
CREATE TABLE `over` (
  `id` int(11) NOT NULL,
  `matchID` varchar(45) DEFAULT NULL,
  `teamID` varchar(45) DEFAULT NULL,
  `overCount` varchar(45) DEFAULT NULL,
  `loginId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `over`
--

/*!40000 ALTER TABLE `over` DISABLE KEYS */;
/*!40000 ALTER TABLE `over` ENABLE KEYS */;


--
-- Definition of table `player`
--

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `playerName` varchar(45) DEFAULT NULL,
  `playerAge` varchar(45) DEFAULT NULL,
  `playerDob` date DEFAULT NULL,
  `teamId` int(11) DEFAULT NULL,
  `loginId` int(11) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

/*!40000 ALTER TABLE `player` DISABLE KEYS */;
/*!40000 ALTER TABLE `player` ENABLE KEYS */;


--
-- Definition of table `scores`
--

DROP TABLE IF EXISTS `scores`;
CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `matchID` varchar(45) DEFAULT NULL,
  `teamID` varchar(45) DEFAULT NULL,
  `playerID` varchar(45) DEFAULT NULL,
  `ballCount` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  `loginId` int(11) DEFAULT NULL,
  `overId` varchar(45) DEFAULT NULL,
  `tournmentId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scores`
--

/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;


--
-- Definition of table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
CREATE TABLE `statistics` (
  `id` int(11) NOT NULL,
  `playerID` int(11) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  `wickets` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statistics`
--

/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;


--
-- Definition of table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `noOfPlayers` varchar(45) DEFAULT NULL,
  `loginId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;


--
-- Definition of table `tournment`
--

DROP TABLE IF EXISTS `tournment`;
CREATE TABLE `tournment` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `noOfMatches` varchar(45) DEFAULT NULL,
  `loginId` int(11) DEFAULT NULL,
  `locationId` int(11) DEFAULT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tournment`
--

/*!40000 ALTER TABLE `tournment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tournment` ENABLE KEYS */;


--
-- Definition of table `umpire`
--

DROP TABLE IF EXISTS `umpire`;
CREATE TABLE `umpire` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `umpire`
--

/*!40000 ALTER TABLE `umpire` DISABLE KEYS */;
/*!40000 ALTER TABLE `umpire` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
