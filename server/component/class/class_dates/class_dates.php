<?php
require_once __DIR__ . '/class_date/class_date.php';

class ClassDates {

    private $router;
    private $dates;
    private $style;

    function __construct( $router, $db, $class_id, $style = array() ) {
        $this->router = $router;
        $this->dates = $db->getClassDates( $class_id );
        $this->style = array();
        $this->style['margin-left'] = array_key_exists('margin-left', $style) ? $style['margin-left'] : 0;
        $this->style['margin-bottom'] = array_key_exists('margin-bottom', $style) ? $style['margin-bottom'] : 0;
    }

    private function print_class_dates() {
        foreach( $this->dates as $date ) {
            $class_date = new ClassDate( $this->router, intval($date['id']), $date['date'], $date['places_max'], $date['places_booked'] );
            $class_date->print_view();
        }
    }

    public function has_dates() { return (count($this->dates) > 0) ? true : false; }

    public function print_view() {
        require __DIR__ . '/v_class_dates.php';
    }
}

?>
