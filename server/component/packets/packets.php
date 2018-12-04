<?php
require_once __DIR__ . '/../page.php';

/**
 * Packets Component Class
 */
class Packets extends Page {

    private $db;

    function __construct( $router, $db ) {
        parent::__construct( $router );
        $this->db = $db;
    }

    private function print_artists()
    {
        $sql = "SELECT DATE_FORMAT(date, \"%M %Y\") AS date, name,
            comment, link, link_label FROM artists
            WHERE enabled = 1";
        $artists = $this->db->queryDb($sql);
        foreach($artists as $artist)
        {
            $this->print_artist($artist['date'], $artist['name'],
                $artist['comment'], $artist['link'], $artist['link_label']);
        }
    }

    private function print_artist($date, $name, $comment, $url, $link_label)
    {
        require __DIR__ . "/v_artist.php";
    }

    private function print_link($url, $link_label)
    {
        if($url == "") return;
        $label = ($link_label != "") ? $link_label : $url;
        echo '<a href="' . $url . '" target="_blank">' . $label . '</a>';
    }

    public function print_view() {
        $this->print_page( function() {
            require __DIR__ . '/v_packets.php';
        } );
    }
}

?>
