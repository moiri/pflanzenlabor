<?php
$uri = $_SERVER['REQUEST_URI'];
$active_css = 'active';
$active = array(
    'classes' => ($router->generate('classes') == $uri) ? $active_css : '',
    'contact' => ($router->generate('contact') == $uri) ? $active_css : '',
    'me' => ($router->generate('me') == $uri) ? $active_css : ''
);
?>
<div class="container mb-3">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="<?php echo $router->generate('home'); ?>">
            <img class="rounded-circle" src="./img/placeholder_logo.jpg" alt="Logo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link <?php echo $active['classes']; ?>" href="<?php echo $router->generate('classes'); ?>">Kurse</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <?php echo $active['contact']; ?>" href="<?php echo $router->generate('contact'); ?>">Kontakt</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <?php echo $active['me']; ?>" href="<?php echo $router->generate('me'); ?>">&Uuml;ber Mich</a>
                </li>
            </ul>
        </div>
    </nav>
</div>
