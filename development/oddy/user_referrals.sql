CREATE TABLE `user_referrals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `referrer_user_id` int(10) unsigned DEFAULT NULL,
  `coupon_code` varchar(30) NOT NULL,
  `is_used` tinyint(1) DEFAULT 0,
  `datetime` datetime DEFAULT NULL,
  `referrer_code` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_referral_coupon_code` (`coupon_code`),
  KEY `user_referral_user_id` (`user_id`),
  KEY `user_referral_referrer_user_id` (`referrer_user_id`),
  CONSTRAINT `user_referral_coupon_code` FOREIGN KEY (`coupon_code`) REFERENCES `coupon_codes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_referral_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
