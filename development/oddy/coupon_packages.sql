CREATE TABLE `coupon_packages` (
  `coupon_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  KEY `coupon_package_coupon_id` (`coupon_id`),
  KEY `coupon_package_package_id` (`package_id`),
  CONSTRAINT `coupon_package_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coupon_package_package_id` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
