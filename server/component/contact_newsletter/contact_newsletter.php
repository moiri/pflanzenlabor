<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . "/../../service/globals_untracked.php";

/**
 * Contact Component Class
 */
class ContactNewsletter extends Page {

    private $failed = false;

    function __construct( $router ) {
        parent::__construct( $router );
    }

    public function send_mail( $mailService ) {
        if( !isset( $_POST['email'] ) ) {
            $this->failed = true;
            return;
        }
        $to = SMTP_RECEIVER_NEWSLETTER;

        $replyTo = strip_tags( $_POST['email'] );
        $subject = "Newsletter";
        $txt = wordwrap( "Neuer Newsletter Abonnent." );

        $mailService->send( $to, $subject, $txt, ['replyTo' => $replyTo] );
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

