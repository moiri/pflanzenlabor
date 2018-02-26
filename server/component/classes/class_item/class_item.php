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
    private $img;
    private $type;
    private $place;
    private $time;
    private $dates;

    function __construct( $router, $db, $id, $name, $subtitle, $img, $type, $place, $time ) {
        $this->router = $router;
        $this->db = $db;
        $this->id = $id;
        $this->class_name = $name;
        $this->subtitle = $subtitle;
        $this->img = $img;
        $this->class_type = $type;
        $this->place = $place;
        $this->time = $time;
    }

    public function print_date_list() {
        $dates = new ClassDates( $this->router, $this->db, $this->id, array('margin-bottom'=>3) );
        $s = new ClassSection( "Anmeldung", array( $dates, "print_view" ), "dates" );
        $s->print_view();
    }

    public function print_view() {
        require __DIR__ . '/v_class_item.php';
    }
}

?>
