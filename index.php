<?php
require "./server/service/router.php";
require "./server/service/pflanzenlaborDbMapper.php";
require "./server/service/globals.php";
require "./server/component/home/home.php";
require "./server/component/contact/contact.php";
require "./server/component/impressum/impressum.php";
require "./server/component/disclaimer/disclaimer.php";
require "./server/component/agb/agb.php";
require "./server/component/me/me.php";
require "./server/component/404/404.php";
require "./server/component/classes/classes.php";
require "./server/component/class/class.php";
require "./server/component/enroll/enroll.php";
$router = new Router();
$dbMapper = new PflanzenlaborDbMapper(DBSERVER,DBNAME,DBUSER,DBPASSWORD);
$dbMapper->setDbLocale('de_CH');

// map homepage
$view_path = '/server/view';
$router->setBasePath('/pflanzenlabor');
$router->map( 'GET', '/', function( $router, $db ) {
    $page = new Home( $router, $db, 'home' );
    $page->print_view();
}, 'home');
$router->map( 'GET', '/giovina', function( $router, $db ) {
    $page = new Me( $router, $db, 'giovina' );
    $page->print_view();
}, 'me');
$router->map( 'GET', '/kontakt', function( $router, $db ) {
    $page = new Contact( $router, $db, 'kontakt' );
    $page->print_view();
}, 'contact');
$router->map( 'GET', '/kurse', function( $router, $db ) {
    $page = new Classes( $router, $db, 'kurse' );
    $page->print_view();
}, 'classes');
$router->map( 'GET', '/kurse/[i:id]', function( $router, $db, $id ) {
    $page = new ClassPage( $router, $db, '', intval( $id ) );
    $page->print_view();
}, 'class');
$router->map( 'GET', '/anmeldung/[i:id]', function( $router, $db, $id ) {
    $page = new Enroll( $router, $db, 'anmeldung', intval( $id ) );
    $page->print_view();
}, 'enroll');
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
// match current request url
$router->update_route();
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="de">
<head>
<title>Pflanzenlabor</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="DC.creator" content="Simon Maurer" />
<meta name="DC.contributor" content="Giovina Nicolai" />
<meta name="DC.title" content="Pflanzenlabor" />
<meta name="DC.date" content="2018-01-27" />
<meta name="DC.language" content="de" />
<link rel="stylesheet" type="text/css" href="<?php echo $router->get_asset_path("/plugin/bootstrap/css/bootstrap.min.css"); ?>" />
<link rel="stylesheet" type="text/css" href="<?php echo $router->get_asset_path("/css/main.css"); ?>" />
<script src="<?php echo $router->get_asset_path("/plugin/jquery/jquery.min.js"); ?>" type="text/javascript"></script>
<script src="<?php echo $router->get_asset_path("/plugin/bootstrap/js/bootstrap.min.js"); ?>" type="text/javascript"></script>
<script src="<?php echo $router->get_asset_path("/js/main.js"); ?>" type="text/javascript"></script>
</head>
<body>
<?php

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
</body>
</html>
