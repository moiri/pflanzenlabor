<?php
/**
 * Navigationbar Component Class
 */
class Nav
{
    public $router;
    private $active_css = 'active';

    function __construct( $router )
    {
        $this->router = $router;
    }

    public function get_active_css( $route_name )
    {
        if( $this->router->is_active( $route_name ) )
            return $this->active_css;
        $uri = $_SERVER['REQUEST_URI'];
        if( $route_name == "classes" ) {
            // handle special case "/class/:id"
            $id = $this->router->get_route_param( 'id' );
            if( $id && ( $this->router->generate( 'class', array( 'id' => $id ) ) == $uri ) )
                return $this->active_css;
        }
        return '';
    }

    public function print_view()
    {
        require __DIR__ . '/v_nav.php';
    }
}

?>
