<?php
    $id_class = $route['params']['id'];
    $detail = $dbMapper->getClass( $id_class );
    $dates = $dbMapper->getClassDates( $id_class );
    $sections = $dbMapper->getClassSections( $id_class );
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
<?php
    $content = $detail['description'];
    require __DIR__ . '/class_section_text.php';
?>
                    <div class="list-group ml-3">
<?php
foreach( $dates as $date ) {
    require __DIR__ . '/class_entry_date.php';
}
?>
                    </div>
                </div>
            </div>
<?php
foreach( $sections as $section ) {
    require __DIR__ . '/class_section.php';
}
?>
        </div>
    </div>
    <div class="row">
        <?php require __DIR__ . '/footer.php'; ?>
    </div>
</div>
