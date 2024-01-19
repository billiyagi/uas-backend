# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 11.1.2-MariaDB)
# Database: express_news
# Generation Time: 2024-01-19 06:25:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `slug`, `name`)
VALUES
	(1,'sport','Sport'),
	(2,'finance','Finance'),
	(3,'automotive','Automotive');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(256) DEFAULT NULL,
  `author` varchar(256) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `url_image` mediumtext DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` (`id`, `title`, `author`, `content`, `url`, `url_image`, `published_at`, `category`, `timestamp`)
VALUES
	(2,'Indonesia yang terhebat','billy','kjaskd akjdkjas ndkajsnd kasjndkasj nkasjdnk as','https://google.com\n','https://google.com/img\n','2023-09-18 11:52:34','sport','2023-09-18 11:52:34'),
	(4,'sdasdasdsada dasd ','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','finance','2023-09-18 11:52:34'),
	(5,'wahduh ini capres','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','finance','2023-09-18 11:52:34'),
	(6,'karen bagnetetetet','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','automotive','2023-09-18 11:52:34'),
	(7,'karen bagnetetetet','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','sport','2023-09-18 11:52:34'),
	(8,'undefined','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(9,'undefined','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(10,'undefined','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(11,'undefined','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(12,'undefined','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(13,'wowowwwww','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(14,'wowowwwww','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(15,'wowowwwww','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(16,'wowowwwww','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(17,'wowowwwww','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(18,'wowowwwww','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(19,'wowowwwww','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(20,'wowowwwww','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(21,'wowowwwww','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(22,'wowowwwww','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34'),
	(23,'wowowwwww','ajkhsdksjahd','ajshdaj dhaskjhdk a','https://bkpaxist.my.id','https://google.com/myimage','2023-09-18 11:52:34','2','2023-09-18 11:52:34');

/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
