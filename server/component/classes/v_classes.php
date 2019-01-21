<div class="container">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="card">
        <div class="card-body">
            <h1>Programm</h1>
        </div>
    </div>
<?php
    $this->print_class_types();
?>
<?php
    $this->print_class_items();
?>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
