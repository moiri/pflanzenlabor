<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . '/class_item/class_item.php';

/**
 * Contact Component Class
 */
class Classes extends Page {
    private $classes = array();
    private $db;

    function __construct( $router, $dbMapper ) {
        parent::__construct( $router );
        $this->db = $dbMapper;
        $classes_join = $dbMapper->getClassesJoinDates();
        $this->update_classes_list( $classes_join );
    }

    // prepare hierarchical array
    // this is needed because with the joined query it is easy to sort the fields
    private function update_classes_list( $classes_join ) {
        foreach( $classes_join as $class_join ) {
            $create_new = true;
            foreach( $this->classes as $class ) {
                if( $class['id'] == $class_join['id'] ) {
                    $create_new = false;
                    break;
                }
            }
            if( $create_new ) {
                array_push( $this->classes, array(
                    'id'        => $class_join['id'],
                    'name'      => $class_join['name'],
                    'subtitle'  => $class_join['subtitle'],
                    'desc'      => $class_join['description'],
                    'img'       => $class_join['img'],
                    'type'      => $class_join['type'],
                    'place'     => $class_join['place'],
                    'time'      => $class_join['time'],
                ) );
            }
        }
    }

    public function print_class_items() {
        foreach( $this->classes as $class) {
            $class_item = new ClassItem(
                $this->router,
                $this->db,
                intval( $class['id'] ),
                $class['name'],
                $class['subtitle'],
                $class['desc'],
                $class['img'],
                $class['type'],
                $class['place'],
                $class['time']
            );
            $class_item->print_view();
        }
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_classes.php';
        } );
    }
}

?>
