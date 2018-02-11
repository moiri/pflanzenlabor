<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="card">
                <div class="card-body">
                    <h1><?php echo $this->name; ?></h1>
<?php
    $this->print_description();
?>
                    <div class="list-group ml-3">
<?php
    $this->print_class_dates();
?>
                    </div>
                </div>
            </div>
<?php
    $this->print_class_sections();
?>
        </div>
    </div>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
