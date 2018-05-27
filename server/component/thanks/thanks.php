<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Thanks extends Page {

    private $is_paypal;

    function __construct( $router, $payment_type ) {
        parent::__construct( $router );
        $this->payment_type = $payment_type;
    }

    public function is_paypal() {
        return $this->is_paypal;
    }

    public function print_view() {
        $this->print_page( function() {
            if( $this->payment_type == PAYMENT_PAYPAL )
                require __DIR__ . '/v_thanks_paypal.php';
            else if( $this->payment_type == PAYMENT_BILL )
                require __DIR__ . '/v_thanks_bill.php';
            else if( $this->payment_type == PAYMENT_VAUCHER )
                require __DIR__ . '/v_thanks_vaucher.php';
        } );
    }
}

?>
