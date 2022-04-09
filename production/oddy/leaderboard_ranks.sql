CREATE TABLE `leaderboard_ranks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `leaderboard_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `total_referral` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_leaderboard_ranks_leaderboard_id` (`leaderboard_id`),
  KEY `fk_leaderboard_ranks_user_id` (`user_id`),
  CONSTRAINT `fk_leaderboard_ranks_leaderboard_id` FOREIGN KEY (`leaderboard_id`) REFERENCES `leaderboards` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_leaderboard_ranks_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
