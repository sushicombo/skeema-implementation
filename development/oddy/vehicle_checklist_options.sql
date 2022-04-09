CREATE TABLE `vehicle_checklist_options` (
  `vehicle_checklist_id` int(10) unsigned NOT NULL,
  `vehicle_checklist_condition_id` int(10) unsigned DEFAULT NULL,
  KEY `vehicle_checklist_option_vehicle_checklist_id` (`vehicle_checklist_id`),
  KEY `vehicle_checklist_option_vehicle_checklist_condition_id` (`vehicle_checklist_condition_id`),
  CONSTRAINT `vehicle_checklist_option_vehicle_checklist_condition_id` FOREIGN KEY (`vehicle_checklist_condition_id`) REFERENCES `vehicle_checklist_conditions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vehicle_checklist_option_vehicle_checklist_id` FOREIGN KEY (`vehicle_checklist_id`) REFERENCES `vehicle_checklists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
