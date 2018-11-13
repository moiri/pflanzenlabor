<div class="card mb-3">
    <div class="card-header">
        <h5 class="mb-0"><?php echo $title; ?></h5>
    </div>
    <div class="card-body row">
        <div class="col-auto">
            <img class="" src="<?php echo $this->router->get_asset_path("/img/assets/" . $img); ?>" alt="Bild zum Angebot <?php echo $title; ?>" height="100" width="100">
        </div>
        <div class="col-12 col-md align-self-start order-md-1 order-last mt-2 mt-md-0">
            <?php echo $text; ?>
        </div>
        <div class="col col-md-auto order-md-2">
            <!--<a href="<?php echo $this->router->generate("vauchers_enroll", array("id" => $id)); ?>" class="btn btn-primary w-100 mb-3">Kaufen</a>-->
            <button type="button" class="btn btn-outline-secondary btn-sm w-100" disabled><?php echo $price; ?></button>
        </div>
    </div>
</div>
