<?php
require_once __DIR__ . '/class_date/class_date.php';

class ClassDates {

    private $router;
    private $dates;

    function __construct( $router, $dates ) {
        $this->router = $router;
        $this->dates = $dates;
    }

    private function print_class_dates() {
        foreach( $this->dates as $date ) {
            $class_date = new ClassDate( $this->router, $date['date'], $date['places_max'], $date['places_booked'] );
            $class_date->print_view();
        }
    }

    public function print_view() {
        require __DIR__ . '/v_class_dates.php';
    }
}

?>
