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

    function __construct( $router )
    {
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
}

?>
