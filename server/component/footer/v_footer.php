<div class="container my-3">
    <div class="card bg-light rounded">
        <div class="col card-body text-dark">
            <div class="row align-items-center">
                <div class="col">
                    <div class="media">
                        <img class="middle float-left mr-3 align-self-center rounded-circle" src="<?php echo $this->router->get_asset_path("/img/hov_placeholder_logo.jpg"); ?>" alt="Logo">
                        <div class="media-body">
                            <p>Pflanzenlabor Giovina Nicolai</p>
                            <span class="small"><i>"Die Natur ist kein Ausflugsziel, sie ist unser Zuhause!"</i> - Gary Snyder</span>
                        </div>
                    </div>
                </div>
                <div class="col text-right">
                    <a class="text-dark small" href="<?php echo $this->router->generate('impressum'); ?>">Impressum</a>
                    | <a class="text-dark small" href="<?php echo $this->router->generate('disclaimer'); ?>">Discalimer</a>
                    | <a class="text-dark small" href="<?php echo $this->router->generate('agb'); ?>">AGB</a></div>
            </div>
        </div>
    </div>
</div>
