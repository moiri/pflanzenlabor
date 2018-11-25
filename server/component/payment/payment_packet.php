<?php
require_once __DIR__ . '/payment.php';

/**
 * Specific Payment Component Class for Packets
 */
class PaymentPacket extends Payment {

    private $packet_name = "";
    private $packet_price = "";

    private $delivery_first_name = "";
    private $delivery_last_name = "";
    private $delivery_street = "";
    private $delivery_street_number = "";
    private $delivery_zip = "";
    private $delivery_city = "";

    private $gift_first_name = "";
    private $gift_last_name = "";
    private $gift_street = "";
    private $gift_street_number = "";
    private $gift_zip = "";
    private $gift_city = "";

    private $show_enroll_warning = false;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router, $dbMapper, $id );

        if(!isset($_SESSION['order_data'])) $_SESSION['order_data'] = false;
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
        if($this->has_gift_address())
        {
            $this->gift_first_name = $this->first_name;
            $this->gift_last_name = $this->last_name;
            $this->gift_street = $this->street;
            $this->gift_street_number = $this->street_number;
            $this->gift_zip = $this->zip;
            $this->gift_city = $this->city;
            if(!isset($_POST['dito-gift']))
            {
                if(isset($_POST['gift-first_name']))
                    $this->gift_first_name = $_POST['gift-first_name'];
                if(isset($_POST['gift-last_name']))
                    $this->gift_last_name = $_POST['gift-last_name'];
                if(isset($_POST['gift-street']))
                    $this->gift_street = $_POST['gift-street'];
                if(isset($_POST['gift-street_number']))
                    $this->gift_street_number = $_POST['gift-street_number'];
                if(isset($_POST['gift-zip']))
                    $this->gift_zip = $_POST['gift-zip'];
                if(isset($_POST['gift-city']))
                    $this->gift_city = $_POST['gift-city'];
            }
        }

        if( $_POST['comment'] == "" ) $this->comment = "keine Bemerkung";
        else $this->comment = $_POST['comment'];
        $packet = $dbMapper->getPacket( $id );
        if($packet) {
            $this->packet_name = $packet['name'];
            $this->packet_price = $packet['price'];
        }
        else $this->set_state_missing();
    }

    private function submit_packet_data() {
        $_SESSION['order_data'] = array(
            'comment'           => $this->comment,
            'd_first_name'      => $this->delivery_first_name,
            'd_last_name'       => $this->delivery_last_name,
            'd_street'          => $this->delivery_street,
            'd_street_number'   => $this->delivery_street_number,
            'd_zip'             => $this->delivery_zip,
            'd_city'            => $this->delivery_city,
            'g_first_name'      => $this->gift_first_name,
            'g_last_name'       => $this->gift_last_name,
            'g_street'          => $this->gift_street,
            'g_street_number'   => $this->gift_street_number,
            'g_zip'             => $this->gift_zip,
            'g_city'            => $this->gift_city,
        );
    }

    private function has_gift_address()
    {
        return in_array($this->id_item, GIFT_PACKET_IDS);
    }

    public function submit_enroll_data() {
        $this->submit_user_data();
        $this->submit_packet_data();
    }

    public function print_view() {
        $this->print_page( function() {
            $display = $this->has_gift_address() ? "" : "d-none";
            require __DIR__ . '/v_payment_packet.php';
        } );
    }
}

?>
