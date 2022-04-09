CREATE TABLE `order_package_product_price_change_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_package_product_id` int(10) unsigned NOT NULL,
  `order_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `old_price` decimal(15,2) NOT NULL,
  `old_special_price` decimal(15,2) DEFAULT NULL,
  `price` decimal(15,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_price_change_log_order_package_product_id` (`order_package_product_id`),
  KEY `fk_price_change_log_order_id` (`user_id`),
  KEY `fk_price_change_log_user_id` (`order_id`),
  CONSTRAINT `fk_price_change_log_order_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_price_change_log_order_package_product_id` FOREIGN KEY (`order_package_product_id`) REFERENCES `order_package_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_price_change_log_user_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
