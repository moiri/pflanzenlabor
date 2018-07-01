/* update from 1.3.2 to 1.3.3 */

/* Add enable flag to classes table */
ALTER TABLE `classes` ADD `enabled` BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'set to \'1\' if class is enabled or to \'0\' if the class is disabled.' AFTER `id`;
/* Enable all classes */
UPDATE `classes` SET `enabled` = '1' WHERE `classes`.`id` = 0000000001;
UPDATE `classes` SET `enabled` = '1' WHERE `classes`.`id` = 0000000002;
UPDATE `classes` SET `enabled` = '1' WHERE `classes`.`id` = 0000000003;
UPDATE `classes` SET `enabled` = '1' WHERE `classes`.`id` = 0000000004;
UPDATE `classes` SET `enabled` = '1' WHERE `classes`.`id` = 0000000005;

/* Add an id field to classes table which refers to the section dates */
ALTER TABLE `classes` ADD `id_section_dates` INT UNSIGNED ZEROFILL NOT NULL DEFAULT '5' COMMENT 'The mandatory date section id (this should be id 5)' AFTER `id_type`, ADD INDEX (`id_section_dates`);
ALTER TABLE `classes` ADD CONSTRAINT `classes_fk_id_section_dates` FOREIGN KEY (`id_section_dates`) REFERENCES `sections`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/* Add an id field to classes table which refers to the section preview */
ALTER TABLE `classes` ADD `id_section_preview` INT UNSIGNED ZEROFILL NOT NULL DEFAULT '15' COMMENT 'The mandatory preview section id. The default fallback id is 15' AFTER `id_section_dates`, ADD INDEX (`id_section_preview`);
ALTER TABLE `classes` ADD CONSTRAINT `classes_fk_id_section_preview` FOREIGN KEY (`id_section_preview`) REFERENCES `sections`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/* Remove all date section entries. These are referenced directly in the classes table */
DELETE FROM `class_section` WHERE `class_section`.`id_section` = 0000000005;

/* Manually remove the preview section assignements in the class_section table and assign it to the id_section_preview field in the classes table. */
