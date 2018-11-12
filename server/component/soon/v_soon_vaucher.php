<div class="container">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="col card card-body">
        <h1>Gutscheine</h1>
    </div>
    <div class="row row-eq-height mt-3">
        <div class="col mb-3">
            <div class="card card-body h-100">
                <p>Das online Portal für den Kauf von Gutscheinen ist in Bearbeitung und wird bald aufgeschaltet. Als Übergangslösung bitte ich dich Gutscheine für</p>
                <ul>
                    <li>Pflanzenspaziergang (CHF 20.-)</li>
                    <li>Pflanzenwerkstatt (CHF 60.-)</li>
                    <li>Pflanzenexkursion (CHF 120.-)</li>
                </ul>
                <p>direkt per Email (info@pflanzenlabor.ch) oder über das <a href="<?php echo $this->router->generate('contact'); ?>">Kontaktformular</a> zu bestellen.</p>
            </div>
        </div>
        <div class="col-lg-auto d-none d-lg-block mb-3 h-100">
            <div class="card card-body">
                <img class="img-fluid mx-auto" src="<?php echo $this->router->get_asset_path( "/img/busy_400x400.png" ); ?>" alt="Busy Bee" width="200px">
            </div>
        </div>
    </div>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
