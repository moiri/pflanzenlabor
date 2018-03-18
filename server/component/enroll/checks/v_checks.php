<div class="form-group mb-0">
    <label for="inputFood">Ich esse und trinke</label>
    <div class="form-row">
        <?php echo $this->print_checks(); ?>
        <div class="form-group col-lg-2 col-sm-4">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" name="check_custom"<?php echo $this->check_custom; ?>>
                <label class="form-check-label">
                    <input type="text" class="form-control form-check-control" name="input_custom" placeholder="anderes" value="<?php echo $this->input_custom; ?>">
                </label>
            </div>
        </div>
    </div>
</div>

