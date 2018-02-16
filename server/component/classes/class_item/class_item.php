<?php
require __DIR__ . './../../class/class_dates/class_dates.php';
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

    public function print_date_list() {
        $date_list = new ClassDates( $this->router, $this->dates );
        $date_list->print_view();
    }

    public function print_view() {
        require __DIR__ . '/v_class_item.php';
    }
}

?>
