ALTER TABLE `vauchers` CHANGE `id` `id` INT(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
ALTER TABLE `vauchers` ADD `id_vaucher_type` INT UNSIGNED ZEROFILL NOT NULL AFTER `id`, ADD INDEX (`id_vaucher_type`);
UPDATE vauchers SET id_vaucher_type = 3;
ALTER TABLE `vauchers` ADD CONSTRAINT `vauchers_fk_id_vaucher_type` FOREIGN KEY (`id_vaucher_type`) REFERENCES `vaucher_types`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Table structure for table `user_vauchers_order`
--

CREATE TABLE `user_vauchers_order` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_user` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_vauchers` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_payment` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `is_payed` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(500) DEFAULT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `d_first_name` varchar(100) NOT NULL,
  `d_last_name` varchar(100) NOT NULL,
  `d_street` varchar(100) NOT NULL,
  `d_street_number` varchar(10) NOT NULL,
  `d_zip` varchar(10) NOT NULL,
  `d_city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_vauchers_order`
--
ALTER TABLE `user_vauchers_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_payment` (`id_payment`),
  ADD KEY `id_vauchers` (`id_vauchers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_vauchers_order`
--
ALTER TABLE `user_vauchers_order`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_vauchers_order`
--
ALTER TABLE `user_vauchers_order`
  ADD CONSTRAINT `fk_user_vauchers_order_id_payment` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_vauchers_order_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_vauchers_order_id_vauchers` FOREIGN KEY (`id_vauchers`) REFERENCES `vauchers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `vaucher_types` ADD `paypal_key` VARCHAR(20) NOT NULL AFTER `price`;
ALTER TABLE `packets` ADD `paypal_key` VARCHAR(20) NOT NULL AFTER `price`;

ALTER TABLE `user_packets_order` ADD `d_first_name` varchar(100) NOT NULL AFTER `order_date`;
ALTER TABLE `user_packets_order` ADD `d_last_name` varchar(100) NOT NULL AFTER `d_first_name`;
ALTER TABLE `user_packets_order` ADD `d_street` varchar(100) NOT NULL AFTER `d_last_name`;
ALTER TABLE `user_packets_order` ADD `d_street_number` varchar(10) NOT NULL AFTER `d_street`;
ALTER TABLE `user_packets_order` ADD `d_zip` varchar(10) NOT NULL AFTER `d_street_number`;
ALTER TABLE `user_packets_order` ADD `d_city` varchar(100) NOT NULL AFTER `d_zip`;
ALTER TABLE `user_packets_order` ADD `g_first_name` varchar(100) NOT NULL AFTER `d_city`;
ALTER TABLE `user_packets_order` ADD `g_last_name` varchar(100) NOT NULL AFTER `g_first_name`;
ALTER TABLE `user_packets_order` ADD `g_street` varchar(100) NOT NULL AFTER `g_last_name`;
ALTER TABLE `user_packets_order` ADD `g_street_number` varchar(10) NOT NULL AFTER `g_street`;
ALTER TABLE `user_packets_order` ADD `g_zip` varchar(10) NOT NULL AFTER `g_street_number`;
ALTER TABLE `user_packets_order` ADD `g_city` varchar(100) NOT NULL AFTER `g_zip`;

ALTER TABLE `user_packets_order` DROP `is_ordered`;
