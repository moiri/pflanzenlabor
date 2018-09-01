<div class="card mt-3">
    <div class="card-header">
        <div class="row align-items-center">
            <div class="col">
                <h1 class="mb-0"><?php echo $this->title; ?> &ndash;
                    <?php echo $this->subtitle; ?>
                </h1>
            </div>
            <div class="col-auto">
                <?php $this->print_link(); ?>
            </div>
        </div>
    </div>
    <div class="card-body">
        <p><?php echo $this->description; ?></p>
        <div class="card-deck">
            <?php $this->print_items(); ?>
        </div>
    </div>
</div>
