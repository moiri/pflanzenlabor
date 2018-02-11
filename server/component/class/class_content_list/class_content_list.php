<?php

class ClassContentList {

    private $list;

    function __construct( $list ) {
        $this->list = $list;
    }

    private function print_list() {
        $lines = explode(PHP_EOL, $this->list);
        foreach( $lines as $line ) {
            echo "<li>" . $line . "</li>";
        }
    }

    public function print_view() {
        require __DIR__ . '/v_class_content_list.php';
    }
}

?>
