<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Me extends Page {

    function __construct( $router, $db, $url ) {
        parent::__construct( $router, $db, $url );
    }

    public function print_view() {
        require __DIR__ . '/v_me.php';
    }
}

?>
