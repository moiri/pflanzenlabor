<?php
require_once __DIR__ . "/enroll.php";

/**
 * Specific Enroll Component Class to enroll for Vauchers.
 */
class EnrollVaucher extends Enroll {

    private $vaucher_name = "";
    private $vaucher_img = "";
    private $order_data = null;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router, $dbMapper, $id );
        $vaucher = $dbMapper->getVaucherType( $id );
        if($vaucher) {
            $this->vaucher_name = $vaucher['name'];
            $this->vaucher_img = $vaucher['img_path'];
            if(isset($_SESSION['invoice']))
                $this->order_data = $this->db->getVaucherOrder($_SESSION['invoice'], false);
        }
        else $this->set_state_missing();
    }

    private function print_main_address()
    {
        $this->print_name($this->first_name, $this->last_name);
        $this->print_address($this->street, $this->street_number, $this->zip,
            $this->city);
    }

    private function print_other_address($prefix, $is_required = true,
        $skip = false)
    {
        if($skip) return;
        $char_prefix = substr($prefix, 0, 1);
        $first_name = "";
        $last_name = "";
        $street = "";
        $street_number = "";
        $zip = "";
        $city = "";
        if($this->order_data !== null)
        {
            $first_name = $this->order_data[$char_prefix . '_first_name'];
            $last_name = $this->order_data[$char_prefix . '_last_name'];
            $zip = $this->order_data[$char_prefix . '_zip'];
            $street_number = $this->order_data[$char_prefix . '_street_number'];
            $street = $this->order_data[$char_prefix . '_street'];
            $city = $this->order_data[$char_prefix . '_city'];
        }
        $this->print_name($first_name, $last_name, $prefix, $is_required);
        $this->print_address($street, $street_number, $zip, $city, $prefix,
            $is_required);
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_enroll_vaucher.php';
        } );
    }
}

?>

