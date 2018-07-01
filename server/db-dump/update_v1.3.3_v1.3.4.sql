/* update from 1.3.3 to 1.3.4 */

/* add a newsletter filed to the user table */
ALTER TABLE `user` ADD `newsletter` BOOLEAN NOT NULL DEFAULT FALSE COMMENT '1: the user wants to receive news, 0: otherwise' AFTER `email`;
