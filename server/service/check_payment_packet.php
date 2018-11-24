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

    function __construct($router, $db, $order_id, $uid) {
        parent::__construct($router, $db, $uid);
        $this->order_id = $order_id;
        $sql = "SELECT p.name, p.price, p.id, upo.comment,
            upo.d_first_name, upo.d_last_name, upo.d_street, upo.d_street_number, upo.d_zip, upo.d_city,
            upo.g_first_name, upo.g_last_name, upo.g_street, upo.g_street_number, upo.g_zip, upo.g_city
            FROM user_packets_order AS upo
            LEFT JOIN packets AS p ON p.id = upo.id_packets
            WHERE upo.id = :id";
        $packet = $this->db->queryDbFirst($sql, array(':id' => $order_id));
        if($packet)
        {
            $this->item_id = intval($packet['id']);
            $this->comment = $packet['comment'];
            $this->packet_name = $packet['name'];
            $this->packet_price = $packet['price'];
            $this->delivery_first_name = $packet['d_first_name'];
            $this->delivery_last_name = $packet['d_last_name'];
            $this->delivery_street = $packet['d_street'];
            $this->delivery_street_number = $packet['d_street_number'];
            $this->delivery_zip = $packet['d_zip'];
            $this->delivery_city = $packet['d_city'];
            $this->gift_first_name = $packet['g_first_name'];
            $this->gift_last_name = $packet['g_last_name'];
            $this->gift_street = $packet['g_street'];
            $this->gift_street_number = $packet['g_street_number'];
            $this->gift_zip = $packet['g_zip'];
            $this->gift_city = $packet['g_city'];
        }
        else $this->na = true;
    }

    public function enroll_user($payment_type, $is_payed = false)
    {
        return $this->db->updateByUid('user_packets_order', array(
            'is_ordered' => 1,
            'is_payed' => (int)$is_payed,
            'id_payment' => $payment_type
        ), $this->order_id);
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
