<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Thanks extends Page {

    private $is_paypal;

    function __construct( $router, $payment_type ) {
        parent::__construct( $router );
        $this->is_paypal = ( $payment_type == PAYMENT_PAYPAL );
    }

    public function is_paypal() {
        return $this->is_paypal;
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_thanks.php';
        } );
    }
}

?>
