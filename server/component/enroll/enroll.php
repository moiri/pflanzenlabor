<?php
require_once __DIR__ . '/../page.php';

/**
 * Contact Component Class
 */
class Enroll extends Page {

    private $db;
    private $open = 0;
    private $na = true;
    private $date;
    private $class_name;
    private $class_id;

    function __construct( $router, $dbMapper, $url, $id ) {
        parent::__construct( $router, $dbMapper, $url );
        $this->db = $dbMapper;
        $date = $dbMapper->getClassDate( $id );
        if( $date ) {
            $this->na = false;
            $this->date = $date['date'];
            $this->class_name = $date['name'];
            $this->class_id = $date['id_class'];
            $this->open = $date['places_max'] - $date['places_booked'];
        }
    }

    public function print_view() {
        if( $this->na ) require __DIR__ . '/../404/v_404.php';
        else if( $this->open <= 0 ) require __DIR__ . '/v_closed.php';
        else require __DIR__ . '/v_enroll.php';
    }
}

?>
<?php
?>

