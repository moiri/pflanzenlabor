<a href="<?php echo $this->router->generate("enroll", array('id' => $this->id)); ?>" class="btn-sm border-0 list-group-item list-group-item-action d-flex justify-content-between align-items-center py-1<?php $this->print_disabled_attr(); ?>">
    <?php echo $this->date; ?>
    <span class="badge badge-<?php $this->print_badge_css(); ?>"><?php $this->print_badge(); ?></span>
</a>
