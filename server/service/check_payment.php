<?php
require_once __DIR__ . '/../component/enroll/checks/checks.php';
require_once __DIR__ . '/paypalIPN.php';

/**
 * Base class to check for payment.
 */
abstract class CheckPayment {

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
        if($res && $res['is_payed'] == 1)
            return true;
        else
            return false;
    }
    abstract public function is_open();
    abstract public function send_mail($user, $payment_type);
    abstract public function enroll_user($payment_type, $is_payed = false);

    public function check_paypal() {
        $ipn = new PaypalIPN();
        // Use the sandbox endpoint during testing.
        if( DEBUG ) $ipn->useSandbox();
        return $ipn->verifyIPN();
    }

    public function check_vaucher( $vaucher_code, $claim = false ) {
        $vaucher = $this->db->getVaucher( $vaucher_code );
        if( $vaucher && ( $vaucher['claimed'] == '' ) ) {
            if( $claim ) $this->db->claimVaucher( $this->user_id, $this->date_id, $vaucher_code );
            return true;
        }
        return false;
    }
}

?>
