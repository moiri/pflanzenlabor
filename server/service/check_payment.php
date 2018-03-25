<?php
require_once __DIR__ . '/../component/enroll/checks/checks.php';
require_once __DIR__ . '/paypalIPN.php';

/**
 * Contact Component Class
 */
class CheckPayment {

    private $db = Null;
    private $user = Null;
    private $date = Null;
    private $open = 0;
    private $na = true;
    private $invalid = true;
    private $pending = false;

    function __construct( $db, $payment_type, $date_id, $user_id ) {
        $this->payment_type = $payment_type;
        $this->date_id = $date_id;
        $this->user_id = $user_id;

        $this->db = $db;
        $this->user = $db->selectByUid( 'user', $this->user_id );
        $user_specs = $db->getUserDateSpecifics( $this->user_id, $this->date_id );
        if( !$this->user || !$user_specs ) return;

        $this->invalid = false; // all is in order
        unset( $_SESSION['user_id'][$this->date_id] );
        $this->user['comment'] = $user_specs['comment'];
        $this->user['check_custom'] = $user_specs['check_custom'];
        $this->user['is_payed'] = $user_specs['is_payed'];
        $this->date = $db->getClassDate( $this->date_id );
        if( $this->date ) {
            $this->na = false;
            $this->open = $this->date['places_max'] - $this->date['places_booked'];
            $cost = $db->getClassCost( $this->date['id_class'] );
            if( $cost ) {
                $this->class_cost = $cost['content'];
            }
        }
    }

    private function get_user_id( $date_id ) {
        if( isset( $_SESSION['user_id'] )
                && ( array_key_exists( $date_id, $_SESSION['user_id'] ) ) )
            return $_SESSION['user_id'][$date_id];
        else return Null;
    }

    public function is_class_open() {
        return ( ( $this->payment_type == 1 ) || ( $this->open > 0 ) );
    }

    public function is_date_existing() {
        return ( !$this->na );
    }

    public function is_valid() {
        return ( !$this->invalid );
    }

    public function is_payed() {
        return ( !$this->pending );
    }

    public function is_paypal() {
        return ( $this->paymenet_type == 1 );
    }

    public function check_pending() {
        if( $this->user['is_payed'] != '1' )
            $this->pending = true;
    }

    public function send_mail() {
        $user = $this->user;
        $course = $this->date;
        $checks = new Checks( $this->db, $this->user_id, $this->date_id, $user['check_custom'] );
        $from = "info@pflanzenlabor.ch";
        $bcc = "Buchhaltung Pflanzenlabor <buha@pflanzenlabor.ch>";
        $name = $user['first_name'] . " " . $user['last_name'];
        $to = $name . " <" . $user['email'] . ">";
        $subject = "Pflanzenlabor: Deine Anmedlung zum Pflanzenausflug";
        $txt = "Vielen Dank " . $user['first_name'] . " für deine Anmeldung zum Pflanzenausflug über den " . $course['name']. " vom " . $course['date'] . ".\n";
        $txt .= "\n";
        $txt .= "Vor dem Kurs wirst du eine E-Mail erhalten mit genaueren Angaben zum Treffpunkt.\n";
        if( $this->payment_type == 2 ) {
            $txt .= "Die Rechnung wird dir bald zugestellt.\n";
            $txt .= "\n";
        }
        $txt .= "Du bist unter folgenden Angaben angemeldet:\n";
        $txt .= " Name: " . $user['first_name'] . " " . $user['last_name'] . "\n";
        $txt .= " Adresse: " . $user['street'] . " " . $user['street_number'];
        $txt .= ", " . $user['zip'] . " " . $user['city'] . "\n";
        $txt .= " Email: " . $user['email'] . "\n";
        $txt .= " Telefon: " . $user['phone'] . "\n";
        $txt .= " Essen: " . $checks->get_food_string() . "\n";
        $txt .= " Bemerkung: " . $user['comment'] . "\n";
        $txt .= "\n";
        $txt .= "Bei Fragen oder Anregungen kannst du mich gerne per Email (info@pflanzenlabor.ch) oder via Web Formular (www.pflanzenlabor.ch/kontakt) erreichen.\n";
        $txt .= "\n";
        $txt .= "Ich freue mich dich am Kurs zu sehen,\n";
        $txt .= "warme Grüsse\n";
        $txt .= "Giovina Nicolai\n";

        $headers   = array();
        $headers[] = "MIME-Version: 1.0";
        $headers[] = "Content-type: text/plain; charset=utf-8";
        $headers[] = "From: {$from}";
        $headers[] = "Bcc: {$bcc}";
        $headers[] = "Reply-To: {$from}";
        $headers[] = "Subject: {$subject}";
        $headers[] = "X-Mailer: PHP/".phpversion();

        mail( $to, $subject, $txt, implode( "\r\n", $headers ) );
    }

    public function enroll_user( $is_payed = false ) {
        if( $this->db->incrementUserCount( $this->date_id ) ) {
            $this->db->markUserEnrolled( $this->user_id, $this->date_id,
                $this->payment_type, false );
            if( $is_payed )
                $this->db->setPayed( $this->user_id, $this->date_id );

            return true;
        }
        return false;
    }

    public function check_paypal() {
        $ipn = new PaypalIPN();
        // Use the sandbox endpoint during testing.
        /* $ipn->useSandbox(); */
        return $ipn->verifyIPN();
    }
}

?>






