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
    private $show_enroll_warning = false;

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

        $this->user = new User( $dbMapper );
        $this->first_name = $_POST['first_name'];
        $this->last_name = $_POST['last_name'];
        $this->street = $_POST['street'];
        $this->street_number = $_POST['street_number'];
        $this->zip = $_POST['zip'];
        $this->city = $_POST['city'];
        $this->phone = $_POST['phone'];
        $this->email = $_POST['email'];
        $this->newsletter = (isset($_POST['newsletter'])) ? 1 : 0;
        if( $_POST['comment'] == "" ) $this->comment = "keine Bemerkung";
        else $this->comment = $_POST['comment'];
        $this->input_custom = "";
        if(isset($_POST['input_custom']))
            $this->input_custom = $_POST['input_custom'];
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

    private function print_food()
    {
        if(!isset($_POST['input_custom'])) return;
        require __DIR__ . "/v_food.php";
    }

    private function get_food_string() {
        $checks = new Checks( $this->db, $this->user->get_user_id(), $this->date_id, $this->input_custom );
        return $checks->get_food_string();
    }

    private function get_newsletter_string() {
        return ($this->newsletter) ? "Ja" : "Nein";
    }

    public function submit_enroll_data() {
        $user_data = array(
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'street' => $this->street,
            'street_number' => $this->street_number,
            'zip' => $this->zip,
            'city' => $this->city,
            'phone' => $this->phone,
            'email' => $this->email,
            'newsletter' => $this->newsletter
        );
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
        // create new or update user entry
        $this->user->set_user_data( $user_data );
        // create or update date entry
        $db_data = $this->user->get_class_enroll_data( $this->date_id );
        if( !$this->user->set_class_enroll_data( $this->date_id, $date_data, $db_data ) ) {
            $this->show_enroll_warning = true;
            $this->comment = $db_data['comment'];
            $this->input_custom = $db_data['check_custom'];
        }
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_payment.php';
        } );
    }
}

?>
