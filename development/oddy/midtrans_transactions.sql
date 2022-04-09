CREATE TABLE `midtrans_transactions` (
  `id` varchar(40) NOT NULL,
  `order_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `payment_gateway_transaction_id` varchar(100) NOT NULL,
  `virtual_account_number` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `biller_code` varchar(100) DEFAULT NULL,
  `bill_key` varchar(100) DEFAULT NULL,
  `transaction_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_midtrans_transaction_order_id` (`order_id`),
  CONSTRAINT `fk_midtrans_transaction_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
