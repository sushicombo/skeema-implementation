CREATE TABLE `order_payment_method_logs` (
  `order_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `log_datetime` datetime DEFAULT NULL,
  KEY `fk_order_payment_method_log_order_id` (`order_id`),
  CONSTRAINT `fk_order_payment_method_log_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
