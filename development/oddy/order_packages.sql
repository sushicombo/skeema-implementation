CREATE TABLE `order_packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `package_price` decimal(15,2) DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `fk_order_packages_order_id` (`order_id`),
  KEY `fk_order_packages_package_id` (`package_id`),
  CONSTRAINT `fk_order_packages_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_packages_package_id` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
