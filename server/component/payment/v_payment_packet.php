<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container mb-3">
<div class="card">
    <div class="card-body">
        <h1>Best&auml;tigen und Bezahlen</h1>
        Bitte &uuml;berpr&uuml;fe deine pers&ouml;nlichen Daten und versichere dich dass du das korrekte Pflanzenp&auml;ckli ausgew&auml;hlt hast.
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
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header ">
                            <h5 class="mb-0">Lieferadresse</h5>
                        </div>
                        <div class="card-body">
                            <?php echo $this->delivery_first_name . " " . $this->delivery_last_name; ?></br>
                            <?php echo $this->delivery_street . " " . $this->delivery_street_number; ?></br>
                            <?php echo $this->delivery_zip . " " . $this->delivery_city; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row <?php echo $display; ?>">
        <div class="container mb-3">
            <div class="row row-eq-height">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header ">
                            <h5 class="mb-0">Geschenkadresse</h5>
                        </div>
                        <div class="card-body">
                            <?php echo $this->gift_first_name . " " . $this->gift_last_name; ?></br>
                            <?php echo $this->gift_street . " " . $this->gift_street_number; ?></br>
                            <?php echo $this->gift_zip . " " . $this->gift_city; ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header ">
                            <h5 class="mb-0">Geschenknachricht</h5>
                        </div>
                        <div class="card-body">
                            <?php echo $this->comment; ?></br>
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
                            <h5 class="mb-0">Gew&auml;htes Pflanzenp&auml;ckli</h5>
                        </div>
                        <div class="card-body">
                            <dl class="row mb-0">
                                <dt class="col-12">Pflanzenp&auml;ckli</dt>
                                <dd class="col-12"><?php echo $this->packet_name; ?></dd>
                                <dt class="col-12">Preis</dt>
                                <dd class="col-12"><?php echo $this->packet_price; ?></dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-3 mt-md-0">
                    <div class="card h-100">
                        <div class="card-header ">
                            <h5 class="mb-0">Kontaktdaten</h5>
                        </div>
                        <div class="card-body">
                            <dl class="row mb-0">
                                <dt class="col-12">Telefon</dt>
                                <dd class="col-12"><?php echo $this->phone; ?></dd>
                                <dt class="col-12">Email</dt>
                                <dd class="col-12"><?php echo $this->email; ?></dd>
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
        <div class="float-right">
            <a href="<?php echo $this->router->generate('packets_enroll', array('id' => $this->id_item)); ?>" class="btn btn-secondary">Zur&uuml;ck</a>
        </div>
        <form method="post" action="<?php echo $this->router->generate('thanks'); ?>" class="float-left">
            <input type="hidden" name="date_id" value="<?php echo $this->id_item; ?>">
            <button type="submit" class="btn btn-primary">auf Rechnung</button>
        </form>
        <form method="post" action="https://www<?php echo ( DEBUG ) ? ".sandbox" : ""; ?>.paypal.com/cgi-bin/webscr" target="_top" class="float-left ml-2">
            <input type="hidden" name="cmd" value="_s-xclick">
            <input type="hidden" name="hosted_button_id" value="<?php echo $this->paypal_key; ?>">
            <input type="hidden" name="date_id" value="<?php echo $this->id_item; ?>">
            <input type="hidden" name="custom" value="<?php echo $this->user->get_user_id(); ?>"/>
            <input type="hidden" name="type" value="">
            <button type="submit" class="btn btn-primary">mit PayPal</button>
        </form>
    </div>
</div>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
