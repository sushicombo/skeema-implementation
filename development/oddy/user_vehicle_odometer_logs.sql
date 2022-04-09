CREATE TABLE `user_vehicle_odometer_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_vehicle_id` int(10) unsigned NOT NULL,
  `odometer` int(10) DEFAULT NULL,
  `unverified_service_book_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_odometer_log_unverified_service_book_id` (`unverified_service_book_id`),
  KEY `fk_odometer_log_user_vehicle_id` (`user_vehicle_id`),
  CONSTRAINT `fk_odometer_log_unverified_service_book_id` FOREIGN KEY (`unverified_service_book_id`) REFERENCES `unverified_service_books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_odometer_log_user_vehicle_id` FOREIGN KEY (`user_vehicle_id`) REFERENCES `user_vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
