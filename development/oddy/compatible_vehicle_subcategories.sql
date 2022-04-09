CREATE TABLE `compatible_vehicle_subcategories` (
  `service_id` int(10) unsigned NOT NULL,
  `vehicle_subcategory_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`service_id`,`vehicle_subcategory_id`),
  KEY `compatible_vehicle_subcategories_subcategory_id` (`vehicle_subcategory_id`),
  CONSTRAINT `compatible_vehicle_subcategories_service_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  CONSTRAINT `compatible_vehicle_subcategories_subcategory_id` FOREIGN KEY (`vehicle_subcategory_id`) REFERENCES `vehicle_subcategories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
