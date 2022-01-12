<div class="container">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="card card-body">
        <h1>Fragen, Anregungen, Gr&uuml;sse</h1>
    </div>
    <div class="card card-body mt-3">
Du hast eine Frage, Anregung oder Idee zum Pfanzenlabor oder du willst einfach "Hallo" sagen?
Ich freue mich &uuml;ber deine Kontaktaufnahme.
    </div>
    <div class="card mt-3">
        <h5 class="card-header">Kontaktformular</h5>
        <div class="card-body">
            <form action="<?php echo $this->router->generate('send'); ?>" method="post">
                <input type="text" name="contact_me_by_fax_only" value="" class="fax_field" tabindex="-1" autocomplete="off">
                <div class="form-group">
                    <label for="contactEmail">Email</label>
                    <input type="email" class="form-control" name="email" placeholder="meine.email@beispiel.ch" required>
                </div>
                <div class="form-group">
                    <label for="contactName">Name</label>
                    <input type="text" class="form-control" name="name" placeholder="Flora Muster" required>
                </div>
                <div class="form-group">
                    <label for="contactSubject">Titel</label>
                    <input type="text" class="form-control" name="subject" placeholder="Darum geht es mir" required>
                </div>
                <div class="form-group">
                    <label for="contactContent">Inhalt</label>
                    <textarea class="form-control" name="content" rows="3" required></textarea>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" name="self">
                    <label class="form-check-label mt-1 ml-2" for="contactSelf">
                        Sende eine Kopie an mich
                    </label>
                </div>
                <div class="form-check mb-3">
                    <input class="form-check-input" type="checkbox" value="" name="newsletter">
                    <label class="form-check-label mt-1 ml-2" for="contactSelf">
                        Ich m&ouml;chte den Newsletter abonnieren
                    </label>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Senden</button>
                </div>
            </form>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
