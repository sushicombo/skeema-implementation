CREATE TABLE `emergencies` (
  `id` enum('1') NOT NULL,
  `customer_service_phone` varchar(255) DEFAULT '0',
  `ambulance_phone` varchar(255) DEFAULT '119',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='The ENUM(''1'') construct as primary key is used to prevent that more than one row can be entered to the table';
