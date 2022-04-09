CREATE TABLE `unverified_service_book_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned DEFAULT NULL,
  `unverified_service_book_id` int(10) unsigned NOT NULL,
  `other_service` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unverified_service_book_services_service_id` (`service_id`),
  KEY `unverified_service_book_services_unverified_service_book_id` (`unverified_service_book_id`),
  CONSTRAINT `unverified_service_book_services_service_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `unverified_service_book_services_unverified_service_book_id` FOREIGN KEY (`unverified_service_book_id`) REFERENCES `unverified_service_books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
