<div class="container">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="card card-body">
        <h1>Pflanzenp&auml;ckli</h1>
    </div>
    <div class="row row-eq-height mt-3">
        <div class="col mb-3">
            <div class="card card-body h-100">
                <p>Tauche in eine neue Pflanzenwelt ein – Schritt für Schritt, mit all deinen Sinnen.</p>
                <dl>
                    <dt>Erfahren</dt>
                    <dd>Duft und Geschmack eines Teekrauts wirst du in einem ersten Schritt kennenlernen, ohne dass dir der Name der Pflanze bekannt ist. Eine Anleitung zum achtsamen Teegenuss begleitet dich dabei.</dd>
                    <dt>Befassen</dt>
                    <dd>Eine ornamentale Illustration in Schwarz-Weiss, zusammen mit einem kurzen Zitat, verrät dir mehr über die Pflanze. In diesem Schritt kannst du dich visuell an die Pflanze annähern.</dd>
                    <dt>Informieren</dt>
                    <dd>In einem detaillierten Porträt – samt botanischer Zeichnung – erfährst du Wissenswertes über die Pflanze, ihre Heilwirkung und Anwendung.</dd>
                    <dt>Vertiefen</dt>
                    <dd>Zur Abrundung findest du eine künstlerische Interpretation, einen ergänzenden Text, eine Anleitung oder ein Rezept – als Inspiration, diese neue (oder alte) Pflanzenbekanntschaft zu intensivieren.</dd>
                </dl>
                <a target="_blank" href="https://pflanzenlabor.sumupstore.com/kategorie/pflanzenpackli" class="btn btn-primary">Zum Webshop</a>
            </div>
        </div>
        <div class="col-lg-auto mb-3">
            <div class="card card-body h-100">
                <img class="img-fluid mx-auto" src="<?php echo $this->router->get_asset_path( "/img/packets_400x400.jpg" ); ?>" alt="Pflanzenp&auml;ckli" width="400px">
            </div>
        </div>
    </div>
    <?php $this->print_artists(); ?>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
