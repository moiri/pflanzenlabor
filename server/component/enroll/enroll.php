<?php
require_once __DIR__ . "/../page.php";
require_once __DIR__ . "/../404/404.php";

/**
 * Base Enroll Component Class.
 */
abstract class Enroll extends Page {

    protected $first_name = "";
    protected $last_name = "";
    protected $street = "";
    protected $street_number = "";
    protected $zip = "";
    protected $city = "";
    protected $phone = "";
    protected $email = "";
    protected $id_item;
    protected $db;
    protected $user;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router );
        $this->db = $dbMapper;
        $this->id_item = $id;
        $this->user = new User( $dbMapper );
        if( $this->user->is_user_valid() ) {
            $user_data = $this->user->get_user_data();
            $this->first_name = $user_data['first_name'];
            $this->last_name = $user_data['last_name'];
            $this->street = $user_data['street'];
            $this->street_number = $user_data['street_number'];
            $this->zip = $user_data['zip'];
            $this->city = $user_data['city'];
            $this->phone = $user_data['phone'];
            $this->email = $user_data['email'];
        }
    }

    protected function print_name($first_name, $last_name, $prefix = "")
    {
        require __DIR__ . '/v_name.php';
    }

    protected function print_address($street, $street_number, $zip, $city, $prefix = "")
    {
        require __DIR__ . '/v_address.php';
    }

    protected function print_contact($phone, $email)
    {
        require __DIR__ . '/v_contact.php';
    }

    protected function print_ticks()
    {
        require __DIR__ . '/v_ticks.php';
    }

    abstract public function print_view();
}

?>
