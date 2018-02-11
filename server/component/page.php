<?php
require __DIR__ . '/../component/nav/nav.php';
require __DIR__ . '/../component/footer/footer.php';

/**
 * Contact Component CLass
 */
class Page {
    public $router;
    public $dbMapper;
    private $nav;
    private $footer;

    function __construct( $router )
    {
        $this->router = $router;
        $this->nav = new Nav( $router );
        $this->footer = new Footer( $router );
    }

    public function print_nav() {
        $this->nav->print_view();
    }

    public function print_footer() {
        $this->footer->print_view();
    }
}

?>
