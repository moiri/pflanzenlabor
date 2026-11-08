<?php
/**
 * Used class
 */
class User
{
    private $db;

    function __construct( $db )  {
        $this->db = $db;
        if( !isset( $_SESSION['user_id'] ) )
            $_SESSION['user_id'] = NULL;
    }

    public function get_class_enroll_data( $date_id ) {
        if( !$this->is_user_valid() )
            return Null;
        return $this->db->getUserDateSpecifics( $this->get_user_id(), $date_id );
    }

    public function set_class_enroll_data( $date_id, $data, $db_data ) {
        if( $db_data ) {
            if( $db_data['is_booked'] == '1' )
                return false;
            $this->db->updateUserClassDates( $this->get_user_id(),
                $date_id, $data['comment'] );
        }
        else {
            $this->db->insert( 'user_class_dates', array(
                'id_user' => $this->get_user_id(),
                'id_class_dates' => $date_id,
                'comment' => $data['comment'] )
            );
        }
        return true;
    }

    public function get_user_data() {
        if( !$this->is_user_valid() )
            return Null;
        return $this->db->selectByUid( 'user', $this->get_user_id() );
    }

    public function set_user_data( $user_data ) {
        $old_user_data = $this->db->getUserDataByName( $user_data['email'], $user_data['first_name'], $user_data['last_name'] );
        if( $old_user_data ) {
            // same user -> update data
            $this->set_user_id( intval($old_user_data['id']) );
            $this->db->updateByUid( 'user', $user_data, $this->get_user_id() );
            return true;
        }
        else {
            $user_id = $this->db->insert( "user", $user_data );
            $this->set_user_id( $user_id );
            return false;
        }
    }

    public function is_user_valid() {
        return ( $_SESSION['user_id'] == Null ) ? False : True;
    }

    public function is_user_enrolled( $date_id ) {
        $enroll_data = $this->get_class_enroll_data( $date_id );
        return ( $enroll_data['is_booked'] == '1' );
    }

    public function get_user_id() {
        if( $_SESSION['user_id'] == NULL ) {
            if( DEBUG ) print "DEBUG: no user id set.";
        }
        return $_SESSION['user_id'];
    }

    public function set_user_id( $user_id ) {
        if( $_SESSION['user_id'] != $user_id ) {
            if( DEBUG ) print "INFO: Overwriting session user id '" . $_SESSION['user_id']. "' with '" . $user_id . "'";
        }
        $_SESSION['user_id'] = $user_id;
    }
}
?>
