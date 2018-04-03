<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Invalid extends Page {

    function __construct( $router ) {
        parent::__construct( $router );
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_invalid.php';
        } );
    }
}

?>
