<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class AGB extends Page {

    function __construct( $router ) {
        parent::__construct( $router );
        $this->p_title = "AGB &ndash; Allgemeine Gesch&auml;fstbedingungen";
    }

    public function print_view() {
        require __DIR__ . '/v_agb.php';
    }
}

?>
