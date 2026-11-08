<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . "/../../service/globals_untracked.php";
require_once __DIR__ . "/../../service/mail.php";

/**
 * Contact Component Class
 */
class ContactNewsletterCancel extends Page {

    private $failed = false;

    function __construct( $router, $request ) {
        parent::__construct( $router );

        if( !isset( $_POST['contact_me_by_fax_only'] ) ||
                $_POST['contact_me_by_fax_only'] !== "" )
        {
            return;
        }

        if( !isset( $_POST['email'] ) ||
                !filter_var( $_POST['email'], FILTER_VALIDATE_EMAIL )
        ) {
            error_log(
                'Failed to unsubscribe newsletter, bad email: '
                . $_POST['email']
            );
            $this->failed = true;
            return;
        }

        $request->unsubscribe( $_POST['email'] );
    }

    public function print_view() {
        if($this->failed) {
            $this->print_page( function() {
                require __DIR__ . '/v_contact_newsletter_cancel_fail.php';
            } );
        } else {
            $this->print_page( function() {
                require __DIR__ . '/v_contact_newsletter_cancel.php';
            } );
        }
    }
}

?>

