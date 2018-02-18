<?php
require_once __DIR__ . '/../class_content_text/class_content_text.php';
require_once __DIR__ . '/../class_content_list/class_content_list.php';
require_once __DIR__ . '/../class_dates/class_dates.php';
class ClassSection {

    private $title;
    private $content;
    private $type;

    function __construct( $title, $content, $type ) {
        $this->title = $title;
        $this->content = $content;
        $this->type = $type;
    }

    private function print_content() {
        if( $this->type == "plain text" ) {
            $classContent = new ClassContentText( $this->content );
            $classContent->print_view();
        }
        else if( $this->type == "list" ) {
            $classContent = new ClassContentList( $this->content );
            $classContent->print_view();
        }
        else if( $this->type == "dates" ) {
            if( is_callable( $this->content ) )
                call_user_func( $this->content );
        }
    }

    public function print_view() {
        require __DIR__ . '/v_class_section.php';
    }
}

?>
