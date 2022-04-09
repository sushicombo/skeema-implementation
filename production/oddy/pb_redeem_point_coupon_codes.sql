CREATE TABLE `pb_redeem_point_coupon_codes` (
  `code` varchar(30) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `is_claimed` tinyint(1) DEFAULT 0,
  `expired_at` datetime DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
