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
    private $na = false;
    private $invalid = false;
    private $closed = false;

    function __construct( $db, $date_id, $user_id = Null ) {
        $this->date_id = $date_id;
        $user = new User( $db );
        if( $user_id != Null ) $user->set_user_id( $user_id );

        $this->db = $db;
        $this->user = $db->selectByUid( 'user', $user->get_user_id() );
        $user_specs = $db->getUserDateSpecifics( $user->get_user_id(), $this->date_id );
        if( !$this->user || !$user_specs ) {
            $this->invalid = true;
            return;
        }

        $this->user['comment'] = $user_specs['comment'];
        $this->user['check_custom'] = $user_specs['check_custom'];
        $this->user['is_payed'] = $user_specs['is_payed'];
        $this->date = $db->getClassDate( $this->date_id );
        if( $this->date ) {
            $this->open = $this->date['places_max'] - $this->date['places_booked'];
            if( $this->open <= 0 ) $this->closed = true;
            $cost = $db->getClassCost( $this->date['id_class'] );
            if( $cost ) {
                $this->class_cost = $cost['content'];
            }
        }
        else $this->na = true;
    }

    public function update_page_state( $page ) {
        if( $this->invalid ) $page->set_state_invalid();
        else if( $this->na ) $page->set_state_missing();
        else if( !$this->is_payed() && $page->is_paypal() )
            // only paypal payment can be pending
            $page->set_state_pending();
        else if( $this->closed && !$page->is_paypal() ) {
            // allow overbooking with paypal to prevent race conditions
            $page->set_state_closed();
        }
    }

    public function is_date_existing() {
        return ( !$this->na );
    }

    public function is_payed() {
        return ( $this->user['is_payed'] == '1' );
    }

    public function send_mail( $payment_type ) {
        $user = $this->user;
        $course = $this->date;
        $checks = new Checks( $this->db, $this->user['id'], $this->date_id, $user['check_custom'] );
        $from = "info@pflanzenlabor.ch";
        if( !DEBUG ) $bcc = "Buchhaltung Pflanzenlabor <buha@pflanzenlabor.ch>";
        else $bcc = "";
        $name = $user['first_name'] . " " . $user['last_name'];
        $to = $name . " <" . $user['email'] . ">";
        $subject = "Pflanzenlabor: Deine Anmedlung zur Pflanzenexkursion";
        $txt = "Vielen Dank " . $user['first_name'] . " für deine Anmeldung zur Pflanzenexkursion " . $course['name']. " vom " . $course['date'] . ".\n";
        $txt .= "\n";
        $txt .= "Vor dem Kurs wirst du eine E-Mail erhalten mit genaueren Angaben zum Treffpunkt.\n";
        if( $payment_type == PAYMENT_BILL ) {
            $txt .= "Du kannst den Betrag am Kurs bar bezahlen oder ich werde dir vor Ort eine Rechnung mitgeben.\n";
            $txt .= "\n";
        }
        $txt .= "Du bist unter folgenden Angaben angemeldet:\n";
        $txt .= " Name: " . $user['first_name'] . " " . $user['last_name'] . "\n";
        $txt .= " Adresse: " . $user['street'] . " " . $user['street_number'];
        $txt .= ", " . $user['zip'] . " " . $user['city'] . "\n";
        $txt .= " Email: " . $user['email'] . "\n";
        $txt .= " Telefon: " . $user['phone'] . "\n";
        $txt .= " Diät: " . $checks->get_food_string() . "\n";
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

    public function enroll_user( $payment_type, $is_payed = false ) {
        if( $this->db->incrementUserCount( $this->date_id ) ) {
            $this->db->markUserEnrolled( $this->user['id'], $this->date_id,
                $payment_type, $is_payed );
            return true;
        }
        return false;
    }

    public function check_paypal() {
        $ipn = new PaypalIPN();
        // Use the sandbox endpoint during testing.
        if( DEBUG ) $ipn->useSandbox();
        return $ipn->verifyIPN();
    }

    public function check_vaucher( $vaucher_code, $claim = false ) {
        $vaucher = $this->db->getVaucher( $vaucher_code );
        if( $vaucher && ( $vaucher['claimed'] == '' ) ) {
            if( $claim ) $this->db->claimVaucher( $this->user['id'], $this->date_id, $vaucher_code );
            return true;
        }
        return false;
    }
}

?>
