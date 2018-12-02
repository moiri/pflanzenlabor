<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Thanks extends Page {

    private $is_paypal;
    private $payment_type;
    private $item_type;

    function __construct($router, $payment_type, $item) {
        parent::__construct($router);
        $this->payment_type = $payment_type;
        $this->item_type = $item;
    }

    public function is_paypal() {
        return $this->is_paypal;
    }

    public function print_view() {
        if($this->item_type === null)
            $this->set_state_missing();
        $this->print_page( function() {
            if($this->item_type === "kurs")
            {
                if( $this->payment_type == PAYMENT_PAYPAL )
                    require __DIR__ . '/v_thanks_course_paypal.php';
                else if( $this->payment_type == PAYMENT_BILL )
                    require __DIR__ . '/v_thanks_course_bill.php';
                else if( $this->payment_type == PAYMENT_VAUCHER )
                    require __DIR__ . '/v_thanks_course_vaucher.php';
            }
            else if($this->item_type === "paeckli")
            {
                require __DIR__ . '/v_thanks_packet.php';
            }
            else if($this->item_type === "gutschein")
            {
                require __DIR__ . '/v_thanks_vaucher.php';
            }
        } );
    }
}

?>
