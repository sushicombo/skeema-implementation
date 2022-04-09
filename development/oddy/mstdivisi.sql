CREATE TABLE `mstdivisi` (
  `idDivisi` int(10) unsigned NOT NULL,
  `namaDivisi` varchar(30) NOT NULL,
  `idUser` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `statusData` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idDivisi`),
  UNIQUE KEY `chkMstDivisi` (`namaDivisi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
