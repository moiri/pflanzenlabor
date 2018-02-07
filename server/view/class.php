<?php
    $detail = $dbMapper->getClassDetail( $route['params']['id'] );
    $dates = $dbMapper->getClassDates( $route['params']['id'] );
?>

<div class="container-fluid">
    <div class="row">
        <?php require __DIR__ . '/header.php'; ?>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="card">
                <div class="card-body">
                    <h1><?php echo $detail['name']; ?></h1>
                    <div class="list-group ml-3">
<?php
foreach( $dates as $date ) {
    require __DIR__ . '/class_entry_date.php';
}
?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <?php require __DIR__ . '/footer.php'; ?>
    </div>
</div>
