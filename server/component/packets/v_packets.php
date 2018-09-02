<div class="container">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="card card-body">
        <h1>Pflanzenp&auml;ckli</h1>
    </div>
    <div class="row row-eq-height mt-3">
        <div class="col mb-3">
            <div class="card card-body h-100">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eu ultrices vitae auctor eu augue. Erat velit scelerisque in dictum non consectetur. Donec adipiscing tristique risus nec. Ipsum dolor sit amet consectetur adipiscing elit pellentesque. Sed viverra ipsum nunc aliquet bibendum enim facilisis gravida. Amet mattis vulputate enim nulla aliquet porttitor. Vitae tempus quam pellentesque nec nam aliquam sem. Neque viverra justo nec ultrices. Volutpat odio facilisis mauris sit amet massa vitae. Nunc sed blandit libero volutpat sed cras ornare arcu dui.</p>

<p>Mi eget mauris pharetra et ultrices neque ornare aenean euismod. Senectus et netus et malesuada. Diam vel quam elementum pulvinar etiam non. Faucibus a pellentesque sit amet porttitor eget dolor. Diam vel quam elementum pulvinar etiam. Mauris in aliquam sem fringilla ut morbi tincidunt augue. At quis risus sed vulputate odio. In eu mi bibendum neque. Eget duis at tellus at urna condimentum mattis. Nam at lectus urna duis convallis convallis. Posuere sollicitudin aliquam ultrices sagittis orci. Aliquam eleifend mi in nulla posuere sollicitudin.</p>
                <a href="<?php echo $this->router->generate("packets_offer"); ?>" class="btn btn-primary">Zum Angebot</a>
            </div>
        </div>
        <div class="col-lg-auto mb-3">
            <div class="card card-body h-100">
                <img class="img-fluid mx-auto" src="<?php echo $this->router->get_asset_path( "/img/packets_400x400.png" ); ?>" alt="Pflanzenp&auml;ckli" width="400px">
            </div>
        </div>
    </div>
    <div class="card mb-3">
        <div class="card-header">
            <h5 class="mb-0">K&uuml;nstlerische Interpretation der Pflanze</h5>
        </div>
        <div class="card-body">
            <?php $this->print_artists(); ?>
        </div>
    </div>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
