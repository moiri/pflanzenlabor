<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . '/nearest_class_item/nearest_class_item.php';

/**
 * Contact Component Class
 */
class Home extends Page {

    private $db;
    private $class_item;

    function __construct( $router, $db ) {
        parent::__construct( $router );
        $this->db = $db;
        $this->class_item = $db->getClassNearest();
    }

    private function print_nearest_class_item() {
        $nearest_class_item = new NearestClassItem(
            $this->router,
            intval( $this->class_item['id'] ),
            $this->class_item['name'],
            $this->class_item['subtitle'],
            $this->class_item['type'],
            $this->class_item['place'],
            $this->class_item['time'],
            $this->class_item['date']
        );
        $nearest_class_item->print_view();
    }

    public function print_view() {
        require __DIR__ . '/v_home.php';
    }
}

?>
