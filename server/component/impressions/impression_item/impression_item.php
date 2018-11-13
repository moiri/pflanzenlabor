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
    private $description;
    private $is_class_enabled;

    function __construct( $router, $db, $id ) {
        $this->router = $router;
        $this->db = $db;
        $this->id = $id;
        $this->fetch_impression_item($id);
    }

    private function fetch_impression_item($id)
    {
        $sql = "SELECT i.id_class, i.title AS i_title, i.description,
            c.name AS c_title, i.subtitle AS i_subtitle,
            c.subtitle AS c_subtitle, c.enabled
            FROM impressions AS i
            LEFT JOIN classes AS c ON c.id = i.id_class
            WHERE i.id = :id";
        $item = $this->db->queryDbFirst($sql, array(":id" => $id));
        $this->title = ($item['i_title'] == null) ? $item['c_title'] : $item['i_title'];
        $this->subtitle = ($item['i_subtitle'] == null) ? $item['c_subtitle'] : $item['i_subtitle'];
        $this->id_class = $item['id_class'];
        $this->is_class_enabled = ($item['enabled'] == 1) ? true : false;
        $this->description = $item['description'];
    }

    private function print_description()
    {
        $lines = explode(PHP_EOL, $this->description);
        foreach( $lines as $line ) {
            echo "<p>" . $line . "</p>";
        }
    }

    private function print_items()
    {
        $sql = "SELECT ic.id, ict.name AS type FROM impressions_content AS ic
            LEFT JOIN impressions_content_type AS ict ON ict.id = ic.id_type
            WHERE ic.id_impressions = :id
            ORDER BY ic.position";
        $impressions = $this->db->queryDb($sql, array(":id" => $this->id));
        foreach($impressions as $idx => $impression)
        {
            if($idx == 2 || $idx == 4)
                // wrap every 2nd on sm
                echo '<div class="w-100 d-none d-sm-block d-lg-none"></div>';
            else if($idx == 3)
                // wrap every 3rd on lg
                echo '<div class="w-100 d-none d-lg-block"></div>';
            $sql = "SELECT il.content, ilt.name AS type
                FROM impressions_fields AS il
                LEFT JOIN impressions_fields_type AS ilt ON ilt.id = il.id_type
                WHERE il.id_impressions_content = :id";
            $fields = array();
            $fields_db = $this->db->queryDb($sql, array(":id" => $impression['id']));
            foreach($fields_db as $field)
                $fields[$field['type']] = $field['content'];
            if($impression['type'] == "image" && isset($fields['img_path']))
            {
                if(!isset($fields['img_caption'])) $fields['img_caption'] = "";
                $this->print_img($fields['img_path'], $fields['img_caption']);
            }
            else if($impression['type'] == "cite" && isset($fields['cite_name'])
                    && isset($fields['cite']))
                $this->print_cite($fields['cite_name'], $fields['cite']);
        }
    }

    private function print_link()
    {
        if($this->id_class == null || !$this->is_class_enabled) return;
        $url = $this->router->generate("class", array("id" => $this->id_class));
        require __DIR__ . "/v_link.php";
    }

    private function print_cite($name, $content)
    {
        require __DIR__ . "/v_cite.php";
    }

    private function print_img($img, $caption="")
    {
        $url = $this->router->get_asset_path("/img/impressions/" . $img);
        require __DIR__ . "/v_img.php";
    }

    public function print_view() {
        require __DIR__ . '/v_impression_item.php';
    }
}

?>
