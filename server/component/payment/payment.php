<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . "./../404/404.php";
require_once __DIR__ . "./../class_closed/class_closed.php";
require_once __DIR__ . "./../invalid/invalid.php";

/**
 * Contact Component Class
 */
class Payment extends Page {

    private $open = 0;
    private $user_id = Null;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router );
        if( !isset( $_POST['first_name'] ) || !isset( $_POST['last_name'] )
                || !isset( $_POST['street'] ) || !isset( $_POST['street_number'] )
                || !isset( $_POST['zip'] ) || !isset( $_POST['city'] )
                || !isset( $_POST['phone'] ) || !isset( $_POST['email'] ) ) {

            $this->set_state_invalid();
            return;
        }
        if( ( $_POST['first_name'] == "" ) || ( $_POST['last_name'] == "" )
                || ( $_POST['street'] == "" ) || ( $_POST['street_number'] == "" )
                || ( $_POST['zip'] == "" ) || ( $_POST['city'] == "" )
                || ( $_POST['phone'] == "" ) || ( $_POST['email'] == "" ) ) {
            $this->set_state_invalid();
            return;
        }

        if( isset( $_SESSION['user_id'] )
                && array_key_exists( $id, $_SESSION['user_id'] ) )
            $this->user_id = $_SESSION['user_id'][$id];
        $this->first_name = $_POST['first_name'];
        $this->last_name = $_POST['last_name'];
        $this->street = $_POST['street'];
        $this->street_number = $_POST['street_number'];
        $this->zip = $_POST['zip'];
        $this->city = $_POST['city'];
        $this->phone = $_POST['phone'];
        $this->email = $_POST['email'];
        if( $_POST['comment'] == "" ) $this->comment = "keine Bemerkung";
        else $this->comment = $_POST['comment'];
        $this->db = $dbMapper;
        $this->date_id = $id;
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

    private function get_food_string() {
        $checks = new Checks( $this->db, $this->user_id, $this->date_id, $_POST['input_custom'] );
        return $checks->get_food_string();
    }

    public function submit_enroll_data() {
        $user_exists = false;
        if( $this->user_id != Null ) $user_exists = true;

        $user_data = array(
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'street' => $this->street,
            'street_number' => $this->street_number,
            'zip' => $this->zip,
            'city' => $this->city,
            'phone' => $this->phone,
            'email' => $this->email
            /* 'check_custom' => $_POST['input_custom'], */
            /* 'comment' => $_POST['comment'], */
            /* 'id_class_date' => $this->date_id */
        );
        // create new or update user
        if( $user_exists ) {
            $this->db->updateByUid( 'user', $user_data, $this->user_id );
            $this->db->updateUserClassDates( $this->user_id, $this->date_id, $_POST['input_custom'], $_POST['comment'] );
        }
        else {
            $this->user_id = $this->db->insert( "user", $user_data );
            if( isset( $_SESSION['user_id'] ) ) $_SESSION['user_id'][$this->date_id] = $this->user_id;
            else $_SESSION['user_id'] = array( $this->date_id => $this->user_id );
            $this->db->insert( 'user_class_dates', array(
                'id_user' => $this->user_id,
                'id_class_dates' => $this->date_id,
                'check_custom' => $_POST['input_custom'],
                'comment' => $_POST['comment'] )
            );
        }
        $foods = $this->db->selectTable( 'food' );
        foreach( $foods as $food ) {
            $id_food = intVal( $food['id'] );
            $food_idx = 'check_' . $id_food;
            if( $user_exists ) {
                $this->db->updateUserClassDatesFood( $this->user_id, $this->date_id, $id_food, (int)isset( $_POST[$food_idx] ) );
            }
            else {
                $this->db->insert( "user_class_dates_food", array(
                    'id_class_dates' => $this->date_id,
                    'id_user' => $this->user_id,
                    'id_food' => $id_food,
                    'is_checked' => (int)isset( $_POST[$food_idx] ) )
                );
            }
        }
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_payment.php';
        } );
    }
}

?>
