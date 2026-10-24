<a href="<?php echo $url; ?>" target="<?php echo $target; ?>" class="list-group-item list-group-item-action d-flex justify-content-between align-items-center<?php $this->print_disabled_attr(); ?>">
    <div>
        <small>
        <div>
            <?php echo $this->date; ?>
        </div>
        <div>
            <?php echo $this->time; ?>
        </div>
        </small>
    </div>
    <span class="ml-3 badge badge-<?php $this->print_badge_css(); ?>"><?php $this->print_badge(); ?></span>
</a>
