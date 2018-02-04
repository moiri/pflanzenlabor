<?php
require_once('logger.php');
/**
 * Class registration
 * handles the user registration
 */
class Registration extends Logger
{
    /**
     * @var object $db_connection The database connection
     */
    private $db_connection = null;

    /**
     * the function "__construct()" automatically starts whenever an object of this class is created,
     * you know, when you do "$registration = new Registration();"
     */
    public function __construct()
    {
        parent::__construct();
        if (isset($_POST["register"])) {
            $this->registerNewUser();
        }
    }

    /**
     * handles the entire registration process. checks all error possibilities
     * and creates a new user in the database if everything is fine
     */
    private function registerNewUser()
    {
        if (empty($_POST['user_name'])) {
            $this->addError( "Empty Username" );
        } elseif (empty($_POST['user_password_new']) || empty($_POST['user_password_repeat'])) {
            $this->addError( "Empty Password" );
        } elseif ($_POST['user_password_new'] !== $_POST['user_password_repeat']) {
            $this->addError( "Password and password repeat are not the same" );
        } elseif (strlen($_POST['user_password_new']) < 6) {
            $this->addError( "Password has a minimum length of 6 characters" );
        } elseif (strlen($_POST['user_name']) > 64 || strlen($_POST['user_name']) < 2) {
            $this->addError( "Username cannot be shorter than 2 or longer than 64 characters" );
        } elseif (!preg_match('/^[a-z\d]{2,64}$/i', $_POST['user_name'])) {
            $this->addError( "Username does not fit the name scheme: only a-Z and numbers are allowed, 2 to 64 characters" );
        } elseif (empty($_POST['user_email'])) {
            $this->addError( "Email cannot be empty" );
        } elseif (strlen($_POST['user_email']) > 64) {
            $this->addError( "Email cannot be longer than 64 characters" );
        } elseif (!filter_var($_POST['user_email'], FILTER_VALIDATE_EMAIL)) {
            $this->addError( "Your email address is not in a valid email format" );
        } elseif (!empty($_POST['user_name'])
            && strlen($_POST['user_name']) <= 64
            && strlen($_POST['user_name']) >= 2
            && preg_match('/^[a-z\d]{2,64}$/i', $_POST['user_name'])
            && !empty($_POST['user_email'])
            && strlen($_POST['user_email']) <= 64
            && filter_var($_POST['user_email'], FILTER_VALIDATE_EMAIL)
            && !empty($_POST['user_password_new'])
            && !empty($_POST['user_password_repeat'])
            && ($_POST['user_password_new'] === $_POST['user_password_repeat'])
        ) {
            // create a database connection
            $this->db_connection = new mysqli(DBSERVER, DBUSER2, DBPASSWORD2, DBNAME);

            // change character set to utf8 and check it
            if (!$this->db_connection->set_charset("utf8")) {
                $this->addError( $this->db_connection->error );
            }

            // if no connection errors (= working database connection)
            if (!$this->db_connection->connect_errno) {

                // escaping, additionally removing everything that could be (html/javascript-) code
                $user_name = $this->db_connection->real_escape_string(strip_tags($_POST['user_name'], ENT_QUOTES));
                $user_email = $this->db_connection->real_escape_string(strip_tags($_POST['user_email'], ENT_QUOTES));

                $user_password = $_POST['user_password_new'];

                // crypt the user's password with PHP 5.5's password_hash() function, results in a 60 character
                // hash string. the PASSWORD_DEFAULT constant is defined by the PHP 5.5, or if you are using
                // PHP 5.3/5.4, by the password hashing compatibility library
                $user_password_hash = password_hash($user_password, PASSWORD_DEFAULT);

                // check if user or email address already exists
                $sql = "SELECT * FROM user WHERE user_name = '" . $user_name . "' OR user_email = '" . $user_email . "';";
                $query_check_user_name = $this->db_connection->query($sql);

                if ($query_check_user_name->num_rows == 1) {
                    $this->addError( "Sorry, that username / email address is already taken." );
                } else {
                    // write new user's data into database
                    $sql = "INSERT INTO user (user_name, user_password_hash, user_email)
                            VALUES('" . $user_name . "', '" . $user_password_hash . "', '" . $user_email . "');";
                    $query_new_user_insert = $this->db_connection->query($sql);

                    // if user has been added successfully
                    if ($query_new_user_insert) {
                        $this->addSuccess( "Your account has been created successfully. You can now log in." );
                    } else {
                        $this->addError( "Sorry, your registration failed. Please go back and try again." );
                    }
                }
            } else {
                $this->addError( "Sorry, no database connection." );
            }
        } else {
            $this->addError( "An unknown error occurred." );
        }
    }
}
