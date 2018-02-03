<div class="container-fluid">
    <div class="row">
        <div class="container">
            <div class="jumbotron mt-3 mb-3">
                <h1 class="display-1">Pflanzenlabor</h1>
                <h1>Giovina Nicolai</h1>
                <p class="lead">Sch&ouml;ner, beschreibender Satz &uuml;ber das Pflanzenlabor</p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card-deck text-center">
                <div id="link-kurse" class="card card-link">
                    <a class="text-dark" href="<?php echo $router->generate('classes'); ?>">
                        <img class="card-img-top rounded-circle" src="./img/placeholder.jpg" alt="Photo Giovina Nicolai">
                        <div class="card-body">
                            <h3 class="card-title">Kurse</h3>
                            <p class="card-text">Es stehen folgende Kurse im Angebot...</p>
                        </div>
                    </a>
                </div>
                <div id="link-kontakt" class="card card-link">
                    <a class="text-dark" href="<?php echo $router->generate('contact'); ?>">
                        <img class="card-img-top rounded-circle" src="./img/placeholder.jpg" alt="Photo Giovina Nicolai">
                        <div class="card-body">
                            <h3 class="card-title">Kontakt</h3>
                        </div>
                    </a>
                </div>
                <div id="link-mich" class="card card-link">
                <a class="text-dark" href="<?php echo $router->generate('me'); ?>">
                        <img class="card-img-top rounded-circle" src="./img/placeholder.jpg" alt="Photo Giovina Nicolai">
                        <div class="card-body">
                            <h3 class="card-title">&Uuml;ber Mich</h3>
                            <p class="card-text">Meine Name ist Giovina Nicolai...</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <?php require __DIR__ . '/footer.php'; ?>
    </div>
</div>
