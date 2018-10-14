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
        if( $route_name == "courses" ) {
            // handle special case "/class/:id"
            $id = $this->router->get_route_param( 'id' );
            if( $id && ( $this->router->generate( 'class',
                    array( 'id' => $id ) ) == $uri ) )
                return $this->active_css;
        }
        else if($route_name == "packets")
        {
            $id = $this->router->get_route_param( 'id' );
            if( $id && ( $this->router->generate( 'packets_enroll',
                    array( 'id' => $id ) ) == $uri ) )
                return $this->active_css;
            else if($uri == $this->router->generate("packets_offer"))
                return $this->active_css;
        }
        else if($route_name == "vauchers")
        {
            $id = $this->router->get_route_param( 'id' );
            if( $id && ( $this->router->generate( 'vauchers_enroll',
                    array( 'id' => $id ) ) == $uri ) )
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
