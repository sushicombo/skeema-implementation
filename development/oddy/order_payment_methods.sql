CREATE TABLE `order_payment_methods` (
  `order_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_method_display_name` varchar(100) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  KEY `fk_order_payment_method_order_id` (`order_id`),
  CONSTRAINT `fk_order_payment_method_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
