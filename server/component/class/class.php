<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . '/class_section/class_section.php';
require_once __DIR__ . '/class_content_text/class_content_text.php';

/**
 * Contact Component Class
 */
class ClassPage extends Page {

    private $name;
    private $description;
    private $dates;
    private $sections;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router );
        $detail = $dbMapper->getClass( $id );
        $this->name = $detail['name'];
        $this->description = $detail['description'];
        $this->dates = $dbMapper->getClassDates( $id );
        $this->sections = $dbMapper->getClassSections( $id );
    }

    private function print_description() {
        $content = new ClassContentText( $this->description );
        $content->print_view();
    }

    private function print_class_dates() {
        foreach( $this->dates as $date ) {
            $class_date = new ClassDate( $this->router, $date['date'], $date['places_max'], $date['places_booked'] );
            $class_date->print_view();
        }
    }

    private function print_class_sections() {
        foreach( $this->sections as $section ) {
            $section = new ClassSection( $section['title'], $section['content'], $section['type'] );
            $section->print_view();
        }
    }

    public function print_view() {
        require __DIR__ . '/v_class.php';
    }
}

?>
<?php
?>

