<div class="container-fluid">
    <div class="row">
        <?php require __DIR__ . '/header.php'; ?>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="card">
                <div class="card-body">
                    Netter Text der um Kontaktaufnahme bittet.
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <div class="card-header">
                    Kontaktformular
                </div>
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
        <?php require __DIR__ . '/footer.php'; ?>
    </div>
</div>
