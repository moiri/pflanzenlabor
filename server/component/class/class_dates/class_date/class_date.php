<?php
/**
 * Contact Component Class
 */
class ClassDate {

    private $router;
    private $date;
    private $free_places;
    private $places_max;
    private $id;
    private $is_open;
    private $external_url;

    function __construct( $router, $id, $date, $places_max, $places_booked, $is_open=false, $external_url = NULL ) {
        $this->router = $router;
        $this->date = $date;
        $this->id = $id;
        $this->places_max = $places_max;
        $this->free_places = $places_max - $places_booked;
        $this->is_open = $is_open;
        $this->external_url = $external_url;
    }

    private function print_disabled_attr()
    {
        if( $this->free_places == 0 || $this->places_max == 0 ) echo " disabled";
        else echo "";
    }

    private function print_badge_css() {
        if( $this->free_places == 0 || $this->places_max == 0 ) echo "secondary";
        else echo "dark";
    }

    private function print_badge() {
        if( $this->external_url ) echo "externe Anmeldung";
        else if( $this->places_max == 0 ) echo "abgesagt";
        else if( $this->free_places == 0 ) echo "ausgebucht";
        else if( $this->free_places == 1 ) echo "1 freier Platz";
        else if( $this->free_places <= 3 ) echo $this->free_places . " freie Pl&auml;tze";
        else echo "freie Pl&auml;tze";
    }

    public function print_view() {
        if($this->is_open)
            require __DIR__ . '/v_class_date_open.php';
        else
        {

            $target = "_blank";
            $url = $this->external_url;
            if($url === NULL)
            {
                $url = $this->router->generate("enroll", array('id' => $this->id));
                $target = "_self";
            }
            require __DIR__ . '/v_class_date.php';
        }
    }
}

?>
