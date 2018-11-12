<div class="container">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="card card-body">
        <h1>Newsletter Abonnieren</h1>
    </div>
    <div class="card card-body mt-3">
        <p>Im Pflanzenlabor Newsletter wirst du jeweils über das neuste Kursangebot, sowie über spannende Projekte rund ums Pflanzenlabor informiert.</p>
        <p>Diese Neuigkeiten werden ca. einmal im Monat per E-Mail versendet.</p>
        Abmelden kannst du dich jederzeit, indem du auf ein Newsletter-Mail mit STOP antwortest.
    </div>
    <div class="card mt-3">
        <h5 class="card-header">Newsletter</h5>
        <div class="card-body">
            <p>Ich möchte über Neuigkeiten des Pflanzenlabor informiert werden.</p>
            <form action="<?php echo $this->router->generate('request_newsletter'); ?>" method="post">
                <div class="form-group">
                    <input type="email" class="form-control" name="email" placeholder="meine.email@beispiel.ch" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Anmelden</button>
                </div>
            </form>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
