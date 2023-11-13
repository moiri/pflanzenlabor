<div class="container">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="card card-body">
        <h1>Fragen, Anregungen, Gr&uuml;sse</h1>
    </div>
    <div class="card card-body mt-3">
Du hast eine Frage, Anregung oder Idee zum Pfanzenlabor oder du willst einfach "Hallo" sagen?
Ich freue mich &uuml;ber deine Kontaktaufnahme.
    </div>
    <div class="row mt-3">
        <div class="col-lg-7">
            <img class="img-fluid" src="<?php echo $this->router->get_asset_path("/img/logo.svg"); ?>" alt="Logo Pflanzenlabor">
        </div>
        <div class="col-lg-5 mt-lg-0 mt-3">
            <div class="card">
                <div class="card-body">
                    <p>Giovina Nicolai</br>Lochbachstrasse 40</br>3414 Oberburg</br>Schweiz</p>
                    <p class="mb-0">info@pflanzenlabor.ch</br>+41 79 636 10 57</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
