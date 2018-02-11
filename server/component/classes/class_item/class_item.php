<?php
require __DIR__ . './../../class/class_date/class_date.php';
/**
 * Contact Component Class
 */
class ClassItem {

    private $router;
    private $id;
    private $name;
    private $subtitle;
    private $img;
    private $type;
    private $place;
    private $time;
    private $dates;

    function __construct( $router, $id, $name, $subtitle, $img, $type, $place, $time, $dates ) {
        $this->router = $router;
        $this->id = $id;
        $this->class_name = $name;
        $this->subtitle = $subtitle;
        $this->img = $img;
        $this->class_type = $type;
        $this->place = $place;
        $this->time = $time;
        $this->dates = $dates;
    }

    public function print_class_dates() {
        foreach( $this->dates as $date ) {
            $class_date = new ClassDate( $this->router, $date['date'], $date['places_max'], $date['places_booked'] );
            $class_date->print_view();
        }
    }

    public function print_view() {
        require __DIR__ . '/v_class_item.php';
    }
}

?>
