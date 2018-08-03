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
?>
