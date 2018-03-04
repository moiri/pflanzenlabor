<div class="container-fluid">
    <div class="row">
        <div class="container">
            <div class="jumbotron mt-3 mb-3">
                <h1 class="display-1"><?php echo $this->p_title; ?></h1>
                <h1><?php echo $this->p_subtitle; ?></h1>
                <p class="lead">
                    <?php $this->print_page_description(); ?>
                </p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card-deck text-center">
                <div class="card card-link invert-link-img">
                    <a class="text-dark" href="<?php echo $this->router->generate('classes'); ?>">
                        <img class="card-img-top" src="./img/startpage-courses_400x400.png" alt="Bild zum Link Kurse">
                        <div class="card-body">
                            <h3 class="card-title">Kurse</h3>
                        </div>
                    </a>
                </div>
                <div class="card card-link invert-link-img">
                    <a class="text-dark" href="<?php echo $this->router->generate('contact'); ?>">
                        <img class="card-img-top" src="./img/startpage-contact_400x400.png" alt="">
                        <div class="card-body">
                            <h3 class="card-title">Kontakt</h3>
                        </div>
                    </a>
                </div>
                <div class="card card-link invert-link-img">
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
    <div class="row">
        <div class="container mt-3">
            <?php $this->print_nearest_class_item(); ?>
        </div>
    </div>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
