-- Adminer 4.8.1 MySQL 8.0.33 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `ins_agente`;
CREATE TABLE `ins_agente` (
  `id_agente` int NOT NULL AUTO_INCREMENT,
  `num_agente` varchar(250) NOT NULL,
  `name_agente` varchar(250) NOT NULL,
  `lastname_agente` varchar(250) NOT NULL,
  `email_agente` varchar(250) NOT NULL,
  `username_agente` varchar(250) NOT NULL,
  `password_agente` text NOT NULL,
  PRIMARY KEY (`id_agente`),
  UNIQUE KEY `id_agente` (`id_agente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `ins_agente` (`id_agente`, `num_agente`, `name_agente`, `lastname_agente`, `email_agente`, `username_agente`, `password_agente`) VALUES
(1,	'7884854JH',	'Miguel Ángel',	'González Carrillero',	'magonz@gmail.com',	'magonz@gmail.com',	'123456'),
(2,	'7884854K',	'María',	'López García',	'marialopez@gmail.com',	'marialopez@gmail.com',	'123456'),
(3,	'2435674F',	'Carlos',	'Rodríguez Martínez',	'carlosr@gmail.com',	'carlosr@gmail.com',	'123456'),
(4,	'9987654A',	'Laura',	'Hernández Pérez',	'laurah@gmail.com',	'laurah@gmail.com',	'123456'),
(5,	'5476890B',	'Javier',	'Torres Sánchez',	'javierts@gmail.com',	'javierts@gmail.com',	'123456'),
(6,	'2312345R',	'Isabel',	'Martínez López',	'isabelml@gmail.com',	'isabelml@gmail.com',	'123456'),
(7,	'7823456G',	'Alejandro',	'García Rodríguez',	'alejandrog@gmail.com',	'alejandrog@gmail.com',	'123456'),
(8,	'9893456C',	'Ana',	'Fernández Torres',	'anaftorres@gmail.com',	'anaftorres@gmail.com',	'123456'),
(9,	'4567890N',	'Sara',	'González Fernández',	'saragf@gmail.com',	'saragf@gmail.com',	'123456'),
(10,	'5678901P',	'Daniel',	'Pérez Martín',	'danielpm@gmail.com',	'danielpm@gmail.com',	'123456');

DROP TABLE IF EXISTS `ins_asegurados`;
CREATE TABLE `ins_asegurados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `ins_poliza_salud`;
CREATE TABLE `ins_poliza_salud` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_agente` int NOT NULL,
  `id_user` int NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `num_poliza` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `ins_poliza_vehiculos`;
CREATE TABLE `ins_poliza_vehiculos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_agente` int NOT NULL,
  `id_user` int NOT NULL,
  `fecha_fabricacion` date NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `matricula` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `ins_users`;
CREATE TABLE `ins_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identificador` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `siniestro`;
CREATE TABLE `siniestro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- 2023-07-17 11:58:29
