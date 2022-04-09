CREATE TABLE `product_prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `workshop_id` int(10) unsigned NOT NULL DEFAULT 0,
  `price` decimal(15,2) NOT NULL,
  `special_price` decimal(15,2) DEFAULT NULL,
  `special_price_start_datetime` datetime DEFAULT NULL,
  `special_price_end_datetime` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_prices_product_id` (`product_id`),
  KEY `fk_product_prices_workshop_id` (`workshop_id`),
  CONSTRAINT `fk_product_prices_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_product_prices_workshop_id` FOREIGN KEY (`workshop_id`) REFERENCES `workshops` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
