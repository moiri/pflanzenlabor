<?php
require_once __DIR__ . '/payment.php';

/**
 * Specific Payment Component Class for Classes
 */
class PaymentClass extends Payment {

    private $date;
    private $class_name;
    private $class_cost;
    private $open = 0;
    private $paypal_key;

    private $show_enroll_warning = false;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router, $dbMapper, $id );

        if( $_POST['comment'] == "" ) $this->comment = "keine Bemerkung";
        else $this->comment = $_POST['comment'];
        $this->input_custom = "";
        if(isset($_POST['input_custom']))
            $this->input_custom = $_POST['input_custom'];
        $date = $dbMapper->getClassDate( $id );
        if( $date ) {
            $this->date = $date['date'];
            $this->class_name = $date['name'];
            $this->class_cost = "";
            $this->open = $date['places_max'] - $date['places_booked'];
            if( $this->open <= 0 ) $this->set_state_closed();
            $this->paypal_key = $date['paypal_key'];
            $cost = $dbMapper->getClassCost( $date['id_class'] );
            if( $cost ) {
                $this->class_cost = $cost['content'];
            }
        }
        else $this->set_state_missing();
    }

    private function print_food()
    {
        if(!isset($_POST['input_custom'])) return;
        require __DIR__ . "/v_food.php";
    }

    private function get_food_string() {
        $checks = new Checks( $this->db, $this->user->get_user_id(), $this->id_item, $this->input_custom );
        return $checks->get_food_string();
    }

    private function submit_date_data() {
        $foods = $this->db->selectTable( 'food' );
        $date_data = array(
            'input_custom' => $this->input_custom,
            'comment' => $this->comment,
            'foods' => array()
        );
        foreach( $foods as $food ) {
            $food_id = intVal( $food['id'] );
            $food_idx = 'check_' . $food_id;
            $date_data['foods'][$food_id] = (int)isset( $_POST[$food_idx] );
        }
        // create or update date entry
        $db_data = $this->user->get_class_enroll_data( $this->id_item );
        if( !$this->user->set_class_enroll_data( $this->id_item, $date_data, $db_data ) ) {
            $this->show_enroll_warning = true;
            $this->comment = $db_data['comment'];
            $this->input_custom = $db_data['check_custom'];
        }
    }

    public function submit_enroll_data() {
        $this->submit_user_data();
        $this->submit_date_data();
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_payment_class.php';
        } );
    }
}

?>

