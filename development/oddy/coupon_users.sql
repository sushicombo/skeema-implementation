CREATE TABLE `coupon_users` (
  `coupon_code_id` varchar(30) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `coupon_user_user_id` (`user_id`),
  KEY `coupon_user_coupon_code_id` (`coupon_code_id`),
  CONSTRAINT `coupon_user_coupon_code_id` FOREIGN KEY (`coupon_code_id`) REFERENCES `coupon_codes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coupon_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
