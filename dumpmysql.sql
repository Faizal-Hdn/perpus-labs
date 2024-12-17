/*
SQLyog Community v13.2.1 (64 bit)
MySQL - 8.0.32 : Database - perpus1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `buku` */

CREATE TABLE `buku` (
  `id_buku` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode_buku` bigint NOT NULL,
  `nama_buku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rak` int NOT NULL,
  `stok_buku` int NOT NULL,
  `foto_buku` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `buku` */

insert  into `buku`(`id_buku`,`kode_buku`,`nama_buku`,`penerbit`,`rak`,`stok_buku`,`foto_buku`,`created_at`,`updated_at`) values 
(3,2251821,'Cerita Rakyat Sumatera Selatan','penario',8,2,'buku.jpeg','2022-12-05 10:04:08','2023-01-19 17:29:52'),
(4,132343,'Ilmu Pengetahuan Alam','sidu',2,2,'buku.jpeg','2022-12-05 10:08:57','2023-01-19 17:26:31'),
(6,535395389,'BOBO','BOBO',10,1,'WhatsApp Image 2022-09-09 at 20.17.15.jpeg','2023-01-19 17:31:16','2023-07-09 00:43:58'),
(7,38383929,'Bahasa Inggris','Erlangga',9,0,'WhatsApp Image 2022-09-11 at 20.59.57 (1).jpeg','2023-01-19 17:31:58','2023-07-09 00:43:13');

/*Table structure for table `denda` */

CREATE TABLE `denda` (
  `id_denda` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nominal_denda` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_denda`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `denda` */

insert  into `denda`(`id_denda`,`nominal_denda`,`created_at`,`updated_at`) values 
(2,'3000','2023-01-18 08:09:24','2023-01-18 08:09:24');

/*Table structure for table `kelas` */

CREATE TABLE `kelas` (
  `id_kelas` bigint unsigned NOT NULL AUTO_INCREMENT,
  `jenis_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kelas` */

insert  into `kelas`(`id_kelas`,`jenis_kelas`,`created_at`,`updated_at`) values 
(6,'kelas 222','2022-12-02 07:52:28','2024-12-17 04:38:29'),
(7,'kelas 510','2022-12-02 09:07:58','2024-12-17 04:38:20'),
(8,'kelas 412','2023-01-19 17:12:29','2024-12-17 04:38:36'),
(9,'kelas 502','2023-01-19 17:12:57','2024-12-17 04:37:21'),
(10,'kelas 702','2023-01-19 17:13:08','2024-12-17 04:38:40'),
(11,'kelas 301','2023-01-19 17:13:19','2024-12-17 04:37:32'),
(12,'Kelas 302','2023-01-19 17:13:28','2024-12-17 04:37:38'),
(13,'Kelas 303','2023-01-19 17:13:38','2024-12-17 04:37:45'),
(14,'kelas 304','2023-01-19 17:14:13','2024-12-17 04:37:50'),
(15,'kelas 306','2023-01-19 17:14:30','2024-12-17 04:37:57'),
(16,'Kelas 307','2023-01-19 17:14:39','2024-12-17 04:38:04'),
(17,'kelas 701','2023-01-19 17:14:48','2024-12-17 04:38:11');

/*Table structure for table `kepala_sekolah` */

CREATE TABLE `kepala_sekolah` (
  `id_kepsek` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nip_kepsek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kepsek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin_kepsek` enum('p','l') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir_kepsek` date NOT NULL,
  `foto_kepsek` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kepsek`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kepala_sekolah` */

insert  into `kepala_sekolah`(`id_kepsek`,`nip_kepsek`,`nama_kepsek`,`jenis_kelamin_kepsek`,`tgl_lahir_kepsek`,`foto_kepsek`,`created_at`,`updated_at`) values 
(1,'12726377','rodiyahh','l','1966-10-27','086593900_1553668873-LISA_BLACKPINK_1.jpg','2023-01-20 18:32:55','2023-01-20 18:42:22');

/*Table structure for table `migrations` */

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(6,'2014_10_12_000000_create_users_table',1),
(7,'2014_10_12_100000_create_password_resets_table',1),
(8,'2019_12_14_000001_create_personal_access_tokens_table',1),
(10,'2022_12_02_070552_create_kelas_table',3),
(11,'2022_12_03_214202_create_rak_table',4),
(12,'2022_12_02_051558_create_siswa_table',5),
(13,'2022_12_04_135623_create_buku_table',6),
(16,'2022_12_06_005647_create_pinjambuku_table',9),
(17,'2022_12_06_121632_create_riwayat_pinjam_table',10),
(18,'2023_01_18_000007_create_denda_table',11),
(20,'2023_01_18_184407_create_kepala_sekolah_table',12);

/*Table structure for table `password_resets` */

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `pinjambuku` */

CREATE TABLE `pinjambuku` (
  `id_pinjam` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_siswa` int NOT NULL,
  `id_buku` int NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pinjam`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pinjambuku` */

insert  into `pinjambuku`(`id_pinjam`,`id_siswa`,`id_buku`,`tanggal_kembali`,`created_at`,`updated_at`) values 
(6,8,7,'2023-01-27','2023-01-19 19:37:36','2023-01-19 19:37:36'),
(8,12,7,'2023-07-16','2023-07-09 00:43:13','2023-07-09 00:43:13'),
(9,12,6,'2023-07-16','2023-07-09 00:43:13','2023-07-09 00:43:13');

/*Table structure for table `rak` */

CREATE TABLE `rak` (
  `id_rak` bigint unsigned NOT NULL AUTO_INCREMENT,
  `jenis_rak` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_rak`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rak` */

insert  into `rak`(`id_rak`,`jenis_rak`,`created_at`,`updated_at`) values 
(2,'Buku SAINTS','2022-12-04 04:46:20','2024-12-17 04:44:16'),
(8,'Cerita Rakyat','2023-01-19 17:27:25','2023-01-19 17:27:25'),
(9,'Bahasa','2023-01-19 17:27:47','2023-01-19 17:27:47'),
(10,'Majalah','2023-01-19 17:28:02','2023-01-19 17:30:34');

/*Table structure for table `riwayat_pinjam` */

CREATE TABLE `riwayat_pinjam` (
  `id_riwayat` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_siswa` int NOT NULL,
  `id_buku` int NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `denda` bigint DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_riwayat`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `riwayat_pinjam` */

insert  into `riwayat_pinjam`(`id_riwayat`,`id_siswa`,`id_buku`,`tanggal_kembali`,`denda`,`status`,`created_at`,`updated_at`) values 
(1,1,4,'2022-12-13',5000,'selesai','2022-12-06 05:51:18','2022-12-06 18:41:22'),
(2,1,4,'2022-12-17',0,'selesai','2022-12-10 14:30:53','2022-12-10 14:31:16'),
(3,1,4,'2022-12-30',0,'selesai','2022-12-23 13:43:45','2022-12-25 07:31:21'),
(4,1,3,'2023-01-01',0,'selesai','2022-12-25 07:32:14','2023-01-18 08:31:01'),
(5,1,3,'2023-01-01',51000,'selesai','2023-01-18 11:33:52','2023-01-18 11:37:21'),
(6,8,7,'2023-01-27',NULL,'pinjam','2023-01-19 19:37:36','2023-01-19 19:37:36'),
(7,12,6,'2023-07-16',0,'selesai','2023-07-09 00:43:13','2023-07-09 00:43:58'),
(8,12,7,'2023-07-16',NULL,'pinjam','2023-07-09 00:43:13','2023-07-09 00:43:13'),
(9,12,6,'2023-07-16',NULL,'pinjam','2023-07-09 00:43:13','2023-07-09 00:43:13');

/*Table structure for table `siswa` */

CREATE TABLE `siswa` (
  `id_siswa` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nis` bigint NOT NULL,
  `barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('p','l') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `siswa` */

insert  into `siswa`(`id_siswa`,`nis`,`barcode`,`nama_siswa`,`jenis_kelamin`,`tgl_lahir`,`kelas`,`foto`,`created_at`,`updated_at`) values 
(1,1289302329,'8992759170580','Al Huda','l','1999-01-22','7','istockphoto-1300845620-612x612.jpg','2022-12-04 04:55:23','2024-12-17 04:36:10'),
(2,3537347353,'901813132','Ade Estyana','p','2023-01-20','6','istockphoto-1300845620-612x612.jpg','2023-01-19 17:16:36','2024-12-17 04:35:30'),
(4,6324252232,'762096216','Sayfudin','l','2023-01-20','9','istockphoto-1300845620-612x612.jpg','2023-01-19 17:18:12','2024-12-17 04:36:32'),
(6,332525553,'61934586','M Bastian','l','2023-01-20','11','istockphoto-1300845620-612x612.jpg','2023-01-19 17:19:44','2024-12-17 04:35:47'),
(7,565655433,'141512814','Agung Kurniawan','l','2023-01-20','12','istockphoto-1300845620-612x612.jpg','2023-01-19 17:20:26','2024-12-17 04:35:55'),
(8,865853345,'169026197','Fuzan','l','2023-01-20','13','istockphoto-1300845620-612x612.jpg','2023-01-19 17:21:52','2024-12-17 04:36:02'),
(9,547464563,'63586196','Hafiz','l','2023-01-20','14','istockphoto-1300845620-612x612.jpg','2023-01-19 17:22:33','2024-12-17 04:36:17'),
(10,5642326711,'521544757','Putri','p','2023-01-20','16','istockphoto-1300845620-612x612.jpg','2023-01-19 17:23:18','2024-12-17 04:35:21'),
(11,211355355,'698386875','Permata','p','2023-01-20','15','istockphoto-1300845620-612x612.jpg','2023-01-19 17:23:56','2024-12-17 04:35:38'),
(12,2228887744,'749302924','Roby','l','2023-01-20','17','istockphoto-1300845620-612x612.jpg','2023-01-19 17:24:19','2024-12-17 04:36:25');

/*Table structure for table `users` */

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`nip`,`name`,`telp`,`email_verified_at`,`password`,`type`,`foto`,`remember_token`,`created_at`,`updated_at`) values 
(1,'123456789','Faizal Rizkan','08172733',NULL,'$2y$10$XrEcZF2BqjsfVWtC.5UFhOSWZXKvFo/Qh/PPN/CeTEYJKCeHTEoDm','Petugas','IMG_20230404_230649_2570865834239044153.jpg',NULL,'2022-12-01 07:34:32','2024-12-17 04:29:58'),
(3,'12345678','Badriah','08117807970',NULL,'$2y$10$sQFwF0wX3oTQsVCTqQkPQuUvfrUSrqvGgugi5vHSdsQi9W3OQKWhW','Kepsek','086593900_1553668873-LISA_BLACKPINK_1.jpg',NULL,'2023-01-09 09:55:33','2023-01-19 17:09:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
