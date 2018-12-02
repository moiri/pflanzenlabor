ALTER TABLE `user_packets_order` ADD `is_ordered` TINYINT(1) NOT NULL DEFAULT '0' AFTER `id_payment`;
ALTER TABLE `user_vauchers_order` CHANGE `id_vauchers` `id_vauchers` INT(10) UNSIGNED ZEROFILL NULL DEFAULT NULL;
ALTER TABLE `user_vauchers_order` ADD `is_ordered` TINYINT(1) NOT NULL DEFAULT '0' AFTER `id_payment`;
ALTER TABLE `user_vauchers_order` ADD `id_vaucher_type` INT UNSIGNED ZEROFILL NOT NULL AFTER `id_vauchers`, ADD INDEX (`id_vaucher_type`);
ALTER TABLE `user_vauchers_order` ADD CONSTRAINT `fk_user_vauchers_order_id_vaucher_type` FOREIGN KEY (`id_vaucher_type`) REFERENCES `vaucher_types`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
