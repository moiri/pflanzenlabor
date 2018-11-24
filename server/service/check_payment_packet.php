<?php
require_once __DIR__ . '/check_payment.php';

/**
 * Specific Check Payment Class for Packets
 */
class CheckPaymentPacket extends CheckPayment {

    private $item_id;
    private $order_id;
    private $packet_name;
    private $packet_price;
    private $comment;

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

    function __construct($router, $db, $item_id, $uid) {
        parent::__construct($router, $db, $uid);
        $this->item_id = $item_id;
        $packet = $this->db->getPacket($item_id);
        if($packet && isset($_SESSION['order_data']))
        {
            $this->packet_name = $packet['name'];
            $this->packet_price = $packet['price'];
        }
        else
            $this->na = true;

        if(isset($_SESSION['order_data'])
                && $_SESSION['order_data'] !== false)
        {
            $this->comment = $_SESSION['order_data']['comment'];
            $this->delivery_first_name = $_SESSION['order_data']['d_first_name'];
            $this->delivery_last_name = $_SESSION['order_data']['d_last_name'];
            $this->delivery_street = $_SESSION['order_data']['d_street'];
            $this->delivery_street_number = $_SESSION['order_data']['d_street_number'];
            $this->delivery_zip = $_SESSION['order_data']['d_zip'];
            $this->delivery_city = $_SESSION['order_data']['d_city'];
            $this->gift_first_name = $_SESSION['order_data']['g_first_name'];
            $this->gift_last_name = $_SESSION['order_data']['g_last_name'];
            $this->gift_street = $_SESSION['order_data']['g_street'];
            $this->gift_street_number = $_SESSION['order_data']['g_street_number'];
            $this->gift_zip = $_SESSION['order_data']['g_zip'];
            $this->gift_city = $_SESSION['order_data']['g_city'];
        }
    }

    public function enroll_user($payment_type, $is_payed = false)
    {
        if($_SESSION['order_data'] === false) return false;
        $order_data = $_SESSION['order_data'];
        $order_data['id_user'] = $_SESSION['user_id'];
        $order_data['id_packets'] = $this->item_id;
        $order_data['is_payed'] = (int)$is_payed;
        $order_data['id_payment'] = $payment_type;
        $_SESSION['order_data'] = false;

        return $this->db->insert("user_packets_order", $order_data);
    }

    public function is_open()
    {
        return true;
    }

    public function is_pending()
    {

    }

    public function send_mail($user, $payment_type) {
        $from = "info@pflanzenlabor.ch";
        if(!DEBUG) $bcc = "Buchhaltung Pflanzenlabor <buha@pflanzenlabor.ch>";
        else $bcc = "";
        $name = $user['first_name'] . " " . $user['last_name'];
        $to = $name . " <" . $user['email'] . ">";
        $subject = "Pflanzenlabor - Deine Bestellung fürs Pflanzenpäckli Abo: ". $this->packet_name;

        $headers   = array();
        $headers[] = "MIME-Version: 1.0";
        $headers[] = "Content-type: text/plain; charset=utf-8";
        $headers[] = "From: {$from}";
        $headers[] = "Bcc: {$bcc}";
        $headers[] = "Reply-To: {$from}";
        $headers[] = "Subject: {$subject}";
        $headers[] = "X-Mailer: PHP/".phpversion();

        mail( $to, $subject, $this->get_email_content($user, $payment_type),
            implode( "\r\n", $headers ) );
    }

    private function get_email_content($user, $payment_type)
    {
        $packet_url = $this->router->generate('packets');
        $contact_url = $this->router->generate('contact');
        $newsletter = ($user['newsletter'] == 1) ? "Ja" : "Nein";
        ob_start();
        include(__DIR__ . "/../email/thanks_packet.php");
        $content = ob_get_contents();
        ob_end_clean();
        return $content;
    }

    private function print_gift_address()
    {
        if(in_array($this->item_id, GIFT_PACKET_IDS))
            require __DIR__ . "/../email/tpl_gift_address.php";
    }
}
