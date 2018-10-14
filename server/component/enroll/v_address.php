<div class="form-row">
    <div class="form-group col-md-10">
        <label>Strasse</label>
        <input type="text" class="form-control" name="<?php echo $prefix; ?>street" placeholder="Beispielweg" value="<?php echo $street; ?>" maxlength="100" required>
    </div>
    <div class="form-group col-md-2">
        <label>Hausnummer</label>
        <input type="text" class="form-control" name="<?php echo $prefix; ?>street_number" placeholder="1A" value="<?php echo $street_number; ?>" maxlength="10" required>
    </div>
</div>
<div class="form-row">
    <div class="form-group col-md-3">
        <label>PLZ</label>
        <input type="text" class="form-control" name="<?php echo $prefix; ?>zip" placeholder="3000" value="<?php echo $zip; ?>" maxlength="10" required>
    </div>
    <div class="form-group col-md-9">
        <label>Ortsname</label>
        <input type="text" class="form-control" name="<?php echo $prefix; ?>city" placeholder="Beispielstadt" value="<?php echo $city; ?>" maxlength="100" required>
    </div>
</div>
