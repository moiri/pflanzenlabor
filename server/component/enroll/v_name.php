<div class="form-row">
    <div class="form-group col-md-6">
        <label>Vorname</label>
        <input type="text" class="form-control" name="<?php echo $prefix; ?>first_name" placeholder="Max" value="<?php echo $first_name; ?>" maxlength="100" <?php echo $required; ?>>
    </div>
    <div class="form-group col-md-6">
        <label>Nachname</label>
        <input type="text" class="form-control" name="<?php echo $prefix; ?>last_name" placeholder="Muster" value="<?php echo $last_name; ?>" maxlength="100" <?php echo $required; ?>>
    </div>
</div>
