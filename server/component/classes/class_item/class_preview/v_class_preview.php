<div class="col d-lg-flex d-none">
    <div class="card w-100 mt-1 mt-lg-0">
        <div class="card-header pb-1">
            <h5><?php $this->print_title(); ?></h5>
        </div>
        <?php
            $this->print_list();
        ?>
    </div>
</div>
<div class="col mt-1 d-lg-none">
    <div class="card">
        <?php
            $this->print_list();
        ?>
    </div>
</div>
