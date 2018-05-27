<?php
/**
 * Used class
 */
class User
{
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

    public function set_class_enroll_data( $date_id, $data ) {
        $db_data = $this->get_class_enroll_data( $date_id );
        if( $db_data ) {
            $this->db->updateUserClassDates( $this->get_user_id(),
                $date_id, $data['input_custom'], $data['comment'] );
            foreach( $data['foods'] as $food_id => $food )
                $this->db->updateUserClassDatesFood( $this->get_user_id(),
                    $date_id, $food_id, $food );
        }
        else {
            $this->db->insert( 'user_class_dates', array(
                'id_user' => $this->get_user_id(),
                'id_class_dates' => $date_id,
                'check_custom' => $data['input_custom'],
                'comment' => $data['comment'] )
            );
            $entries = array();
            foreach( $data['foods'] as $food_id => $food ) {
                $entry = array( $date_id, $this->get_user_id(), $food_id, $food );
                array_push( $entries, $entry );
            }
            $cols = array( 'id_class_dates', 'id_user', 'id_food', 'is_checked' );
            $this->db->insert_mult( "user_class_dates_food", $cols, $entries );
        }
    }

    public function get_user_data() {
        if( !$this->is_user_valid() )
            return Null;
        return $this->db->selectByUid( 'user', $this->get_user_id() );
    }

    public function set_user_data( $user_data ) {
        $old_user_data = $this->get_user_data();
        if( $old_user_data &&
                ( $old_user_data['email'] == $user_data['email'] ) &&
                ( $old_user_data['first_name'] == $user_data['first_name'] ) &&
                ( $old_user_data['last_name'] == $user_data['last_name'] ) ) {
            // same user -> update data
            $this->db->updateByUid( 'user', $user_data, $this->get_user_id() );
            return false;
        }
        else {
            $user_id = $this->db->insert( "user", $user_data );
            $this->set_user_id( $user_id );
            return true;
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
            if( DEBUG ) print "ERROR: no user id set.";
        }
        return $_SESSION['user_id'];
    }

    public function update_user_id_from_db( $email, $first_name, $last_name ) {
        $user_id = $this->db->getUserId( $email, $first_name, $last_name );
        if( $user_id && ( $_SESSION['user_id'] != $user_id['id'] ) )
            $_SESSION['user_id'] = $user_id['id'];
    }

    public function set_user_id( $user_id ) {
        if( $_SESSION['user_id'] != $user_id ) {
            if( DEBUG ) print "INFO: Overwriting session user id";
        }
        $_SESSION['user_id'] = $user_id;
    }
}
?>
