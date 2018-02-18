<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="card">
                <div class="card-body">
                    <h1><?php echo $this->p_title; ?></h1>
                    <?php $this->print_page_description(); ?>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <div class="card-body pb-0">
<?php
    $this->print_class_items();
?>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
