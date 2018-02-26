<div class="row mt-1">
    <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 pr-xl-1 pr-lg-1 pb-3">
        <a href="<?php echo $this->router->generate("class", array('id' => $this->id)); ?>" class="list-group-item text-dark invert-link-img h-100">
            <div class="media h-100">
                <img class="align-self-center mr-3" src="<?php echo $this->router->get_asset_path("/img/" . $this->img); ?>" alt="Bild zum Kurs <?php echo $this->class_name; ?>" height="150" width="150">
                <div class="media-body">
                    <small><?php echo $this->class_type; ?> | <?php echo $this->place; ?> | <?php echo $this->time; ?></small>
                    <h5 class="mb-1"><?php echo $this->class_name; ?></h5>
                    <p class="mb-0"><?php echo $this->subtitle; ?></p>
                </div>
            </div>
        </a>
    </div>
    <div class="col mt-xl-0 mt-lg-0 mt-md-2 mt-sm-2">
        <?php
            $this->print_date_list();
        ?>
    </div>
</div>
