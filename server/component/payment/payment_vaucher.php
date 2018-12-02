
<?php
require_once __DIR__ . '/payment.php';

/**
 * Specific Payment Component Class for Vauchers
 */
class PaymentVaucher extends Payment {

    private $vaucher_name = "";
    private $vaucher_price = "";
    private $comment = "";

    private $delivery_first_name = "";
    private $delivery_last_name = "";
    private $delivery_street = "";
    private $delivery_street_number = "";
    private $delivery_zip = "";
    private $delivery_city = "";

    private $show_enroll_warning = false;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router, $dbMapper, $id );

        $this->delivery_first_name = $this->first_name;
        $this->delivery_last_name = $this->last_name;
        $this->delivery_street = $this->street;
        $this->delivery_street_number = $this->street_number;
        $this->delivery_zip = $this->zip;
        $this->delivery_city = $this->city;
        if(!isset($_POST['dito-delivery']))
        {
            if(isset($_POST['delivery-first_name']))
                $this->delivery_first_name = $_POST['delivery-first_name'];
            if(isset($_POST['delivery-last_name']))
                $this->delivery_last_name = $_POST['delivery-last_name'];
            if(isset($_POST['delivery-street']))
                $this->delivery_street = $_POST['delivery-street'];
            if(isset($_POST['delivery-street_number']))
                $this->delivery_street_number = $_POST['delivery-street_number'];
            if(isset($_POST['delivery-zip']))
                $this->delivery_zip = $_POST['delivery-zip'];
            if(isset($_POST['delivery-city']))
                $this->delivery_city = $_POST['delivery-city'];
        }

        if( $_POST['comment'] == "" ) $this->comment = "keine Bemerkung";
        else $this->comment = $_POST['comment'];
        $vaucher = $dbMapper->getVaucherType( $id );
        if($vaucher) {
            $this->vaucher_name = $vaucher['name'];
            $this->vaucher_price = $vaucher['price'];
            $this->paypal_key = $vaucher['paypal_key'];
        }
        else $this->set_state_missing();
    }

    private function submit_vaucher_data() {
        $order_data = array(
            'id_user'           => $this->user->get_user_id(),
            'id_vaucher_type'   => $this->id_item,
            'comment'           => $this->comment,
            'd_first_name'      => $this->delivery_first_name,
            'd_last_name'       => $this->delivery_last_name,
            'd_street'          => $this->delivery_street,
            'd_street_number'   => $this->delivery_street_number,
            'd_zip'             => $this->delivery_zip,
            'd_city'            => $this->delivery_city,
        );
        if(isset($_SESSION['invoice']))
        {
            $this->db->updateByUid("user_vauchers_order", $order_data, $_SESSION['invoice']);
            $this->id_order = $_SESSION['invoice'];
        }
        else
            $this->id_order = $this->db->insert("user_vauchers_order", $order_data);
    }

    public function submit_enroll_data() {
        $this->submit_user_data();
        $this->submit_vaucher_data();
        $_SESSION['order_type'] = "vaucher";
        $_SESSION['invoice'] = $this->id_order;
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_payment_vaucher.php';
        } );
    }
}

?>

