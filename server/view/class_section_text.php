<?php
    $lines = explode(PHP_EOL, $content);
    foreach( $lines as $line ) {
        echo "<p>" . $line . "</p>";
    }
?>
