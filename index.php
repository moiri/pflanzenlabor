<?php
require "./server/Router.php";
require "./server/dbMapper/pflanzenlaborDbMapper.php";
require "./server/dbMapper/globals.php";
$router = new Router();
$dbMapper = new PflanzenlaborDbMapper(DBSERVER,DBNAME,DBUSER,DBPASSWORD);
$dbMapper->setDbLocale('de_CH');

// map homepage
$view_path = '/server/view';
$router->setBasePath('/pflanzenlabor');
$router->map( 'GET', '/', $view_path . '/home.php', 'home');
$router->map( 'GET', '/giovina', $view_path . '/me.php', 'me');
$router->map( 'GET', '/kontakt', $view_path . '/contact.php', 'contact');
$router->map( 'GET', '/kurse', $view_path . '/classes.php', 'classes');
$router->map( 'GET', '/kurse/[i:id]', $view_path . '/class.php', 'class');
$router->map( 'GET', '/impressum', $view_path . '/impressum.php', 'impressum');
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
// match current request url
$route = $router->match();

// call closure or throw 404 status
if( $route ) {
    require __DIR__ . $route['target'];
} else {
    // no route was matched
    /* header( $_SERVER["SERVER_PROTOCOL"] . ' 404 Not Found'); */
    require __DIR__ . $view_path . '/404.php';
}
?>
</body>
</html>
