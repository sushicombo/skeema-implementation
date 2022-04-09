CREATE TABLE `coupon_codes` (
  `id` varchar(30) NOT NULL,
  `coupon_id` int(10) unsigned NOT NULL,
  `used_quota` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_code_coupon_id` (`coupon_id`),
  CONSTRAINT `coupon_code_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
