<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Payment extends Page {

    private $open = 0;
    private $na = true;
    private $invalid = true;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router );
        if( !isset( $_POST['first_name'] ) || !isset( $_POST['last_name'] )
                || !isset( $_POST['street'] ) || !isset( $_POST['street_number'] )
                || !isset( $_POST['zip'] ) || !isset( $_POST['city'] )
                || !isset( $_POST['phone'] ) || !isset( $_POST['email'] ) ) {
            return;
        }
        if( ( $_POST['first_name'] == "" ) || ( $_POST['last_name'] == "" )
                || ( $_POST['street'] == "" ) || ( $_POST['street_number'] == "" )
                || ( $_POST['zip'] == "" ) || ( $_POST['city'] == "" )
                || ( $_POST['phone'] == "" ) || ( $_POST['email'] == "" ) ) {
            return;
        }
        $this->invalid = false;
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
            $this->na = false;
            $this->date = $date['date'];
            $this->class_name = $date['name'];
            $this->class_cost = $date['cost'];
            $this->open = $date['places_max'] - $date['places_booked'];
        }
    }

    private function get_food_string() {
        $str = "";
        if( isset($_POST['check_vegi'] ) )
            $str = $this->append_str( $str, $_POST['check_vegi'] );
        if( isset($_POST['check_gluten'] ) )
            $str = $this->append_str( $str, $_POST['check_gluten'] );
        if( isset($_POST['check_lactose'] ) )
            $str = $this->append_str( $str, $_POST['check_lactose'] );
        if( isset($_POST['check_alc'] ) )
            $str = $this->append_str( $str, $_POST['check_alc'] );
        if( isset($_POST['check_vegan'] ) )
            $str = $this->append_str( $str, $_POST['check_vegan'] );
        if( isset($_POST['check_custom'] ) )
            $str = $this->append_str( $str, $_POST['input_custom'] );

        if( $str == "" ) return "nichts spezielles";
        else return $str;
    }

    private function append_str( $str, $append_str ) {
        if( $str == "" ) return $append_str;
        else return $str . ", " . $append_str;
    }

    public function print_view() {
        if( $this->invalid ) require __DIR__ . '/v_invalid.php';
        else if( $this->na ) require __DIR__ . '/../404/v_404.php';
        else if( $this->open <= 0 ) require __DIR__ . '../enroll/v_closed.php';
        else require __DIR__ . '/v_payment.php';
    }

    public function submit_enroll_data() {
        $data = array(
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'street' => $this->street,
            'street_number' => $this->street_number,
            'zip' => $this->zip,
            'city' => $this->city,
            'phone' => $this->phone,
            'email' => $this->email,
            'check_vegi' => (int)isset($_POST['check_vegi'] ), 
            'check_gluten' => (int)isset($_POST['check_gluten'] ),
            'check_lactose' => (int)isset($_POST['check_lactose'] ),
            'check_alc' => (int)isset($_POST['check_alc'] ),
            'check_vegan' => (int)isset($_POST['check_vegan'] ),
            'check_custom' => $_POST['input_custom'],
            'comment' => $_POST['comment'],
            'id_class_date' => $this->date_id
        );
        if( isset( $_SESSION['user_id'] ) )
            $this->db->updateByUid( 'user', $data, $_SESSION['user_id'] );
        else
            $_SESSION['user_id'] = $this->db->insert( "user", $data );
    }
}

?>






