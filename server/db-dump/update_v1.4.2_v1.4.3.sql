ALTER TABLE `impressions` ADD `position` INT(4) NOT NULL COMMENT 'the position of the impression event' AFTER `description`;

ALTER TABLE `class_type` ADD `paypal_key` VARCHAR(20) NOT NULL AFTER `name`;
