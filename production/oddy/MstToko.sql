CREATE TABLE `MstToko` (
  `kodeToko` bigint(20) NOT NULL,
  `namaToko` varchar(100) NOT NULL,
  `singkatanToko` varchar(6) NOT NULL,
  `alamatToko` varchar(100) NOT NULL,
  `idPropinsi` int(11) NOT NULL,
  `idKabKota` int(11) NOT NULL,
  `idKecamatan` int(11) NOT NULL,
  `idKelurahan` int(11) NOT NULL,
  `kodePos` varchar(10) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `idKepemilikan` int(11) NOT NULL,
  `idDc` int(11) NOT NULL,
  `kodeJenisLokasi` char(1) NOT NULL,
  `kodeTipeToko` char(1) NOT NULL,
  `kodeStatusToko` char(1) NOT NULL,
  `tglBuka` date NOT NULL,
  `tglTutup` date DEFAULT NULL,
  `jumlahKaryawan` int(11) NOT NULL,
  `luasAreaSales` varchar(20) NOT NULL,
  `tglRegister` timestamp NULL DEFAULT current_timestamp(),
  `tglCreate` timestamp NOT NULL DEFAULT current_timestamp(),
  `tglUpdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `idUser` varchar(20) NOT NULL,
  `statusData` int(11) NOT NULL DEFAULT 0,
  `flagPkp` int(11) DEFAULT NULL,
  `KodePriceIndex` int(11) DEFAULT NULL,
  `idLkj` int(11) DEFAULT NULL,
  PRIMARY KEY (`kodeToko`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
