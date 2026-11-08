<?php
require_once __DIR__ . "/request.php";
require_once __DIR__ . "/globals_untracked.php";

/**
 * Contact Component Class
 */
class NewsletterRequest extends Request {

    private $domainId = '';

    function __construct() {
        parent::__construct();

        // get domain id
        $url = NEWSLETTER_API_ENDPOINT . '/1/products?service_name=mailing&customer_name=' . NEWSLETTER_API_DOMAIN;
        $json = $this->request( $url, 'GET' );
        if( $json && count( $json['data'] ) === 1 && isset( $json['data'][0]['id'] ) ) {
            $this->domainId = $json['data'][0]['id'];
        } else {
            error_log( 'Invalid data in request ' . $url );
            return;
        }
    }

    protected function request( $url, $method, $body = NULL ) {
        $response = parent::request( $url, $method, $body );

        if( $response === false ) {
            return false;
        }

        $json = json_decode( $response, true );
        if( $json['result'] !== 'success' ) {
            error_log( 'Request ' . $url . ' failed: ' . $response );
            return false;
        }

        if( !isset( $json['data'] ) ) {
            error_log( 'Invalida data in request ' . $url . ': ' . $response );
            return;
        }

        return $json;
    }

    public function subscribe($email, $firstname = '', $lastname = '') {

        $url = NEWSLETTER_API_ENDPOINT . '/1/newsletters/' . $this->domainId . '/subscribers';
        $payload = json_encode( array(
            "email" => $email,
            "fields" => array(
                "firstname" => $firstname,
                "lastname" => $lastname
            )
        ) );
        $this->request( $url, 'POST', $payload );
    }

    public function unsubscribe($email) {
        // find user
        $url = NEWSLETTER_API_ENDPOINT . '/1/newsletters/' . $this->domainId . '/subscribers/filter';
        $payload = json_encode( array(
            "filter" => array(
                "search" => $email
            )
        ) );
        $json = $this->request( $url, 'POST', $payload );
        if( !$json || count( $json['data'] ) !== 1 || !isset( $json['data'][0]['id'] ) ) {
            error_log( 'Invalid data in request ' . $url );
            return;
        }

        // unsubscribe user
        $userId = $json['data'][0]['id'];
        $url = NEWSLETTER_API_ENDPOINT . '/1/newsletters/' . $this->domainId . '/subscribers/' . $userId;
        $this->request( $url, 'DELETE' );
    }
}

?>

