<?php
require __DIR__ . './../../../class/class_dates/class_dates.php';
/**
 * Contact Component Class
 */
class ClassItemPreview {

    private $router;
    private $db;
    private $title;
    private $dates;
    private $section;
    private $id_class;

    function __construct( $router, $db, $id, $name, $id_section_dates, $id_section_preview ) {
        $this->router = $router;
        $this->db = $db;
        $this->title = $name;
        $this->id_class = $id;
        $this->dates = new ClassDates( $router, $db, $id, array('margin-bottom'=>3) );
        $id_section = ($this->dates->has_dates()) ? $id_section_dates : $id_section_preview;
        $this->section = $db->getSectionById( $id_section );
    }

    public function print_title() {
        echo $this->section['title'] . " " . $this->title;
    }

    public function print_list() {
        if($this->dates->has_dates())
            $this->dates->print_view();
        else
            echo $this->section['content'];
    }

    public function print_view() {
        require __DIR__ . '/v_class_preview.php';
    }
}

?>

