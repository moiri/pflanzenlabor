<div class="card card-body mt-3">
    <div class="row mb-3">
        <div class="col">
            <h1><?php echo $this->title; ?> &ndash;
                <?php echo $this->subtitle; ?>
            </h1>
        </div>
        <div class="col-auto">
        <?php $this->print_link(); ?>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <?php $this->print_img("Schwarzdorn-Archiv-1_500x500.png"); ?>
            <?php $this->print_cite("Esther", "Ich finde du machst das total gut. Es ist schön deine Freude und Begeisterung zu spüren und den Raum den du dir und uns dafür gibst, so vielfältig die Welt dieser Pflanze kennen zu lernen und zu erfahren.
Ich habe mich sehr frei gefühlt."); ?>
            <?php $this->print_img("Schwarzdorn-Archiv-2_500x500.png"); ?>
        </div>
        <div class="col">
            <?php $this->print_img("Schwarzdorn-Archiv-3_500x500.png"); ?>
            <?php $this->print_img("Schwarzdorn-Archiv-4_500x500.png"); ?>
        </div>
    </div>
</div>
