<?php
require __DIR__ . '/nav/nav.php';
require __DIR__ . '/footer/footer.php';

/**
 * Contact Component CLass
 */
class Page {
    private $nav;
    private $footer;
    protected $router;
    private $hex = array(
        'invalid' => 0x01,
        'missing' => 0x02,
        'pending' => 0x04,
        'closed' => 0x08
    );
    private $state = array(
        'invalid' => true,
        'missing' => true,
        'pending' => true,
        'closed' => true
    );
    private $mask;

    function __construct( $router, $mask=0 )
    {
        $this->mask = $mask;
        $this->router = $router;
        $this->nav = new Nav( $router );
        $this->footer = new Footer( $router );
    }

    protected function print_header() {
        require __DIR__ . '/v_header.php';
    }

    protected function print_nav() {
        $this->print_header();
        $this->nav->print_view();
    }

    protected function print_footer() {
        $this->footer->print_view();
    }

    protected set_mask( $mask ) {
        $this->mask = $mask;
    }

    protected clear_state_invalid() {
        $state['invalid'] = false;
    }

    protected clear_state_missing() {
        $state['missing'] = false;
    }

    protected clear_state_pending() {
        $state['pending'] = false;
    }

    protected clear_state_closed() {
        $state['closed'] = false;
    }

    public function get_state( $mask=Null ) {
        if( $mask == Null ) $mask = $this->mask;
        if( $this->state['invalid'] && ( $this->hex['invalid'] & $mask ) )
            return $this->hex['invalid'];
        if( $this->state['missing'] && ( $this->hex['missing'] & $mask ) )
            return $this->hex['missing'];
        if( $this->state['pending'] && ( $this->hex['pending'] & $mask ) )
            return $this->hex['pending'];
        if( $this->state['closed']  && ( $this->hex['closed'] & $mask ) )
            return $this->hex['closed'];
        return 0;
    }

    protected function print_view_page( $path ) {
        $state = $this->get_state();
        switch( $state ) {
            case 0:
                require $path;
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
