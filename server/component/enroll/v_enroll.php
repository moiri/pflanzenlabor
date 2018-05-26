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
                    <img class="" src="<?php echo $this->router->get_asset_path("/img/hov_" . $this->class_img); ?>" alt="Bild zum Kurs <?php echo $this->class_name; ?>" height="150" width="150">
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
                    <form action="<?php echo $this->router->generate('payment', array('id' => $this->date_id)); ?>" method="post">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Vorname</label>
                                <input type="text" class="form-control" name="first_name" placeholder="Max" value="<?php echo $this->first_name; ?>" maxlength="100" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Nachname</label>
                                <input type="text" class="form-control" name="last_name" placeholder="Muster" value="<?php echo $this->last_name; ?>" maxlength="100" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label>Strasse</label>
                                <input type="text" class="form-control" name="street" placeholder="Beispielweg" value="<?php echo $this->street; ?>" maxlength="100" required>
                            </div>
                            <div class="form-group col-md-2">
                                <label>Hausnummer</label>
                                <input type="text" class="form-control" name="street_number" placeholder="1A" value="<?php echo $this->street_number; ?>" maxlength="10" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <label>PLZ</label>
                                <input type="text" class="form-control" name="zip" placeholder="3000" value="<?php echo $this->zip; ?>" maxlength="10" required>
                            </div>
                            <div class="form-group col-md-9">
                                <label>Ortsname</label>
                                <input type="text" class="form-control" name="city" placeholder="Beispielstadt" value="<?php echo $this->city; ?>" maxlength="100" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Telefonnummer</label>
                            <input type="text" class="form-control" name="phone" placeholder="(+41) 079 123 456" value="<?php echo $this->phone; ?>" maxlength="25" required>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" class="form-control" name="email" placeholder="meine.email@beispiel.ch" value="<?php echo $this->email; ?>" maxlength="100" required>
                        </div>
                        <?php $this->print_check_list(); ?>
                        <div class="form-group">
                            <label for="contactContent">Bemerkung</label>
                            <textarea class="form-control" name="comment" rows="3"><?php echo $this->comment; ?></textarea>
                        </div>
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox" value="" name="agb" required>
                            <label class="form-check-label mt-1 ml-2" for="contactSelf">
                            Ich habe die <a href="<?php echo $this->router->generate('agb'); ?>">AGB</a> gelesen und bin einverstanden
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary">Zur Kasse</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
