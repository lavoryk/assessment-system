-- phpMyAdmin SQL Dump
-- version 2.6.0-pl3
-- http://www.phpmyadmin.net
-- 
-- Хост: localhost
-- Час створення: Жов 21 2006 р., 14:57
-- Версія сервера: 4.0.27
-- Версія PHP: 4.3.11
-- 
-- БД: `testy_1_1_2_demo`
-- 

-- --------------------------------------------------------

-- 
-- Структура таблиці `answers`
-- 
START TRANSACTION;

CREATE TABLE `answers` (
  `ID_AN` int(10) unsigned NOT NULL auto_increment,
  `ID_QU` int(10) unsigned NOT NULL default '0',
  `A_True` tinyint(3) unsigned NOT NULL default '0',
  `A_Body` text NOT NULL,
  PRIMARY KEY  (`ID_AN`),
  KEY `ID_QU` (`ID_QU`)
) TYPE=InnoDB AUTO_INCREMENT=9994 ;

-- --------------------------------------------------------

-- 
-- Структура таблиці `group_priv`
-- 

CREATE TABLE `group_priv` (
  `ID_TE` smallint(5) unsigned NOT NULL default '0',
  `ID_GR` mediumint(8) unsigned NOT NULL default '0',
  `CanAdmin` enum('N','Y') NOT NULL default 'N',
  `CanChange` enum('N','Y') NOT NULL default 'N',
  PRIMARY KEY  (`ID_TE`,`ID_GR`),
  KEY `ID_GR` (`ID_GR`)
) TYPE=InnoDB;

-- --------------------------------------------------------

-- 
-- Структура таблиці `groups`
-- 

CREATE TABLE `groups` (
  `ID_GR` mediumint(8) unsigned NOT NULL auto_increment,
  `GrName` char(20) NOT NULL default '',
  PRIMARY KEY  (`ID_GR`),
  UNIQUE KEY `GrName` (`GrName`)
) TYPE=InnoDB AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

-- 
-- Структура таблиці `level_question`
-- 

CREATE TABLE `level_question` (
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `ID_Level` tinyint(3) unsigned NOT NULL default '0',
  `Point` tinyint(3) unsigned NOT NULL default '0',
  `Number` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID_TEST`,`ID_Level`)
) TYPE=InnoDB;

-- --------------------------------------------------------

-- 
-- Структура таблиці `questions`
-- 

CREATE TABLE `questions` (
  `ID_QU` int(10) unsigned NOT NULL auto_increment,
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `Q_Type` tinyint(3) unsigned NOT NULL default '1',
  `ID_Level` tinyint(3) unsigned NOT NULL default '0',
  `qty_false` int(10) unsigned NOT NULL default '0',
  `qty_true` int(10) unsigned NOT NULL default '0',
  `Q_Body` text NOT NULL,
  PRIMARY KEY  (`ID_QU`),
  KEY `ID_TEST_ID_LEVEL` (`ID_TEST`,`ID_Level`)
) TYPE=InnoDB AUTO_INCREMENT=2156 ;

-- --------------------------------------------------------

-- 
-- Структура таблиці `results`
-- 

CREATE TABLE `results` (
  `ID_RE` int(10) unsigned NOT NULL auto_increment,
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `ID_ST` int(10) unsigned NOT NULL default '0',
  `Result` tinyint(3) unsigned NOT NULL default '0',
  `FDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `can_resit` enum('N','Y') NOT NULL default 'N',
  PRIMARY KEY  (`ID_RE`),
  KEY `ID_TEST` (`ID_TEST`),
  KEY `ID_ST` (`ID_ST`)
) TYPE=InnoDB AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

-- 
-- Структура таблиці `results_log`
-- 

CREATE TABLE `results_log` (
  `ID_RE_LOG` int(10) unsigned NOT NULL auto_increment,
  `ID_RE` int(10) unsigned NOT NULL default '0',
  `ID_QU` int(10) unsigned NOT NULL default '0',
  `IsRight` enum('N','Y') NOT NULL default 'N',
  PRIMARY KEY  (`ID_RE_LOG`),
  UNIQUE KEY `ID_RE` (`ID_RE`,`ID_QU`),
  KEY `ID_QU` (`ID_QU`)
) TYPE=InnoDB AUTO_INCREMENT=71 ;

-- --------------------------------------------------------

-- 
-- Структура таблиці `results_log_answers`
-- 

CREATE TABLE `results_log_answers` (
  `ID_RE_LOG` int(10) unsigned NOT NULL default '0',
  `ID_AN` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID_RE_LOG`,`ID_AN`),
  KEY `ID_AN` (`ID_AN`)
) TYPE=InnoDB;

-- --------------------------------------------------------

-- 
-- Структура таблиці `students`
-- 

CREATE TABLE `students` (
  `ID_ST` int(10) unsigned NOT NULL auto_increment,
  `ID_GR` mediumint(8) unsigned NOT NULL default '0',
  `STName` varchar(32) NOT NULL default '',
  `STPass` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`ID_ST`),
  UNIQUE KEY `STName` (`STName`),
  KEY `ID_GR` (`ID_GR`)
) TYPE=InnoDB AUTO_INCREMENT=978 ;

-- --------------------------------------------------------

-- 
-- Структура таблиці `teachers`
-- 

CREATE TABLE `teachers` (
  `ID_TE` smallint(5) unsigned NOT NULL auto_increment,
  `TEName` char(32) NOT NULL default '',
  `GroupCreator` enum('N','Y') NOT NULL default 'N',
  `TestCreator` enum('N','Y') NOT NULL default 'N',
  `GroupAdmin` enum('N','Y') NOT NULL default 'N',
  `TestAdmin` enum('N','Y') NOT NULL default 'N',
  `SysAdmin` enum('N','Y') NOT NULL default 'N',
  `ResultReader` enum('N','Y') NOT NULL default 'N',
  `USPass` char(32) NOT NULL default '',
  PRIMARY KEY  (`ID_TE`),
  UNIQUE KEY `TEName` (`TEName`)
) TYPE=InnoDB AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

-- 
-- Структура таблиці `test_priv`
-- 

CREATE TABLE `test_priv` (
  `ID_TE` smallint(5) unsigned NOT NULL default '0',
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `CanAdmin` enum('N','Y') NOT NULL default 'N',
  `CanChange` enum('N','Y') NOT NULL default 'N',
  PRIMARY KEY  (`ID_TE`,`ID_TEST`),
  KEY `ID_TEST` (`ID_TEST`)
) TYPE=InnoDB;

-- --------------------------------------------------------

-- 
-- Структура таблиці `tests`
-- 

CREATE TABLE `tests` (
  `ID_TEST` mediumint(8) unsigned NOT NULL auto_increment,
  `TestName` varchar(150) NOT NULL default '',
  `IsBlock` enum('N','Y') NOT NULL default 'N',
  `TestTime` smallint(5) unsigned NOT NULL default '0',
  `DisableShowPrevTask` enum('N','Y') NOT NULL default 'N',
  `IsTimeForOneQuestion` enum('N','Y') NOT NULL default 'N',
  `ShowTask` enum('N','Y') NOT NULL default 'N',
  `TaskURL` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`ID_TEST`),
  UNIQUE KEY `TestName` (`TestName`)
) TYPE=InnoDB AUTO_INCREMENT=137 ;

-- --------------------------------------------------------

-- 
-- Структура таблиці `tests_blocks`
-- 

CREATE TABLE `tests_blocks` (
  `ID_TEST_BLOCK` mediumint(8) unsigned NOT NULL default '0',
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID_TEST_BLOCK`,`ID_TEST`),
  KEY `ID_TEST` (`ID_TEST`)
) TYPE=InnoDB;

-- --------------------------------------------------------

-- 
-- Структура таблиці `time_table`
-- 

CREATE TABLE `time_table` (
  `ID_GR` mediumint(8) unsigned NOT NULL default '0',
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `WriteLog` enum('N','Y') NOT NULL default 'N',
  `S_Date` date NOT NULL default '0000-00-00',
  `F_Date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`ID_GR`,`ID_TEST`),
  KEY `ID_TEST` (`ID_TEST`)
) TYPE=InnoDB;

-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `answers`
-- 
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`ID_QU`) REFERENCES `questions` (`ID_QU`);

-- 
-- Constraints for table `group_priv`
-- 
ALTER TABLE `group_priv`
  ADD CONSTRAINT `group_priv_ibfk_1` FOREIGN KEY (`ID_TE`) REFERENCES `teachers` (`ID_TE`),
  ADD CONSTRAINT `group_priv_ibfk_2` FOREIGN KEY (`ID_GR`) REFERENCES `groups` (`ID_GR`);

-- 
-- Constraints for table `level_question`
-- 
ALTER TABLE `level_question`
  ADD CONSTRAINT `level_question_ibfk_1` FOREIGN KEY (`ID_TEST`) REFERENCES `tests` (`ID_TEST`);

-- 
-- Constraints for table `questions`
-- 
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`ID_TEST`, `ID_Level`) REFERENCES `level_question` (`ID_TEST`, `ID_Level`);

-- 
-- Constraints for table `results`
-- 
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`ID_TEST`) REFERENCES `tests` (`ID_TEST`),
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`ID_ST`) REFERENCES `students` (`ID_ST`);

-- 
-- Constraints for table `results_log`
-- 
ALTER TABLE `results_log`
  ADD CONSTRAINT `results_log_ibfk_1` FOREIGN KEY (`ID_RE`) REFERENCES `results` (`ID_RE`),
  ADD CONSTRAINT `results_log_ibfk_2` FOREIGN KEY (`ID_QU`) REFERENCES `questions` (`ID_QU`);

-- 
-- Constraints for table `results_log_answers`
-- 
ALTER TABLE `results_log_answers`
  ADD CONSTRAINT `results_log_answers_ibfk_1` FOREIGN KEY (`ID_RE_LOG`) REFERENCES `results_log` (`ID_RE_LOG`),
  ADD CONSTRAINT `results_log_answers_ibfk_2` FOREIGN KEY (`ID_AN`) REFERENCES `answers` (`ID_AN`);

-- 
-- Constraints for table `students`
-- 
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`ID_GR`) REFERENCES `groups` (`ID_GR`);

-- 
-- Constraints for table `test_priv`
-- 
ALTER TABLE `test_priv`
  ADD CONSTRAINT `test_priv_ibfk_2` FOREIGN KEY (`ID_TE`) REFERENCES `teachers` (`ID_TE`),
  ADD CONSTRAINT `test_priv_ibfk_3` FOREIGN KEY (`ID_TEST`) REFERENCES `tests` (`ID_TEST`);

-- 
-- Constraints for table `tests_blocks`
-- 
ALTER TABLE `tests_blocks`
  ADD CONSTRAINT `tests_blocks_ibfk_1` FOREIGN KEY (`ID_TEST_BLOCK`) REFERENCES `tests` (`ID_TEST`),
  ADD CONSTRAINT `tests_blocks_ibfk_2` FOREIGN KEY (`ID_TEST`) REFERENCES `tests` (`ID_TEST`);

-- 
-- Constraints for table `time_table`
-- 
ALTER TABLE `time_table`
  ADD CONSTRAINT `time_table_ibfk_1` FOREIGN KEY (`ID_GR`) REFERENCES `groups` (`ID_GR`),
  ADD CONSTRAINT `time_table_ibfk_2` FOREIGN KEY (`ID_TEST`) REFERENCES `tests` (`ID_TEST`);

INSERT INTO `teachers` VALUES (1, 'adm', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'd41d8cd98f00b204e9800998ecf8427e');
COMMIT;