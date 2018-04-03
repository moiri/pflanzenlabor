<?php $this->print_header(); ?>
<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <h1>Fragen, Anregungen, Gr&uuml;sse</h1>
Du hast eine Frage, Anregung oder Idee zum Pfanzenlabor oder du willst einfach "Hallo" sagen?
Ich freue mich &uuml;ber deine Kontaktaufnahme.
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="display:none">
        <div class="container mt-3">
            <div class="card">
                <h5 class="card-header">Newsletter</h5>
                <div class="card-body">
<p>Ich möchte über Neuigkeiten des Pflanzenlabor informiert werden.</p>
                    <form>
                        <div class="form-group">
                            <input type="email" class="form-control" id="newsletterEmail" placeholder="meine.email@beispiel.ch" required>
                        </div>
                        <div class="form-group">
                            <button type="submit" formaction="/action_page1.php" class="btn btn-primary">Anmelden</button>
                            <button type="submit" formaction="/action_page2.php" class="btn btn-secondary">Abmelden</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container mt-3">
            <div class="card">
                <h5 class="card-header">Kontaktformular</h5>
                <div class="card-body">
                    <form action="<?php echo $this->router->generate('send'); ?>" method="post">
                        <div class="form-group">
                            <label for="contactEmail">Email</label>
                            <input type="email" class="form-control" name="email" placeholder="meine.email@beispiel.ch" required>
                        </div>
                        <div class="form-group">
                            <label for="contactName">Name</label>
                            <input type="text" class="form-control" name="name" placeholder="Max Muster" required>
                        </div>
                        <div class="form-group">
                            <label for="contactSubject">Titel</label>
                            <input type="text" class="form-control" name="subject" placeholder="Darum geht es mir" required>
                        </div>
                        <div class="form-group">
                            <label for="contactContent">Inhalt</label>
                            <textarea class="form-control" name="content" rows="3" required></textarea>
                        </div>
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox" value="" name="self">
                            <label class="form-check-label mt-1 ml-2" for="contactSelf">
                                Sende eine Kopie an mich
                            </label>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Senden</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
