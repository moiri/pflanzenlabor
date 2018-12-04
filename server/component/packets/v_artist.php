<li class="list-group-item">
<div class="row">
    <div class="col-lg-2 mb-1 mb-lg-0">
        <em><?php echo $date; ?></em>
    </div>
    <div class="col-lg-2 mb-1 mb-lg-0">
        <strong><?php echo $name; ?></strong>
    </div>
    <div class="col">
        <div><?php echo $comment; ?></div>
        <?php $this->print_link($url, $link_label); ?>
    </div>
</div>
</li>
