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
                <p>Mit dem Planzenpäckli hast du die Gelegenheit eine Pflanze Schritt für Schritt kennen zu lernen und das mit all deinen Sinnen!</p>
                <p>Mit einem Jahresabo wird dir all zwei Monate ein Päckli per Post nach Hause geschickt. Darin befinden sich vier Kuverts. Mit jedem Kuvert erfährst du etwas mehr über eine bestimmte Pflanze.</p>
                <p>Gestartet wird mit dem Erfahren über deine Sinne – mit einem Tee, ohne dass du weisst was für ein Kraut es ist. Danach hast du die Gelegenheit dich mit dieser Pflanze durch ein Ausmalbild auseinanderzusetzen. Im dritten Kuvert erfährst du, um welche Pflanze es sich handelt und kannst verschiedene Infos darüber lesen. Schlussendlich, im vierten Kuvert, erhälst du vertiefte Infos sowie eine künstlerische Interpretation dieser Pflanze.</p>
                <p>So kannst du regelmässig eine neue Pflanze kennenlernen – zuerst Vorurteilslos mit deinen Sinnen, gefolgt von konzentriertem Wissen.</p>
                <p>Interessiert? Dann klicke auf untenstehenden Knopf um das aktuelle Angebot anzusehen.</p>
                <a href="<?php echo $this->router->generate("packets_offer"); ?>" class="btn btn-primary">Zum Angebot</a>
            </div>
        </div>
        <div class="col-lg-auto mb-3">
            <div class="card card-body h-100">
                <img class="img-fluid mx-auto" src="<?php echo $this->router->get_asset_path( "/img/packets_400x400.png" ); ?>" alt="Pflanzenp&auml;ckli" width="400px">
            </div>
        </div>
    </div>
    <?php $this->print_artists(); ?>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
