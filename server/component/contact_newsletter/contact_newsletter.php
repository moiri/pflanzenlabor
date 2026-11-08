<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . "/../../service/globals_untracked.php";
require_once __DIR__ . "/../../service/mail.php";

/**
 * Contact Component Class
 */
class ContactNewsletter extends Page {

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
                'Failed to subscribe newsletter, bad email: '
                . $_POST['email']
            );
            $this->failed = true;
            return;
        }

        $firstname = '';
        if( isset( $_POST['firstname'] ) ) {
            $firstname = $_POST['firstname'];
        }
        $lastname = '';
        if( isset( $_POST['lastname'] ) ) {
            $lastname = $_POST['lastname'];
        }

        $request->subscribe( $_POST['email'], $firstname, $lastname );
    }

    public function print_view() {
        if($this->failed) {
            $this->print_page( function() {
                require __DIR__ . '/v_contact_newsletter_fail.php';
            } );
        } else {
            $this->print_page( function() {
                require __DIR__ . '/v_contact_newsletter.php';
            } );
        }
    }
}

?>

