<div class="container">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="card card-body mb-3">
        <h1>Pflanzenp&auml;ckli Angebote</h1>
        <p>Ob f&uuml;r dich oder im Doppelpack, als Geschenk oder alles zusammen, hier findest verschiedenste Varianten des Pflanzenp&auml;ckli.</p>
        <a href="<?php echo $this->router->generate('packets'); ?>" class="mr-auto btn btn-secondary">Zur&uuml;ck</a>

    </div>
    <div class="alert alert-warning mb-3">
        <span>Das online Portal für den Kauf von Pflanzenp&auml;ckli ist in Bearbeitung und wird bald aufgeschaltet.
        Als Übergangslösung bitte ich dich P&auml;ckli direkt per Email (info@pflanzenlabor.ch) oder über das <a class="alert-link" href="<?php echo $this->router->generate('contact'); ?>">Kontaktformular</a> zu bestellen.</span>
    </div>
    <?php $this->print_items(); ?>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
