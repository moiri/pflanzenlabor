<?php
require __DIR__ . '/class_preview/class_preview.php';
/**
 * Contact Component Class
 */
class ClassItem {

    private $router;
    private $db;
    private $id;
    private $name;
    private $subtitle;
    private $desc;
    private $img;
    private $type;
    private $place;
    private $time;
    private $id_section_dates;
    private $id_section_preview;

    function __construct( $router, $db, $id ) {
        $this->router = $router;
        $this->db = $db;
        $this->id = $id;
        $details = $db->getClass( $id );
        $this->name = $details['name'];
        $this->subtitle = $details['subtitle'];
        $this->desc = explode('.', $details['description'])[0] . " (...)";
        $this->img = $details['img'];
        $this->type = $details['c_type'];
        $this->type_id = preg_replace('/\s/', '_', $this->type);
        $this->place = $details['place'];
        $this->time = $details['time'];
        $this->id_section_dates = $details['id_section_dates'];
        $this->id_section_preview = $details['id_section_preview'];
    }

    public function print_class_preview() {
        $preview = new ClassItemPreview(
            $this->router,
            $this->db,
            $this->id,
            $this->name,
            $this->id_section_dates,
            $this->id_section_preview
        );
        $preview->print_view();
    }

    public function print_view() {
        require __DIR__ . '/v_class_item.php';
    }
}

?>
