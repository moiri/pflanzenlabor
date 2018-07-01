<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <h1>Versenden Fehlgeschlagen</h1>
                    <p>Das Formular konnte nicht versendet werden.</p>
                    <p>Bitte verwende die entsprechende From auf der <a href="<?php echo $this->router->generate( 'contact' ); ?>">Kontakt Seite</a>.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>

