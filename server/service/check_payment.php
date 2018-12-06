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
        return $this->payment_id;
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

    abstract public function is_concluded();
    abstract public function is_open();
    abstract public function send_mail($user, $payment_type);
    abstract public function enroll_user($payment_type, $is_payed = false);

    public function check_paypal() {
        $ipn = new PaypalIPN();
        // Use the sandbox endpoint during testing.
        if( DEBUG ) $ipn->useSandbox();
        return $ipn->verifyIPN();
    }
}

?>
