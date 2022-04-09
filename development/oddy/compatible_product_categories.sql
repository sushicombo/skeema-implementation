CREATE TABLE `compatible_product_categories` (
  `service_id` int(10) unsigned NOT NULL,
  `product_category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`service_id`,`product_category_id`),
  KEY `compatible_product_categories_subcategory_id` (`product_category_id`),
  CONSTRAINT `compatible_product_categories_category_id` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`),
  CONSTRAINT `compatible_product_categories_service_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
