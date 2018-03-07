<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class ContactSend extends Page {

    function __construct( $router ) {
        parent::__construct( $router );
    }

    public function send_mail() {
        if( !isset( $_POST['subject'] ) || !isset( $_POST['content'] )
                || !isset( $_POST['email'] ) || !isset( $_POST['name'] ) ) {
            $this->p_title = "Versenden fehlgeschlagen";
            $this->p_description = "Das Kontaktformular konnte nicht versendet werden.";
            return;
        }
        $this->p_title = "Formular versendet";
        $this->p_description = "Das Kontaktformular wurde versendet.";
        $to = "info@pflanzenlabor.ch";
        $name = strip_tags( $_POST['name'] );
        $from = $name . " <" . strip_tags( $_POST['email'] ) . ">";
        $subject = strip_tags( $_POST['subject'] );
        $txt = wordwrap( strip_tags( $_POST['content'], 70 ) );
        $headers = "From: " . $from;
        if( isset( $_POST['self'] ) )
            $headers .= "\r\nCC: " .$from;

        mail($to,$subject,$txt,$headers);
    }

    public function print_view() {
        require __DIR__ . '/v_contact_send.php';
    }
}

?>
