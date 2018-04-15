<?php
require_once __DIR__ . "/../page.php";
require_once __DIR__ . "/../404/404.php";
require_once __DIR__ . "/../class_closed/class_closed.php";
require_once __DIR__ . "/checks/checks.php";

/**
 * Contact Component Class
 */
class Enroll extends Page {

    private $db;
    private $open = 0;
    private $date;
    private $date_id;
    private $class_name;
    private $class_img;
    private $class_id;
    private $user_id = Null;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router );
        $this->db = $dbMapper;
        $this->date_id = $id;
        $date = $dbMapper->getClassDate( $id );
        if( $date ) {
            $this->date = $date['date'];
            $this->class_name = $date['name'];
            $this->class_img = $date['img'];
            $this->class_id = $date['id_class'];
            $this->open = $date['places_max'] - $date['places_booked'];
            if( $this->open <= 0 ) $this->set_state_closed();
        }
        else $this->set_state_missing();
        $this->first_name = "";
        $this->last_name = "";
        $this->street = "";
        $this->street_number = "";
        $this->zip = "";
        $this->city = "";
        $this->phone = "";
        $this->email = "";
        $this->comment = "";
        $this->check_vegi = "";
        $this->check_gluten = "";
        $this->check_lactose = "";
        $this->check_alc = "";
        $this->check_vegan = "";
        $this->check_custom = "";
        $this->input_custom = "";
        if( isset( $_SESSION['user_id'] )
            && array_key_exists( $this->date_id, $_SESSION['user_id'] ) ) {
            $this->user_id = $_SESSION['user_id'][$this->date_id];
            $user = $dbMapper->selectByUid( 'user', $this->user_id );
            $this->first_name = $user['first_name'];
            $this->last_name = $user['last_name'];
            $this->street = $user['street'];
            $this->street_number = $user['street_number'];
            $this->zip = $user['zip'];
            $this->city = $user['city'];
            $this->phone = $user['phone'];
            $this->email = $user['email'];
            $user_specs = $dbMapper->getUserDateSpecifics( $this->user_id, $this->date_id );
            $this->comment = $user_specs['comment'];
            $this->check_custom = ( $user_specs['check_custom'] != "" ) ? " checked" : "";
            $this->input_custom = $user_specs['check_custom'];
        }
    }

    private function print_check_list() {
        $checks = new Checks( $this->db, $this->user_id, $this->date_id, $this->input_custom );
        $checks->print_view();
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_enroll.php';
        } );
    }
}

?>
