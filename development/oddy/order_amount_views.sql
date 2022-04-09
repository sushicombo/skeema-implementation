CREATE TABLE `order_amount_views` (
  `order_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `amount` float DEFAULT NULL,
  KEY `fk_order_amount_views_orders` (`order_id`),
  CONSTRAINT `fk_order_amount_views_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
