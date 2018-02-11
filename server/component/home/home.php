<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Home extends Page {

    function __construct( $router ) {
        parent::__construct( $router );
    }

    public function print_view() {
        require __DIR__ . '/v_home.php';
    }
}

?>
