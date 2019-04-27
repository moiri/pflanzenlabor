<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container">
            <input id="impression-url-fetch" type="hidden" name="url" value="<?php echo $this->router->generate('impressions_fetch'); ?>">
            <div class="card">
                <div class="card-body">
                    <h1>Impressionen</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container impressions">
<?php
    $this->print_impression_items();
?>
        </div>
    </div>
    <div id="impressions-footer" class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>
