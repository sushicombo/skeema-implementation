CREATE TABLE `workshop_schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `workshop_id` int(10) unsigned NOT NULL,
  `day` int(10) unsigned NOT NULL DEFAULT 0,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_workshop_schedules_workshop_id` (`workshop_id`),
  CONSTRAINT `fk_workshop_schedules_workshop_id` FOREIGN KEY (`workshop_id`) REFERENCES `workshops` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
