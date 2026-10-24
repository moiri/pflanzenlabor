<?php
define ('DEBUG', 0);
define ('BASE_PATH', '/pflanzenlabor');
/**
* Globals to access database
* define different users for different operations
*/
define ('DBSERVER', 'localhost');
define ('DBNAME', 'pflanzenlabor');
define ('DBUSER', 'pflanzenlabor');
define ('DBPASSWORD', 'password');

/**
* Globals to access smpt server
*/
define ('SMTP_USERNAME', 'smtp_login_user');
define ('SMTP_TOKEN', 'smtp_token');
define ('SMTP_SERVER', 'smtp.protonmail.ch');
define ('SMTP_PORT', '587');
/** The email from which the messages are sent */
define ('SMTP_SENDER_ADDRESS', 'noreply@mydomain.ch');
/** The name associated to the sender address */
define ('SMTP_SENDER_NAME', 'Pflanzenlabor');

define ('SMTP_RECEIVER_CONTACT', 'contact@mydomain.ch');
define ('SMTP_RECEIVER_NEWSLETTER', 'newsletter@mydomain.ch');
define ('SMTP_RECEIVER_ORDER', 'order@mydomain.ch');
?>
