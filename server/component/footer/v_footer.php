<div class="container mb-3">
    <div class="card bg-light rounded">
        <div class="col card-body text-dark">
            <div class="row align-items-center">
                <div class="col-lg-8">
                    <div class="media">
                        <img class="middle float-left mr-3 align-self-center" src="<?php echo $this->router->get_asset_path("/img/logo-icon.svg"); ?>" alt="Logo Knospe" width="64" height="64">
                        <div class="media-body">
                            <blockquote class="blockquote mb-0">
                                <p class="mb-0">Die Natur ist kein Ausflugsziel, sie ist unser Zuhause!</p>
                                <footer class="blockquote-footer small">Gary Snyder</footer>
                            </blockquote>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 text-right">
                <a class="text-dark small" href="<?php echo $this->router->generate('impressum'); ?>"><?php echo $this->get_active_tag("impressum", "Impressum"); ?></a>
                    | <a class="text-dark small" href="<?php echo $this->router->generate('disclaimer'); ?>"><?php echo $this->get_active_tag("disclaimer", "Disclaimer"); ?></a>
                    | <a class="text-dark small" href="<?php echo $this->router->generate('agb'); ?>"><?php echo $this->get_active_tag("agb", "AGB"); ?></a></div>
            </div>
        </div>
    </div>
</div>
