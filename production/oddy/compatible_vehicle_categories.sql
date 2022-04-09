CREATE TABLE `compatible_vehicle_categories` (
  `service_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`service_id`,`category_id`),
  KEY `compatible_vehicle_categories_category_id` (`category_id`),
  CONSTRAINT `compatible_vehicle_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `vehicle_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `compatible_vehicle_categories_service_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
