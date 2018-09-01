<div class="card invert-link-img mb-3">
    <a class="card-body text-dark" href="<?php echo $this->router->generate($key); ?>">
        <div class="m-3">
            <img class="img-fluid d-none d-xl-flex" src="./img/startpage-<?php echo $key; ?>_400x400.png" alt="Bild zum Link <?php echo $name; ?>">
            <img class="img-fluid d-flex d-xl-none" src="./img/hov_startpage-<?php echo $key; ?>_400x400.png" alt="Bild zum Link <?php echo $name; ?>">
        </div>
        <h3 class="card-title"><?php echo $name; ?></h3>
    </a>
</div>
