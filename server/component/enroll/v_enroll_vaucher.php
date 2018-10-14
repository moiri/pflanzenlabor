<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="row row-eq-height">
                <div class="col pr-md-0 d-flex">
                    <div class="card w-100">
                        <div class="card-body">
                            <h1>Gutschein Kaufen</h1>
                            <h2><?php echo $this->vaucher_name; ?></h2>
                        </div>
                    </div>
                </div>
                <div class="col-auto d-none d-md-block">
                    <div class="card">
                        <div class="card-body">
                    <img class="" src="<?php echo $this->router->get_asset_path("/img/" . $this->vaucher_img); ?>" alt="Bild zum Kurs <?php echo $this->vaucher_name; ?>" height="100" width="100">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <form action="<?php echo $this->router->generate('vauchers_payment', array('id' => $this->id_item)); ?>" method="post">
                <div class="card mb-3">
                    <h5 class="card-header">Rechungsadresse</h5>
                    <div class="card-body">
                        <?php $this->print_main_address(); ?>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" name="dito-delivery">
                            <label class="form-check-label mt-1 ml-2">
                                Verwende als Lieferadresse
                            </label>
                        </div>
                    </div>
                </div>
                <div id="delivery-address" class="card mb-3">
                    <h5 class="card-header">Lieferadresse</h5>
                    <div class="card-body">
                        <?php $this->print_other_address("delivery-"); ?>
                    </div>
                </div>
                <div class="card mb-3 <?php echo $display; ?>">
                    <h5 class="card-header">Geschenknachricht</h5>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="contactContent">Nachricht auf dem Gutschein (maximal 500 Zeichen)</label>
                            <textarea class="form-control" name="comment" rows="3" maxlength=500></textarea>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <h5 class="card-header">Kontakt</h5>
                    <div class="card-body">
                        <?php $this->print_contact($this->phone, $this->email); ?>
                        <?php $this->print_ticks(); ?>
                        <div class="d-flex">
                            <button type="submit" class="btn btn-primary">Zur Kasse</button>
                            <a href="<?php echo $this->router->generate('vauchers'); ?>" class="btn btn-secondary ml-auto">Abbrechen</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
