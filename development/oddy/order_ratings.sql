CREATE TABLE `order_ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `rating` int(10) unsigned NOT NULL DEFAULT 0,
  `creator_id` int(10) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_ratings_order_id` (`order_id`),
  CONSTRAINT `fk_order_ratings_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
