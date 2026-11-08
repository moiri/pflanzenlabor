DROP TABLE IF EXISTS `user_class_dates_food`;
DROP TABLE IF EXISTS `food`;

SET @col_exists = (
  SELECT COUNT(*)
  FROM information_schema.COLUMNS
  WHERE TABLE_SCHEMA = DATABASE()
    AND TABLE_NAME   = 'user_class_dates'
    AND COLUMN_NAME  = 'check_custom'
);

SET @ddl = IF(
  @col_exists > 0,
  'ALTER TABLE `user_class_dates` DROP COLUMN `check_custom`',
  'SELECT ''column check_custom already dropped'' AS info'
);

PREPARE stmt FROM @ddl;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
