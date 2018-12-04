<?php
require_once __DIR__ . '/../page.php';

/**
 * Vauchers Component Class
 */
class Vauchers extends Page {

    private $db;

    function __construct( $router, $db ) {
        parent::__construct( $router );
        $this->db = $db;
    }

    private function print_items()
    {
        $sql = "SELECT id, name, description, img_path, price FROM vaucher_types
            WHERE enabled = 1
            ORDER BY position";
        $items = $this->db->queryDb($sql);
        foreach($items as $item)
            $this->print_item(intval($item['id']), $item['name'],
                $item['img_path'], $item['price'], $item['description']);
    }

    private function print_item($id, $title, $img, $price, $text_line)
    {
        $text = split_by_cr($text_line);
        require __DIR__ . '/v_vauchers_item.php';
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_vauchers.php';
        } );
    }
}

?>
