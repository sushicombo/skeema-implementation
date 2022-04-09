CREATE TABLE `vehicle_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_model_id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehicle_types_vehicle_model_id` (`vehicle_model_id`),
  CONSTRAINT `fk_vehicle_types_vehicle_model_id` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
