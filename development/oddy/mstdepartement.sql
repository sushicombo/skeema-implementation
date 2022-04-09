CREATE TABLE `mstdepartement` (
  `idDivisi` int(10) unsigned NOT NULL,
  `idDepartement` int(10) unsigned NOT NULL,
  `namaDepartement` varchar(50) DEFAULT NULL,
  `idUser` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `statusData` int(11) NOT NULL DEFAULT 0,
  `code` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idDivisi`,`idDepartement`),
  UNIQUE KEY `chkMstDepartement` (`idDivisi`,`namaDepartement`),
  CONSTRAINT `fkMstDepartementIdDivisi` FOREIGN KEY (`idDivisi`) REFERENCES `mstdivisi` (`idDivisi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
