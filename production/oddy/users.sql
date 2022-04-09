CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `workshop_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `type` varchar(50) NOT NULL,
  `qiscus_room_id` varchar(64) DEFAULT NULL,
  `qiscus_id` varchar(12) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `referral_code` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `referral_code` (`referral_code`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `qiscus_room_id` (`qiscus_room_id`),
  KEY `fk_users_workshop_id` (`workshop_id`),
  KEY `fk_users_role_id` (`role_id`),
  CONSTRAINT `fk_users_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_users_workshop_id` FOREIGN KEY (`workshop_id`) REFERENCES `workshops` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;