-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 16, 2016 at 12:41 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `jee`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `date_envoi` date NOT NULL,
  `titre` varchar(256) NOT NULL,
  `contenu` varchar(512) NOT NULL,
  `id_oc` int(11) NOT NULL,
  `lu` tinyint(1) NOT NULL,
  `id_service_emetteur` int(11) NOT NULL,
  `optionAB` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc`
--

CREATE TABLE `oc` (
`id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `date_crea` date NOT NULL,
  `domaine_act` varchar(256) NOT NULL,
  `id_proprietaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `id_oc` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `action_crudoc` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `lib` varchar(256) NOT NULL,
  `id_oc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='un service est une action que peut faire un oc';

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `prenom` varchar(256) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `mail` varchar(256) DEFAULT NULL,
  `tel` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc`
--
ALTER TABLE `oc`
 ADD PRIMARY KEY (`id`);

-- Indexes for table `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`id`);

-- Indexes for table `privilege`
--
ALTER TABLE `privilege`
 ADD PRIMARY KEY (`id`);

-- Indexes for table `service`
--
ALTER TABLE `service`
 ADD PRIMARY KEY (`id`);

-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc`
--
ALTER TABLE `oc`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
