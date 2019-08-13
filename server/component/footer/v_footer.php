<div class="container mb-3">
    <div class="card card-body bg-light rounded">
        <div class="row align-items-center">
            <div class="col">
                <div class="media">
                    <img class="middle float-left mr-3 align-self-center" src="<?php echo $this->router->get_asset_path("/img/footer/logo-icon-dark.svg"); ?>" alt="Logo Knospe" width="64" height="64">
                    <div class="media-body">
                        <blockquote class="blockquote mb-0">
                            <p class="mb-0">Nature is not a place to visit. It is home.</p>
                            <footer class="blockquote-footer small">Gary Snyder</footer>
                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-auto mt-md-0 mt-2">
                <div class="ml-3 float-right border-left pl-3">
                    <a class="text-dark small d-flex" href="<?php echo $this->router->generate('impressum'); ?>"><?php echo $this->get_active_tag("impressum", "Impressum"); ?></a>
                    <a class="text-dark small d-flex" href="<?php echo $this->router->generate('disclaimer'); ?>"><?php echo $this->get_active_tag("disclaimer", "Disclaimer"); ?></a>
                    <a class="text-dark small d-flex" href="<?php echo $this->router->generate('agb'); ?>"><?php echo $this->get_active_tag("agb", "AGB"); ?></a>
                </div>
                <div class="d-flex">
                    <div class="footer-icon-container">
                        <?php $this->print_icon("newsletter", "News"); ?>
                    </div>
                    <div class="footer-icon-container">
                        <?php $this->print_icon("contact", "Kontakt"); ?>
                    </div>
                    <div class="footer-icon-container">
                        <a href="https://www.instagram.com/pflanzenlabor" target="_blank" class="footer-icon-link text-dark">
                            <div class="footer-icon footer-icon-ig m-auto"></div>
                            <div class="text-center"><small>Instagram</small></div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
