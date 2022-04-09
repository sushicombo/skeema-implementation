CREATE TABLE `package_services` (
  `service_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  `is_mandatory` tinyint(1) NOT NULL,
  PRIMARY KEY (`service_id`,`package_id`),
  KEY `package_services_package_id` (`package_id`),
  CONSTRAINT `package_services_package_id` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `package_services_service_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
