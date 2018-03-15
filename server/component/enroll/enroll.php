<?php
require_once __DIR__ . '/../page.php';

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
            $user = $dbMapper->selectByUid( 'user', $_SESSION['user_id'][$this->date_id] );
            $this->first_name = $user['first_name'];
            $this->last_name = $user['last_name'];
            $this->street = $user['street'];
            $this->street_number = $user['street_number'];
            $this->zip = $user['zip'];
            $this->city = $user['city'];
            $this->phone = $user['phone'];
            $this->email = $user['email'];
            $this->comment = $user['comment'];
            $this->check_vegi = ( $user['check_vegi'] == '1' ) ? " checked" : "";
            $this->check_gluten = ( $user['check_gluten'] == '1' ) ? " checked" : "";
            $this->check_lactose = ( $user['check_lactose'] == '1' ) ? " checked" : "";
            $this->check_alc = ( $user['check_alc'] == '1' ) ? " checked" : "";
            $this->check_vegan = ( $user['check_vegan'] == '1' ) ? " checked" : "";
            $this->check_custom = ( $user['check_custom'] != "" ) ? " checked" : "";
            $this->input_custom = $user['check_custom'];
        }
    }

    public function print_view() {
        if( $this->na ) require __DIR__ . '/../404/v_404.php';
        else if( $this->open <= 0 ) require __DIR__ . '/v_closed.php';
        else require __DIR__ . '/v_enroll.php';
    }
}

?>
<?php
?>

