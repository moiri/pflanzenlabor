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

/** The sender address and name from which the messages are sent */
define ('SMTP_SENDER_ADDRESS', 'noreply@mydomain.ch');
define ('SMTP_SENDER_NAME', 'Pflanzenlabor');

/** The receiver address and name for contact form messages */
define ('SMTP_RECEIVER_CONTACT_ADDRESS', 'contact@mydomain.ch');
define ('SMTP_RECEIVER_CONTACT_NAME', 'Pflanzenlabor');

/** The receiver address and name for newsletter form messages */
define ('SMTP_RECEIVER_NEWSLETTER_ADDRESS', 'newsletter@mydomain.ch');
define ('SMTP_RECEIVER_NEWSLETTER_NAME', 'Pflanzenlabor');

/** The receiver address and name for order form messages */
define ('SMTP_RECEIVER_ORDER_ADDRESS', 'order@mydomain.ch');
define ('SMTP_RECEIVER_ORDER_NAME', 'Pflanzenlabor');
?>
