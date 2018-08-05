<?php
/**
 * Impression Component Class
 */
class ImpressionItem {

    private $router;
    private $db;
    private $id;
    private $id_class;
    private $title;
    private $subtitle;
    private $is_class_enabled;

    function __construct( $router, $db, $id ) {
        $this->router = $router;
        $this->db = $db;
        $this->id = $id;
        $this->fetch_impression_item($id);
    }

    private function fetch_impression_item($id)
    {
        $sql = "SELECT i.id_class, i.title AS i_title, c.name AS c_title,
            i.subtitle AS i_subtitle, c.subtitle AS c_subtitle, c.enabled
            FROM impressions AS i
            LEFT JOIN classes AS c ON c.id = i.id_class
            WHERE i.id = :id";
        $item = $this->db->queryDbFirst($sql, array(":id" => $id));
        $this->title = ($item['i_title'] == null) ? $item['c_title'] : $item['i_title'];
        $this->subtitle = ($item['i_subtitle'] == null) ? $item['c_subtitle'] : $item['i_subtitle'];
        $this->id_class = $item['id_class'];
        $this->is_class_enabled = ($item['enabled'] == 1) ? true : false;
    }

    private function print_link()
    {
        if($this->id_class == null || !$this->is_class_enabled) return;
        $url = $this->router->generate("class", array("id" => $this->id));
        require __DIR__ . "/v_link.php";
    }

    private function print_cite($name, $content)
    {
        require __DIR__ . "/v_cite.php";
    }

    private function print_img($img)
    {
        $url = $this->router->get_asset_path("/img/" . $img);
        require __DIR__ . "/v_img.php";
    }

    public function print_view() {
        require __DIR__ . '/v_impression_item.php';
    }
}

?>
