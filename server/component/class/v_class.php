<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="row">
                <div class="col-xl-7 col-lg-7 col-md-7 col-sm">
                    <div class="card">
                        <div class="card-body">
                            <h1>
                                <?php echo $this->name; ?> &ndash;
                                <small><?php echo $this->subtitle; ?></small>
                            </h1>
        <?php
            $this->print_description();
        ?>
                        </div>
                    </div>
                </div>
                <div class="col">
<?php
    $this->print_class_sections();
?>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
