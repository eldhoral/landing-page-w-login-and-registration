-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2021 pada 17.31
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nyadan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `acara`
--

CREATE TABLE `acara` (
  `acaraID` int(11) NOT NULL,
  `namaAcara` varchar(50) DEFAULT NULL,
  `modalBayaran` decimal(11,2) DEFAULT NULL,
  `usiaMaks` int(11) DEFAULT NULL,
  `usiaMins` int(11) DEFAULT NULL,
  `namaPIC` varchar(50) DEFAULT NULL,
  `waktuAcara` datetime DEFAULT NULL,
  `alamatAcara` varchar(300) DEFAULT NULL,
  `channelID` int(11) DEFAULT NULL,
  `vendorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `acara`
--

INSERT INTO `acara` (`acaraID`, `namaAcara`, `modalBayaran`, `usiaMaks`, `usiaMins`, `namaPIC`, `waktuAcara`, `alamatAcara`, `channelID`, `vendorID`) VALUES
(1, 'Ini Talkshow', '60000.00', 30, 18, 'Tina Panduwinata', '2020-05-20 19:00:00', 'Jl. Mega Kuningan Barat No.3, RT.5/RW.2, Kuningan, Kuningan Tim., Kecamatan Setiabudi, Kota Jakarta ', 1, NULL),
(2, 'Rumah Uya', '40000.00', 35, 20, 'Iren Sungkar', '2020-05-21 15:00:00', 'Gedung TRANSMEDIA, Jalan Kapten Tendean Kav. 12-14 A, RT.2/RW.2, Mampang Prpt., Kec. Mampang Prpt., Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12790', 2, NULL),
(3, 'Mata Najwa', '60000.00', 40, 18, 'Jesse Lingard', '2020-05-23 20:00:00', 'Jl. Pilar Mas Raya Kav A-D, RT.7/RW.3, Kedoya Sel., Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11015', 3, NULL),
(4, 'Indonesian Business Event', '60000.00', 45, 18, 'Ante Rebic', '2020-05-30 08:00:00', 'Jl. Gatot Subroto No.1, RT.1/RW.3, Gelora, Tanahabang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10270', NULL, 2),
(5, 'Pertamina Convention Center', '100000.00', 35, 18, 'Pedri', '2020-06-12 09:00:00', 'Jl. H. R. Rasuna Said No.22, RT.2/RW.5, Karet Kuningan, Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12940', NULL, 5),
(6, 'Anak Muda Berkarya', '80000.00', 35, 15, 'Erling Haaland', '2020-06-02 10:00:00', 'Jl. Jend. Sudirman No.Kav. 50, RT.1/RW.4, Karet Semanggi, Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12930', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `channeltv`
--

CREATE TABLE `channeltv` (
  `channelID` int(11) NOT NULL,
  `channelName` varchar(50) DEFAULT NULL,
  `nomorTelpChannel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `channeltv`
--

INSERT INTO `channeltv` (`channelID`, `channelName`, `nomorTelpChannel`) VALUES
(1, 'NET TV', 2147483647),
(2, 'Trans 7', 2147483647),
(3, 'Metro TV', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `umurUser` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userID`, `Name`, `userName`, `password`, `umurUser`, `email`) VALUES
(1, 'Petter Hauge', 'hauge123', '123', 23, NULL),
(2, 'Mesut Ozil', 'ozil123', '123', 30, NULL),
(3, 'Arrizabalaga', 'arrizabalaga123', '123', 18, NULL),
(4, 'Frederico Chiesa', 'chiesa123', '123', 24, NULL),
(5, 'David Alaba', 'alaba123', '123', 28, NULL),
(6, 'eldho', NULL, '639786acd41e9291641c', NULL, 'eldho@gmail.com'),
(7, 'eldho123', NULL, 'd4ac8f3d32b497695407', NULL, 'eldho123@gmail.com'),
(8, 'Sandro Tonali', NULL, '196c7f7cb65dbcd2b5a0', NULL, 'tonali@gmail.com'),
(9, 'eldhoral', NULL, '52452204ca03a4fac6f9', NULL, 'eldhoral@gmail.com'),
(10, 'aku123', NULL, 'd78749bdac2d1f739ac5', NULL, 'aku123@gmail.com'),
(11, 'aku456', NULL, 'U2FsdGVkX18MjFkgmQ5v', NULL, 'aku456@yahoo.com'),
(12, 'kami123', NULL, 'U2FsdGVkX18WG66A1JNg', NULL, 'kamikamu@gmail.com'),
(13, 'kami123', NULL, 'U2FsdGVkX1/Dqcc21OVE', NULL, 'kamikamu@gmail.com'),
(14, NULL, 'eldhoral567', 'U2FsdGVkX19WPfhv8e7G', NULL, 'eldhoral567@gmail.com'),
(15, NULL, 'akukamu123', 'U2FsdGVkX18FsDOeRXDE959Pp4cb0wjsj2+OmmxPzOM=', NULL, 'akukamu123@yahoo.com'),
(16, 'coba', 'coba123', 'U2FsdGVkX1+IBIZp6Ar0SfxsBH3Ybtp1yRy6Blz8QVg=', 30, 'coba123@gmail.com'),
(17, 'eldhorizcky', 'eldhorizcky', 'U2FsdGVkX19Ewa4ENE0g/NIBN8aXigyWVAQqfFkSQyY=', 20, 'eldhorizcky123@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `vendorName` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `nomorTelpVendor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `vendor`
--

INSERT INTO `vendor` (`vendorID`, `vendorName`, `username`, `password`, `nomorTelpVendor`) VALUES
(1, 'EMP INDONESIA', 'emp123', '123', 2147483647),
(2, 'NAMPALA', 'nampala123', '123', 2147483647),
(3, 'Expresso', 'Expresso123', '123', 2147483647),
(4, 'EVENTO', 'evento123', '123', 2147483647),
(5, 'PARAMA', 'parama123', '123', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`acaraID`),
  ADD KEY `channelID` (`channelID`),
  ADD KEY `vendorID` (`vendorID`);

--
-- Indeks untuk tabel `channeltv`
--
ALTER TABLE `channeltv`
  ADD PRIMARY KEY (`channelID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indeks untuk tabel `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `acara`
--
ALTER TABLE `acara`
  MODIFY `acaraID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `channeltv`
--
ALTER TABLE `channeltv`
  MODIFY `channelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `acara`
--
ALTER TABLE `acara`
  ADD CONSTRAINT `acara_ibfk_1` FOREIGN KEY (`channelID`) REFERENCES `channeltv` (`channelID`),
  ADD CONSTRAINT `acara_ibfk_2` FOREIGN KEY (`vendorID`) REFERENCES `vendor` (`vendorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
