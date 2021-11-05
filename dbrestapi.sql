/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.7.24 : Database - dbrestapi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbrestapi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbrestapi`;

/*Table structure for table `krs` */

DROP TABLE IF EXISTS `krs`;

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_krs` date DEFAULT NULL,
  `id_matakuliah` int(11) DEFAULT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_krs`),
  KEY `id_matakuliah` (`id_matakuliah`),
  KEY `id_mahasiswa` (`id_mahasiswa`),
  CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `krs` */

insert  into `krs`(`id_krs`,`tanggal_krs`,`id_matakuliah`,`id_mahasiswa`) values 
(1,'2021-11-05',1,1),
(2,'2021-11-15',2,2),
(3,'2021-11-01',2,3),
(4,'2021-11-05',3,4);

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `nim` int(20) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `mahasiswa` */

insert  into `mahasiswa`(`id_mahasiswa`,`nim`,`nama`,`jurusan`) values 
(1,102348,'Nabil rahmi','Teknik Sipil'),
(2,1003234,'Rahmat','Sistem Komputer'),
(3,102348,'Novita Hayani, SH','Teknik Sipil'),
(4,1003236,'Putra','Informatika');

/*Table structure for table `matakuliah` */

DROP TABLE IF EXISTS `matakuliah`;

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT,
  `matakuliah` varchar(50) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_matakuliah`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `matakuliah` */

insert  into `matakuliah`(`id_matakuliah`,`matakuliah`,`sks`) values 
(1,'Sejarah',4),
(2,'Biologi',4),
(3,'Kimia',4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
