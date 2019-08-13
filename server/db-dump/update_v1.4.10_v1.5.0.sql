INSERT INTO `section_type` (`id`, `type`) VALUES (NULL, 'markdown');
ALTER TABLE `class_dates` ADD `is_open` BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'if set to 1 the dates are not clickable and the badge contains the text \"ohne Anmeldung\"' AFTER `places_booked`;
