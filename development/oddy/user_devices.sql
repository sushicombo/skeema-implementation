CREATE TABLE `user_devices` (
  `id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `registration_id` varchar(255) NOT NULL DEFAULT '',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `refresh_token_expired_at` datetime DEFAULT NULL,
  `os_version` varchar(255) DEFAULT NULL,
  `app_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_devices_user_id` (`user_id`),
  CONSTRAINT `fk_user_devices_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
