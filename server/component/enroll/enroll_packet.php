<?php
require_once __DIR__ . "/enroll.php";

/**
 * Specific Enroll Component Class to enroll for Packets.
 */
class EnrollPacket extends Enroll {

    private $packet_name = "";
    private $packet_img = "";

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router, $dbMapper, $id );
        $sql = "SELECT name, img_path, price FROM packets WHERE id = :id";
        $packet = $dbMapper->queryDbFirst($sql, array(":id" => $id));
        if($packet) {
            $this->packet_name = $packet['name'];
            $this->packet_img = $packet['img_path'];
        }
        else $this->set_state_missing();
    }

    private function print_delivery()
    {
        $prefix = "delivery-";
        $this->print_name($this->first_name, $this->last_name, $prefix);
        $this->print_address($this->street, $this->street_number, $this->zip,
            $this->city, $prefix);
    }

    private function print_bill()
    {
        $prefix = "bill-";
        $this->print_name("", "", $prefix);
        $this->print_address("", "", "", "", $prefix);
    }

    private function print_gift()
    {
        $prefix = "gift-";
        $this->print_name("", "", $prefix);
        $this->print_address("", "", "", "", $prefix);
    }

    public function print_view() {
        $this->print_page( function() {
            $display = ($this->id_item == 2 || $this->id_item == 4) ? "d-none" : "";
            require __DIR__ . '/v_enroll_packet.php';
        } );
    }
}

?>

