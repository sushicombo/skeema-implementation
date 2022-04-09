CREATE TABLE `coupon_user_vehicles` (
  `coupon_code_id` varchar(30) NOT NULL,
  `user_vehicle_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `coupon_user_vehicle_user_vehicle_id` (`user_vehicle_id`),
  KEY `coupon_user_vehicle_coupon_code_id` (`coupon_code_id`),
  CONSTRAINT `coupon_user_vehicle_user_vehicle_id` FOREIGN KEY (`user_vehicle_id`) REFERENCES `user_vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coupon_user_vehicles_coupon_code_id` FOREIGN KEY (`coupon_code_id`) REFERENCES `coupon_codes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
