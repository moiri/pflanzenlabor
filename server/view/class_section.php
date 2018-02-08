<div class="card">
    <div class="card-header">
        <h5><?php echo $section['title']; ?></h5>
    </div>
    <div class="card-body pb-1">
<?php
    $content = $section['content'];
    if( $section['type'] == "plain text" ) {
        require __DIR__ . "/class_section_text.php";
    }
    else if( $section['type'] == "list" ) {
        require __DIR__ . "/class_section_list.php";
    }
?>
    </div>
</div>

