CREATE TABLE `product_price_aggregators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pb_product_code` varchar(10) NOT NULL,
  `pb_workshop_code` varchar(10) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
