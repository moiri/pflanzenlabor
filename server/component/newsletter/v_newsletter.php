<div class="container">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="card card-body">
        <h1>Newsletter Abonnieren</h1>
    </div>
    <div class="card card-body mt-3">
        <p>Im Pflanzenlabor Newsletter wirst du jeweils über das neuste Kursangebot, sowie über spannende Projekte rund ums Pflanzenlabor informiert.</p>
        Diese Neuigkeiten werden ca. einmal im Monat per E-Mail versendet.
    </div>
    <div class="card mt-3">
        <h5 class="card-header">Abonnieren</h5>
        <div class="card-body">
            <p>Ich möchte über Neuigkeiten des Pflanzenlabor informiert werden.</p>
            <form action="<?php echo $this->router->generate('request_newsletter'); ?>" method="post">
                <input type="text" name="contact_me_by_fax_only" value="" class="fax_field" tabindex="-1" autocomplete="off">
                <div class="form-group">
                    <input type="text" class="form-control" name="firstname" placeholder="Flora">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="lastname" placeholder="Muster">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" name="email" placeholder="meine.email@beispiel.ch" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Anmelden</button>
                </div>
            </form>
        </div>
    </div>
    <div class="card mt-3">
        <h5 class="card-header">Abmelden</h5>
        <div class="card-body">
            <p>Ich will den Newsletter abbestellen.</p>
            <form action="<?php echo $this->router->generate('request_newsletter_cancel'); ?>" method="post">
                <input type="text" name="contact_me_by_fax_only" value="" class="fax_field" tabindex="-1" autocomplete="off">
                <div class="form-group">
                    <input type="email" class="form-control" name="email" placeholder="meine.email@beispiel.ch" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-secondary">Abmelden</button>
                </div>
            </form>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
