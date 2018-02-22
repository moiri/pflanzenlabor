<div class="media mb-4">
    <img class="" src="<?php echo $this->router->get_asset_path("/img/" . $this->img); ?>" alt="Bild zum Kurs <?php echo $this->class_name; ?>" height="150" width="150">
    <div class="media-body">
        <a href="<?php echo $this->router->generate("classes") . "/" . $this->id; ?>" class="list-group-item list-group-item-action flex-column align-items-start border-0 pb-1">
            <div class="row">
                <div class="col-lg-4">
                    <h5 class="mb-1"><?php echo $this->class_name; ?></h5>
                    <p class="mb-0"><?php echo $this->subtitle; ?></p>
                </div>
                <div class="col-lg-8 text-lg-right order-first order-lg-2 pb-1">
                    <small><?php echo $this->class_type; ?> | <?php echo $this->place; ?> | <?php echo $this->time; ?></small>
                </div>
            </div>
        </a>
<?php
    $this->print_date_list();
?>
    </div>
</div>
