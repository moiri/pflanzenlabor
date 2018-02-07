<?php
    $free_places = $date['places_max'] - $date['places_booked'];
    if( $free_places > 0 ) {
        $disabled = "";
        $badge_css = "dark";
        if( $free_places == 1 ) $badge = "1 Platz frei";
        else $badge = $free_places . " Pl&auml;tze frei";
    }
    else {
        $disabled = " disabled";
        $badge_css = "secondary";
        $badge = "ausgebucht";
    }
?>
<a href="#" class="btn-sm border-0 list-group-item list-group-item-action d-flex justify-content-between align-items-center py-1<?php echo $disabled; ?>">
    <?php echo $date['date']; ?>
    <span class="badge badge-<?php echo $badge_css; ?>"><?php echo $badge; ?></span>
</a>
