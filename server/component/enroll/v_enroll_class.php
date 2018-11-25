<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="row row-eq-height">
                <div class="col pr-md-0 d-flex">
                    <div class="card w-100">
                        <div class="card-body">
                            <h1>Anmeldung zum Kurs <?php echo $this->class_name; ?></h1>
                            <h2>vom <?php echo $this->date; ?></h2>
                        </div>
                    </div>
                </div>
                <div class="col-auto d-none d-md-block">
                    <div class="card">
                        <div class="card-body">
                    <img class="" src="<?php echo $this->router->get_asset_path("/img/assets/course/hov_" . $this->class_img); ?>" alt="Bild zum Kurs <?php echo $this->class_name; ?>" height="150" width="150">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <h5 class="card-header">Anmeldeformular</h5>
                <div class="card-body">
                    <form action="<?php echo $this->router->generate('payment', array('id' => $this->id_item)); ?>" method="post">
                        <?php $this->print_name($this->first_name, $this->last_name); ?>
                        <?php $this->print_address($this->street, $this->street_number, $this->zip, $this->city); ?>
                        <?php $this->print_contact($this->phone, $this->email); ?>
                        <?php $this->print_check_list(); ?>
                        <div class="form-group">
                            <label for="contactContent">Bemerkung</label>
                            <textarea class="form-control" name="comment" rows="3"><?php echo $this->comment; ?></textarea>
                        </div>
                        <?php $this->print_ticks(); ?>
                        <div class="d-flex">
                            <button type="submit" class="btn btn-primary">Zur Kasse</button>
                            <a href="<?php echo $this->router->generate('class', array('id' => $this->class_id)); ?>" class="btn btn-secondary ml-auto">Abbrechen</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
