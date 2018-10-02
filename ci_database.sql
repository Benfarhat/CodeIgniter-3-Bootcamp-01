-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 02 oct. 2018 à 06:09
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ci_database`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(36) NOT NULL,
  `content` text,
  `created_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `name`, `slug`, `content`, `created_at`) VALUES
(1, 'et malesuada fames ac', '87FDBDFD-A790-67F2-C9AE-A42898B21ACB', 'aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis', '2018-07-08 06:31:45'),
(2, 'arcu iaculis enim, sit amet', '3A093EAE-CF9D-2935-CB7E-0DFA163083B3', 'dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada', '2018-08-19 23:01:33'),
(3, 'a felis ullamcorper', '839001DF-C02C-0497-E35C-04E3A2BD6342', 'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2018-06-13 18:28:55'),
(4, 'cursus. Integer mollis. Integer', 'BA71BB85-4877-BCF2-7FD7-9A634DA21BE2', 'neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi', '2018-02-15 07:49:26'),
(5, 'Vestibulum ante ipsum', 'CAF07580-C2CB-B801-4783-28ADB1759F57', 'lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam.', '2017-10-04 09:34:33'),
(6, 'pede nec ante blandit', 'BFF740DD-695C-49EF-DC53-9B4B4F2E0B4C', 'in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at,', '2018-08-08 12:26:24'),
(7, 'nonummy ipsum non', 'A92BB5FF-8656-6D5E-CFED-76832FEA5587', 'ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu', '2017-12-28 01:42:45'),
(8, 'nec, malesuada ut, sem.', 'FFA9E75F-6830-58C7-7D97-9AF1ED41ADD0', 'Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna.', '2018-03-22 18:18:30'),
(9, 'ultricies ligula. Nullam enim.', 'A02961B1-9249-B6C6-28C7-91CB3C41B543', 'ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo', '2017-09-28 22:53:24'),
(10, 'elit fermentum risus,', '82CD498E-FCF7-B5D5-6F92-22F1EBA7EBB1', 'Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat', '2018-01-12 07:14:59'),
(11, 'velit. Sed malesuada augue ut', '6A2C7F6F-FB8C-1B68-2B27-951AF3125882', 'Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus', '2017-12-18 17:50:02'),
(12, 'neque. Nullam nisl.', '7A09DC39-C86D-D3AA-1F36-8810DFDC772D', 'tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod', '2018-06-27 11:18:30'),
(13, 'vitae nibh. Donec est', '9AB133E3-734A-D4EC-A837-DFEBA755A08E', 'Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc', '2018-06-11 07:32:21'),
(14, 'tempor diam dictum sapien.', '82904FA1-0934-F8B2-7616-7746584EBE2C', 'Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante', '2017-12-14 16:01:30'),
(15, 'cursus vestibulum. Mauris magna. Duis', 'F7C9BDA3-0900-5915-11D9-2D61983799AA', 'nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam', '2017-10-08 00:49:56'),
(16, 'lectus pede et risus.', 'E889CF74-9177-1C27-9EF1-6A72F28013C9', 'sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,', '2018-07-17 03:21:42'),
(17, 'facilisis, magna tellus faucibus', '808F1844-7586-522B-7387-8FB84CB4F8C3', 'et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum', '2018-02-13 19:19:23'),
(18, 'tempor lorem, eget mollis lectus', 'AFA8B900-58B3-6A27-10AF-7DBECFE621A1', 'eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper', '2017-11-23 05:18:03'),
(19, 'sed sem egestas', '626D229D-D931-ED56-9A5F-3A0B2A85AA83', 'aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue', '2017-12-18 09:30:01'),
(20, 'sociis natoque penatibus', '6E005AE2-9C67-530B-DCEF-AFF4EF948234', 'turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed', '2018-05-02 21:18:25'),
(21, 'ipsum leo elementum sem, vitae', '094571D5-121D-A752-F971-954EFCC271F5', 'neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi', '2018-04-04 10:21:56'),
(22, 'ipsum. Suspendisse sagittis.', '5D119468-2635-6E86-CAC4-54100B77A5DA', 'congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in', '2018-01-04 18:03:29'),
(23, 'aliquet magna a', '39972D6B-8CA8-20F8-CC2A-678442473D14', 'odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut', '2018-03-15 00:20:40'),
(24, 'vestibulum lorem, sit amet ultricies', '947F2E62-6A4D-57AA-4761-4AA81291E92D', 'congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In', '2018-02-22 16:54:03'),
(25, 'sagittis. Duis gravida. Praesent eu', 'F43B3608-DE28-7633-B946-D018F2AFA1FB', 'Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus', '2017-09-23 22:35:12'),
(26, 'enim. Mauris quis turpis vitae', '065004D8-905A-B183-ACDC-A3737C7DAA0E', 'a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie', '2018-02-12 06:33:51'),
(27, 'vel arcu. Curabitur', '34464EB4-5543-D7B7-30C9-A0E5F3CF3DA4', 'Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue', '2018-02-11 12:11:50'),
(28, 'consequat nec, mollis', '7C9DA24B-0D09-D01D-3EB1-FC918FE5C528', 'ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis', '2018-05-02 06:50:43'),
(29, 'Cum sociis natoque penatibus', 'D64AC087-D028-C8F0-8996-1325C87C5CCF', 'ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim,', '2017-09-17 11:02:59'),
(30, 'Phasellus nulla. Integer', '5BD7D1C6-695D-9C10-E2A8-36826F9E5A82', 'accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo', '2018-04-03 10:19:06'),
(31, 'lacinia vitae, sodales at,', '1512664D-E243-8601-BDBE-CEDF1F852C6F', 'erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed', '2018-07-26 06:31:17'),
(32, 'diam luctus lobortis. Class aptent', '939FFB2A-6614-468F-E8AB-9F8EE69687DA', 'erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In', '2018-05-22 03:50:11'),
(33, 'elit erat vitae risus. Duis', '373C99C4-0D1D-9453-57B8-963F6DD210D6', 'Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum,', '2018-01-07 17:04:03'),
(34, 'Nulla dignissim. Maecenas ornare', '5DC16595-D284-8DC5-F9F4-4C15848F1F81', 'vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', '2017-10-21 07:32:41'),
(35, 'tincidunt nibh. Phasellus', '5996CD1A-91D8-D216-B641-7186F3F2678B', 'dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent', '2018-01-29 13:07:00'),
(36, 'ultrices iaculis odio. Nam interdum', '4B31E903-6161-BC32-DCA2-52B0CE76924B', 'congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In', '2018-06-05 02:43:19'),
(37, 'arcu imperdiet ullamcorper. Duis at', 'F18D096F-FCF4-D064-16BF-226B2C409BF3', 'ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet', '2018-03-25 13:11:20'),
(38, 'nascetur ridiculus mus. Aenean', '71AACF1E-4914-642E-B725-92E4E01DF629', 'lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus', '2017-12-03 03:29:25'),
(39, 'Mauris vel turpis. Aliquam adipiscing', '64BFF70A-6B7E-9991-F14C-A9465F30CB77', 'quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio.', '2018-07-26 03:18:27'),
(40, 'ultricies ligula. Nullam enim. Sed', 'E6CFFF76-2BBE-631B-B219-4EB7B69F7B93', 'tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus.', '2018-07-21 04:06:34'),
(41, 'aliquet. Phasellus fermentum convallis', '89CD48A2-5BF1-098E-E5B8-4BE9A55A6B0E', 'venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis', '2018-01-15 16:58:58'),
(42, 'id enim. Curabitur', '2B62BF8E-63C0-9EF5-DF7B-AE2DFD78B2A2', 'pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque', '2018-08-08 03:32:55'),
(43, 'libero lacus, varius', '5F6B9834-59D0-6D4D-6106-82B268B22748', 'tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero.', '2018-02-24 16:22:13'),
(44, 'in faucibus orci', '7B068C28-F228-71C4-B4DB-BB53F748C774', 'sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada', '2017-10-01 05:30:02'),
(45, 'sem mollis dui, in', '59132843-16F6-02A8-A7DF-2C9307BB9E22', 'Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2018-07-20 09:41:26'),
(46, 'hendrerit id, ante. Nunc mauris', '1A9B405D-92A7-6EEB-9520-AF7B2B3C36A2', 'nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam', '2018-01-10 04:09:09'),
(47, 'Pellentesque ultricies dignissim', 'F18BAEA7-E836-EA69-3A7D-1E5CE844D8E4', 'Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat', '2017-12-16 01:29:06'),
(48, 'in faucibus orci', '3B6AF44E-2886-AD35-4F79-92E653F733E2', 'Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem', '2018-03-22 15:04:21'),
(49, 'fringilla est. Mauris eu turpis.', '48F9EA21-6AA6-5D78-72DA-12733590F2FD', 'euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus', '2018-03-10 08:55:06'),
(50, 'Pellentesque ut ipsum ac mi', 'D6C0961C-1446-1523-1358-D82CE41AFDEA', 'pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus', '2018-08-13 14:19:30'),
(51, 'Sed molestie. Sed id risus', '1BFDBEF9-93DA-98F4-7AF4-513326124C08', 'ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam', '2018-02-15 07:46:05'),
(52, 'justo eu arcu.', 'FBDFA768-E476-923B-E83A-BF55EC6AA4E7', 'luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales', '2017-09-02 08:10:50'),
(53, 'imperdiet dictum magna.', 'A1C3D7E5-DF69-8A84-A8F2-B32DB060B894', 'non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui', '2018-06-23 01:18:18'),
(54, 'urna justo faucibus lectus,', '118D110F-7B27-ED08-21BC-D40253B6EE95', 'fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu', '2018-02-23 07:40:30'),
(55, 'libero. Morbi accumsan laoreet ipsum.', '07F2D883-EFAA-E12C-E66C-3E092C8B6889', 'ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis', '2017-09-03 16:48:34'),
(56, 'et arcu imperdiet', 'A4517875-0B2B-F6A9-8F4E-2A63C155058B', 'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor', '2018-03-04 15:10:37'),
(57, 'Mauris ut quam vel sapien', '1326209C-802A-5826-CEFC-B8D9AD14D6FC', 'nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent', '2017-12-07 06:20:28'),
(58, 'In faucibus. Morbi vehicula. Pellentesque', '9ED1BD34-79A0-FA29-E719-ABA39D57BC34', 'elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque', '2018-05-04 22:40:06'),
(59, 'ullamcorper. Duis at lacus.', 'B9546A0F-63A6-895F-880A-8CC265FC8215', 'ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus.', '2018-06-01 01:18:05'),
(60, 'erat volutpat. Nulla', '7163469C-011B-F8A0-10A6-52998678C99D', 'Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus.', '2018-05-13 17:38:28'),
(61, 'magna. Duis dignissim tempor', '66B7380A-888B-75B5-8E56-B58D0C9C5C86', 'Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,', '2018-01-25 12:26:02'),
(62, 'egestas. Aliquam fringilla', '22912E62-A685-13AB-D5D5-E31C3F017259', 'dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut', '2018-06-27 10:56:39'),
(63, 'mauris sagittis placerat. Cras dictum', 'A0809A60-F1A6-3D28-B2E3-1AF53B0BC086', 'sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu', '2018-04-18 17:05:19'),
(64, 'pede. Cum sociis', '85AC1E7A-D694-5E4C-BC7B-D8DE10A4EC1B', 'tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede.', '2018-03-09 19:19:04'),
(65, 'massa. Integer vitae', 'A2A09309-CAD9-967E-EED6-00A79B99525E', 'hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing.', '2017-09-07 20:15:05'),
(66, 'sit amet ultricies sem', '290CC026-A6A7-E358-2829-F92DE967585B', 'mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec,', '2018-06-02 01:27:37'),
(67, 'habitant morbi tristique', '57F42508-18DB-96F5-E9FD-56D3CF4D0679', 'neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus', '2018-08-23 11:55:08'),
(68, 'lobortis risus. In mi', '584D3B03-75FC-1C3D-B01B-EC53F5579517', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis', '2017-12-10 19:09:42'),
(69, 'adipiscing lobortis risus. In mi', '08AF8526-8D07-9621-5E23-EA24FEB25D33', 'pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae', '2018-03-18 03:40:39'),
(70, 'pellentesque, tellus sem mollis dui,', 'FE1F2CBB-01E1-F18A-9608-A41CF366360F', 'sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at', '2017-12-10 07:40:15'),
(71, 'Curae; Phasellus ornare.', '9F661EE2-58FA-ADB8-6576-8D7F4D0CD11D', 'ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus', '2018-07-19 16:12:07'),
(72, 'mi lorem, vehicula et, rutrum', '0783420F-9435-540F-04F1-E8F31ACCA84C', 'et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce', '2018-08-01 06:55:24'),
(73, 'sociis natoque penatibus et', '64F494B1-617F-FA34-B3E3-95A82EC09E25', 'porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique', '2018-03-01 18:40:27'),
(74, 'leo. Cras vehicula', 'E5ECDCF4-7D2F-BCB0-69D0-BA8F1B7C3A3B', 'Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus.', '2017-12-16 17:28:23'),
(75, 'arcu ac orci. Ut semper', '1F9EA8BD-8996-458E-3E4F-CBFB76359EFA', 'egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu', '2017-09-09 10:42:25'),
(76, 'sed dictum eleifend, nunc', '3E339F6B-6B67-71AA-B06D-1D75D8072ED7', 'nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed', '2018-04-28 05:26:28'),
(77, 'sociis natoque penatibus et', '3CCA118A-43C7-E4FA-E417-7A6014674391', 'massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus', '2018-01-15 07:33:04'),
(78, 'aliquam iaculis, lacus pede sagittis', 'CF51801D-12C3-94F0-BF47-1504D1DF4F78', 'nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede,', '2018-08-24 19:50:16'),
(79, 'Phasellus in felis.', 'FBC1417F-4FC4-2D84-B55A-95502C03ABC2', 'quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque', '2018-07-26 06:23:26'),
(80, 'vitae odio sagittis', '825B501D-B34D-3F98-A14C-26997E18EABF', 'non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam', '2018-07-10 02:19:07'),
(81, 'nec, euismod in,', 'C207D0C4-14EA-ED79-1CD7-902764AA3227', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit', '2017-08-31 18:19:18'),
(82, 'arcu. Nunc mauris. Morbi non', 'B4BBB485-C412-E67F-0D5D-3B74B54F7E03', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec', '2017-09-03 09:06:47'),
(83, 'Vivamus nibh dolor,', '53CD6926-8524-34BF-F2DF-08A094E22E16', 'Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis', '2018-07-28 03:03:06'),
(84, 'mollis vitae, posuere at, velit.', '6425DDA2-57AB-5259-DE4E-D286BA248419', 'Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper', '2018-02-08 05:10:29'),
(85, 'sed dui. Fusce', '024FDE16-A41B-5619-33CA-B6F4CFA1481D', 'magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non,', '2017-12-29 07:15:55'),
(86, 'Nam consequat dolor vitae dolor.', 'B7177A88-ED56-76E1-FAC5-D50152AADE17', 'est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim', '2018-04-09 20:06:50'),
(87, 'consectetuer ipsum nunc id', '3A6DD299-77E3-33D7-084B-9FD4B3F7FF09', 'dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis.', '2018-04-17 11:41:20'),
(88, 'Fusce diam nunc, ullamcorper', 'F8718604-507E-3555-1ADF-B1334261BAFF', 'magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,', '2018-03-24 10:29:57'),
(89, 'Aenean eget magna. Suspendisse', '7BA0506C-AD3C-1B45-0268-911F411D6FA7', 'Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros', '2018-02-02 03:37:38'),
(90, 'felis ullamcorper viverra. Maecenas iaculis', '4E5F7CF5-1173-972B-D241-12994CC36E38', 'orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit', '2018-03-12 04:09:34'),
(91, 'metus. Aenean sed', 'AF3C8682-4506-36BC-55EB-0B77BCF263EA', 'Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem', '2017-12-16 01:46:07'),
(92, 'eu erat semper rutrum.', 'A3BA2659-2558-C323-C572-44A357B26045', 'ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus.', '2017-12-03 06:29:47'),
(93, 'arcu. Vivamus sit', 'C7B91B7C-E547-A6EF-2864-1D67D39B9177', 'Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu,', '2018-04-01 22:33:24'),
(94, 'Proin sed turpis', '1A7B4351-D2A3-D8A7-DC67-FAE251BD864F', 'Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam', '2018-03-16 22:46:42'),
(95, 'consectetuer rhoncus. Nullam', 'FA89701D-7BA2-CEC1-48E1-135B7467C712', 'feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus', '2018-02-06 11:10:36'),
(96, 'ut, pharetra sed,', '8F32E0F4-CBE8-5A18-BF25-FAFD67E28D2F', 'erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus', '2018-04-17 04:59:55'),
(97, 'dignissim tempor arcu. Vestibulum', '31C5F793-08B5-4715-E345-02645B10C2D1', 'et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem,', '2018-02-23 21:28:19'),
(98, 'dui. Fusce diam', '796AE027-5DE7-681E-AA31-9785F87DDE14', 'Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor', '2018-02-14 17:29:11'),
(99, 'tellus. Suspendisse sed dolor. Fusce', '05961029-5BC5-3AA9-B7FB-3A55B73E6D15', 'dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget,', '2018-07-14 15:00:24'),
(100, 'sed, facilisis vitae,', 'ADEFCC18-4CAE-7A16-8C41-E13E013A1B66', 'dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor,', '2018-06-18 03:17:54');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(224) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', '$2y$10$UyXEYppMuVnYN3Vd8l/enu3UoLr9zPTOXuQGWiZ/h4GQejoCJvlH.', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
