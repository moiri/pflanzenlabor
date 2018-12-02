<form method="post" action="https://www<?php echo ( DEBUG ) ? ".sandbox" : ""; ?>.paypal.com/cgi-bin/webscr" target="_top" class="float-left ml-2">
    <input type="hidden" name="cmd" value="_s-xclick">
    <input type="hidden" name="hosted_button_id" value="<?php echo $paypal_key; ?>">
    <input type="hidden" name="custom" value="<?php echo $json; ?>"/>
    <button type="submit" class="btn btn-primary">mit PayPal</button>
</form>
