ALTER TABLE `vaucher_types` ADD `id_class_type` INT UNSIGNED ZEROFILL NOT NULL AFTER `id`, ADD INDEX (`id_class_type`);

UPDATE `vaucher_types` SET `id_class_type` = '0000000001' WHERE `vaucher_types`.`id` = 0000000001; UPDATE `vaucher_types` SET `id_class_type` = '0000000003' WHERE `vaucher_types`.`id` = 0000000002; UPDATE `vaucher_types` SET `id_class_type` = '0000000002' WHERE `vaucher_types`.`id` = 0000000003;

ALTER TABLE `vaucher_types` ADD CONSTRAINT `fk_vaucher_types_id_class_type` FOREIGN KEY (`id_class_type`) REFERENCES `class_type`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
