<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . '/artists.php';

/**
 * Packets Component Class
 */
class Packets extends Page {

    private $db;

    function __construct( $router, $db ) {
        parent::__construct( $router );
        $this->db = $db;
    }

    private function print_artists() {
        $artists = new Artists($this->router, $this->db);
        $artists->print_view();
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_packets.php';
        } );
    }
}

?>
