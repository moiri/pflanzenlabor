<?php
/**
 * Contact Component Class
 */
class ClassDate {

    private $router;
    private $date;
    private $free_places;

    function __construct( $router, $date, $places_max, $places_booked ) {
        $this->router = $router;
        $this->date = $date;
        $this->free_places = $places_max - $places_booked;
    }

    private function print_disabled_attr()
    {
        if( $this->free_places == 0 ) echo " disabled";
        else echo "";
    }

    private function print_badge_css() {
        if( $this->free_places == 0 ) echo "secondary";
        else echo "dark";
    }

    private function print_badge() {
        if( $this->free_places == 0 ) echo "ausgebucht";
        else if( $this->free_places == 1 ) echo "1 Platz frei";
        else echo $this->free_places . " Pl&auml;tze frei";
    }

    public function print_view() {
        require __DIR__ . '/v_class_date.php';
    }
}

?>
