<div class="card">
    <div class="card-header pb-1">
    <h5>N&auml;chster Kurs vom <?php echo $this->date; ?></h5>
    </div>
    <div class="card-body">
        <a class="btn btn-primary float-right" href="<?php echo $this->router->generate("class", array('id' => $this->id)); ?>" class="">Anmelden</a>
        <small><?php echo $this->type; ?> | <?php echo $this->place; ?> | <?php echo $this->time; ?></small>
        <h5 class="mb-1"><?php echo $this->name; ?> &ndash;
            <small><?php echo $this->subtitle; ?></small>
        </h5>
    </div>
</div>

