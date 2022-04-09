CREATE TABLE `product_price_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `workshop_id` int(10) unsigned NOT NULL DEFAULT 0,
  `old_price` decimal(15,2) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `old_special_price` decimal(15,2) DEFAULT NULL,
  `special_price` decimal(15,2) DEFAULT NULL,
  `old_special_price_start_datetime` datetime DEFAULT NULL,
  `special_price_start_datetime` datetime DEFAULT NULL,
  `old_special_price_end_datetime` datetime DEFAULT NULL,
  `special_price_end_datetime` datetime DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_price_logs_product_id` (`product_id`),
  KEY `fk_product_price_logs_workshop_id` (`workshop_id`),
  KEY `fk_product_price_logs_user_id` (`user_id`),
  CONSTRAINT `fk_product_price_logs_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_product_price_logs_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_product_price_logs_workshop_id` FOREIGN KEY (`workshop_id`) REFERENCES `workshops` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
