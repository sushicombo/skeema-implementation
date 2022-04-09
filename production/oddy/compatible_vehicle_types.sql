CREATE TABLE `compatible_vehicle_types` (
  `product_id` int(10) unsigned NOT NULL,
  `vehicle_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`vehicle_type_id`),
  KEY `compatible_vehicle_types_vehicle_type_id` (`vehicle_type_id`),
  CONSTRAINT `compatible_vehicle_types_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `compatible_vehicle_types_vehicle_type_id` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
