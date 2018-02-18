<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="card">
                <div class="card-body">
                    <h1><?php echo $this->p_title; ?></h1>
                    <?php $this->print_page_description(); ?>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <h5 class="card-header">Kontaktformular</h5>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <label for="formGroupExampleInput">Email</label>
                            <input type="email" class="form-control" id="formGroupExampleInput" placeholder="meine.email@beispiel.ch" required>
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput2">Name</label>
                            <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Max Muster" required>
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput2">Titel</label>
                            <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Darum geht es mir" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Inhalt</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
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
