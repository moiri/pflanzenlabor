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

    function __construct($router, $db, $invoice) {
        parent::__construct($router, $db, $invoice);

        $order_data = $this->db->getVaucherOrder($invoice);
        if($order_data)
        {
            $this->payment_id = $order_data['id_payment'];
            $this->user_id = intval($order_data['id_user']);
            $this->item_id = intval($order_data['id_vaucher_type']);
            $this->comment = $order_data['comment'];
            $this->delivery_first_name = $order_data['d_first_name'];
            $this->delivery_last_name = $order_data['d_last_name'];
            $this->delivery_street = $order_data['d_street'];
            $this->delivery_street_number = $order_data['d_street_number'];
            $this->delivery_zip = $order_data['d_zip'];
            $this->delivery_city = $order_data['d_city'];
        }
        else
            $this->na = true;

        $vaucher = $this->db->getVaucherType($this->item_id);
        if($vaucher)
        {
            $this->vaucher_name = $vaucher['name'];
            $this->vaucher_price = $vaucher['price'];
        }
        else
            $this->na = true;
    }

    public function enroll_user($payment_type, $is_payed = false)
    {
        $vaucher_id = $this->create_vaucher_code();
        return $this->db->updateByUid("user_vauchers_order", array(
            "id_vauchers" => $vaucher_id,
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
        $sql = "SELECT is_ordered FROM user_vauchers_order WHERE id=:id";
        $res = $this->db->queryDbFirst($sql, array(":id" => $this->invoice));
        if($res && $res['is_ordered'] == "1")
            return true;
        else
            return false;
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
        $subject_str = "Pflanzenlabor - Dein Gutschein Kauf: ". $this->vaucher_name;
        $subject = '=?utf-8?B?'.base64_encode(strip_tags($subject_str)).'?=';

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
