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
    }

    private function print_impression_items()
    {
        $items = $this->db->selectTable( "impressions" );
        foreach($items as $item)
        {
            $comp = new ImpressionItem($this->router, $this->db, intval($item['id']));
            $comp->print_view();
        }

    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_impressions.php';
        } );
    }
}

?>
