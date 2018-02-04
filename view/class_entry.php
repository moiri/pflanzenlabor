<div class="media mb-4">
    <img class="" src="./img/<?php echo $class['img']; ?>" alt="Bild zum Kurs <?php echo $class['name']; ?>">
    <div class="media-body">
        <button type="button" class="list-group-item list-group-item-action flex-column align-items-start border-0 pb-1">
            <div class="d-flex w-100 justify-content-between">
                <h5 class="mb-1"><?php echo $class['name']; ?></h5>
                <small><?php echo $class['type']; ?> | <?php echo $class['place']; ?> | <?php echo $class['time']; ?></small>
            </div>
            <p class="mb-0"><?php echo $class['subtitle']; ?></p>
        </button>
        <div class="list-group ml-3">
<?php
foreach( $dates as $date ) {
    require __DIR__ . '/class_entry_date.php';
}
?>
        </div>
    </div>
</div>
