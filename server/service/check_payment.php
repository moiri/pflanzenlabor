<?php
require_once __DIR__ . '/../component/enroll/checks/checks.php';
require_once __DIR__ . '/paypalIPN.php';

/**
 * Base class to check for payment.
 */
abstract class CheckPayment {

    protected $db = Null;
    protected $router = Null;
    protected $user_id = Null;
    protected $na = false;

    function __construct( $router, $db, $user_id) {
        $this->router = $router;
        $this->db = $db;
        $this->user_id = $user_id;
    }

    public function is_item_valid()
    {
        return ($this->na === false);
    }

    abstract public function is_open();
    abstract public function is_pending();
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
