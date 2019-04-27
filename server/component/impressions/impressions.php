<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . '/impression_item/impression_item.php';

/**
 * Contact Component Class
 */
class Impressions extends Page {
    private $db;

    function __construct( $router, $db ) {
        parent::__construct( $router );
        $this->db = $db;
        $this->append_js_includes('impressions.js');
    }

    private function print_impression_items()
    {
        print $this->fetch_impression_items(0, 3);
    }

    public function fetch_impression_items($offset, $count)
    {
        $sql = "SELECT * FROM impressions
            ORDER BY position
            LIMIT $offset, $count";
        $items = $this->db->queryDb($sql);
        $content = "";
        foreach($items as $item)
        {
            $comp = new ImpressionItem($this->router, $this->db, intval($item['id']));
            ob_start();
            $comp->print_view();
            $content .= ob_get_contents();
            ob_end_clean();
        }
        return $content;
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_impressions.php';
        } );
    }
}

?>
