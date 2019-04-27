<div id="impression-popup-<?php echo $id; ?>" class="card card-body border-0 popup">
    <?php $this->print_img_content($img, $caption); ?>
</div>

<div class="modal fade" id="impression-modal-<?php echo $id; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <?php $this->print_img_content($img, $caption); ?>
            </div>
        </div>
    </div>
</div>
