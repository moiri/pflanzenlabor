<div class="row row-eq-height mt-3">
    <div class="col-12 col-lg-7 pr-lg-1 d-flex">
        <a href="<?php echo $this->router->generate("class", array('id' => $this->id)); ?>" class="list-group-item text-dark invert-link-img w-100">
            <div class="media">
                <img class="align-self-center mr-3" src="<?php echo $this->router->get_asset_path("/img/" . $this->img); ?>" alt="Bild zum Kurs <?php echo $this->name; ?>" height="150" width="150">
                <div class="media-body">
                    <small><?php echo $this->type; ?> | <?php echo $this->place; ?> | <?php echo $this->time; ?></small>
                    <h4><?php echo $this->name; ?> &ndash;
                        <small><?php echo $this->subtitle; ?></small>
                    </h4>
                    <p class="mt-3"><?php echo $this->desc; ?></p>
                </div>
            </div>
        </a>
    </div>
    <?php
        $this->print_class_preview();
    ?>
</div>
