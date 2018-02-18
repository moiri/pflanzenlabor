<div class="media mb-4">
    <img class="" src="<?php echo $this->router->get_asset_path("/img/" . $this->img); ?>" alt="Bild zum Kurs <?php echo $this->class_name; ?>" height="150" width="150">
    <div class="media-body">
        <a href="<?php echo $this->router->generate("classes") . "/" . $this->id; ?>" class="list-group-item list-group-item-action flex-column align-items-start border-0 pb-1">
            <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1"><?php echo $this->class_name; ?></h5>
                <small><?php echo $this->class_type; ?> | <?php echo $this->place; ?> | <?php echo $this->time; ?></small>
            </div>
            <p class="mb-0"><?php echo $this->subtitle; ?></p>
        </a>
<?php
    $this->print_date_list();
?>
    </div>
</div>
