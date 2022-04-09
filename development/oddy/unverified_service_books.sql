CREATE TABLE `unverified_service_books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_vehicle_id` int(10) unsigned DEFAULT NULL,
  `date` datetime NOT NULL,
  `odometer` int(10) NOT NULL,
  `workshop_name` varchar(255) DEFAULT NULL,
  `workshop_address` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `total_amount` int(10) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_unverified_service_books_user_vehicle_id` (`user_vehicle_id`),
  CONSTRAINT `fk_unverified_service_books_user_vehicle_id` FOREIGN KEY (`user_vehicle_id`) REFERENCES `user_vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
