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

    private function print_icon($key, $name)
    {
        require __DIR__ . '/v_footer_icon.php';
    }

    public function get_active_tag( $route_name, $label ) {
        if( $this->router->is_active( $route_name ) )
            return "<strong>" . $label . "</strong>";
        else
            return $label;
    }

    public function print_view()
    {
        require __DIR__ . '/v_footer.php';
    }
}

?>
