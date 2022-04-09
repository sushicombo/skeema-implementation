CREATE TABLE `vehicle_models` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_brand_id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`),
  KEY `fk_vehicle_models_vehicle_brand_id` (`vehicle_brand_id`),
  CONSTRAINT `fk_vehicle_models_vehicle_brand_id` FOREIGN KEY (`vehicle_brand_id`) REFERENCES `vehicle_brands` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
