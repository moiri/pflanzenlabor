<form method="post" action="<?php echo $this->router->generate("thanks", array("item" => $target)); ?>" class="float-left">
    <input type="hidden" name="payment_id" value="<?php echo $id; ?>">
    <button type="submit" class="btn btn-primary">auf Rechnung</button>
</form>
