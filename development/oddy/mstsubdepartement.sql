CREATE TABLE `mstsubdepartement` (
  `idDivisi` int(10) unsigned NOT NULL,
  `idDepartement` int(10) unsigned NOT NULL,
  `idSubDepartement` int(10) unsigned NOT NULL,
  `namaSubDepartement` varchar(50) DEFAULT NULL,
  `idUser` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `statusData` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idDivisi`,`idDepartement`,`idSubDepartement`),
  UNIQUE KEY `chkMstSubDepartement` (`idDivisi`,`idDepartement`,`namaSubDepartement`),
  CONSTRAINT `fkMstSubDepartementDepartement` FOREIGN KEY (`idDivisi`, `idDepartement`) REFERENCES `mstdepartement` (`idDivisi`, `idDepartement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
