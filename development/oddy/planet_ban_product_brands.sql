CREATE TABLE `planet_ban_product_brands` (
  `idBrand` int(10) unsigned NOT NULL,
  `namaBrand` varchar(30) NOT NULL,
  `idUser` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  UNIQUE KEY `chkMstBrand` (`namaBrand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
