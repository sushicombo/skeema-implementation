CREATE TABLE `broadcasts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target_type` varchar(15) NOT NULL DEFAULT 'all',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `deeplink` varchar(500) DEFAULT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `send_date` datetime DEFAULT NULL,
  `schedule_code` varchar(12) NOT NULL DEFAULT '',
  `status` varchar(15) NOT NULL DEFAULT 'pending',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
