<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . '/class_item/class_item.php';

/**
 * Contact Component Class
 */
class Classes extends Page {
    private $db;

    function __construct( $router, $dbMapper ) {
        parent::__construct( $router );
        $this->db = $dbMapper;
    }

    public function print_class_items() {
        $class_ids = array();
        $classes = $this->db->getClassesJoinDates();
        foreach($classes as $class) {
            $id = intval($class['id']);
            if(!in_array($id, $class_ids)) {
                array_push($class_ids, $id);
                $class_item = new ClassItem( $this->router, $this->db, $id);
                $class_item->print_view();
            }
        }
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_classes.php';
        } );
    }
}

?>
