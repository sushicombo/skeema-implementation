CREATE TABLE `mstkategori` (
  `idDivisi` int(10) unsigned NOT NULL,
  `idDepartement` int(10) unsigned NOT NULL,
  `idSubDepartement` int(10) unsigned NOT NULL,
  `idKategori` int(10) unsigned NOT NULL,
  `namaKategori` varchar(50) DEFAULT NULL,
  `idUser` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `statusData` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
