<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Thanks extends Page {

    function __construct( $router ) {
        parent::__construct( $router );
    }

    public function print_view( $state ) {
        switch( $state ) {
            case 0:
                require __DIR__ . '/v_thanks.php';
                break;
            case 0x01:
                $invalid = new Invalid( $this->router );
                $invalid->print_view();
                break;
            case 0x02:
                $missing = new Missing( $this->router );
                $missing->print_view();
                break;
            case 0x04:
                $pending = new PaymentPending( $this->router );
                $pending->print_view();
                break;
            case 0x08:
                $closed = new ClassClosed( $this->router );
                $closed->print_view();
                break;
            default:
                $missing = new Missing( $this->router );
                $missing->print_view();
        }
    }
}

?>






