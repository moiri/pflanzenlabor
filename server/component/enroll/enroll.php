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
    private $id_type;
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
            $this->id_type = $date['id_type'];
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
        $user = new User( $dbMapper );
        if( $user->is_user_valid() ) {
            $this->user_id = $user->get_user_id();
            $user_data = $user->get_user_data();
            $this->first_name = $user_data['first_name'];
            $this->last_name = $user_data['last_name'];
            $this->street = $user_data['street'];
            $this->street_number = $user_data['street_number'];
            $this->zip = $user_data['zip'];
            $this->city = $user_data['city'];
            $this->phone = $user_data['phone'];
            $this->email = $user_data['email'];
            $user_specs = $user->get_class_enroll_data( $this->date_id );
            if( $user_specs ) {
                $this->comment = $user_specs['comment'];
                $this->check_custom = ( $user_specs['check_custom'] != "" ) ? " checked" : "";
                $this->input_custom = $user_specs['check_custom'];
            }
        }
    }

    private function print_check_list() {
        if( $this->id_type == CLASS_TYPE_WALK_ID ) return;
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
