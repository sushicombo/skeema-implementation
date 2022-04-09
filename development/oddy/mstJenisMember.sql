CREATE TABLE `mstJenisMember` (
  `idJenisMember` int(11) NOT NULL,
  `namaJenisMember` varchar(30) NOT NULL,
  `tglCreate` datetime NOT NULL,
  `tglUpdate` datetime NOT NULL,
  `userCreate` varchar(20) NOT NULL,
  `statusData` int(11) NOT NULL,
  `syaratMember` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`idJenisMember`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4mb4;
