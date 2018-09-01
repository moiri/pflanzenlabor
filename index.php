<?php
session_start();
require_once "./server/service/user.php";
require_once "./server/service/router.php";
require_once "./server/service/pflanzenlaborDbMapper.php";
require_once "./server/service/globals.php";
require_once "./server/service/globals_untracked.php";
require_once "./server/service/check_payment.php";
require_once "./server/component/home/home.php";
require_once "./server/component/contact/contact.php";
require_once "./server/component/contact_send/contact_send.php";
require_once "./server/component/contact_newsletter/contact_newsletter.php";
require_once "./server/component/impressum/impressum.php";
require_once "./server/component/disclaimer/disclaimer.php";
require_once "./server/component/agb/agb.php";
require_once "./server/component/me/me.php";
require_once "./server/component/classes/classes.php";
require_once "./server/component/class/class.php";
require_once "./server/component/enroll/enroll.php";
require_once "./server/component/payment/payment.php";
require_once "./server/component/thanks/thanks.php";
require_once "./server/component/invalid/invalid.php";
require_once "./server/component/404/404.php";
require_once "./server/component/class_closed/class_closed.php";
require_once "./server/component/pending/pending.php";
require_once "./server/component/cancel/cancel.php";
require_once "./server/component/impressions/impressions.php";
$router = new Router();
$dbMapper = new PflanzenlaborDbMapper(DBSERVER,DBNAME,DBUSER,DBPASSWORD);
$dbMapper->setDbLocale('de_CH');

// map homepage
$view_path = '/server/view';
$router->setBasePath(BASE_PATH);
$router->map( 'GET', '/', function( $router, $db ) {
    $page = new Home( $router, $db );
    $page->print_view();
}, 'home');
$router->map( 'GET', '/giovina', function( $router, $db ) {
    $page = new Me( $router );
    $page->print_view();
}, 'me');
$router->map( 'GET', '/kontakt', function( $router, $db ) {
    $page = new Contact( $router, $db );
    $page->print_view();
}, 'contact');
$router->map( 'GET', '/newsletter', function( $router, $db ) {
    $page = new Missing( $router );
    $page->print_view();
}, 'newsletter');
$router->map( 'GET', '/kurse', function( $router, $db ) {
    $page = new Classes( $router, $db );
    $page->print_view();
}, 'courses');
$router->map( 'GET', '/impressionen', function( $router, $db ) {
    $page = new Impressions( $router, $db );
    $page->print_view();
}, 'impressions');
$router->map( 'GET', '/kurse/[i:id]', function( $router, $db, $id ) {
    $page = new ClassPage( $router, $db, intval( $id ) );
    $page->print_view();
}, 'class');
$router->map( 'GET', '/packets', function( $router, $db ) {
    $page = new Missing( $router );
    $page->print_view();
}, 'packets');
$router->map( 'GET', '/vauchers', function( $router, $db ) {
    $page = new Missing( $router );
    $page->print_view();
}, 'vauchers');
$router->map( 'GET', '/anmeldung/[i:id]', function( $router, $db, $id ) {
    $page = new Enroll( $router, $db, intval( $id ) );
    $page->print_view();
}, 'enroll');
$router->map( 'POST', '/bezahlung/[i:id]', function( $router, $db, $id ) {
    $page = new Payment( $router, $db, intval( $id ) );
    if( $page->is_state_ok() ) $page->submit_enroll_data();
    $page->print_view();
}, 'payment');
$router->map( 'POST', '/danke', function( $router, $db ) {
    // payed by bill or vaucher
    $date_id = isset( $_POST['date_id'] ) ? $_POST['date_id'] : Null;
    $vaucher_code = isset( $_POST['vaucher'] ) ? $_POST['vaucher'] : Null;
    if( $vaucher_code == Null ) $payment_type = PAYMENT_BILL;
    else $payment_type = PAYMENT_VAUCHER;
    $page = new Thanks( $router, $payment_type );
    $user = new User( $db );
    if( !$user->is_user_enrolled( $date_id ) ) {
        $check = new CheckPayment( $router, $db, $date_id );
        $check->update_page_state( $page );
        if( $page->is_state_ok() ) {
            if( $payment_type == PAYMENT_VAUCHER )
                $payment_ok = $check->check_vaucher( $vaucher_code, true );
            else if( $payment_type == PAYMENT_BILL )
                $payment_ok = true;
            if( $payment_ok && $check->enroll_user( $payment_type, ($payment_ok && ( $payment_type == PAYMENT_VAUCHER ) ) ) )
                $check->send_mail( $payment_type );
        }
    }
    $page->print_view();
}, 'thanks');
$router->map( 'GET', '/danke', function( $router, $db ) {
    // payed by paypal
    $date_id = isset( $_GET['item_number'] ) ? $_GET['item_number'] : Null;
    $page = new Thanks( $router, PAYMENT_PAYPAL );
    $check = new CheckPayment( $router, $db, $date_id );
    $check->update_page_state( $page );
    $page->print_view();
}, 'thanks_get');
$router->map( 'POST', '/check', function( $router, $db ) {
    // payed by paypal
    $date_id = ( isset( $_POST['item_number'] ) ) ? $_POST['item_number'] : Null;
    $user_id = ( isset( $_POST['custom'] ) ) ? $_POST['custom'] : Null;
    $check = new CheckPayment( $router, $db, $date_id, $user_id );
    if( $check->is_date_existing() ) {
        $payed = $check->check_paypal();
        if( $check->enroll_user( PAYMENT_PAYPAL, $payed ) && $payed )
            $check->send_mail( PAYMENT_PAYPAL );
    }
    // Reply with an empty 200 response to indicate to paypal the IPN was received correctly.
    header("HTTP/1.1 200 OK");
});
$router->map( 'POST', '/gutschein', function( $router, $db ) {
    header("HTTP/1.1 200 OK");
    $date_id = isset( $_POST['date_id'] ) ? $_POST['date_id'] : Null;
    $vaucher_code = isset( $_POST['vaucher'] ) ? $_POST['vaucher'] : Null;
    $user = new User( $db );
    if( !$user->is_user_enrolled( $date_id ) ) {
        $check = new CheckPayment( $router, $db, $date_id );
        if( $check->is_date_existing() ) {
            if( $check->check_vaucher( $vaucher_code ) ) {
                print '{ "vaucher_valid": true }';
                return;
            }
        }
    }
    print '{ "vaucher_valid": false }';
}, 'vaucher');
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
$router->map( 'POST', '/kontakt/senden', function( $router, $db ) {
    $page = new ContactSend( $router );
    $page->send_mail();
    $page->print_view();
}, 'send');
$router->map( 'POST', '/kontakt/newsletter', function( $router, $db ) {
    $page = new ContactNewsletter( $router );
    $page->send_mail();
    $page->print_view();
}, 'request_newsletter');
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
