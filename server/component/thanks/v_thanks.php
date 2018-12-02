<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <h1>Vielen Dank!</h1>
                    <?php $this->print_paypal(); ?>
                    <?php $this->print_bill(); ?>
                    <?php $this->print_vaucher(); ?>
                    <?php $this->print_order(); ?>
                    Ich freue mich auf deinen Besuch. Bis bald!
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
        </div>
    </div>
    <div class="row mt-3">
        <?php $this->print_footer(); ?>
    </div>
</div>

