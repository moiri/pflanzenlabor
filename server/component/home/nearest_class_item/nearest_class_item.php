<?php
/**
 * Nearest Class component
 */
class NearestClassItem {

    private $router;
    private $id;
    private $name;
    private $subtitle;
    private $img;
    private $type;
    private $place;
    private $time;
    private $date;

    function __construct( $router, $id, $name, $subtitle, $type, $place, $time, $date ) {
        $this->router = $router;
        $this->id = $id;
        $this->name = $name;
        $this->subtitle = $subtitle;
        $this->type = $type;
        $this->place = $place;
        $this->time = $time;
        $this->date = $date;
    }

    public function print_view() {
        require __DIR__ . '/v_nearest_class_item.php';
    }
}

?>
