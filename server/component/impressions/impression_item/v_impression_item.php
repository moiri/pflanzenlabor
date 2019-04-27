<div class="impression_item card mt-3">
    <div class="card-header">
        <div class="row align-items-center">
            <div class="col">
                <h3 class="mb-0"><?php echo $this->title; ?> &ndash;
                    <?php echo $this->subtitle; ?>
                </h3>
            </div>
            <div class="col-auto">
                <?php $this->print_link(); ?>
            </div>
        </div>
    </div>
    <div class="card-body">
        <?php $this->print_description(); ?>
        <div class="card-deck">
            <?php $this->print_items(); ?>
        </div>
    </div>
</div>
