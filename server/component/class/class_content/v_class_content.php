<div>
<img class="img-fluid" src="<?php echo $this->router->get_asset_path("/img/course/" . $this->image); ?>" alt="Bild zum Kurs <?php echo $this->name; ?>">
<?php
    $this->print_description();
?>
</div>
