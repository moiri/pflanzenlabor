<?php

/**
 * Base controller class to handle orders.
 */
abstract class BaseCheckOrder
{
    protected $db;
    protected $router;
    protected $is_consistent = true;
    protected $user_data = null;
    protected $order_data = null;
    protected $item_data = null;

    function __construct($router, $db)
    {
        $this->router = $router;
        $this->db = $db;
        $user = $this->db->selectByUid('user', $user_id);
        if($user)
            $this->user_data = $user;
        else
            $this->is_consistent = false;
    }

    abstract public function finalize_order();

    abstract public function is_order_open();

    abstract public function is_in_stock();

    abstract public function send_email();
}

?>
