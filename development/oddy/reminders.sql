CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_vehicle_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `last_service_date` datetime DEFAULT NULL,
  `next_service_date` datetime DEFAULT NULL,
  `last_service_odometer` int(10) DEFAULT NULL,
  `next_service_odometer` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reminders_user_vehicle_id` (`user_vehicle_id`),
  KEY `fk_reminders_service_id` (`service_id`),
  CONSTRAINT `fk_reminders_service_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_reminders_user_vehicle_id` FOREIGN KEY (`user_vehicle_id`) REFERENCES `user_vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
