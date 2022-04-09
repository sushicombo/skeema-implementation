CREATE TABLE `product_multiple_categories` (
  `product_id` int(10) unsigned NOT NULL,
  `product_category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_category_id`),
  KEY `product_multiple_categories_product_category_id` (`product_category_id`),
  CONSTRAINT `product_multiple_categories_product_category_id` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_multiple_categories_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
