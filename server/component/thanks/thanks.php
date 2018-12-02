<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Thanks extends Page {

    private $payment_type;
    private $item_type;

    function __construct($router, $payment_type, $item) {
        parent::__construct($router);
        $this->payment_type = $payment_type;
        $this->item_type = $item;
    }

    private function print_paypal()
    {
        if($this->payment_type !== PAYMENT_PAYPAL) return;
        require __DIR__ . '/v_paypal.php';
    }

    private function print_bill()
    {
        if($this->payment_type !== PAYMENT_BILL) return;
        if($this->item_type === "course")
            require __DIR__ . '/v_course_bill.php';
        else if($this->item_type === "packet")
            require __DIR__ . '/v_packet_bill.php';
        else if($this->item_type === "vaucher")
            require __DIR__ . '/v_vaucher_bill.php';
    }

    private function print_vaucher()
    {
        if($this->payment_type !== PAYMENT_VAUCHER) return;
        require __DIR__ . '/v_vaucher.php';
    }

    private function print_order()
    {
        if($this->item_type === "course")
            require __DIR__ . '/v_thanks_course.php';
        else if($this->item_type === "packet")
            require __DIR__ . '/v_thanks_packet.php';
        else if($this->item_type === "vaucher")
            require __DIR__ . '/v_thanks_vaucher.php';
    }

    public function print_view() {
        if($this->item_type === null)
            $this->set_state_missing();
        $this->print_page( function() {
            require __DIR__ . '/v_thanks.php';
        } );
    }
}

?>
