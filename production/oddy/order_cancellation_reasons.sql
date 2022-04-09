CREATE TABLE `order_cancellation_reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `cancellation_reasons_id` int(10) unsigned NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id` (`order_id`),
  KEY `fk_cancellation_reasons_id` (`cancellation_reasons_id`),
  CONSTRAINT `fk_cancellation_reasons_id` FOREIGN KEY (`cancellation_reasons_id`) REFERENCES `cancellation_reasons` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
