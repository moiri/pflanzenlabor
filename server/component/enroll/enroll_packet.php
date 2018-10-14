<?php
require_once __DIR__ . "/enroll.php";

/**
 * Specific Enroll Component Class to enroll for Packets.
 */
class EnrollPacket extends Enroll {

    private $packet_name = "";
    private $packet_img = "";
    private $is_gift = false;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router, $dbMapper, $id );
        if($this->id_item == 2 || $this->id_item == 4)
            $this->is_gift = true;
        $packet = $dbMapper->getPacket( $id );
        if($packet) {
            $this->packet_name = $packet['name'];
            $this->packet_img = $packet['img_path'];
        }
        else $this->set_state_missing();
    }

    private function print_main_address()
    {
        $this->print_name($this->first_name, $this->last_name);
        $this->print_address($this->street, $this->street_number, $this->zip,
            $this->city);
    }

    private function print_other_address($prefix, $skip = false)
    {
        if($skip) return;
        $this->print_name("", "", $prefix);
        $this->print_address("", "", "", "", $prefix);
    }

    public function print_view() {
        $this->print_page( function() {
            $display = ($this->is_gift) ? "d-none" : "";
            require __DIR__ . '/v_enroll_packet.php';
        } );
    }
}

?>

