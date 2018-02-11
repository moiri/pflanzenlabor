<?php
/**
 * Navigationbar Component Class
 */
class Footer
{
    public $router;

    function __construct( $router )
    {
        $this->router = $router;
    }

    public function print_view()
    {
        require __DIR__ . '/v_footer.php';
    }
}

?>
