<?php
session_start();
require_once "./server/service/router.php";
require_once "./server/service/pflanzenlaborDbMapper.php";
require_once "./server/service/globals.php";
require_once "./server/service/check_payment.php";
require_once "./server/component/home/home.php";
require_once "./server/component/contact/contact.php";
require_once "./server/component/contact_send/contact_send.php";
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
$router->map( 'GET', '/kurse', function( $router, $db ) {
    $page = new Classes( $router, $db );
    $page->print_view();
}, 'classes');
$router->map( 'GET', '/kurse/[i:id]', function( $router, $db, $id ) {
    $page = new ClassPage( $router, $db, intval( $id ) );
    $page->print_view();
}, 'class');
$router->map( 'GET', '/anmeldung/[i:id]', function( $router, $db, $id ) {
    $page = new Enroll( $router, $db, intval( $id ) );
    $page->print_view();
}, 'enroll');
$router->map( 'POST', '/bezahlung/[i:id]', function( $router, $db, $id ) {
    $page = new Payment( $router, $db, intval( $id ) );
    if( $page->is_class_open() ) $page->submit_enroll_data();
    $page->print_view();
}, 'payment');
$router->map( 'POST', '/danke', function( $router, $db ) {
    $date_id = $_POST['date_id'];
    $user_id = $_SESSION['user_id'][$date_id];
    $check = new CheckPayment( $db, 2, $date_id, $user_id );
    $page = new Thanks( $router, $check );
    if( $check->is_class_open() ) {
        if( $check->enroll_user() )
            $check->send_mail();
    }
    $page->print_view();
}, 'thanks');
$router->map( 'GET', '/danke', function( $router, $db ) {
    $date_id = $_GET['item_number'];
    $user_id = $_SESSION['user_id'][$date_id];
    $check = new CheckPayment( $db, 1, $date_id, $user_id );
    $check->check_pending();
    $page = new Thanks( $router, $check );
    $page->print_view();
}, 'thanks_get');
$router->map( 'POST', '/check', function( $router, $db ) {
    $date_id = $_POST['item_number'];
    $user_id = $_POST['custom'];
    $check = new CheckPayment( $db, 1, $date_id, $user_id );
    if( $check->is_date_existing() ) {
        $payed = $check->check_paypal();
        if( $check->enroll_user( $payed ) && $payed )
            $check->send_mail();
    }
    // Reply with an empty 200 response to indicate to paypal the IPN was received correctly.
    header("HTTP/1.1 200 OK");
});
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
