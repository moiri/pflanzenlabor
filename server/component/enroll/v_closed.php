<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="card">
                <div class="card-body">
                    <h1>Ausgebucht</h1>
                    <h2>Der Kurs "<?php echo $this->class_name; ?>" vom <?php echo $this->date; ?> ist ausgebucht.</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
