-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Ara 2014, 20:38:24
-- Sunucu sürümü: 5.5.32
-- PHP Sürümü: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `notlar`
--
CREATE DATABASE IF NOT EXISTS `notlar` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `notlar`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

CREATE TABLE IF NOT EXISTS `dersler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dersAdi` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`id`, `dersAdi`) VALUES
(1, 'Veri Yapıları'),
(2, 'Nesne Tabanlı Programlama'),
(3, 'Bilgisayar Mühendisliğine Giriş'),
(4, 'Ayrık Matematik'),
(5, 'Analog Elektrik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notlar`
--

CREATE TABLE IF NOT EXISTS `notlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(200) NOT NULL,
  `kisaBaslik` varchar(200) NOT NULL,
  `icerik` text NOT NULL,
  `resim` text NOT NULL,
  `dersID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `notlar`
--

INSERT INTO `notlar` (`id`, `baslik`, `kisaBaslik`, `icerik`, `resim`, `dersID`) VALUES
(1, 'Hash Tablosu  ', 'hash tablosu oluşturma, arama yapma, tablo silme, listeyi yazdırma', 'hash tablosu oluşturma, arama yapma, tablo silme, listeyi yazdırma hash tablosu oluşturma, arama yapma, tablo silme, listeyi yazdırma hash tablosu oluşturma, arama yapma, tablo silme, listeyi yazdırma hash tablosu oluşturma, arama yapma, tablo silme, listeyi yazdırma', '', 1),
(2, 'Bağlı Listeler', 'Sınıf yardımı ile bağlantılı liste oluşturma, ekrana yazdırma, eleman silme', 'Sınıf yardımı ile bağlantılı liste oluşturma, ekrana yazdırma, eleman silmeSınıf yardımı ile bağlantılı liste oluşturma, ekrana yazdırma, eleman silmeSınıf yardımı ile bağlantılı liste oluşturma, ekrana yazdırma, eleman silmeSınıf yardımı ile bağlantılı liste oluşturma, ekrana yazdırma, eleman silmeSınıf yardımı ile bağlantılı liste oluşturma, ekrana yazdırma, eleman silme', '', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
