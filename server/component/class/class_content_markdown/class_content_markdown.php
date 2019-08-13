<?php
require_once __DIR__ . '/../../../service/parsedown_extension.php';

class ClassContentMarkdown {

    private $text;

    function __construct( $text ) {
        $this->text = $text;
    }

    public function print_view() {
        $pd = new ParsedownExtension();
        $pd->setSafeMode(true);
        echo $pd->text($this->text);
    }
}

?>
