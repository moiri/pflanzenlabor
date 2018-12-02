<?php
require_once __DIR__ . '/check_payment.php';

/**
 * Specific Check Payment Class for Vauchers
 */
class CheckPaymentVaucher extends CheckPayment {

    private $item_id;
    private $vaucher_name;
    private $vaucher_price;
    private $comment;

    private $delivery_first_name = "";
    private $delivery_last_name = "";
    private $delivery_street = "";
    private $delivery_street_number = "";
    private $delivery_zip = "";
    private $delivery_city = "";

    function __construct($router, $db, $item_id, $uid) {
        parent::__construct($router, $db, $uid);
        $this->item_id = $item_id;
        $vaucher = $this->db->getVaucherType($item_id);
        if($vaucher && isset($_SESSION['vaucher_order_data']))
        {
            $this->vaucher_name = $vaucher['name'];
            $this->vaucher_price = $vaucher['price'];
        }
        else
            $this->na = true;

        if(isset($_SESSION['vaucher_order_data'])
                && $_SESSION['vaucher_order_data'] !== false)
        {
            $this->comment = $_SESSION['vaucher_order_data']['comment'];
            $this->delivery_first_name = $_SESSION['vaucher_order_data']['d_first_name'];
            $this->delivery_last_name = $_SESSION['vaucher_order_data']['d_last_name'];
            $this->delivery_street = $_SESSION['vaucher_order_data']['d_street'];
            $this->delivery_street_number = $_SESSION['vaucher_order_data']['d_street_number'];
            $this->delivery_zip = $_SESSION['vaucher_order_data']['d_zip'];
            $this->delivery_city = $_SESSION['vaucher_order_data']['d_city'];
        }
    }

    public function clear_payment_session()
    {
        parent::clear_payment_session();
        $_SESSION['vaucher_order_data'] = null;
    }

    public function enroll_user($payment_type, $is_payed = false)
    {
        if($_SESSION['vaucher_order_data'] === false) return false;
        $order_data = $_SESSION['vaucher_order_data'];
        $vaucher_id = $this->create_vaucher_code();
        $order_data['id_user'] = $_SESSION['user_id'];
        $order_data['id_vauchers'] = $vaucher_id;
        $order_data['is_payed'] = (int)$is_payed;
        $order_data['id_payment'] = $payment_type;
        $_SESSION['vaucher_order_data'] = false;

        $this->invoice = $this->db->insert("user_vauchers_order", $order_data);
        return $this->invoice;
    }

    public function is_open()
    {
        return true;
    }

    public function is_pending($table = "")
    {
        return parent::is_pending('user_vauchers_order');
    }

    public function send_mail($user, $payment_type) {
        $from = "info@pflanzenlabor.ch";
        if(!DEBUG) $bcc = "Buchhaltung Pflanzenlabor <buha@pflanzenlabor.ch>";
        else $bcc = "";
        $name = $user['first_name'] . " " . $user['last_name'];
        $to = $name . " <" . $user['email'] . ">";
        $subject = "Pflanzenlabor - Dein Gutschein Kauf: ". $this->vaucher_name;

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

    private function create_random_string($length = 6) {
        $str = "";
        $characters = array_merge(range('A','Z'), range('a','z'), range('0','9'));
        $max = count($characters) - 1;
        for ($i = 0; $i < $length; $i++) {
            $rand = mt_rand(0, $max);
            $str .= $characters[$rand];
        }
        return $str;
    }

    private function create_vaucher_code()
    {
        return $this->db->insert("vauchers", array(
            'id_vaucher_type' => $this->item_id,
            'code' => $this->create_random_string(8),
        ));
    }

    private function get_email_content($user, $payment_type)
    {
        $vaucher_url = $this->router->generate('vauchers');
        $contact_url = $this->router->generate('contact');
        $newsletter = ($user['newsletter'] == 1) ? "Ja" : "Nein";
        ob_start();
        include(__DIR__ . "/../email/thanks_vaucher.php");
        $content = ob_get_contents();
        ob_end_clean();
        return $content;
    }
}
