<?php
require_once __DIR__ . "/globals_untracked.php";

/**
 * Contact Component Class
 */
class Request {

    private $curl;

    function __construct() {
        $this->curl = curl_init();
    }

    protected function request( $url, $method, $body = NULL ) {
        $headers = [
            'accept: application/json',
            'authorization: Bearer ' . NEWSLETTER_API_TOKEN,
        ];

        if( $body !== NULL ) {
            $headers[] = 'content-type: application/json';
        }

        curl_setopt( $this->curl, CURLOPT_URL, $url );
        curl_setopt( $this->curl, CURLOPT_CUSTOMREQUEST, $method );
        curl_setopt( $this->curl, CURLOPT_RETURNTRANSFER, true );
        curl_setopt( $this->curl, CURLOPT_HTTPHEADER, $headers );
        curl_setopt( $this->curl, CURLOPT_POSTFIELDS, $body );
        $response = curl_exec( $this->curl );

        if( $response === false ) {
            error_log( 'Failed to send request: ' . $url );
            return false;
        }

        return $response;

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
}

?>

