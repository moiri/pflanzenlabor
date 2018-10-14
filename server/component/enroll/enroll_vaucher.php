<?php
require_once __DIR__ . "/enroll.php";

/**
 * Specific Enroll Component Class to enroll for Vauchers.
 */
class EnrollVaucher extends Enroll {

    private $vaucher_name = "";
    private $vaucher_img = "";

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router, $dbMapper, $id );
        $vaucher = $dbMapper->getVaucherType( $id );
        if($vaucher) {
            $this->vaucher_name = $vaucher['name'];
            $this->vaucher_img = $vaucher['img_path'];
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
            require __DIR__ . '/v_enroll_vaucher.php';
        } );
    }
}

?>

