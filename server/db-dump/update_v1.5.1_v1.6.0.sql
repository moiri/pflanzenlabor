-- 1. Add class_dates.time only if it does not exist
SET @column_exists = (
    SELECT COUNT(*)
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = DATABASE()
      AND TABLE_NAME = 'class_dates'
      AND COLUMN_NAME = 'time'
);

SET @sql = IF(
    @column_exists = 0,
    'ALTER TABLE `class_dates` ADD `time` VARCHAR(100) NULL DEFAULT NULL COMMENT ''The time of the class'' AFTER `date`',
    'SELECT ''class_dates.time already exists'''
);

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


-- 2. Copy times only into rows that do not already have a time
UPDATE `class_dates` AS cd
JOIN `classes` AS c ON c.id = cd.id_class
SET cd.time = c.time
WHERE cd.time IS NULL;


-- 3. Drop classes.time only if it exists
SET @column_exists = (
    SELECT COUNT(*)
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = DATABASE()
      AND TABLE_NAME = 'classes'
      AND COLUMN_NAME = 'time'
);

SET @sql = IF(
    @column_exists > 0,
    'ALTER TABLE `classes` DROP COLUMN `time`',
    'SELECT ''classes.time does not exist'''
);

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
