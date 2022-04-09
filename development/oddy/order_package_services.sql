CREATE TABLE `order_package_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_package_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `service_duration` int(10) unsigned DEFAULT 0,
  `service_price` decimal(15,2) DEFAULT NULL,
  `service_special_price` decimal(15,2) DEFAULT NULL,
  `service_description` text DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `fk_order_package_services_order_package_id` (`order_package_id`),
  KEY `fk_order_package_services_service_id` (`service_id`),
  CONSTRAINT `fk_order_package_services_order_package_id` FOREIGN KEY (`order_package_id`) REFERENCES `order_packages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_package_services_service_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
