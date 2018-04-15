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
            $this->sections = $dbMapper->getClassSections( $id );
        }
        else $this->set_state_missing();
    }

    private function print_description() {
        $content = new ClassContent( $this->router, $this->image, $this->name,
            $this->description );
        $content->print_view();
    }

    private function print_class_sections() {
        foreach( $this->sections as $section ) {
            if( $section['type'] == "dates" ) {
                $dates = new ClassDates( $this->router, $this->db, $this->class_id, array('margin-bottom'=>3) );
                $s = new ClassSection( $section['title'], array( $dates, "print_view" ), $section['type'] );
                $s->print_view();
                continue;
            }
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
