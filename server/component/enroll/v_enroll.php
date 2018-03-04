<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="card">
                <div class="card-body">
                <h1><?php echo $this->p_title; ?> zum Kurs <?php echo $this->class_name; ?></h1>
                <h2>vom <?php echo $this->date; ?></h2>
                    <?php $this->print_page_description(); ?>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <h5 class="card-header">Anmeldeformular</h5>
                <div class="card-body">
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputFirstName">Vorname</label>
                                <input type="text" class="form-control" id="inputFirstName" placeholder="Max" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputLastName">Nachname</label>
                                <input type="text" class="form-control" id="inputLastName" placeholder="Muster" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="inputStreet">Strasse</label>
                                <input type="text" class="form-control" id="inputStreet" placeholder="Beispielweg" required>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputStreetNb">Hausnummer</label>
                                <input type="text" class="form-control" id="inputStreetNb" placeholder="1A" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <label for="inputZip">PLZ</label>
                                <input type="text" class="form-control" id="inputZip" placeholder="3000" required>
                            </div>
                            <div class="form-group col-md-9">
                                <label for="inputCity">Ortsname</label>
                                <input type="text" class="form-control" id="inputCity" placeholder="Beispielstadt" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="imputPhone">Telefonnummer</label>
                            <input type="text" class="form-control" id="inputPhone" placeholder="(+41) 079 123 456" required>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail">Email</label>
                            <input type="email" class="form-control" id="inputEmail" placeholder="meine.email@beispiel.ch" required>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Senden</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
        </div>
    </div>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
