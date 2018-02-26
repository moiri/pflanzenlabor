<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Missing extends Page {

    function __construct( $router ) {
        parent::__construct( $router, null, '' );
    }

    public function print_view() {
        require __DIR__ . '/v_404.php';
    }
}

?>
