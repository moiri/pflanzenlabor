<?php
require "./server/AltoRouter/AltoRouter.php";

class Router extends AltoRouter {

    function __construct( $routes = array(), $basePath = '', $matchTypes = array() ) {
        parent::__construct( $routes, $basePath, $matchTypes );
    }

    public function get_asset_path( $path ) {
        return $this->basePath . $path;
    }
}

?>
