<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class ContactSend extends Page {

    private $fail = false;

    function __construct( $router ) {
        parent::__construct( $router );
    }

    public function send_mail() {
        if( !isset( $_POST['subject'] ) || !isset( $_POST['content'] )
                || !isset( $_POST['email'] ) || !isset( $_POST['name'] ) ) {
            $this->fail = true;
            return;
        }
        if( !DEBUG ) $to = "info@pflanzenlabor.ch";
        else $to = "moirelein@gmail.com";
        $name = strip_tags( $_POST['name'] );
        $from = "info@pflanzenlabor.ch";
        $replyTo = $name . " <" . strip_tags( $_POST['email'] ) . ">";
        $subject = strip_tags( $_POST['subject'] );
        $txt = wordwrap( strip_tags( $_POST['content'], 70 ) );

        $headers   = array();
        $headers[] = "MIME-Version: 1.0";
        $headers[] = "Content-type: text/plain; charset=utf-8";
        $headers[] = "From: {$from}";
        if( isset( $_POST['self'] ) )
            $headers[] = "CC: " .$from;
        $headers[] = "Reply-To: {$replyTo}";
        $headers[] = "Subject: {$subject}";
        $headers[] = "X-Mailer: PHP/".phpversion();

        mail( $to, $subject, $txt, implode( "\r\n", $headers ) );
    }

    public function print_view() {
        if($this->fail)
            $this->print_page( function() {
                require __DIR__ . '/v_contact_send_fail.php';
            } );
        else
            $this->print_page( function() {
                require __DIR__ . '/v_contact_send.php';
            } );
    }
}

?>
