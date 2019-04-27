<?php
/**
 * @brief the type of payment, e.g, bill or paypal.
 */
define( 'PAYMENT_PAYPAL', 1 );
define( 'PAYMENT_BILL', 2 );
define( 'PAYMENT_VAUCHER', 3 );

/**
 * @brief Page states.
 *
 * The page states are used internally to handle general states such as the user
 * cancelled a request, a state is pending, the object is closed, etc.
 */
define( 'PAGE_STATE_OK', 0 );
define( 'PAGE_STATE_CANCEL', 10 );
define( 'PAGE_STATE_CLOSED', 100 );
define( 'PAGE_STATE_PENDING', 110 );
define( 'PAGE_STATE_MISSING', 200 );
define( 'PAGE_STATE_INVALID', 300 );

define( 'CLASS_TYPE_WALK_ID', 2 );
define( 'GIFT_PACKET_IDS', array(6, 8) );

function split_by_cr($text_line, $has_last_margin = false)
{
    $text = "";
    $lines = explode(PHP_EOL, $text_line);
    foreach($lines as $idx => $line) {
        $css = "";
        if(!$has_last_margin && ($idx == count($lines) - 1))
            $css = ' class="mb-0"';
        $text .= "<p" . $css . ">" . $line . "</p>";
    }
    return $text;
}

function split_by_cr_html($text_line)
{
    return str_replace(PHP_EOL, "<br />", $text_line);
}
?>
