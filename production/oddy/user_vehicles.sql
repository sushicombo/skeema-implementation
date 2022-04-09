CREATE TABLE `user_vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `vehicle_id` int(10) unsigned NOT NULL,
  `license_plate_number` varchar(20) NOT NULL,
  `odometer` int(11) DEFAULT NULL,
  `cylinder_capacity` int(10) unsigned DEFAULT NULL,
  `engine_number` varchar(30) DEFAULT NULL,
  `chassis_number` varchar(30) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_vehicle_user_id` (`user_id`),
  KEY `fk_user_vehicle_vehicle_id` (`vehicle_id`),
  CONSTRAINT `fk_user_vehicle_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_vehicle_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
