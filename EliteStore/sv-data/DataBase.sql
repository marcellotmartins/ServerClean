-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.27-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para elite
CREATE DATABASE IF NOT EXISTS `EliteStore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `EliteStore`;

-- Copiando estrutura para tabela elite.nation_concessionaria
CREATE TABLE IF NOT EXISTS `nation_concessionaria` (
  `vehicle` text NOT NULL,
  `estoque` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vehicle`(768))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.nation_concessionaria: ~226 rows (aproximadamente)
INSERT INTO `nation_concessionaria` (`vehicle`, `estoque`) VALUES
	('adder', 10),
	('akuma', 10),
	('alpha', 10),
	('asea', 10),
	('asterope', 10),
	('autarch', 9),
	('avarus', 9),
	('baller', 9),
	('baller4', 6),
	('banshee', 10),
	('banshee2', 10),
	('bati', 10),
	('bestiagts', 10),
	('bfinjection', 10),
	('bifta', 10),
	('bison', 10),
	('bjxl', 10),
	('blade', 10),
	('blazer', 10),
	('blazer3', 10),
	('blazer4', 10),
	('blista', 10),
	('blista2', 10),
	('blista3', 10),
	('bobcatxl', 10),
	('brawler', 10),
	('brioso', 10),
	('btype', 10),
	('btype2', 10),
	('buccaneer', 10),
	('buffalo', 10),
	('buffalo3', 10),
	('bullet', 10),
	('carbonizzare', 10),
	('carbonrs', 10),
	('casco', 10),
	('cavalcade', 10),
	('cheetah', 10),
	('cheetah2', 10),
	('chino', 10),
	('chino2', 10),
	('cliffhanger', 10),
	('cogcabrio', 10),
	('cognoscenti', 10),
	('comet2', 10),
	('comet3', 10),
	('comet4', 10),
	('comet5', 10),
	('contender', 10),
	('coquette', 10),
	('coquette2', 10),
	('coquette3', 10),
	('cyclone', 10),
	('daemon', 10),
	('defiler', 10),
	('deveste', 10),
	('diablous', 10),
	('diablous2', 10),
	('dilettante', 10),
	('dominator', 10),
	('dominator3', 10),
	('double', 10),
	('dubsta', 9),
	('dubsta3', 10),
	('dukes', 9),
	('elegy', 10),
	('elegy2', 10),
	('emperor', 10),
	('enduro', 10),
	('entityxf', 10),
	('esskey', 10),
	('exemplar', 10),
	('f620', 10),
	('faction', 10),
	('faggio', 10),
	('fcr', 10),
	('fcr2', 10),
	('felon', 10),
	('feltzer2', 10),
	('feltzer3', 10),
	('fmj', 10),
	('fq2', 10),
	('fugitive', 10),
	('furoregt', 10),
	('fusilade', 10),
	('futo', 10),
	('gargoyle', 10),
	('gauntlet', 10),
	('gb200', 10),
	('gp1', 10),
	('granger', 10),
	('gresley', 10),
	('gt500', 10),
	('habanero', 10),
	('hakuchou', 10),
	('hermes', 10),
	('hexer', 10),
	('hotknife', 10),
	('hotring', 10),
	('huntley', 10),
	('infernus', 10),
	('infernus2', 10),
	('ingot', 10),
	('innovation', 10),
	('intruder', 10),
	('issi2', 10),
	('italigtb', 10),
	('jackal', 10),
	('jester', 10),
	('kamacho', 10),
	('khamelion', 10),
	('kuruma', 10),
	('landstalker', 10),
	('le7b', 10),
	('lectro', 10),
	('mamba', 10),
	('manana', 10),
	('manchez', 10),
	('massacro', 10),
	('mesa', 10),
	('mesa3', 9),
	('minivan', 10),
	('minivan2', 10),
	('monroe', 10),
	('moonbeam', 10),
	('neon', 10),
	('nero', 10),
	('nero2', 10),
	('nightblade', 10),
	('nightshade', 10),
	('ninef', 10),
	('omnis', 10),
	('oracle2', 10),
	('osiris', 10),
	('panto', 10),
	('pariah', 10),
	('patriot', 10),
	('pcj', 10),
	('penetrator', 10),
	('penumbra', 10),
	('peyote', 10),
	('pfister811', 10),
	('picador', 10),
	('pigalle', 10),
	('premier', 10),
	('prototipo', 10),
	('radi', 10),
	('raiden', 10),
	('rancherxl', 10),
	('rapidgt', 10),
	('rapidgt2', 10),
	('rapidgt3', 10),
	('raptor', 10),
	('ratloader2', 10),
	('reaper', 10),
	('rebel2', 10),
	('retinue', 10),
	('rhapsody', 10),
	('rocoto', 10),
	('ruffian', 10),
	('ruiner', 10),
	('rumpo3', 10),
	('ruston', 10),
	('sabregt', 10),
	('sadler', 10),
	('sanchez2', 10),
	('sc1', 10),
	('schafter3', 10),
	('schlagen', 10),
	('schwarzer', 10),
	('seminole', 10),
	('sentinel', 10),
	('serrano', 10),
	('seven70', 10),
	('sheava', 10),
	('slamvan', 10),
	('specter', 10),
	('speedo', 10),
	('stalion', 10),
	('stanier', 10),
	('stinger', 10),
	('stratum', 10),
	('streiter', 10),
	('stretch', 10),
	('sultan', 10),
	('sultanrs', 10),
	('superd', 10),
	('surano', 10),
	('surge', 10),
	('t20', 10),
	('tailgater', 10),
	('tampa', 10),
	('tampa2', 10),
	('tempesta', 10),
	('tezeract', 9),
	('torero', 10),
	('tornado', 10),
	('toros', 10),
	('trophytruck', 10),
	('trophytruck2', 10),
	('tropos', 10),
	('turismo2', 10),
	('turismor', 10),
	('tyrus', 10),
	('vacca', 10),
	('vader', 10),
	('vagner', 9),
	('verlierer2', 10),
	('vigero', 10),
	('virgo', 10),
	('visione', 10),
	('voltic', 10),
	('voodoo', 10),
	('vortex', 10),
	('warrener', 10),
	('washington', 10),
	('windsor2', 10),
	('wolfsbane', 10),
	('xa21', 10),
	('xls', 10),
	('yosemite', 10),
	('youga', 10),
	('zentorno', 10),
	('zion', 10),
	('zion2', 10),
	('ztype', 10);

-- Copiando estrutura para tabela elite.smartphone_bank_invoices
CREATE TABLE IF NOT EXISTS `smartphone_bank_invoices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payee_id` int(11) NOT NULL,
  `payer_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT '',
  `value` int(11) NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_bank_invoices: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_blocks
CREATE TABLE IF NOT EXISTS `smartphone_blocks` (
  `user_id` int(11) NOT NULL,
  `phone` varchar(32) NOT NULL,
  PRIMARY KEY (`user_id`,`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_blocks: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_calls
CREATE TABLE IF NOT EXISTS `smartphone_calls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `initiator` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL,
  `video` tinyint(4) NOT NULL DEFAULT 0,
  `anonymous` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `initiator_index` (`initiator`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_calls: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_casino
CREATE TABLE IF NOT EXISTS `smartphone_casino` (
  `user_id` int(11) NOT NULL,
  `balance` bigint(20) NOT NULL DEFAULT 0,
  `double` bigint(20) NOT NULL DEFAULT 0,
  `crash` bigint(20) NOT NULL DEFAULT 0,
  `mine` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_casino: ~2 rows (aproximadamente)
INSERT INTO `smartphone_casino` (`user_id`, `balance`, `double`, `crash`, `mine`) VALUES
	(3, 0, 0, 0, 0),
	(4, 6002, 2, 0, 0),
	(6, 2010000, 10000, 0, 0);

-- Copiando estrutura para tabela elite.smartphone_contacts
CREATE TABLE IF NOT EXISTS `smartphone_contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_index` (`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_contacts: ~0 rows (aproximadamente)
INSERT INTO `smartphone_contacts` (`id`, `owner`, `phone`, `name`) VALUES
	(12, '626-845', '883-356', 'Yuri');

-- Copiando estrutura para tabela elite.smartphone_gallery
CREATE TABLE IF NOT EXISTS `smartphone_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `folder` varchar(255) NOT NULL DEFAULT '/',
  `url` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando estrutura para tabela elite.smartphone_ifood_orders
CREATE TABLE IF NOT EXISTS `smartphone_ifood_orders` (
  `id` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `rate` tinyint(4) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_ifood_orders: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_instagram
CREATE TABLE IF NOT EXISTS `smartphone_instagram` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `avatarURL` varchar(255) DEFAULT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Copiando estrutura para tabela elite.smartphone_instagram_followers
CREATE TABLE IF NOT EXISTS `smartphone_instagram_followers` (
  `follower_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`follower_id`,`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_instagram_followers: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_instagram_likes
CREATE TABLE IF NOT EXISTS `smartphone_instagram_likes` (
  `post_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`post_id`,`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_instagram_likes: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_instagram_notifications
CREATE TABLE IF NOT EXISTS `smartphone_instagram_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `content` varchar(512) NOT NULL,
  `saw` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_instagram_notifications: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_instagram_posts
CREATE TABLE IF NOT EXISTS `smartphone_instagram_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` bigint(20) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  `comments` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`),
  KEY `post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando estrutura para tabela elite.smartphone_olx
CREATE TABLE IF NOT EXISTS `smartphone_olx` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `images` varchar(1024) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_olx: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_paypal_transactions
CREATE TABLE IF NOT EXISTS `smartphone_paypal_transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'payment',
  `description` varchar(255) DEFAULT NULL,
  `value` bigint(20) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_paypal_transactions: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_tinder
CREATE TABLE IF NOT EXISTS `smartphone_tinder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(1024) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `show_gender` tinyint(4) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `show_tags` tinyint(4) NOT NULL,
  `target` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`),
  KEY `gender_index` (`gender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_tinder: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_tinder_messages
CREATE TABLE IF NOT EXISTS `smartphone_tinder_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `liked` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_tinder_messages: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_tinder_rating
CREATE TABLE IF NOT EXISTS `smartphone_tinder_rating` (
  `profile_id` int(11) NOT NULL,
  `rated_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`profile_id`,`rated_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_tinder_rating: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_tor_messages
CREATE TABLE IF NOT EXISTS `smartphone_tor_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel` varchar(24) NOT NULL DEFAULT 'geral',
  `sender` varchar(50) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_index` (`channel`),
  KEY `sender_index` (`sender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_tor_messages: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_tor_payments
CREATE TABLE IF NOT EXISTS `smartphone_tor_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_tor_payments: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_twitter_followers
CREATE TABLE IF NOT EXISTS `smartphone_twitter_followers` (
  `follower_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  KEY `profile_id_index` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_twitter_followers: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_twitter_likes
CREATE TABLE IF NOT EXISTS `smartphone_twitter_likes` (
  `tweet_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  KEY `tweet_id_index` (`tweet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_twitter_likes: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_twitter_profiles
CREATE TABLE IF NOT EXISTS `smartphone_twitter_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `avatarURL` varchar(255) NOT NULL,
  `bannerURL` varchar(255) NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_twitter_profiles: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_twitter_tweets
CREATE TABLE IF NOT EXISTS `smartphone_twitter_tweets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `tweet_id` bigint(20) DEFAULT NULL,
  `content` varchar(280) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`),
  KEY `tweet_id_index` (`tweet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_twitter_tweets: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_whatsapp
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp` (
  `owner` varchar(32) NOT NULL,
  `avatarURL` varchar(255) DEFAULT NULL,
  `read_receipts` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando estrutura para tabela elite.smartphone_whatsapp_channels
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_channels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando estrutura para tabela elite.smartphone_whatsapp_groups
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatarURL` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `members` varchar(2048) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela elite.smartphone_whatsapp_groups: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela elite.smartphone_whatsapp_messages
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel_id` bigint(20) unsigned NOT NULL,
  `sender` varchar(50) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `readed` tinyint(4) NOT NULL DEFAULT 0,
  `saw_at` bigint(20) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `channel_id_index` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Copiando estrutura para tabela elite.vrp_homes_permissions
CREATE TABLE IF NOT EXISTS `vrp_homes_permissions` (
  `owner` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `garage` int(11) NOT NULL,
  `home` varchar(100) NOT NULL DEFAULT '',
  `tax` varchar(24) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Copiando estrutura para tabela elite.vrp_srv_data
CREATE TABLE IF NOT EXISTS `vrp_srv_data` (
  `dkey` varchar(100) NOT NULL,
  `dvalue` text DEFAULT NULL,
  PRIMARY KEY (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Copiando estrutura para tabela elite.vrp_users
CREATE TABLE IF NOT EXISTS `vrp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `whitelisted` tinyint(1) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT NULL,
  `ip` varchar(255) NOT NULL DEFAULT '0.0.0',
  `last_login` varchar(255) NOT NULL DEFAULT '0.0.0',
  `coins` int(50) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Copiando estrutura para tabela elite.vrp_user_data
CREATE TABLE IF NOT EXISTS `vrp_user_data` (
  `user_id` int(11) NOT NULL,
  `dkey` varchar(100) NOT NULL,
  `dvalue` text DEFAULT NULL,
  PRIMARY KEY (`user_id`,`dkey`),
  CONSTRAINT `fk_user_data_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando estrutura para tabela elite.vrp_user_identities
CREATE TABLE IF NOT EXISTS `vrp_user_identities` (
  `user_id` int(11) NOT NULL,
  `registration` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `registration` (`registration`),
  KEY `phone` (`phone`),
  CONSTRAINT `fk_user_identities_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Copiando estrutura para tabela elite.vrp_user_ids
CREATE TABLE IF NOT EXISTS `vrp_user_ids` (
  `identifier` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `identifier` (`identifier`),
  KEY `fk_user_ids_users` (`user_id`),
  CONSTRAINT `fk_user_ids_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Copiando estrutura para tabela elite.vrp_user_moneys
CREATE TABLE IF NOT EXISTS `vrp_user_moneys` (
  `user_id` int(11) NOT NULL,
  `bank` int(11) DEFAULT NULL,
  `paypal` int(11) DEFAULT 0,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_moneys_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Copiando estrutura para tabela elite.vrp_user_vehicles
CREATE TABLE IF NOT EXISTS `vrp_user_vehicles` (
  `user_id` int(11) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `ipva` int(11) NOT NULL,
  `arrest` int(11) NOT NULL DEFAULT 0,
  `engine` int(4) NOT NULL DEFAULT 1000,
  `body` int(4) NOT NULL DEFAULT 1000,
  `windows` varchar(70) DEFAULT '{}',
  `tyres` text DEFAULT '{}',
  `fuel` int(3) NOT NULL DEFAULT 100,
  `financiado` tinyint(4) DEFAULT 0,
  `data_alugado` varchar(50) DEFAULT NULL,
  `alugado` varchar(50) DEFAULT NULL,
  `stoled_at` varchar(50) DEFAULT NULL,
  `detido` varchar(50) DEFAULT '0',
  `last_garage` varchar(50) DEFAULT NULL,
  `stoled_by` varchar(50) DEFAULT NULL,
  `estado` text DEFAULT '[]',
  `rental_time` int(50) DEFAULT 0,
  PRIMARY KEY (`user_id`,`vehicle`),
  CONSTRAINT `fk_user_vehicles_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
