CREATE TABLE `vehicle_subcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`),
  KEY `fk_vehicle_subcategories_vehicle_category_id` (`vehicle_category_id`),
  CONSTRAINT `fk_vehicle_subcategories_vehicle_category_id` FOREIGN KEY (`vehicle_category_id`) REFERENCES `vehicle_categories` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
