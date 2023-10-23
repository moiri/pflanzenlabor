<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class ContactNewsletter extends Page {

    private $failed = false;

    function __construct( $router ) {
        parent::__construct( $router );
    }

    public function send_mail() {
        if( !isset( $_POST['email'] ) ) {
            $this->failed = true;
            return;
        }
        if( !DEBUG ) $to = "buha@pflanzenlabor.ch";
        else $to = "moirelein@gmail.com";
        $from = "info@pflanzenlabor.ch";
        $replyTo = strip_tags( $_POST['email'] );
        $subject = "Newsletter";
        $txt = wordwrap( "Neuer Newsletter Abonnent." );

        $headers   = array();
        $headers[] = "MIME-Version: 1.0";
        $headers[] = "Content-type: text/plain; charset=utf-8";
        $headers[] = "From: {$from}";
        $headers[] = "Reply-To: {$replyTo}";
        /* $headers[] = "Subject: {$subject}"; */
        $headers[] = "X-Mailer: PHP/".phpversion();

        mail( $to, $subject, $txt, implode( "\r\n", $headers ) );
    }

    public function print_view() {
        if($this->failed)
            $this->print_page( function() {
                require __DIR__ . '/v_contact_newsletter_fail.php';
            } );
        else
            $this->print_page( function() {
                require __DIR__ . '/v_contact_newsletter.php';
            } );
    }
}

?>

