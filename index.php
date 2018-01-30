<?php
require "./server/AltoRouter/AltoRouter.php";
$router = new AltoRouter();

// map homepage
$router->setBasePath('/pflanzenlabor');
$router->map( 'GET', '/', '/view/home.php', 'home');
$router->map( 'GET', '/giovina', '/view/me.php', 'me');
$router->map( 'GET', '/kontakt', '/view/contact.php', 'contact');
$router->map( 'GET', '/kurse', '/view/classes.php', 'classes');
$router->map( 'GET', '/impressum', '/view/impressum.php', 'impressum');

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
<link rel="stylesheet" type="text/css" href="plugin/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script src="plugin/jquery/jquery.min.js" type="text/javascript"></script>
<script src="plugin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/main.js" type="text/javascript"></script>
</head>
<body>
<?php
// match current request url
$match = $router->match();

// call closure or throw 404 status
if( $match ) {
    require __DIR__ . $match['target'];
} else {
    // no route was matched
    /* header( $_SERVER["SERVER_PROTOCOL"] . ' 404 Not Found'); */
    require __DIR__ . '/view/404.php';
}
?>
</body>
</html>
