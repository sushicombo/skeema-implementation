CREATE TABLE `inventory_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `workshop_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `old_stock` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_logs_user_id` (`user_id`),
  KEY `inventory_logs_workshop_id` (`workshop_id`),
  KEY `inventory_logs_product_id` (`product_id`),
  CONSTRAINT `inventory_logs_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inventory_logs_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inventory_logs_workshop_id` FOREIGN KEY (`workshop_id`) REFERENCES `workshops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
