-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 01 nov 2023 om 14:52
-- Serverversie: 5.7.32
-- PHP-versie: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `recycle-shoes`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `product` varchar(80) NOT NULL,
  `datedelivery` date NOT NULL,
  `administrator` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `delivery`
--

INSERT INTO `delivery` (`id`, `product`, `datedelivery`, `administrator`) VALUES
(1, 'schuimrubber', '2023-10-25', 'Johan'),
(2, 'veters', '2022-10-25', 'Karel'),
(3, 'kaas', '2023-10-24', 'evert'),
(4, 'schoenzool', '2023-10-24', 'Jaco'),
(5, 'schoenzool', '2023-10-24', 'Jaco'),
(6, 'electronica', '2020-10-24', 'baldemor'),
(7, 'electronica', '2020-10-24', 'baldemor'),
(8, 'jhgjhg', '2023-10-11', 'hfnvb'),
(9, 'electronica', '2023-10-11', 'baldemor'),
(10, 'brood', '2023-10-11', 'baldemor'),
(11, 'brood', '2023-10-11', 'baldemor'),
(12, 'hagelslag', '2023-10-10', 'Jacob'),
(13, 'this.mijndelivery.product', '2023-10-10', 'Jacob'),
(14, 'huzarenslaatje', '2023-10-10', 'Jacob'),
(15, 'koffieCupos', '2023-10-10', 'Jacob'),
(16, 'Cortado', '2023-10-10', 'Jacob'),
(17, 'Cappucino', '2023-10-10', 'Jacob'),
(18, 'Hoka', '2023-10-10', 'Jacob'),
(19, 'boterhammen', '2023-10-10', 'Jacob');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `schip`
--

CREATE TABLE `schip` (
  `id` int(11) NOT NULL,
  `lengte` int(11) NOT NULL,
  `naam` varchar(128) NOT NULL,
  `kapitein` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `schip`
--

INSERT INTO `schip` (`id`, `lengte`, `naam`, `kapitein`) VALUES
(1, 100, 'die', ' Scheepers'),
(2, 100, 'die', 'daar'),
(3, 100, 'die', 'daar'),
(4, 100, 'die', 'daar'),
(5, 100, 'die', 'daar'),
(6, 100, 'die', 'daar'),
(7, 100, 'die', 'daar'),
(8, 100, 'die', 'daar'),
(9, 100, 'die', 'daar'),
(10, 100, 'die', 'daar'),
(11, 100, 'die', 'daar'),
(12, 100, 'die', 'daar'),
(13, 100, 'die', 'daar'),
(14, 100, 'die', 'daar'),
(15, 100, 'die', 'daar'),
(16, 100, 'die', 'daar'),
(17, 100, 'die', 'daar'),
(18, 100, 'die', 'daar'),
(19, 100, 'die', 'daar'),
(20, 100, 'die', 'daar'),
(21, 100, 'die', 'daar'),
(22, 100, 'die', 'daar'),
(23, 100, 'die', 'daar');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `zipcode` varchar(128) DEFAULT NULL,
  `place` varchar(128) DEFAULT NULL,
  `contactperson` varchar(128) DEFAULT NULL,
  `phonenumber` varchar(128) DEFAULT NULL,
  `delivery` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `email`, `address`, `zipcode`, `place`, `contactperson`, `phonenumber`, `delivery`) VALUES
(1, 'Nike', 'nike@nike.com', 'Umfstrasse 23', '7722HN', 'Dusseldorf', 'Janz', '065524157', 0),
(2, 'Intersport', 'info@intersport.nl', 'Houtmarktpassage 14', '4822XX', 'Breda', 'Hendriksen', '076-5678900', 0),
(3, 'Kermit', 'die', 'daar', NULL, NULL, NULL, NULL, NULL),
(4, 'joost', 'joost', 'joost', 'joost', 'joost', 'joost', 'joost', 0),
(5, 'Kalf', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 0),
(6, 'Koe', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 0),
(7, 'Object', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 0),
(8, 'jos', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 0),
(9, 'Hendrik', 'undefined', 'undefined', 'undefined', 'undefined', 'Valk', 'undefined', 0),
(10, 'Carl', 'undefined', 'Hendrik van Berlagestraat 34', 'undefined', 'undefined', 'Boskoop', 'undefined', 0),
(11, 'gvhghghhj', '87878768678', 'ghghghgh', 'undefined', 'undefined', 'bgbhjhnhjk', 'undefined', 0),
(12, 'hjadhjfdshjfdshenk', 'info@jaja.hotmail.com', 'dshjfsdhjsdfstraat', 'undefined', 'undefined', 'hasdhjdfhjsdfhdsfjos', 'undefined', 0),
(13, 'hallo', 'no', 'yes', 'undefined', 'undefined', 'doei', 'nada', 0),
(14, 'Sprint', 'Tilburg', '4822XW', 'undefined', 'undefined', 'Hendrik Berlagestraart', '013-5678900', 0),
(15, '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 0),
(16, 'Studio21', 'Breda', '4817AD', 'undefined', 'undefined', 'Vladimir', '076-1232345678', 0);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `schip`
--
ALTER TABLE `schip`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `schip`
--
ALTER TABLE `schip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT voor een tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
