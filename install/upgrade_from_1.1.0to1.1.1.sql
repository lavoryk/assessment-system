#ALTER TABLE `questions` ADD COLUMN `qty_false` INT UNSIGNED DEFAULT '0' NOT NULL AFTER `ID_Level`; 
#ALTER TABLE `questions` ADD COLUMN `qty_true` INT UNSIGNED DEFAULT '0' NOT NULL AFTER `qty_false`; 
#ALTER TABLE `results_log` ADD COLUMN `IsRight` enum('N', 'Y') NOT NULL default 'N' AFTER `ID_QU`;
#ALTER TABLE `results` ADD `can_resit` ENUM( 'N', 'Y' ) DEFAULT 'N' NOT NULL ;
ALTER TABLE `teachers` ADD `ResultReader` ENUM( 'N', 'Y' ) DEFAULT 'N' NOT NULL AFTER `SysAdmin` ;

