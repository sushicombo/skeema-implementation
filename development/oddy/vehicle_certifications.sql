CREATE TABLE `vehicle_certifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `license_plate_number` varchar(20) NOT NULL,
  `file` varchar(500) DEFAULT NULL,
  `upload_datetime` datetime DEFAULT NULL,
  `expired_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_submitted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_vehicle_certification_id` (`order_id`),
  CONSTRAINT `fk_order_vehicle_certification_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
