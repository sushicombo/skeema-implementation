CREATE TABLE `package_checklists` (
  `package_id` int(10) unsigned DEFAULT NULL,
  `vehicle_checklist_id` int(10) unsigned DEFAULT NULL,
  KEY `package_checklist_package_id` (`package_id`),
  KEY `package_checklist_vehicle_checklist_id` (`vehicle_checklist_id`),
  CONSTRAINT `package_checklist_package_id` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `package_checklist_vehicle_checklist_id` FOREIGN KEY (`vehicle_checklist_id`) REFERENCES `vehicle_checklists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
