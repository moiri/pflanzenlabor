<?php $this->print_header(); ?>
<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <h1>Vielen Dank!</h1>
<?php 
if( $this->is_paypal() )
    echo "Deine Transaktion wurde abgeschlossen und Du erh&auml;lst per E-Mail eine Bestätigung für deinen Kauf.";
?>
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
