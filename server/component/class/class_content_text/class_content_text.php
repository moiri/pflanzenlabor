<?php

class ClassContentText {

    private $text;

    function __construct( $text ) {
        $this->text = $text;
    }

    public function print_view() {
        $lines = explode(PHP_EOL, $this->text);
        foreach( $lines as $line ) {
            echo "<p>" . $line . "</p>";
        }
    }
}

?>
