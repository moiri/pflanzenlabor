<?php
require_once __DIR__ . '/../class_content_text/class_content_text.php';

class ClassContent {

    private $router;
    private $image;
    private $description;
    private $name;

    function __construct( $router, $image, $name, $description ) {
        $this->router = $router;
        $this->image = $image;
        $this->name = $name;
        $this->description = $description;
    }

    private function print_description() {
        $content = new ClassContentText( $this->description, false );
        $content->print_view();
    }

    public function print_view() {
        require __DIR__ . '/v_class_content.php';
    }
}

?>
