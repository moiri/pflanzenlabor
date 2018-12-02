<?php
require_once __DIR__ . '/check_payment.php';

/**
 * Specific Check Payment Class for Coureses
 */
class CheckPaymentClass extends CheckPayment
{
    private $item_id;
    private $comment = "";
    private $check_custom = "";
    private $is_payed = false;
    private $open = 0;
    private $class_cost;
    private $class_type;
    private $class_name;
    private $class_date;

    function __construct( $router, $db, $item_id, $uid) {
        parent::__construct($router, $db, $uid);
        $this->item_id = $item_id;
        $user_specs = $db->getUserDateSpecifics($this->user_id, $this->item_id);
        if($user_specs)
        {
            $this->comment = $user_specs['comment'];
            $this->check_custom = $user_specs['check_custom'];
            $this->is_payed = ($user_specs['is_payed'] == 1) ? true : false;
        }
        else $this->na = true;

        $date = $db->getClassDate($this->item_id);
        if($date) {
            $this->class_type = $date['type'];
            $this->class_type_id = $date['id_type'];
            $this->class_name = $date['name'];
            $this->class_date = $date['date'];
            $this->open = $date['places_max'] - $date['places_booked'];
            $cost = $db->getClassCost($date['id_class']);
            if($cost) {
                $this->class_cost = $cost['content'];
            }
        }
        else $this->na = true;
    }

    public function enroll_user($payment_type, $is_payed = false)
    {
        if(isset($_SESSION['is_enrolled']) && $_SESSION['is_enrolled'] === true)
            return false;
        if($this->db->incrementUserCount($this->item_id))
        {
            $_SESSION['is_enrolled'] = true;
            $this->db->markUserEnrolled($this->user_id, $this->item_id,
                $payment_type, $is_payed);
            return true;
        }
        return false;
    }

    public function is_pending($table = "")
    {
        return parent::is_pending('user_class_dates');
    }

    public function is_open()
    {
        return ($this->open > 0);
    }

    public function send_mail($user, $payment_type) {
        $from = "info@pflanzenlabor.ch";
        if( !DEBUG ) $bcc = "Buchhaltung Pflanzenlabor <buha@pflanzenlabor.ch>";
        else $bcc = "";
        $name = $user['first_name'] . " " . $user['last_name'];
        $to = $name . " <" . $user['email'] . ">";
        $subject = "Pflanzenlabor - Deine Anmedlung für: ". $this->class_type . " " . $this->class_name;

        $headers   = array();
        $headers[] = "MIME-Version: 1.0";
        $headers[] = "Content-type: text/plain; charset=utf-8";
        $headers[] = "From: {$from}";
        $headers[] = "Bcc: {$bcc}";
        $headers[] = "Reply-To: {$from}";
        $headers[] = "Subject: {$subject}";
        $headers[] = "X-Mailer: PHP/".phpversion();

        mail( $to, $subject, $this->get_email_content($user, $payment_type),
            implode( "\r\n", $headers ) );
    }

    private function get_email_content($user, $payment_type)
    {
        $class_url = $this->router->generate('class',
            array("id" => $this->item_id));
        $contact_url = $this->router->generate('contact');
        $newsletter = ($user['newsletter'] == 1) ? "Ja" : "Nein";
        ob_start();
        include(__DIR__ . "/../email/thanks_class.php");
        $content = ob_get_contents();
        ob_end_clean();
        return $content;
    }

    private function print_diet()
    {
        if( $this->class_type_id == CLASS_TYPE_WALK_ID ) return;
        $checks = new Checks($this->db, $this->user_id, $this->item_id,
            $this->check_custom);
        require __DIR__ . "/../email/tpl_diet.php";
    }

    private function print_bill($payment_type)
    {
        if( $payment_type != PAYMENT_BILL ) return;
        require __DIR__ . "/../email/tpl_bill.php";
    }

}
