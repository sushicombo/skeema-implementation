CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `special_price` decimal(15,2) DEFAULT NULL,
  `special_price_start_datetime` datetime DEFAULT NULL,
  `special_price_end_datetime` datetime DEFAULT NULL,
  `description` text DEFAULT NULL,
  `next_service_milage` int(10) unsigned DEFAULT NULL,
  `next_service_day` int(10) unsigned DEFAULT NULL,
  `status` int(10) unsigned DEFAULT 0,
  `is_have_product` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
