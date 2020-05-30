<?php
require_once __DIR__ . '/check_payment.php';

/**
 * Specific Check Payment Class for Packets
 */
class CheckPaymentPacket extends CheckPayment {

    private $item_id;
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

    function __construct($router, $db, $invoice) {
        parent::__construct($router, $db, $invoice);
        $order_data = $this->db->getPacketOrder($invoice);
        if($order_data)
        {
            $this->payment_id = $order_data['id_payment'];
            $this->user_id = intval($order_data['id_user']);
            $this->item_id = intval($order_data['id_packets']);
            $this->comment = $order_data['comment'];
            $this->delivery_first_name = $order_data['d_first_name'];
            $this->delivery_last_name = $order_data['d_last_name'];
            $this->delivery_street = $order_data['d_street'];
            $this->delivery_street_number = $order_data['d_street_number'];
            $this->delivery_zip = $order_data['d_zip'];
            $this->delivery_city = $order_data['d_city'];
            $this->gift_first_name = $order_data['g_first_name'];
            $this->gift_last_name = $order_data['g_last_name'];
            $this->gift_street = $order_data['g_street'];
            $this->gift_street_number = $order_data['g_street_number'];
            $this->gift_zip = $order_data['g_zip'];
            $this->gift_city = $order_data['g_city'];
        }
        else
            $this->na = true;

        $packet = $this->db->getPacket($this->item_id);
        if($packet)
        {
            $this->packet_name = $packet['name'];
            $this->packet_price = $packet['price'];
        }
        else
            $this->na = true;

    }

    public function enroll_user($payment_type, $is_payed = false)
    {
        return $this->db->updateByUid("user_packets_order", array(
            "id_payment" => $payment_type,
            "is_payed" => (int)$is_payed,
            "is_ordered" => 1
        ), $this->invoice);
    }

    public function is_open()
    {
        return true;
    }

    public function is_concluded()
    {
        $sql = "SELECT is_ordered FROM user_packets_order WHERE id=:id";
        $res = $this->db->queryDbFirst($sql, array(":id" => $this->invoice));
        if($res && $res['is_ordered'] == "1")
            return true;
        else
            return false;
    }

    public function is_pending($table = "")
    {
        return parent::is_pending('user_packets_order');
    }

    protected function send_mail($user, $payment_type, $to="") {
        $subject_str = "Pflanzenlabor - Deine Bestellung fürs Pflanzenpäckli Abo: ". $this->packet_name;
        $content = $this->get_email_content($user, $payment_type);
        $this->send_mail_base($user, $payment_type, $subject_str, $content, $to);
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
