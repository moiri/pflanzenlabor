<?php
require_once __DIR__ . "/check/check.php";

/**
 * Contact Component Class
 */
class Checks {

    private $check_custom = "";

    function __construct( $db, $user_id, $date_id, $input_custom ) {
        $this->db = $db;
        $this->user_id = $user_id;
        $this->date_id = $date_id;
        $this->foods = $db->selectTable( 'food' );
        $this->input_custom = $input_custom;
        if( $input_custom != "" ) $this->check_custom = " checked";
    }

    public function get_food_string() {
        $foods = $this->db->getCheckedFood( $this->user_id, $this->date_id );
        $str = "";
        foreach( $foods as $food ) {
            $str .= $food['name'] . ', ';
        }
        if( $this->input_custom != "" ) $str .= $this->input_custom;
        else if( $str == "" ) $str = "keine Diät";
        else $str = substr( $str, 0, -2 );
        return $str;
    }

    private function print_checks() {
        foreach( $this->foods as $food ) {
            $check = new Check( $this->db, intVal( $food['id'] ), $food['name'], $this->user_id, $this->date_id );
            $check->print_view();
        }
    }

    public function print_view() {
        require __DIR__ . '/v_checks.php';
    }
}

?>
