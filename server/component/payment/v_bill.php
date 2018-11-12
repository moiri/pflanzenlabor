<form method="post" action="<?php echo $this->router->generate('thanks'); ?>" class="float-left">
    <input type="hidden" name="item_id" value="<?php echo $this->id_item; ?>">
    <button type="submit" class="btn btn-primary">auf Rechnung</button>
</form>
