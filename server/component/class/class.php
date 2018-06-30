<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . '/class_section/class_section.php';
require_once __DIR__ . '/class_content/class_content.php';
require_once __DIR__ . '/class_dates/class_dates.php';

/**
 * Contact Component Class
 */
class ClassPage extends Page {

    private $name;
    private $subtitle;
    private $description;
    private $image;
    private $sections;
    private $class_type;
    private $place;
    private $time;
    private $class_id;
    private $db;
    private $section_dates;
    private $section_preview;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router );
        $detail = $dbMapper->getClass( $id );
        if( $detail ) {
            $this->class_id = $id;
            $this->db = $dbMapper;
            $this->name = $detail['name'];
            $this->description = $detail['description'];
            $this->image = $detail['img_desc'];
            $this->subtitle = $detail['subtitle'];
            $this->class_type = $detail['c_type'];
            $this->place = $detail['place'];
            $this->time = $detail['time'];
            $this->section_dates = $dbMapper->getSectionById( $detail['id_section_dates'] );
            $this->section_preview = $dbMapper->getSectionById( $detail['id_section_preview'] );
            $this->sections = $dbMapper->getClassSections( $id );
        }
        else $this->set_state_missing();
    }

    private function print_description() {
        $content = new ClassContent( $this->router, $this->image, $this->name,
            $this->description );
        $content->print_view();
    }

    private function print_class_dates() {
        $dates = new ClassDates( $this->router, $this->db, $this->class_id, array('margin-bottom'=>3) );
        if($dates->has_dates()) {
            $s = new ClassSection( $this->section_dates['title'], array( $dates, "print_view" ), $this->section_dates['type'] );
            $s->print_view();
        }
        else {
            $s = new ClassSection( $this->section_preview['title'], $this->section_preview['content'], $this->section_preview['type'] );
            $s->print_view();
        }
    }

    private function print_class_sections() {
        foreach( $this->sections as $section ) {
            $s = new ClassSection( $section['title'], $section['content'], $section['type'] );
            $s->print_view();
        }
    }

    public function print_view() {
        $this->print_page( function () {
            require __DIR__ . '/v_class.php';
        } );
    }
}
?>
