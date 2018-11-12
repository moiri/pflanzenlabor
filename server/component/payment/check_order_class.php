<?php

require __DIR__ . "/base_check_order.php";

/**
 * Controller class to handle class orders.
 */
class BaseCheckOrder extends BaseCheckOrder
{
    function __construct($router, $db, $item_id, $user_id)
    {
        parent::__construct($router, $db);
        $order = $this->db->getUserDateSpecifics($user_id, $item_id);
        if($order)
            $this->order_data = $order;
        else
            $this->is_consistent = false;

        $item = $this->db->getClassDate($item_id);
        if($item)
            $this->item_data = $item;
        else
            $this->is_consistent = false;
    }

    private function get_email_content($payment_type)
    {
        $class_url = $this->router->generate('class',
            array("id" => intval($this->item_data['id_class'])));
        $contact_url = $this->router->generate('contact');
        $newsletter = ($this->user_data['newsletter'] == 1) ? "Ja" : "Nein";
        ob_start();
        include(__DIR__ . "/../email/thanks.php");
        $content = ob_get_contents();
        ob_end_clean();
        return $content;
    }

    private function print_diet()
    {
        if($this->item_data['id_type'] == CLASS_TYPE_WALK_ID) return;
        $checks = new Checks($this->db, $this->user_data['id'],
            $this->item_data['id'], $this->order_data['check_custom']);
        require __DIR__ . "/../email/tpl_diet.php";
    }

    private function print_bill($payment_type)
    {
        if( $payment_type != PAYMENT_BILL ) return;
        require __DIR__ . "/../email/tpl_bill.php";
    }

    public function finalize_order($payment)
    {
        if(!$payment->check()) return false;
        if($this->db->incrementUserCount($this->item_data['id']))
        {
            if($this->db->markUserEnrolled($this->user_data['id'],
                $this->item_data['id'], $pyment->get_type(),
                $payment->is_payed()))
            {
                $this->send_email($payment->get_type());
                return true;
            }
        }
        $this->send_email_failed();
        return false;
    }

    public function is_order_open()
    {
        if($this->order_data === null) return false;
        return ($this->order_data['is_booked'] == '0');
    }

    public function is_in_stock()
    {
        if($this->item_data === null) return false;
        $open = $this->item_data['places_max'] - $this->item_data['places_booked'];
        if($open > 0) return true;
        else return false
    }

    public function send_mail($payment_type) {
        $from = "info@pflanzenlabor.ch";
        if(!DEBUG) $bcc = "Buchhaltung Pflanzenlabor <buha@pflanzenlabor.ch>";
        else $bcc = "";
        $name = $this->user_data['first_name'] . " " . $this->user_data['last_name'];
        $to = $name . " <" . $this->user_data['email'] . ">";
        $subject = "Pflanzenlabor - Deine Anmedlung für: ". $this->item_data['type'] . " " . $this->item['name'];

        $headers   = array();
        $headers[] = "MIME-Version: 1.0";
        $headers[] = "Content-type: text/plain; charset=utf-8";
        $headers[] = "From: {$from}";
        $headers[] = "Bcc: {$bcc}";
        $headers[] = "Reply-To: {$from}";
        $headers[] = "Subject: {$subject}";
        $headers[] = "X-Mailer: PHP/".phpversion();

        mail( $to, $subject, $this->get_email_content($payment_type),
            implode( "\r\n", $headers ) );
    }
}

?>
