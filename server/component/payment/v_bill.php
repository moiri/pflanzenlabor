<form method="post" action="<?php echo $this->router->generate("thanks"); ?>" class="float-left">
    <button type="submit" class="btn btn-primary">auf Rechnung</button>
    <input type="hidden" name="invoice" value="<?php echo $this->id_order; ?>"/>
</form>
