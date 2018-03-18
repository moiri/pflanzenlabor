<?php $this->print_header(); ?>
<div class="container-fluid">
    <div class="row">
        <div class="container mt-3">
            <img class="img-fluid" src="<?php echo $this->router->get_asset_path("/img/logo.svg"); ?>" alt="Logo Pflanzenlabor">
        </div>
    </div>
    <div class="row">
        <div class="container mt-3">
            <div class="card">
                <div class="card-body">
                    <div class="lead text-center">
Pflanzen in ihrem natürlichem Umfeld kennen lernen &ndash; mit allen Sinnen.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container mt-3">
            <div class="row text-center">
                <div class="col-md">
                    <div class="card card-link invert-link-img">
                        <a class="text-dark" href="<?php echo $this->router->generate('classes'); ?>">
                            <img class="card-img-top" src="./img/startpage-courses_400x400.png" alt="Bild zum Link Kurse">
                            <div class="card-body">
                                <h3 class="card-title">Kurse</h3>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md">
                    <div class="card card-link invert-link-img mt-3 mt-md-0">
                        <a class="text-dark" href="<?php echo $this->router->generate('contact'); ?>">
                            <img class="card-img-top img-fluid" src="./img/startpage-contact_400x400.png" alt="">
                            <div class="card-body">
                                <h3 class="card-title">Kontakt</h3>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md">
                    <div class="card card-link invert-link-img mt-3 mt-md-0">
                        <a class="text-dark" href="<?php echo $this->router->generate('me'); ?>">
                            <img class="card-img-top" src="./img/startpage-me_400x400.png" alt="Photo Giovina Nicolai">
                            <div class="card-body">
                                <h3 class="card-title">&Uuml;ber Mich</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container mt-3">
            <?php $this->print_nearest_class_item(); ?>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
