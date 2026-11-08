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
    private $comment = "";

    private $show_enroll_warning = false;

    function __construct( $router, $dbMapper, $request, $id ) {
        parent::__construct( $router, $dbMapper, $request, $id );

        if( $_POST['comment'] == "" ) $this->comment = "keine Bemerkung";
        else $this->comment = $_POST['comment'];
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

    private function submit_date_data() {
        $date_data = array(
            'comment' => $this->comment
        );
        // create or update date entry
        $db_data = $this->user->get_class_enroll_data( $this->id_item );
        if( !$this->user->set_class_enroll_data($this->id_item, $date_data, $db_data)) {
            $this->show_enroll_warning = true;
            $this->comment = $db_data['comment'];
        }
        $sql = "SELECT id FROM user_class_dates
            WHERE id_user = :uid AND id_class_dates = :iid";
        $order = $this->db->queryDbFirst($sql, array(
            ":uid" => $this->user->get_user_id(),
            ":iid" => $this->id_item,
        ));
        if($order) $this->id_order = intval($order['id']);
    }

    public function submit_enroll_data() {
        $this->submit_user_data();
        $this->submit_date_data();
        $_SESSION['order_type'] = "course";
        $_SESSION['invoice'] = $this->id_order;
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_payment_class.php';
        } );
    }
}

?>

