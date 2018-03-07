<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Disclaimer extends Page {

    function __construct( $router ) {
        parent::__construct( $router );
        $this->p_title = "Disclaimer";
    }

    public function print_view() {
        require __DIR__ . '/v_disclaimer.php';
    }
}

?>
