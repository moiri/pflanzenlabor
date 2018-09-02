<div class="row">
    <div class="col-lg-2 mb-1">
        <em><?php echo $date; ?></em>
    </div>
    <div class="col-lg-2 mb-1">
        <strong><?php echo $name; ?></strong>
    </div>
    <div class="col mb-3">
        <div><?php echo $comment; ?></div>
        <?php $this->print_link($url, $link_label); ?>
    </div>
</div>
