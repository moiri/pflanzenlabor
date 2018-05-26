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
if( $this->is_paypal )
    echo "<p>Deine Transaktion wurde abgeschlossen und Du erh&auml;lst per E-Mail eine Best&auml;tigung für deinen Kauf.</p>";
else
    echo "<p>Du erh&auml;lst per E-Mail eine Best&auml;tigung für deinen Kauf. Die Rechnung wird dir bald zugestellt.</p>";
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
