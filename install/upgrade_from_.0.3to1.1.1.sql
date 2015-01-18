DROP TABLE IF EXISTS db_sequence;

RENAME TABLE list_of_tests TO tests;
RENAME TABLE test_block TO tests_blocks;
RENAME TABLE level_ques TO level_question;
RENAME TABLE users TO students;

ALTER TABLE `tests` CHANGE `Test_Id` `ID_TEST` MEDIUMINT UNSIGNED DEFAULT '0' NOT NULL AUTO_INCREMENT;
ALTER TABLE `tests` CHANGE `Test_Name` `TestName` VARCHAR( 150 ) NOT NULL;
ALTER TABLE `tests` DROP INDEX `Test_Name`;
ALTER TABLE `tests` CHANGE `Test_Block` `IsBlock` CHAR( 1 ) DEFAULT '0' NOT NULL ;
UPDATE tests set IsBlock='N'WHERE IsBlock=0;
UPDATE tests set IsBlock='Y'WHERE IsBlock=1;
ALTER TABLE `tests` CHANGE `IsBlock` `IsBlock` ENUM( 'N', 'Y' ) DEFAULT 'N' NOT NULL;
ALTER TABLE `tests` CHANGE `Test_Time` `TestTime` SMALLINT UNSIGNED NOT NULL;
ALTER TABLE `tests` ADD `IsTimeForOneQuestion` ENUM( 'N', 'Y' ) DEFAULT 'N' NOT NULL AFTER `TestTime` ;
ALTER TABLE `tests` CHANGE `Test_Show_Task` `ShowTask` CHAR( 1 ) DEFAULT '0' NOT NULL;
UPDATE tests SET ShowTask='N'WHERE ShowTask=0 OR ShowTask IS NULL;
UPDATE tests SET ShowTask='Y'WHERE ShowTask=1;
ALTER TABLE `tests` CHANGE `ShowTask` `ShowTask` ENUM( 'N', 'Y' ) DEFAULT 'N' NOT NULL;
ALTER TABLE `tests` CHANGE `Test_Task_URL` `TaskURL` VARCHAR( 255 ) NOT NULL;
ALTER TABLE `tests` ADD UNIQUE (`TestName`);

ALTER TABLE `tests_blocks` DROP INDEX `Ind_Block_Id_Test_Id`;
ALTER TABLE `tests_blocks` CHANGE `B_Block_Id` `ID_TEST_BLOCK` MEDIUMINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `tests_blocks` CHANGE `B_Test_Id` `ID_TEST` MEDIUMINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `tests_blocks` ADD PRIMARY KEY ( `ID_TEST_BLOCK` , `ID_TEST` );
ALTER TABLE `tests_blocks` ADD INDEX ( `ID_TEST` );

ALTER TABLE `level_question` DROP INDEX `Ind_LTId_Level`;
ALTER TABLE `level_question` CHANGE `L_T_Id` `ID_TEST` MEDIUMINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `level_question` CHANGE `Level` `ID_Level` TINYINT( 3 ) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `level_question` CHANGE `Level_P` `Point` TINYINT( 3 ) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `level_question` CHANGE `Level_N` `Number` TINYINT( 3 ) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `level_question` ADD PRIMARY KEY ( `ID_TEST` , `ID_Level` );

ALTER TABLE `questions` DROP INDEX `Q_Level`;
ALTER TABLE `questions` DROP INDEX `Q_Test_Id`;
ALTER TABLE `questions` CHANGE `Q_Id` `ID_QU` INT UNSIGNED DEFAULT '0' NOT NULL AUTO_INCREMENT;
ALTER TABLE `questions` CHANGE `Q_Test_Id` `ID_TEST` MEDIUMINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `questions` CHANGE `Q_T` `Q_Type` TINYINT( 3 ) UNSIGNED DEFAULT '1' NOT NULL;
ALTER TABLE `questions` CHANGE `Q_Level` `ID_Level` TINYINT( 3 ) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `questions` ADD INDEX `ID_TEST_ID_LEVEL` ( `ID_TEST` , `ID_Level` );
ALTER TABLE `questions` ADD COLUMN `qty_false` INT UNSIGNED DEFAULT '0' NOT NULL AFTER `ID_Level`; 
ALTER TABLE `questions` ADD COLUMN `qty_true` INT UNSIGNED DEFAULT '0' NOT NULL AFTER `qty_false`; 

ALTER TABLE `answers` DROP INDEX `A_Id`;
ALTER TABLE `answers` DROP INDEX `A_Q_Id`;
ALTER TABLE `answers` DROP INDEX `Ind_AQId_ATrue`;
ALTER TABLE `answers` CHANGE `A_Id` `ID_AN` INT UNSIGNED DEFAULT '0' NOT NULL AUTO_INCREMENT;
ALTER TABLE `answers` CHANGE `A_Q_Id` `ID_QU` INT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `answers` CHANGE `A_Body` `A_Body` TEXT NOT NULL;
ALTER TABLE `answers` ADD INDEX ( `ID_QU` );


ALTER TABLE `groups` DROP INDEX `G_Name`;
ALTER TABLE `groups` CHANGE `G_Id` `ID_GR` MEDIUMINT UNSIGNED DEFAULT '0' NOT NULL AUTO_INCREMENT;
ALTER TABLE `groups` CHANGE `G_Name` `GrName` CHAR( 20 ) NOT NULL;
ALTER TABLE `groups` ADD UNIQUE ( `GrName` );

ALTER TABLE `students` DROP INDEX `U_G_Id`;
ALTER TABLE `students` CHANGE `U_Id` `ID_ST` INT UNSIGNED DEFAULT '0' NOT NULL AUTO_INCREMENT;
ALTER TABLE `students` DROP INDEX `U_Id` ,ADD PRIMARY KEY ( `ID_ST` );
ALTER TABLE `students` CHANGE `U_G_Id` `ID_GR` MEDIUMINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `students` CHANGE `U_Name` `STName` CHAR( 32 ) NOT NULL;
ALTER TABLE `students` CHANGE `U_Pass` `STPass` CHAR( 32 ) NOT NULL;
DELETE FROM `students`;
ALTER TABLE `students` ADD UNIQUE (`STName`);
UPDATE `students` SET `STPass`=md5(`STPass`);
ALTER TABLE `students` ADD INDEX ( `ID_GR` );

ALTER TABLE `time_table` DROP INDEX `Ind_C_Id_Test_Id`;
ALTER TABLE `time_table` CHANGE `T_G_Id` `ID_GR` MEDIUMINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `time_table` CHANGE `T_Test_Id` `ID_TEST` MEDIUMINT UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `time_table` CHANGE `T_S_Date` `S_Date` DATE DEFAULT '0000-00-00' NOT NULL;
ALTER TABLE `time_table` CHANGE `T_E_Date` `F_Date` DATE DEFAULT '0000-00-00' NOT NULL;
ALTER TABLE `time_table` ADD `WriteLog` ENUM( 'N', 'Y' ) DEFAULT 'N' NOT NULL AFTER `ID_TEST`;
ALTER TABLE `time_table` ADD PRIMARY KEY ( `ID_GR` , `ID_TEST` );
ALTER TABLE `time_table` ADD INDEX ( `ID_TEST` );


DROP TABLE IF EXISTS `results`;


CREATE TABLE `results` (
  `ID_RE` int(10) unsigned NOT NULL auto_increment,
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `ID_ST` int(10) unsigned NOT NULL default '0',
  `Result` tinyint(3) unsigned NOT NULL default '0',
  `FDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `can_resit` ENUM( 'N', 'Y' ) DEFAULT 'N' NOT NULL, 
  PRIMARY KEY  (`ID_RE`),
  KEY `ID_TEST` (`ID_TEST`),
  KEY `ID_ST` (`ID_ST`)
);

CREATE TABLE `results_log` (
  `ID_RE_LOG` int(10) unsigned NOT NULL auto_increment,
  `ID_RE` int(10) unsigned NOT NULL default '0',
  `ID_QU` int(10) unsigned NOT NULL default '0',
  `IsRight` enum('N', 'Y') NOT NULL default 'N',
  PRIMARY KEY  (`ID_RE_LOG`),
  UNIQUE KEY `ID_RE` (`ID_RE`,`ID_QU`),
  KEY `ID_QU` (`ID_QU`)
);


CREATE TABLE `results_log_answers` (
  `ID_RE_LOG` int(10) unsigned NOT NULL default '0',
  `ID_AN` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID_RE_LOG`,`ID_AN`),
  KEY `ID_AN` (`ID_AN`)
);


CREATE TABLE `teachers` (
  `ID_TE` smallint(5) unsigned NOT NULL auto_increment,
  `TEName` char(32) NOT NULL default '',
  `GroupCreator` enum('N','Y') NOT NULL default 'N',
  `TestCreator` enum('N','Y') NOT NULL default 'N',
  `GroupAdmin` enum('N','Y') NOT NULL default 'N',
  `TestAdmin` enum('N','Y') NOT NULL default 'N',
  `SysAdmin` enum('N','Y') NOT NULL default 'N',
  `ResultReader` ENUM( 'N', 'Y' ) NOT NULL default 'N',
  `USPass` char(32) NOT NULL default '',
  PRIMARY KEY  (`ID_TE`),
  UNIQUE KEY `TEName` (`TEName`)
);
INSERT INTO `teachers` ( `ID_TE` , `TEName` , `GroupCreator` , `TestCreator` , `GroupAdmin` , `TestAdmin` , `SysAdmin` , `USPass` ) 
VALUES ( '', 'adm', 'Y', 'Y', 'Y', 'Y', 'Y', MD5( '' ) );

CREATE TABLE `group_priv` (
  `ID_TE` smallint(5) unsigned NOT NULL default '0',
  `ID_GR` mediumint(8) unsigned NOT NULL default '0',
  `CanAdmin` enum('N','Y') NOT NULL default 'N',
  `CanChange` enum('N','Y') NOT NULL default 'N',
  PRIMARY KEY  (`ID_TE`,`ID_GR`),
  KEY `ID_GR` (`ID_GR`)
);
CREATE TABLE `test_priv` (
  `ID_TE` smallint(5) unsigned NOT NULL default '0',
  `ID_TEST` mediumint(8) unsigned NOT NULL default '0',
  `CanAdmin` enum('N','Y') NOT NULL default 'N',
  `CanChange` enum('N','Y') NOT NULL default 'N',
  PRIMARY KEY  (`ID_TE`,`ID_TEST`),
  KEY `ID_TEST` (`ID_TEST`)
);

ALTER TABLE `answers` TYPE = INNODB;
ALTER TABLE `group_priv` TYPE = INNODB;
ALTER TABLE `groups` TYPE = INNODB;
ALTER TABLE `level_question` TYPE = INNODB;
ALTER TABLE `questions` TYPE = INNODB;     
ALTER TABLE `results` TYPE = INNODB;
ALTER TABLE `results_log` TYPE = INNODB;
ALTER TABLE `results_log_answers` TYPE = INNODB;
ALTER TABLE `students` TYPE = INNODB;
ALTER TABLE `teachers` TYPE = INNODB;
ALTER TABLE `test_priv` TYPE = INNODB;
ALTER TABLE `tests` TYPE = INNODB;
ALTER TABLE `tests_blocks` TYPE = INNODB;
ALTER TABLE `time_table` TYPE = INNODB;

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
