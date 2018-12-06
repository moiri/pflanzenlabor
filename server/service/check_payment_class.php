<?php
require_once __DIR__ . '/check_payment.php';

/**
 * Specific Check Payment Class for Coureses
 */
class CheckPaymentClass extends CheckPayment
{
    private $item_id;
    private $comment = "";
    private $check_custom = "";
    private $open = 0;
    private $class_cost;
    private $class_type;
    private $class_name;
    private $class_date;

    function __construct( $router, $db, $invoice) {
        parent::__construct($router, $db, $invoice);
        $order_data = $this->db->getCourseOrder($invoice);
        if($order_data)
        {
            $this->payment_id = $order_data['id_payment'];
            $this->user_id = intval($order_data['id_user']);
            $this->item_id = intval($order_data['id_class_dates']);
            $this->comment = $order_data['comment'];
            $this->check_custom = $order_data['check_custom'];
        }
        else $this->na = true;

        $date = $db->getClassDate($this->item_id);
        if($date) {
            $this->class_type = $date['type'];
            $this->class_type_id = $date['id_type'];
            $this->class_name = $date['name'];
            $this->class_date = $date['date'];
            $this->open = $date['places_max'] - $date['places_booked'];
            $cost = $db->getClassCost($date['id_class']);
            if($cost) {
                $this->class_cost = $cost['content'];
            }
        }
        else $this->na = true;
    }

    public function enroll_user($payment_type, $is_payed = false)
    {
        if($this->db->incrementUserCount($this->item_id))
        {
            return $this->db->markUserEnrolled($this->user_id, $this->item_id,
                $payment_type, $is_payed);
        }
        return false;
    }

    public function is_concluded()
    {
        $sql = "SELECT is_booked FROM user_class_dates WHERE id=:id";
        $res = $this->db->queryDbFirst($sql, array(":id" => $this->invoice));
        if($res && $res['is_booked'] == "1")
            return true;
        else
            return false;
    }

    public function is_pending($table = "")
    {
        return parent::is_pending('user_class_dates');
    }

    public function is_open()
    {
        return ($this->open > 0);
    }

    public function send_mail($user, $payment_type) {
        $from = "info@pflanzenlabor.ch";
        if( !DEBUG ) $bcc = "Buchhaltung Pflanzenlabor <buha@pflanzenlabor.ch>";
        else $bcc = "";
        $name = $user['first_name'] . " " . $user['last_name'];
        $to = '"' . $name . '" <' . $user['email'] . '>';
        $subject_str = "Pflanzenlabor - Deine Anmedlung für: ". $this->class_type . " " . $this->class_name;
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

    private function get_email_content($user, $payment_type)
    {
        $class_url = $this->router->generate('class',
            array("id" => $this->item_id));
        $contact_url = $this->router->generate('contact');
        $newsletter = ($user['newsletter'] == 1) ? "Ja" : "Nein";
        ob_start();
        include(__DIR__ . "/../email/thanks_class.php");
        $content = ob_get_contents();
        ob_end_clean();
        return $content;
    }

    private function print_diet()
    {
        if( $this->class_type_id == CLASS_TYPE_WALK_ID ) return;
        $checks = new Checks($this->db, $this->user_id, $this->item_id,
            $this->check_custom);
        require __DIR__ . "/../email/tpl_diet.php";
    }

    private function print_bill($payment_type)
    {
        if( $payment_type != PAYMENT_BILL ) return;
        require __DIR__ . "/../email/tpl_bill.php";
    }

    public function check_vaucher($vaucher_code) {
        $vaucher = $this->db->getVaucher($vaucher_code);
        if($vaucher)
        {
            if($vaucher['type'] !== $this->class_type)
                return "Der Gutschein ist nur gültig für: " . $vaucher['type']. ". Falls Du den Gutschein trotzdem anrechen lassen willst, kontaktiere mich bitte über das Kontaktformular.";
            if($this->db->claimVaucher($this->user_id, $this->item_id, $vaucher['id']))
                return true;
            else
                return "Es ist ein Fehler aufgetereten. Bitte kontaktiere mich über das Kontaktformular damit ich dem Problem auf den Grund gehen kann.";
        }
        else
            return "Der Gutschein Code ist ungültig. Versichere dich, dass Du die Zeichenfolge richtig eingegeben hast. Bei Fragen benutze bitte das Kontaktformular.";
    }
}
