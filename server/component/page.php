<?php
require __DIR__ . '/nav/nav.php';
require __DIR__ . '/footer/footer.php';

/**
 * Contact Component CLass
 */
class Page {
    private $nav;
    private $footer;
    private $state = 0;
    protected $router;

    function __construct( $router )
    {
        $this->router = $router;
        $this->nav = new Nav( $router );
        $this->footer = new Footer( $router );
    }

    public function is_state_ok() {
        return ( $this->state == 0 )
    }

    protected function set_state_ok() {
        $this->state = 0;
    }

    protected function set_state_cancel() {
        $this->state = 010;
    }

    protected function set_state_closed() {
        $this->state = 100;
    }

    protected function set_state_pending() {
        $this->state = 110;
    }

    protected function set_state_missing() {
        $this->state = 200;
    }

    protected function set_state_invalid() {
        $this->state = 300;
    }

    protected function print_nav() {
        $this->nav->print_view();
    }

    protected function print_footer() {
        $this->footer->print_view();
    }

    protected function print_page( $cb )
    {
        switch( $this->state ) {
            case 0: // all is in order
                require __DIR__ . '/v_header_html.php';
                call_user_func( $cb );
                require __DIR__ . '/v_footer_html.php';
                break;
            case 010: // user abort
                $cancel = new Cancel( $this->router );
                $cancel->print_view();
                break;
            case 100: // no more available places
                $closed = new ClassClosed( $this->router );
                $closed->print_view();
                break;
            case 110: // action is pending
                $pending = new PaymentPending( $this->router );
                $pending->print_view();
                break;
            case 200: // page does not exist
                $missing = new Missing( $this->router );
                $missing->print_view();
                break;
            case 300: // something went wrong
                $invalid = new Invalid( $this->router );
                $invalid->print_view();
                break;
        }
    }
}

?>
