CREATE TABLE `point_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `point` int(10) NOT NULL DEFAULT 0,
  `note` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_point_history_user_id` (`user_id`),
  CONSTRAINT `fk_point_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
