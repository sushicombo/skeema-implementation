CREATE TABLE `SMIMstKoordinatToko` (
  `kodeToko` bigint(20) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `tglUpdate` datetime DEFAULT NULL,
  PRIMARY KEY (`kodeToko`),
  CONSTRAINT `FK_SMIMstKoordinatToko_MstToko` FOREIGN KEY (`kodeToko`) REFERENCES `MstToko` (`kodeToko`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4mb4;
