<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container mb-3">
<div class="card">
    <div class="card-body">
        <h1>Best&auml;tigen und Bezahlen</h1>
        Bitte &uuml;berpr&uuml;fe deine pers&ouml;nlichen Daten und versichere dich dass Kurs und Kursdatum korrekt gew&auml;hlt sind.
    </div>
</div>
        </div>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="row row-eq-height">
                <div class="col-md-6">
<div class="card">
    <div class="card-header ">
        <h5 class="mb-0">Rechnungsadresse</h5>
    </div>
    <div class="card-body">
        <?php echo $this->first_name . " " . $this->last_name; ?></br>
        <?php echo $this->street . " " . $this->street_number; ?></br>
        <?php echo $this->zip . " " . $this->city; ?>
    </div>
</div>
                </div>
                <div class="col-md-6 mt-3 mt-md-0">
<div class="card h-100">
    <div class="card-header ">
        <h5 class="mb-0">Kontaktdaten</h5>
    </div>
    <div class="card-body">
        <?php echo $this->phone; ?></br>
        <?php echo $this->email; ?>
    </div>
</div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="row row-eq-height">
                <div class="col-md-6">
<div class="card h-100">
    <div class="card-header ">
        <h5 class="mb-0">Kursangaben</h5>
    </div>
    <div class="card-body">
        <dl class="row mb-0">
            <dt class="col-md-3 col-lg-2">Kurs</dt>
            <dd class="col-md-9 col-lg-10"><?php echo $this->class_name; ?></dd>
            <dt class="col-md-3 col-lg-2">Datum</dt>
            <dd class="col-md-9 col-lg-10"><?php echo $this->date; ?></dd>
            <dt class="col-md-3 col-lg-2">Preis</dt>
            <dd class="col-md-9 col-lg-10"><?php echo $this->class_cost; ?></dd>
        </dl>
    </div>
</div>
                </div>
                <div class="col-md-6 mt-3 mt-md-0">
<div class="card h-100">
    <div class="card-header ">
        <h5 class="mb-0">Infos and den Veranstalter</h5>
    </div>
    <div class="card-body">
        <dl class="row mb-0">
            <dt class="col-12">Di&auml;t</dt>
            <dd class="col-12"><?php echo $this->get_food_string(); ?></dd>
            <dt class="col-12">Bemerkung</dt>
            <dd class="col-12"><?php echo $this->comment; ?></dd>
        </dl>
    </div>
</div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
<div class="card">
    <div class="card-header ">
        <h5 class="mb-0">Bezahlen</h5>
    </div>
    <div class="card-body">
<?php
if( $this->show_enroll_warning )
    echo '<div class="alert alert-warning" role="alert">Du hast dich bereits für diesen Kurs angemeldet.</div>'
?>
        <div class="float-right">
            <a href="<?php echo $this->router->generate('enroll', array('id' => $this->date_id)); ?>" class="btn btn-secondary">Zur&uuml;ck</a>
        </div>
        <div class="<?php echo ( $this->show_enroll_warning ) ? "d-none" : "";?>">
            <form method="post" action="<?php echo $this->router->generate('thanks'); ?>" class="float-left">
                <input type="hidden" name="date_id" value="<?php echo $this->date_id; ?>">
                <button type="submit" class="btn btn-primary">auf Rechnung</button>
            </form>
            <form method="post" action="https://www<?php echo ( DEBUG ) ? ".sandbox" : ""; ?>.paypal.com/cgi-bin/webscr" target="_top" class="float-left ml-2">
                <input type="hidden" name="cmd" value="_s-xclick">
                <input type="hidden" name="hosted_button_id" value="<?php echo $this->paypal_key; ?>">
                <input type="hidden" name="date_id" value="<?php echo $this->date_id; ?>">
                <input type="hidden" name="custom" value="<?php echo $this->user->get_user_id(); ?>"/>
                <input type="hidden" name="type" value="">
                <button type="submit" class="btn btn-primary">mit PayPal</button>
            </form>
            <form method="post" action="<?php echo $this->router->generate('thanks'); ?>">
                <input id="vaucher-date-id" type="hidden" name="date_id" value="<?php echo $this->date_id; ?>">
                <input id="vaucher-url" type="hidden" name="url" value="<?php echo $this->router->generate('vaucher'); ?>">
                <div class="float-left mt-2 mt-lg-0 ml-lg-2 form-inline">
                    <input id="vaucher-code" type="text" class="form-control" name="vaucher" placeholder="Gutschein Code" maxlength="20" required>
                    <button type="submit" class="btn btn-primary" disabled>mit Gutschein</button>
                </div>
            </form>
        </div>
    </div>
</div>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
