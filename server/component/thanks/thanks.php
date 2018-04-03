<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Thanks extends Page {

    private $check = Null;

    function __construct( $router, $check ) {
        parent::__construct( $router );
        $this->check = $check;
    }

    private function is_paypal() {
        return $this->check->is_paypal();
    }

    public function print_view() {
        if( !$this->check->is_valid() ) {
            $invalid = new Invalid( $this->router );
            $invalid->print_view();
        }
        else if( !$this->check->is_date_existing() ) {
            $missing = new Missing( $this->router );
            $missing->print_view();
        }
        else if( !$this->check->is_payed() ) {
            $pending = new PaymentPending( $this->router );
            $pending->print_view();
        }
        else if( !$this->check->is_class_open() ) {
            $closed = new ClassClosed( $this->router );
            $closed->print_view();
        }
        else $this->print_page( function() {
            require __DIR__ . '/v_thanks.php';
        } );
    }
}

?>
