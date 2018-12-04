<?php

class ClassContentText {

    private $text;
    private $has_last_margin;

    function __construct( $text, $has_last_margin = true ) {
        $this->text = $text;
        $this->has_last_margin = $has_last_margin;
    }

    public function print_view() {
        echo split_by_cr($this->text, $this->has_last_margin);
    }
}

?>
