CREATE TABLE `package_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `deeplink` varchar(500) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT 1,
  `order` int(10) unsigned DEFAULT 1,
  `vehicle_category_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_unique` (`title`),
  UNIQUE KEY `order` (`order`),
  UNIQUE KEY `order_2` (`order`),
  KEY `fk_package_menus_vehicle_category_id` (`vehicle_category_id`),
  CONSTRAINT `fk_package_menus_vehicle_category_id` FOREIGN KEY (`vehicle_category_id`) REFERENCES `vehicle_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
