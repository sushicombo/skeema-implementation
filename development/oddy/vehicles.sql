CREATE TABLE `vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_subcategory_id` int(10) unsigned NOT NULL,
  `vehicle_type_id` int(10) unsigned NOT NULL,
  `model_year` varchar(10) NOT NULL,
  `stroke_engine` tinyint(1) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehicle_vehicle_subcategory_id` (`vehicle_subcategory_id`),
  KEY `fk_vehicle_vehicle_type_id` (`vehicle_type_id`),
  CONSTRAINT `fk_vehicle_vehicle_subcategory_id` FOREIGN KEY (`vehicle_subcategory_id`) REFERENCES `vehicle_subcategories` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_vehicle_vehicle_type_id` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
