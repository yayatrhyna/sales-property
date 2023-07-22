-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Feb 2023 pada 06.46
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestatephp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`) VALUES
(10, 'Tentang Kami', '<div id=\"pgc-w5d0dcc3394ac1-0-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-w5d0dcc3394ac1-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p class=\"text_all_p_tag_css\">Ini adalah halaman demo tentang kami untuk proyek ini. Ini adalah halaman demo tentang kami untuk proyek ini. Ini adalah halaman demo tentang kami untuk proyek ini. Ini adalah halaman demo tentang kami untuk proyek ini.</p>\r\n<p class=\"text_all_p_tag_css\">Ini adalah halaman demo tentang kami untuk proyek ini. Ini adalah halaman demo tentang kami untuk proyek ini. Ini adalah halaman demo tentang kami untuk proyek ini. Ini adalah demo tentang halaman kami untuk proyek ini. Ini adalah demo tentang kami halaman untuk proyek ini. </p>\r\n<div id=\"pgc-w5d0dcc3394ac1-0-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-w5d0dcc3394ac1-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p class=\"text_all_p_tag_css\">Ini adalah halaman demo tentang kami untuk proyek ini. Ini adalah halaman demo tentang kami untuk proyek ini. Ini adalah halaman demo tentang kami untuk proyek ini.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'images1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `auser` varchar(50) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `adob` date NOT NULL,
  `aphone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`aid`, `auser`, `aemail`, `apass`, `adob`, `aphone`) VALUES
(9, 'admin', 'admin@gmail.com', '6812f136d636e737248d365016f8cfd5139e387c', '1994-12-06', '0813837383'),
(10, 'admin', 'admin@gmail.com', 'admin', '2023-02-27', '0815727383');

-- --------------------------------------------------------

--
-- Struktur dari tabel `city`
--

CREATE TABLE `city` (
  `cid` int(50) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `sid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `city`
--

INSERT INTO `city` (`cid`, `cname`, `sid`) VALUES
(9, 'Jakarta', 3),
(10, 'Surabaya', 2),
(11, 'Jawa barat', 2),
(12, 'banten', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `cid` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`cid`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(7, 'romi', 'romi.com', '08138903809', 'romi.com', 'asdasdasd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `fdescription` varchar(300) NOT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `feedback`
--

INSERT INTO `feedback` (`fid`, `uid`, `fdescription`, `status`, `date`) VALUES
(7, 28, 'Ini adalah umpan balik demo untuk menggunakannya sebagai Testimonial untuk situs tersebut. Hanya teks tiruan daripada menggunakan baris teks lorem ipsum.', 1, '2022-07-23 16:07:08'),
(8, 33, 'Ini bagus. Ini luar biasa. Hmmm, hanya teks tiruan untuk umpan balik pengguna.\r\n\r\n', 1, '2022-07-23 21:51:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `property`
--

CREATE TABLE `property` (
  `pid` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `pcontent` longtext NOT NULL,
  `type` varchar(100) NOT NULL,
  `bhk` varchar(50) NOT NULL,
  `stype` varchar(100) NOT NULL,
  `bedroom` int(50) NOT NULL,
  `bathroom` int(50) NOT NULL,
  `balcony` int(50) NOT NULL,
  `kitchen` int(50) NOT NULL,
  `hall` int(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `size` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `feature` longtext NOT NULL,
  `pimage` varchar(300) NOT NULL,
  `pimage1` varchar(300) NOT NULL,
  `pimage2` varchar(300) NOT NULL,
  `pimage3` varchar(300) NOT NULL,
  `pimage4` varchar(300) NOT NULL,
  `uid` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `mapimage` varchar(300) NOT NULL,
  `topmapimage` varchar(300) NOT NULL,
  `groundmapimage` varchar(300) NOT NULL,
  `totalfloor` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `isFeatured` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `property`
--

INSERT INTO `property` (`pid`, `title`, `pcontent`, `type`, `bhk`, `stype`, `bedroom`, `bathroom`, `balcony`, `kitchen`, `hall`, `floor`, `size`, `price`, `location`, `city`, `state`, `feature`, `pimage`, `pimage1`, `pimage2`, `pimage3`, `pimage4`, `uid`, `status`, `mapimage`, `topmapimage`, `groundmapimage`, `totalfloor`, `date`, `isFeatured`) VALUES
(25, 'Zills Home', '', 'house', '4 BHK', 'sale', 4, 2, 0, 1, 1, '2nd Floor', 1869, 219690, 'Jakarta', 'Jakarta', 'Colotana', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Elevator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'zillhms1.jpg', 'zillhms2.jpg', 'zillhms3.jpg', 'zillhms4.jpg', 'zillhms5.jpg', 30, 'available', 'floorplan_sample.jpg', 'zillhms7.jpg', 'zillhms6.jpg', '2 Floor', '2022-07-22 22:29:20', 0),
(30, 'viila', '<p>Villa dikawan puncak bogor</p>', 'villa', '3 BHK', 'sale', 3, 3, 1, 1, 2, '2nd Floor', 50, 6000000, 'puncak', 'jawabarat', 'indonesia', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Church/Temple : </span>No</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '6.jpg', 'condos-pool.png', 'condos-pool.png', '5.jpg', '5.jpg', 1, 'available', '3.jpg', '4.jpg', 'images2.jpg', '2 Floor', '2023-02-25 13:24:03', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `state`
--

CREATE TABLE `state` (
  `sid` int(50) NOT NULL,
  `sname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `state`
--

INSERT INTO `state` (`sid`, `sname`) VALUES
(2, 'Colotana'),
(3, 'Floaii'),
(4, 'Virconsin'),
(7, 'West Misstana\n\n'),
(9, 'New Pennrk\n\n'),
(10, 'Louiswa\n\n'),
(15, 'Wisginia\n\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `uid` int(50) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `uphone` varchar(20) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `uimage` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `uphone`, `upass`, `utype`, `uimage`) VALUES
(28, 'yuli', 'yuli@mail.com', '08368328', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'gr7.png'),
(29, 'anna', 'anna@mail.com', '0875552214', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'avatarm2-min.jpg'),
(30, 'Rudi', 'rudi@mail.com', '0896665555', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'avatarm7-min.jpg'),
(31, 'Cynthia ', 'Cynthia@mail.com', '0889654785', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'user-default-3-min.png'),
(32, 'Jhon', 'jhol@mail.com', '0814587969', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'user-profile-min.png'),
(33, 'Noah', 'noah@mail.com', '7965555544', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'usersys-min.png'),
(34, 'roy', 'roy@mail.com', '0820002587', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'user-a-min.png'),
(35, 'Michael', 'michael@mail.com', '08542221140', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'usric.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indeks untuk tabel `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cid`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indeks untuk tabel `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`pid`);

--
-- Indeks untuk tabel `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `city`
--
ALTER TABLE `city`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `property`
--
ALTER TABLE `property`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `state`
--
ALTER TABLE `state`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
