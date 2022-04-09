CREATE TABLE `user_points` (
  `user_id` int(10) unsigned NOT NULL,
  `total_point` int(10) DEFAULT 0,
  KEY `fk_user_points_user_id` (`user_id`),
  CONSTRAINT `fk_user_points_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
