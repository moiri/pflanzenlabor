<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <h1>Programm</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
<?php
    $this->print_class_items();
?>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
