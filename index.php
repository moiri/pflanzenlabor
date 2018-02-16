<?php
require "./server/service/router.php";
require "./server/service/pflanzenlaborDbMapper.php";
require "./server/service/globals.php";
require "./server/component/home/home.php";
require "./server/component/contact/contact.php";
require "./server/component/impressum/impressum.php";
require "./server/component/me/me.php";
require "./server/component/404/404.php";
require "./server/component/classes/classes.php";
require "./server/component/class/class.php";
$router = new Router();
$dbMapper = new PflanzenlaborDbMapper(DBSERVER,DBNAME,DBUSER,DBPASSWORD);
$dbMapper->setDbLocale('de_CH');

// map homepage
$view_path = '/server/view';
$router->setBasePath('/pflanzenlabor');
$router->map( 'GET', '/', function( $router ) {
    $page = new Home( $router );
    $page->print_view();
}, 'home');
$router->map( 'GET', '/giovina', function( $router ) {
    $page = new Me( $router );
    $page->print_view();
}, 'me');
$router->map( 'GET', '/kontakt', function( $router ) {
    $page = new Contact( $router );
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
$router->map( 'GET', '/impressum', function( $router ) {
    $page = new Impressum( $router );
    $page->print_view();
}, 'impressum');
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
