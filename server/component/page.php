<?php
require __DIR__ . '/nav/nav.php';
require __DIR__ . '/footer/footer.php';
require __DIR__ . '/class/class_content_text/class_content_text.php';

/**
 * Contact Component CLass
 */
class Page {
    private $nav;
    private $footer;
    protected $router;
    protected $p_title;
    protected $p_subtitle;
    protected $p_description;

    function __construct( $router, $db, $url )
    {
        $this->router = $router;
        $this->nav = new Nav( $router );
        $this->footer = new Footer( $router );
        if( $url != '' ) {
            $page = $db->getPage( $url );
            $this->p_title = $page['title'];
            $this->p_subtitle = $page['subtitle'];
            $this->p_description = $page['description'];
        }
    }

    protected function print_page_description() {
        $content = new ClassContentText( $this->p_description );
        $content->print_view();
    }

    protected function print_nav() {
        $this->nav->print_view();
    }

    protected function print_footer() {
        $this->footer->print_view();
    }
}

?>
