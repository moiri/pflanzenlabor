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
            <dt class="col-12">Kurs</dt>
            <dd class="col-12"><?php echo $this->class_name; ?></dd>
            <dt class="col-12">Datum</dt>
            <dd class="col-12"><?php echo $this->date; ?></dd>
            <dt class="col-12">Preis</dt>
            <dd class="col-12"><?php echo $this->class_cost; ?></dd>
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
            <?php $this->print_food(); ?>
            <dt class="col-12">Bemerkung</dt>
            <dd class="col-12"><?php echo $this->comment; ?></dd>
            <dt class="col-12">Newsletter</dt>
            <dd class="col-12"><?php echo $this->get_newsletter_string(); ?></dd>
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
        <?php $this->print_back("enroll"); ?>
        <div class="<?php echo ( $this->show_enroll_warning ) ? "d-none" : "";?>">
            <?php $this->print_bill(); ?>
            <?php $this->print_paypal(); ?>
            <form method="post" action="<?php echo $this->router->generate('thanks'); ?>">
                <input id="vaucher-date-id" type="hidden" name="date_id" value="<?php echo $this->id_item; ?>">
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
