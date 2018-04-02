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
    <div class="col mb-1 mb-lg-0 d-flex">
        <div class="card w-100 mt-1 mt-lg-0">
            <div class="card-header pb-1">
                <h5>Anmeldung <?php echo $this->name; ?></h5>
            </div>
            <div class="card-body pb-1">
                <?php
                    $this->print_date_list();
                ?>
            </div>
        </div>
    </div>
</div>
