<div class="container my-3">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand navbar-logo" href="<?php echo $this->router->generate( 'home' ); ?>">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link <?php echo $this->get_active_css( 'classes' ); ?>" href="<?php echo $this->router->generate( 'classes' ); ?>">Kurse</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <?php echo $this->get_active_css( 'contact' ); ?>" href="<?php echo $this->router->generate( 'contact' ); ?>">Kontakt</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <?php echo $this->get_active_css( 'me' ); ?>" href="<?php echo $this->router->generate( 'me' ); ?>">&Uuml;ber Mich</a>
                </li>
            </ul>
        </div>
    </nav>
</div>
