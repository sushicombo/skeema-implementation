CREATE TABLE `order_package_checklists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  `vehicle_checklist_id` int(10) unsigned NOT NULL,
  `vehicle_checklist_condition_id` int(10) unsigned DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_package_checklist_order_id` (`order_id`),
  KEY `order_package_checklist_package_id` (`package_id`),
  KEY `order_package_checklist_vehicle_checklist_id` (`vehicle_checklist_id`),
  KEY `order_package_checklist_vehicle_checklist_condition_id` (`vehicle_checklist_condition_id`),
  CONSTRAINT `order_package_checklist_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_package_checklist_package_id` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_package_checklist_vehicle_checklist_condition_id` FOREIGN KEY (`vehicle_checklist_condition_id`) REFERENCES `vehicle_checklist_conditions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_package_checklist_vehicle_checklist_id` FOREIGN KEY (`vehicle_checklist_id`) REFERENCES `vehicle_checklists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
