-- Adminer 4.2.4 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `bpool_local_db_dcr`;
CREATE DATABASE `bpool_local_db_dcr`;
USE `bpool_local_db_dcr`;

DROP TABLE IF EXISTS `s_epool_eth_found_blocks`;
CREATE TABLE `s_epool_eth_found_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `puid` int(11) NOT NULL,
  `worker_id` bigint(20) NOT NULL,
  `worker_full_name` varchar(50) NOT NULL,
  `job_id` bigint(20) unsigned NOT NULL,
  `height` int(11) NOT NULL,
  `is_orphaned` tinyint(4) NOT NULL DEFAULT '0',
  `hash` char(64) NOT NULL,
  `rewards` bigint(20) NOT NULL,
  `size` int(11) NOT NULL,
  `prev_hash` char(64) NOT NULL,
  `bits` int(10) unsigned NOT NULL,
  `version` int(11) NOT NULL,
  `voters` int(5) unsigned NOT NULL,
  `network` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `height` (`height`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `s_epool_eth_mining_workers`;
CREATE TABLE `s_epool_eth_mining_workers` (
  `worker_id` bigint(20) NOT NULL,
  `puid` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `worker_name` varchar(50) DEFAULT NULL,
  `accept_1m` bigint(20) NOT NULL DEFAULT '0',
  `accept_5m` bigint(20) NOT NULL DEFAULT '0',
  `accept_15m` bigint(20) NOT NULL DEFAULT '0',
  `stale_15m` bigint(20) NOT NULL DEFAULT '0',
  `reject_15m` bigint(20) NOT NULL DEFAULT '0',
  `reject_detail_15m` varchar(255) NOT NULL DEFAULT '',
  `accept_1h` bigint(20) NOT NULL DEFAULT '0',
  `stale_1h` bigint(20) NOT NULL DEFAULT '0',
  `reject_1h` bigint(20) NOT NULL DEFAULT '0',
  `reject_detail_1h` varchar(255) NOT NULL DEFAULT '',
  `accept_count` int(11) NOT NULL DEFAULT '0',
  `last_share_ip` char(16) NOT NULL DEFAULT '0.0.0.0',
  `last_share_time` timestamp NOT NULL DEFAULT '1970-01-01 00:00:01',
  `miner_agent` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `puid_worker_id` (`puid`,`worker_id`),
  KEY `puid_group_id` (`puid`,`group_id`),
  KEY `puid_worker_name` (`puid`,`worker_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 2017-04-25 12:17:40
