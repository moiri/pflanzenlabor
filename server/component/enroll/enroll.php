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
    private $na = true;
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
            $this->na = false;
            $this->date = $date['date'];
            $this->class_name = $date['name'];
            $this->class_img = $date['img'];
            $this->class_id = $date['id_class'];
            $this->open = $date['places_max'] - $date['places_booked'];
        }
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

    public function is_class_open() {
        return ( $this->open > 0 );
    }

    public function is_date_existing() {
        return ( !$this->na );
    }

    private function print_check_list() {
        $checks = new Checks( $this->db, $this->user_id, $this->date_id, $this->input_custom );
        $checks->print_view();
    }

    public function print_view() {
        if( !$this->is_date_existing() ) {
            $missing = new Missing( $this->router );
            $missing->print_view();
        }
        else if( !$this->is_class_open() ) {
            $closed = new ClassClosed( $this->router );
            $closed->print_view();
        }
        else $this->print_page( function() {
            require __DIR__ . '/v_enroll.php';
        } );
    }
}

?>
