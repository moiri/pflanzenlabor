<?php
require_once __DIR__ . '/../page.php';
require_once __DIR__ . "./../404/404.php";
require_once __DIR__ . "./../class_closed/class_closed.php";
require_once __DIR__ . "./../invalid/invalid.php";
require_once __DIR__ . '/../contact_newsletter/contact_newsletter.php';

/**
 * Contact Component Class
 */
abstract class Payment extends Page {

    protected $paypal_key;
    protected $id_item;
    protected $id_order = null;
    protected $db;
    protected $user;

    protected $first_name = "";
    protected $last_name = "";
    protected $street = "";
    protected $street_number = "";
    protected $zip = "";
    protected $city = "";
    protected $phone = "";
    protected $email = "";
    protected $newsletter = 0;

    function __construct( $router, $dbMapper, $id ) {
        parent::__construct( $router );
        if( !isset( $_POST['first_name'] ) || !isset( $_POST['last_name'] )
                || !isset( $_POST['street'] ) || !isset( $_POST['street_number'] )
                || !isset( $_POST['zip'] ) || !isset( $_POST['city'] )
                || !isset( $_POST['phone'] ) || !isset( $_POST['email'] ) ) {

            $this->set_state_invalid();
            return;
        }
        if( ( $_POST['first_name'] == "" ) || ( $_POST['last_name'] == "" )
                || ( $_POST['street'] == "" ) || ( $_POST['street_number'] == "" )
                || ( $_POST['zip'] == "" ) || ( $_POST['city'] == "" )
                || ( $_POST['phone'] == "" ) || ( $_POST['email'] == "" ) ) {
            $this->set_state_invalid();
            return;
        }

        $this->user = new User( $dbMapper );
        $this->first_name = $_POST['first_name'];
        $this->last_name = $_POST['last_name'];
        $this->street = $_POST['street'];
        $this->street_number = $_POST['street_number'];
        $this->zip = $_POST['zip'];
        $this->city = $_POST['city'];
        $this->phone = $_POST['phone'];
        $this->email = $_POST['email'];
        $this->newsletter = (isset($_POST['newsletter'])) ? 1 : 0;
        $this->db = $dbMapper;
        $this->id_item = $id;
    }

    public function send_newsletter_mail()
    {
        if(isset($_POST['newsletter']))
        {
            $nl = new ContactNewsletter($this->router);
            $nl->send_mail();
        }
    }

    protected function get_newsletter_string() {
        return ($this->newsletter) ? "Ja" : "Nein";
    }

    protected function submit_user_data() {
        $user_data = array(
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'street' => $this->street,
            'street_number' => $this->street_number,
            'zip' => $this->zip,
            'city' => $this->city,
            'phone' => $this->phone,
            'email' => $this->email,
            'newsletter' => $this->newsletter
        );
        // create new or update user entry
        $this->user->set_user_data( $user_data );
    }

    protected function print_paypal($paypal_key, $uid, $item_id)
    {
        require __DIR__ . '/v_paypal.php';
    }

    protected function print_bill($id, $target)
    {
        require __DIR__ . '/v_bill.php';
    }

    protected function print_back($keyword)
    {
        require __DIR__ . '/v_back.php';
    }

    abstract public function submit_enroll_data();

    abstract public function print_view();
}

?>
