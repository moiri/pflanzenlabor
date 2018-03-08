<?php
require __DIR__ . './../../class/class_dates/class_dates.php';
/**
 * Contact Component Class
 */
class ClassItem {

    private $router;
    private $db;
    private $id;
    private $name;
    private $subtitle;
    private $desc;
    private $img;
    private $type;
    private $place;
    private $time;
    private $dates;

    function __construct( $router, $db, $id, $name, $subtitle, $desc, $img, $type, $place, $time ) {
        $this->router = $router;
        $this->db = $db;
        $this->id = $id;
        $this->name = $name;
        $this->subtitle = $subtitle;
        $this->desc = explode('.', $desc)[0] . " (...)";
        $this->img = $img;
        $this->type = $type;
        $this->place = $place;
        $this->time = $time;
    }

    public function print_date_list() {
        $dates = new ClassDates( $this->router, $this->db, $this->id, array('margin-bottom'=>3) );
        $dates->print_view();
    }

    public function print_view() {
        require __DIR__ . '/v_class_item.php';
    }
}

?>
