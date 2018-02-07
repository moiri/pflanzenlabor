<?php
$classes = array();
$classes_join = $dbMapper->getClassesJoinDates();
//prepare hierarchical array
foreach( $classes_join as $class_join ) {
    $create_new = true;
    $idx = 0;
    foreach( $classes as $class ) {
        if( $class['id'] == $class_join['id'] ) {
            $create_new = false;
            break;
        }
        $idx++;
    }
    if( $create_new ) {
        array_push( $classes, array(
            'id'        => $class_join['id'],
            'name'      => $class_join['name'],
            'subtitle'  => $class_join['subtitle'],
            'img'       => $class_join['img'],
            'type'      => $class_join['type'],
            'place'     => $class_join['place'],
            'time'      => $class_join['time'],
            'dates'     => array()
        ) );
        $idx = sizeof( $classes ) - 1;
    }
    array_push( $classes[$idx]['dates'], array(
        'date'          => $class_join['date'],
        'places_max'    => $class_join['places_max'],
        'places_booked' => $class_join['places_booked']
    ) );

}

?>

<div class="container-fluid">
    <div class="row">
        <?php require __DIR__ . '/header.php'; ?>
    </div>
    <div class="row">
        <div class="container mb-3">
            <div class="card">
                <div class="card-body">
                    <h1>Kurse</h1>
                    <p>
                        An einem Pflanzenausflug werden wir eine Pflanze genauer betrachten &mdash; mit m&ouml;glichst allen Sinnen, von m&ouml;glichst vielen Facetten.
                        Nebst dem sicheren bestimmen der Pflanze werden wir die Pflanze auch vor Ort verarbeiten.
                    </p>
                        Die Pflanzenausfl&uuml;ge finden draussen statt, bei jedem Wetter.
                        Je nach Witterung kann das Programm angepasst werden.
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="card">
                <div class="card-body pb-0">
<?php
foreach( $classes as $class) {
    $dates = $class['dates'];
    require __DIR__ . '/class_entry.php';
}
?>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <?php require __DIR__ . '/footer.php'; ?>
    </div>
</div>
