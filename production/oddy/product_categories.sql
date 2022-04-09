CREATE TABLE `product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pb_division_id` int(10) unsigned DEFAULT NULL,
  `pb_department_id` int(10) unsigned DEFAULT NULL,
  `pb_subdepartment_id` int(10) unsigned DEFAULT NULL,
  `pb_category_id` int(10) unsigned DEFAULT NULL,
  `parent_category_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(10) unsigned DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_categories_parent_category_id` (`parent_category_id`),
  CONSTRAINT `product_categories_parent_category_id` FOREIGN KEY (`parent_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
