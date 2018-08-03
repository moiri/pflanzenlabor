<?php
require_once __DIR__ . '/baseDbMapper.php';

/**
 * Class to handle the communication with the dsa_sheet-DB
 *
 * @author moiri
 */
class PflanzenlaborDbMapper extends BaseDbMapper {
    var $debug = true;
    /**
     * Open connection to mysql database
     *
     * @param string $server:   address of server
     * @param string $database: name of database
     * @param string $login:    username
     * @param string $password: password
     */
    function __construct($server, $dbname, $username, $password ) {
        parent::__construct( $server, $dbname, $username, $password );
    }

    function incrementUserCount( $id_date ) {
        try {
            $sql = "UPDATE class_dates
                SET places_booked = places_booked + 1
                WHERE id = :id";
            $stmt = $this->dbh->prepare( $sql );
            return $stmt->execute( array( ':id' => $id_date ) );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "PflanzenlaborDbMapper::incrementUserCount: ".$e->getMessage();
        }
    }

    function markUserEnrolled( $id_user, $id_date, $type, $is_payed ) {
        try {
            $sql = "UPDATE user_class_dates
                SET id_payment = :type, is_payed = is_payed + :payed, is_booked = is_booked + 1
                WHERE id_user = :id_user AND id_class_dates = :id_date";
            $stmt = $this->dbh->prepare( $sql );
            return $stmt->execute( array(
                ':id_user' => $id_user,
                ':id_date' => $id_date,
                ':type' => $type,
                ':payed' => (int)$is_payed ) );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "PflanzenlaborDbMapper::markUserEnrolled: ".$e->getMessage();
        }
    }

    /**
     *
     */
    function getClass( $id ) {
        try {
            $sql = "SELECT c.id, c.name, c.subtitle, c.description, c.img,
                c.place, c.time, c.img_desc, ct.name AS c_type, c.id_section_dates,
                c.id_section_preview
                FROM classes AS c
                LEFT JOIN class_type AS ct ON ct.id = c.id_type
                WHERE c.id = :id";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':id' => $id ) );
            return $stmt->fetch( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "PflanzenlaborDbMapper::getClass: ".$e->getMessage();
        }
    }

    function getSectionById( $id_section ) {
        try {
            $sql = "SELECT s.content, st.title, sy.type
                FROM sections AS s
                LEFT JOIN section_title AS st ON st.id = s.id_section_title
                LEFT JOIN section_type AS sy ON sy.id = s.id_section_type
                WHERE s.id = :sid
                ORDER BY st.layout";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':sid' => $id_section ) );
            return $stmt->fetch( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "PflanzenlaborDbMapper::getSectionById: ".$e->getMessage();
        }
    }

    /**
     *
     */
    function getClassSections( $id ) {
        try {
            $sql = "SELECT s.content, st.title, sy.type
                FROM classes AS c
                LEFT JOIN class_section AS cs ON cs.id_class = c.id
                LEFT JOIN sections AS s ON s.id = cs.id_section
                LEFT JOIN section_title AS st ON st.id = s.id_section_title
                LEFT JOIN section_type AS sy ON sy.id = s.id_section_type
                WHERE c.id = :id
                ORDER BY st.layout";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':id' => $id ) );
            return $stmt->fetchAll( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "PflanzenlaborDbMapper::getClassSections: ".$e->getMessage();
        }
    }

    /**
     * Get all classes
     *
     * @return an array with all row entries or false if no entry was selected
     */
    function getClasses() {
        try {
            $sql = "SELECT c.id, c.name, c.subtitle, c.img, c.place, c.time,
                ct.name AS type
                FROM classes AS c
                LEFT JOIN class_type AS ct ON ct.id = c.id_type";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute();
            return $stmt->fetchAll( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "PflanzenlaborDbMapper::getClasses: ".$e->getMessage();
        }
    }

    /**
     * Get all classes
     *
     * @return an array with all row entries or false if no entry was selected
     */
    function getClassesJoinDates() {
        try {
            $sql = "SELECT c.id, c.name, c.subtitle, c.description
                FROM classes AS c
                LEFT JOIN class_type AS ct ON ct.id = c.id_type
                LEFT JOIN class_dates AS cd ON cd.id_class = c.id
                WHERE c.enabled = 1
                ORDER BY cd.date < CURDATE(), cd.date >= CURDATE()";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute();
            return $stmt->fetchAll( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "PflanzenlaborDbMapper::getClassesJoinDates: ".$e->getMessage();
        }
    }

    /**
     * Get a specific date and associated class info
     *
     * @param int $id:     date id
     * @return an array with all row entries or false if no entry was selected
     */
    function getClassDate( $id ) {
        try {
            $sql = "SELECT cd.id, DATE_FORMAT(cd.date, \"%W %e. %M %Y\") AS date,
                cd.places_max, cd.places_booked, cd.paypal_key, c.name, c.img,
                id_class, c.id_type, ct.name AS type
                FROM class_dates AS cd
                LEFT JOIN classes AS c ON c.id = cd.id_class
                LEFT JOIN class_type AS ct ON ct.id = c.id_type
                WHERE cd.id = :id AND date >= CURDATE()";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':id' => $id ) );
            return $stmt->fetch( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::getClassDate: ".$e->getMessage();
        }
    }

    function getClassCost( $id ) {
        try {
            $sql = "SELECT s.content
                FROM sections AS s
                LEFT JOIN class_section AS cs ON s.id = cs.id_section
                WHERE cs.id_class = :id AND s.id_section_title = 1";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':id' => $id ) );
            return $stmt->fetch( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::getClassCost: ".$e->getMessage();
        }
    }

    function checkUserFood( $id_user, $id_date, $id_food ) {
        try {
            $sql = "SELECT is_checked
                FROM user_class_dates_food AS uf
                WHERE uf.id_user = :id_user AND uf.id_class_dates = :id_date
                AND uf.id_food = :id_food AND uf.is_checked = 1";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':id_user' => $id_user, ':id_date' => $id_date, ':id_food' => $id_food ) );
            return $stmt->fetch( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::checkUserFood: ".$e->getMessage();
        }
    }

    function getCheckedFood( $id_user, $id_date ) {
        try {
            $sql = "SELECT f.name
                FROM food AS f
                LEFT JOIN user_class_dates_food AS uf ON f.id = uf.id_food
                WHERE uf.id_user = :id_user AND uf.id_class_dates = :id_date
                AND uf.is_checked = 1";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':id_user' => $id_user, ':id_date' => $id_date ) );
            return $stmt->fetchAll( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::checkUserFood: ".$e->getMessage();
        }
    }

    function getUserDateSpecifics( $id_user, $id_date ) {
        try {
            $sql = "SELECT comment, check_custom, is_payed, is_booked
                FROM user_class_dates
                WHERE id_user = :id_user AND id_class_dates = :id_date";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':id_user' => $id_user, ':id_date' => $id_date ) );
            return $stmt->fetch( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::getUserDateSpecifics: ".$e->getMessage();
        }
    }

    function getUserDataByName( $email, $first_name, $last_name ) {
        try {
            $sql = "SELECT *
                FROM user
                WHERE first_name = :first_name AND last_name = :last_name AND email = :email";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array(
                ':first_name' => $first_name,
                ':last_name' => $last_name,
                ':email' => $email
            ) );
            return $stmt->fetch( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::getUserDataByName: ".$e->getMessage();
        }
    }

    /**
     * Get all future dates from a class
     *
     * @param int $id:     class id
     * @return an array with all row entries or false if no entry was selected
     */
    function getClassDates( $id ) {
        try {
            $sql = "SELECT id, DATE_FORMAT(cd.date, \"%W %e. %M %Y\") AS date, cd.places_max, cd.places_booked
                FROM class_dates AS cd
                WHERE id_class = :id AND date >= CURDATE()
                ORDER BY cd.date";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':id' => $id ) );
            return $stmt->fetchAll( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::getClassDates: ".$e->getMessage();
        }
    }

    /**
     * Get nearest class where places are available
     *
     * @return an array with all row entries or false if no entry was selected
     */
    function getClassNearest() {
        try {
            $sql = "SELECT c.id, c.name, c.subtitle, c.description, c.img,
                c.place, c.time, ct.name AS type, cd.places_max, cd.places_booked,
                DATE_FORMAT(cd.date, \"%W %e. %M %Y\") AS date
                FROM classes AS c
                LEFT JOIN class_type AS ct ON ct.id = c.id_type
                LEFT JOIN class_dates AS cd ON cd.id_class = c.id
                WHERE date >= CURDATE()
                AND cd.places_booked < cd.places_max
                ORDER BY cd.date
                LIMIT 1";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute();
            return $stmt->fetch( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::getClassesNearest: ".$e->getMessage();
        }
    }

    function claimVaucher( $id_user, $id_date, $vaucher_code ) {
        try {
            $sql = "UPDATE vauchers
                SET id_user = :id_user, id_date = :id_date
                WHERE code = :code";
            $stmt = $this->dbh->prepare( $sql );
            return $stmt->execute( array(
                ':id_user' => $id_user,
                ':id_date' => $id_date,
                ':code' => $vaucher_code ) );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::claim_vaucher: ".$e->getMessage();
        }
    }

    function getVaucher( $vaucher_code ) {
        try {
            $sql = "SELECT *
                FROM vauchers
                WHERE code = :code";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':code' => $vaucher_code ) );
            return $stmt->fetch( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::getVaucher: ".$e->getMessage();
        }
    }

    function updateUserClassDates( $id_user, $id_date, $check_custom, $comment ) {
        try {
            $sql = "UPDATE user_class_dates
                SET check_custom = :check_custom, comment = :comment
                WHERE id_user = :id_user AND id_class_dates = :id_date";
            $stmt = $this->dbh->prepare( $sql );
            return $stmt->execute( array(
                ':id_user' => $id_user,
                ':id_date' => $id_date,
                ':check_custom' => $check_custom,
                ':comment' => $comment ) );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::updateUserClassDates: ".$e->getMessage();
        }
    }

    function updateUserClassDatesFood( $id_user, $id_date, $id_food, $is_checked ) {
        try {
            $sql = "UPDATE user_class_dates_food
                SET is_checked = :is_checked
                WHERE id_user = :id_user AND id_class_dates = :id_date AND id_food = :id_food";
            $stmt = $this->dbh->prepare( $sql );
            return $stmt->execute( array(
                ':id_user' => $id_user,
                ':id_date' => $id_date,
                ':id_food' => $id_food,
                ':is_checked' => $is_checked ) );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::updateUserClassDatesFood: ".$e->getMessage();
        }
    }
}

?>
