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
    private $js_includes = [];
    protected $router;

    function __construct( $router )
    {
        $this->router = $router;
        $this->nav = new Nav( $router );
        $this->footer = new Footer( $router );
    }

    public function is_state_ok() {
        return ( $this->state == PAGE_STATE_OK );
    }

    public function set_state_ok() {
        $this->state = PAGE_STATE_OK;
    }

    public function set_state_cancel() {
        $this->state = PAGE_STATE_CANCEL;
    }

    public function set_state_closed() {
        $this->state = PAGE_STATE_CLOSED;
    }

    public function set_state_pending() {
        $this->state = PAGE_STATE_PENDING;
    }

    public function set_state_missing() {
        $this->state = PAGE_STATE_MISSING;
    }

    public function set_state_invalid() {
        $this->state = PAGE_STATE_INVALID;
    }

    protected function append_js_includes($file) {
        $this->js_includes[] = $file;
    }

    protected function print_nav() {
        $this->nav->print_view();
    }

    protected function print_footer() {
        $this->footer->print_view();
    }

    private function print_js_includes() {
        foreach($this->js_includes as $file)
            require __DIR__ . '/v_js_include.php';
    }

    protected function print_page( $cb )
    {
        switch( $this->state ) {
            case PAGE_STATE_OK: // all is in order
                require __DIR__ . '/v_header_html.php';
                call_user_func( $cb );
                require __DIR__ . '/v_footer_html.php';
                break;
            case PAGE_STATE_CANCEL: // user abort
                $cancel = new Cancel( $this->router );
                $cancel->print_view();
                break;
            case PAGE_STATE_CLOSED: // no more available places
                $closed = new ClassClosed( $this->router );
                $closed->print_view();
                break;
            case PAGE_STATE_PENDING: // action is pending
                $pending = new PaymentPending( $this->router );
                $pending->print_view();
                break;
            case PAGE_STATE_MISSING: // page does not exist
                $missing = new Missing( $this->router );
                $missing->print_view();
                break;
            case PAGE_STATE_INVALID: // something went wrong
                $invalid = new Invalid( $this->router );
                $invalid->print_view();
                break;
        }
    }
}

?>
