<?php
require_once __DIR__ . '/../component/enroll/checks/checks.php';
require_once __DIR__ . '/paypalIPN.php';

/**
 * Base class to check for payment.
 */
abstract class CheckPayment {

    protected $payment_id = Null;
    protected $user_id = Null;
    protected $db = Null;
    protected $router = Null;
    protected $invoice = Null;
    protected $na = false;

    function __construct($router, $db, $invoice) {
        $this->router = $router;
        $this->db = $db;
        $this->invoice = $invoice;
    }

    public function clear_payment_session()
    {
        $_SESSION['invoice'] = null;
        $_SESSION['order_type'] = null;
    }

    public function get_payment_type()
    {
        if($this->payment_id !== null)
            return intval($this->payment_id);
        else
            return PAYMENT_BILL;
    }

    public function print_payment_type($payment_type) {
        if($payment_type === PAYMENT_BILL)
            return "Rechnung";
        if($payment_type === PAYMENT_PAYPAL)
            return "PayPal";
        if($payment_type === PAYMENT_VAUCHER)
            return "Gutschein";
    }

    public function get_user_id()
    {
        return $this->user_id;
    }

    public function is_item_valid()
    {
        return ($this->na === false);
    }

    public function is_pending($table = "")
    {
        $sql = "SELECT is_payed FROM $table WHERE id=:id";
        $res = $this->db->queryDbFirst($sql, array(":id" => $this->invoice));
        if($res && $res['is_payed'] == "1")
            return false;
        else
            return true;
    }

    abstract public function enroll_user($payment_type, $is_payed = false);
    abstract public function is_concluded();
    abstract public function is_open();
    abstract protected function send_mail($user, $payment_type, $to="");

    public function send_mails($user, $payment_type)
    {
        if(!DEBUG)
        {
            $this->send_mail($user, $payment_type,
                "Buchhaltung Pflanzenlabor <buha@pflanzenlabor.ch>");
        }
        $this->send_mail($user, $payment_type);
    }

    protected function send_mail_base($user, $payment_type, $subject_str,
        $content, $to="")
    {
        $from = "info@pflanzenlabor.ch";
        $name = $user['first_name'] . " " . $user['last_name'];
        if($to === "")
            $to = '"' . $name . '" <' . $user['email'] . '>';
        $subject = '=?utf-8?B?'.base64_encode(strip_tags($subject_str)).'?=';

        $headers   = array();
        $headers[] = "MIME-Version: 1.0";
        $headers[] = "Content-type: text/plain; charset=utf-8";
        $headers[] = "From: {$from}";
        $headers[] = "Reply-To: {$from}";
        /* $headers[] = "Subject: {$subject}"; */
        $headers[] = "X-Mailer: PHP/".phpversion();

        mail( $to, $subject, $content, implode( "\r\n", $headers ) );
    }

    public function check_paypal() {
        $ipn = new PaypalIPN();
        // Use the sandbox endpoint during testing.
        if( DEBUG ) $ipn->useSandbox();
        return $ipn->verifyIPN();
    }
}

?>
