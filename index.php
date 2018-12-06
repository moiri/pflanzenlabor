<?php
session_start();
require_once "./server/service/user.php";
require_once "./server/service/router.php";
require_once "./server/service/pflanzenlaborDbMapper.php";
require_once "./server/service/globals.php";
require_once "./server/service/globals_untracked.php";
require_once "./server/service/check_payment_packet.php";
require_once "./server/service/check_payment_class.php";
require_once "./server/service/check_payment_vaucher.php";
require_once "./server/component/home/home.php";
require_once "./server/component/newsletter/newsletter.php";
require_once "./server/component/contact/contact.php";
require_once "./server/component/contact_send/contact_send.php";
require_once "./server/component/contact_newsletter/contact_newsletter.php";
require_once "./server/component/impressum/impressum.php";
require_once "./server/component/disclaimer/disclaimer.php";
require_once "./server/component/agb/agb.php";
require_once "./server/component/me/me.php";
require_once "./server/component/classes/classes.php";
require_once "./server/component/class/class.php";
require_once "./server/component/enroll/enroll_class.php";
require_once "./server/component/enroll/enroll_packet.php";
require_once "./server/component/enroll/enroll_vaucher.php";
require_once "./server/component/payment/payment_class.php";
require_once "./server/component/payment/payment_packet.php";
require_once "./server/component/payment/payment_vaucher.php";
require_once "./server/component/thanks/thanks.php";
require_once "./server/component/invalid/invalid.php";
require_once "./server/component/404/404.php";
require_once "./server/component/class_closed/class_closed.php";
require_once "./server/component/pending/pending.php";
require_once "./server/component/cancel/cancel.php";
require_once "./server/component/impressions/impressions.php";
require_once "./server/component/packets/packets.php";
require_once "./server/component/packets_offer/packets_offer.php";
require_once "./server/component/vauchers/vauchers.php";

/**
 * Helper function to show stacktrace also of wranings.
 */
function exception_error_handler($severity, $message, $file, $line) {
    if (!(error_reporting() & $severity)) {
        // This error code is not included in error_reporting
        return;
    }
    throw new ErrorException($message, 0, $severity, $file, $line);
}
// only activate in debug mode
if(DEBUG == 1) set_error_handler("exception_error_handler");

$router = new Router();
$dbMapper = new PflanzenlaborDbMapper(DBSERVER,DBNAME,DBUSER,DBPASSWORD);
$dbMapper->setDbLocale('de_CH');

// map homepage
$view_path = '/server/view';
$router->setBasePath(BASE_PATH);
// Main Pages
$router->map( 'GET', '/', function( $router, $db ) {
    $page = new Home( $router, $db );
    $page->print_view();
}, 'home');
$router->map( 'GET', '/giovina', function( $router, $db ) {
    $page = new Me( $router );
    $page->print_view();
}, 'me');
$router->map( 'GET', '/abbruch', function( $router, $db ) {
    $page = new Cancel( $router );
    $page->print_view();
}, 'cancel');
$router->map( 'GET', '/impressum', function( $router, $db ) {
    $page = new Impressum( $router );
    $page->print_view();
}, 'impressum');
$router->map( 'GET', '/disclaimer', function( $router, $db ) {
    $page = new Disclaimer( $router );
    $page->print_view();
}, 'disclaimer');
$router->map( 'GET', '/agb', function( $router, $db ) {
    $page = new AGB( $router );
    $page->print_view();
}, 'agb');
$router->map( 'GET', '/impressionen', function( $router, $db ) {
    $page = new Impressions( $router, $db );
    $page->print_view();
}, 'impressions');
// Contact Pages
$router->map( 'GET', '/kontakt', function( $router, $db ) {
    $page = new Contact( $router, $db );
    $page->print_view();
}, 'contact');
$router->map( 'GET', '/newsletter', function( $router, $db ) {
    $page = new Newsletter( $router, $db );
    $page->print_view();
}, 'newsletter');
$router->map( 'POST', '/kontakt/senden', function( $router, $db ) {
    $page = new ContactSend( $router );
    if(isset($_POST['contact_me_by_fax_only']) && $_POST['contact_me_by_fax_only'] === "")
    {
        $page->send_mail();
        $page->send_newsletter_mail();
    }
    $page->print_view();
}, 'send');
$router->map( 'POST', '/kontakt/newsletter', function( $router, $db ) {
    $page = new ContactNewsletter( $router );
    $page->send_mail();
    $page->print_view();
}, 'request_newsletter');
// Course Pages
$router->map( 'GET', '/kurse', function( $router, $db ) {
    $page = new Classes( $router, $db );
    $page->print_view();
}, 'courses');
$router->map( 'GET', '/kurse/[i:id]', function( $router, $db, $id ) {
    $page = new ClassPage( $router, $db, intval( $id ) );
    $page->print_view();
}, 'class');
$router->map( 'GET', '/kurse_anmeldung/[i:id]', function( $router, $db, $id ) {
    $page = new EnrollClass( $router, $db, intval( $id ) );
    $page->print_view();
}, 'enroll');
$router->map( 'POST', '/kurse_bezahlung/[i:id]', function( $router, $db, $id ) {
    $page = new PaymentClass( $router, $db, intval( $id ) );
    if( $page->is_state_ok() )
    {
        $page->submit_enroll_data();
        $page->send_newsletter_mail();
    }
    $page->print_view();
}, 'payment');
// Packets Pages
$router->map( 'GET', '/paeckli', function( $router, $db ) {
    $page = new Packets( $router, $db );
    $page->print_view();
}, 'packets');
$router->map( 'GET', '/paeckli_angebot', function( $router, $db ) {
    $page = new PacketsOffer( $router, $db );
    $page->print_view();
}, 'packets_offer');
$router->map( 'GET', '/paeckli_anmeldung/[i:id]', function( $router, $db, $id ) {
    $page = new EnrollPacket( $router, $db, intval($id) );
    $page->print_view();
}, 'packets_enroll');
$router->map( 'POST', '/paeckli_bezahlung/[i:id]', function( $router, $db, $id ) {
    $page = new PaymentPacket( $router, $db, intval( $id ) );
    if( $page->is_state_ok() )
    {
        $page->submit_enroll_data();
        $page->send_newsletter_mail();
    }
    $page->print_view();
}, 'packets_payment');
// Vauchers Pages
$router->map( 'GET', '/gutscheine', function( $router, $db ) {
    $page = new Vauchers( $router, $db );
    $page->print_view();
}, 'vauchers');
$router->map( 'GET', '/gutschein_kaufen/[i:id]', function( $router, $db, $id ) {
    $page = new EnrollVaucher( $router, $db, intval($id) );
    $page->print_view();
}, 'vauchers_enroll');
$router->map( 'POST', '/gutschein_bezahlung/[i:id]', function( $router, $db, $id ) {
    $page = new PaymentVaucher( $router, $db, intval( $id ) );
    if( $page->is_state_ok() )
    {
        $page->submit_enroll_data();
        $page->send_newsletter_mail();
    }
    $page->print_view();
}, 'vauchers_payment');
$router->map( 'POST', '/gutschein', function( $router, $db ) {
    header("HTTP/1.1 200 OK");
    $invoice = isset( $_POST['invoice'] ) ? $_POST['invoice'] : Null;
    $vaucher_code = isset( $_POST['vaucher'] ) ? $_POST['vaucher'] : Null;
    $user = new User( $db );
    $res = "bad arguments";
    if($user->is_user_valid())
    {
        $uid = $user->get_user_id();
        $check = new CheckPaymentClass($router, $db, $invoice);
        if($check && $check->is_item_valid() && !$check->is_concluded())
        {
            $res = $check->check_vaucher($vaucher_code);
            if($res === true)
            {
                if($check->enroll_user(PAYMENT_VAUCHER, true))
                    $check->send_mail($user->get_user_data(), PAYMENT_VAUCHER);
                print '{ "vaucher_valid": true }';
                return;
            }
        }
    }
    print '{ "vaucher_valid": false, "msg": "' . $res . '" }';
}, 'vaucher');
// Thanks Pages
$router->map( 'POST', '/danke', function($router, $db) {
    // payed by bill
    $item = isset($_SESSION['order_type']) ? $_SESSION['order_type'] : Null;
    $invoice = isset( $_POST['invoice'] ) ? $_POST['invoice'] : Null;
    $page = new Thanks( $router, $item );
    $user = new User( $db );
    $check = null;
    if($user->is_user_valid())
    {
        $uid = $user->get_user_id();
        if($item === "packet")
            $check = new CheckPaymentPacket($router, $db, $invoice);
        else if($item === "course")
            $check = new CheckPaymentClass($router, $db, $invoice);
        else if($item === "vaucher")
            $check = new CheckPaymentVaucher($router, $db, $invoice);
        if($check && $check->is_item_valid())
        {
            if(!$check->is_concluded())
            {
                if(!$check->is_open())
                    $page->set_state_closed();
                else
                {
                    if($check->enroll_user(PAYMENT_BILL, false))
                    {
                        $check->send_mail($user->get_user_data(), $payment_type);
                        $page->set_payment_type(PAYMENT_BILL);
                    }
                    else
                        $page->set_state_invalid();
                }
            }
        }
        else
            $page->set_state_missing();
    }
    else
        $page->set_state_invalid();
    $page->print_view();
    $_SESSION['order_concluded'] = true;
}, 'thanks');
$router->map( 'GET', '/danke', function( $router, $db ) {
    // payed by paypal return from PayPal Page
    // or payed by vaucher and redirected by PHP
    $item = isset($_SESSION['order_type']) ? $_SESSION['order_type'] : Null;
    $invoice = isset($_SESSION['invoice']) ? $_SESSION['invoice'] : Null;
    $page = new Thanks($router, $item);
    $user = new User($db);
    $check = null;
    if($user->is_user_valid())
    {
        $uid = $user->get_user_id();
        if($item === "packet")
            $check = new CheckPaymentPacket($router, $db, $invoice);
        else if($item === "course")
            $check = new CheckPaymentClass($router, $db, $invoice);
        else if($item === "vaucher")
            $check = new CheckPaymentVaucher($router, $db, $invoice);
        if($check && $check->is_item_valid())
        {
            $pending = $check->is_pending();
            $concluded = $check->is_concluded();
            if($pending && $concluded)
                // a Paypal transaction cannot be pending and concluded at the same time
                $page->set_state_missing();
            else if($pending && !$concluded)
                // waiting for paypal IPN
                $page->set_state_pending();
            else
                $page->set_payment_type($check->get_payment_type());
        }
        else
            $page->set_state_missing();
    }
    else
        $page->set_state_invalid();
    $page->print_view();
    $_SESSION['order_concluded'] = true;
}, 'thanks_get');
// Check Paypal
$router->map( 'POST', '/check', function( $router, $db ) {
    // payed by paypal IPN requiest
    $custom = (isset($_POST['custom'])) ? $_POST['custom'] : Null;
    $json = json_decode($custom, true);
    $item = (isset($json['item'])) ? $json['item'] : Null;
    $invoice = (isset( $json['id_order'])) ? intval($json['id_order']) : Null;
    $check = null;
    if($item !== Null)
    {
        if($item === "packet")
            $check = new CheckPaymentPacket($router, $db, $invoice);
        else if($item === "course")
            $check = new CheckPaymentClass($router, $db, $invoice);
        else if($item === "vaucher")
            $check = new CheckPaymentVaucher($router, $db, $invoice);
        if($check && $check->is_item_valid() && !$check->is_concluded())
        {
            $payed = $check->check_paypal();
            if($check->enroll_user(PAYMENT_PAYPAL, $payed) && $payed)
            {
                $user = new User($db);
                $user->set_user_id($check->get_user_id());
                $check->send_mail($user->get_user_data(), PAYMENT_PAYPAL);
            }
        }
    }
    // Reply with an empty 200 response to indicate to paypal the IPN was received correctly.
    header("HTTP/1.1 200 OK");
});
// match current request url
$router->update_route();

// call closure or throw 404 status
if( $router->route && is_callable( $router->route['target'] ) ) {
    call_user_func_array( $router->route['target'], array_merge( array( $router, $dbMapper ), $router->route['params'] ) );
} else {
    // no route was matched
    /* header( $_SERVER["SERVER_PROTOCOL"] . ' 404 Not Found'); */
    $page = new Missing( $router );
    $page->print_view();
}
?>
