<?php

/**
 * Contact Component Class
 */
class Check {

    private $checked = "";

    function __construct( $db, $id, $label, $user_id, $date_id ) {
        $this->id = $id;
        $this->label = $label;
        if( $user_id == Null ) return;
        if( $db->checkUserFood( $user_id, $date_id, $id ) )
            $this->checked = " checked";
    }

    public function print_view() {
        require __DIR__ . '/v_check.php';
    }
}

?>
