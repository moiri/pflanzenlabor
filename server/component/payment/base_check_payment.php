<?php

abstract class BaseCheckPayment
{
    function __construct($router, $db)
    {
    }

    abstract public function check_payment($code = null);

    abstract public function is_payment_open();

    public function check_paypal()
    {
        $ipn = new PaypalIPN();
        // Use the sandbox endpoint during testing.
        if( DEBUG ) $ipn->useSandbox();
        return $ipn->verifyIPN();
    }

    public function check_vaucher($vaucher_code, $claim = false)
    {
        $vaucher = $this->db->getVaucher $vaucher_code);
        if( $vaucher && ($vaucher['claimed'] == '')) {
            if($claim)
                $this->db->claimVaucher($this->user_id, $this->item_id,
                    $vaucher_code);
            return true;
        }
        return false;
    }
}

?>
