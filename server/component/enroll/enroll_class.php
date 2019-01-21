<?php
require_once __DIR__ . "/enroll.php";
require_once __DIR__ . "/../class_closed/class_closed.php";
require_once __DIR__ . "/checks/checks.php";

/**
 * Specific Enroll Component Class to enroll for Classes.
 */
class EnrollClass extends Enroll {

    private $open = 0;
    private $date;
    private $id_type;
    private $class_name;
    private $class_img;
    private $class_id;
    private $class_cost;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router, $dbMapper, $id );
        $this->db = $dbMapper;
        $date = $dbMapper->getClassDate( $id );
        if( $date ) {
            $this->date = $date['date'];
            $this->class_name = $date['name'];
            $this->class_img = $date['img'];
            $this->class_id = intval($date['id_class']);
            $cost = $dbMapper->getClassCost( $this->class_id );
            if( $cost ) {
                $this->class_cost = $cost['content'];
            }
            $this->open = $date['places_max'] - $date['places_booked'];
            $this->id_type = $date['id_type'];
            if( $this->open <= 0 ) $this->set_state_closed();
        }
        else $this->set_state_missing();
        $this->comment = "";
        $this->check_vegi = "";
        $this->check_gluten = "";
        $this->check_lactose = "";
        $this->check_alc = "";
        $this->check_vegan = "";
        $this->check_custom = "";
        $this->input_custom = "";
        if( $this->user->is_user_valid() ) {
            $user_specs = $this->user->get_class_enroll_data( $this->id_item );
            if( $user_specs ) {
                $this->comment = $user_specs['comment'];
                $this->check_custom = ( $user_specs['check_custom'] != "" ) ? " checked" : "";
                $this->input_custom = $user_specs['check_custom'];
            }
        }
    }

    private function print_check_list() {
        if( $this->id_type == CLASS_TYPE_WALK_ID ) return;
        $checks = new Checks( $this->db, $this->user->get_user_id(), $this->id_item, $this->input_custom );
        $checks->print_view();
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_enroll_class.php';
        } );
    }
}

?>
