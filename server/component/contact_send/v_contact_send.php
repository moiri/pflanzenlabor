<div class="container-fluid">
    <div class="row">
        <?php $this->print_nav(); ?>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <h1><?php echo $this->p_title; ?></h1>
                    <p><?php $this->p_description; ?></p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container mt-3">
        </div>
    </div>
    <div class="row">
        <?php $this->print_footer(); ?>
    </div>
</div>
