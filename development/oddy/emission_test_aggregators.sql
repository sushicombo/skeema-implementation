CREATE TABLE `emission_test_aggregators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `vehicle_license_plate_number` varchar(20) NOT NULL,
  `vehicle_brand_name` varchar(255) NOT NULL,
  `vehicle_type_name` varchar(255) NOT NULL,
  `vehicle_model_year` varchar(10) NOT NULL,
  `chassis_number` varchar(30) NOT NULL,
  `engine_number` varchar(30) NOT NULL,
  `cylinder_capacity` int(9) unsigned NOT NULL,
  `stroke_engine` tinyint(1) NOT NULL,
  `queue_number` tinyint(1) NOT NULL,
  `service_schedule_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
