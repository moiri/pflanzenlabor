<div>
    <small><?php echo $this->type; ?> | <?php echo $this->place; ?></small>
</div>
<div class="mt-3"><?php echo $this->date; ?><br><?php echo $this->time; ?></div>
<h5 class="mt-4"><?php echo $this->name; ?><br>&ndash;<br><?php echo $this->subtitle; ?></h5>
<a class="btn btn-primary mt-auto" href="<?php echo $this->router->generate("class", array('id' => $this->id)); ?>" class="">Anmelden</a>
