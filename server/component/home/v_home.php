<div class="container">
    <img class="img-fluid" src="<?php echo $this->router->get_asset_path("/img/logo.svg"); ?>" alt="Logo Pflanzenlabor">
    <div class="card mt-3">
        <div class="card-body">
            <div class="lead text-center">
Pflanzenwissen - erfahren mit allen Sinnen
            </div>
        </div>
    </div>
    <div class="card-deck mt-3 text-center">
        <?php $this->print_link("courses", "Programm"); ?>
        <?php $this->print_link("packets", "Pflanzenp&auml;ckli"); ?>
        <div class="w-100 d-none d-sm-block d-lg-none"><!-- wrap every 2 on sm--></div>
        <?php $this->print_link("impressions", "Impressionen"); ?>
        <div class="w-100 d-none d-lg-block"><!-- wrap every 3 on lg--></div>
        <?php $this->print_link_ext("vauchers", "https://pflanzenlabor.sumupstore.com/produkte", "Webshop"); ?>
        <div class="w-100 d-none d-sm-block d-lg-none"><!-- wrap every 2 on sm--></div>
        <?php $this->print_link("me", "Giovina"); ?>
        <?php $this->print_nearest_class_item(); ?>
    </div>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
