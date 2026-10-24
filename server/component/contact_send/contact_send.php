<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . '/../contact_newsletter/contact_newsletter.php';

/**
 * Contact Component Class
 */
class ContactSend extends Page {

    private $fail = false;

    function __construct( $router ) {
        parent::__construct( $router );
    }

    public function send_mail( $mailService ) {
        if( !isset( $_POST['subject'] ) || !isset( $_POST['content'] )
                || !isset( $_POST['email'] ) || !isset( $_POST['name'] ) ) {
            $this->fail = true;
            return;
        }
        $to = SMTP_RECEIVER_CONTACT;
        $name = strip_tags( $_POST['name'] );
        $replyTo = '"' . $name . '" <' . strip_tags( $_POST['email'] ) . '>';
        $subject = '=?utf-8?B?'.base64_encode(strip_tags( $_POST['subject'] )).'?=';
        $txt = wordwrap( strip_tags( $_POST['content'], 70 ) );

        $options = [
            'replyTo' => $replyTo
        ];
        if( isset( $_POST['self'] ) ) {
            $options['cc'] = $replyTo;
        }
        $mailService->send( $to, $subject, $txt, $options );
    }

    public function send_newsletter_mail( $mailService )
    {
        if(isset($_POST['newsletter']))
        {
            $nl = new ContactNewsletter( $this->router );
            $nl->send_mail( $mailService );
        }
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
