CREATE TABLE `role_permissions` (
  `role_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `permissions` varchar(50) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`role_id`,`module_id`),
  KEY `role_permissions_module_id` (`module_id`),
  CONSTRAINT `role_permissions_module_id` FOREIGN KEY (`module_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_permissions_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
