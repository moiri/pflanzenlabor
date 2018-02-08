<ul>
<?php
    $lines = explode(PHP_EOL, $content);
    foreach( $lines as $line ) {
        echo "<li>" . $line . "</li>";
    }
?>
</ul>
