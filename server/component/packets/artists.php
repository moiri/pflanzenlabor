<?php

/**
 * Artists Component Class
 */
class Artists {

    private $router;
    private $db;
    private $all;

    function __construct( $router, $db, $all=false ) {
        $this->router = $router;
        $this->db = $db;
        $this->all = $all;
    }

    public function print_artists()
    {
        $condition = " WHERE enabled = 1";
        if($this->all)
            $condition = "";
        $sql = "SELECT DATE_FORMAT(date, \"%M %Y\") AS date, name,
            comment, link, link_label FROM artists" . $condition;
        $artists = $this->db->queryDb($sql);
        foreach($artists as $artist)
        {
            $this->print_artist($artist['date'], $artist['name'],
                $artist['comment'], $artist['link'], $artist['link_label']);
        }
    }

    private function print_artist($date, $name, $comment, $url, $link_label)
    {
        $pd = new ParsedownExtension();
        $pd->setSafeMode(true);
        $comment = $pd->line($comment);
        require __DIR__ . "/v_artist.php";
    }

    private function print_backlog_link()
    {
        if($this->all) {
            $url = $this->router->generate("packets");
            $label = "Zurück";
        }
        else {
            $url = $this->router->generate("packets_backlog");
            $label = "Alle Künstler";
        }
        require __DIR__ . '/v_artists_backlog_link.php';
    }

    private function print_link($url, $link_label)
    {
        if($url == "") return;
        $label = ($link_label != "") ? $link_label : $url;
        echo '<a href="' . $url . '" target="_blank">' . $label . '</a>';
    }

    public function print_view() {
        require __DIR__ . '/v_artists.php';
    }
}

?>
