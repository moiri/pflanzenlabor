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

    /**
     *
     */
    function getClass( $id ) {
        try {
            $sql = "SELECT c.id, c.name, c.subtitle, c.description, c.img,
                c.place, c.time, c.img_desc, ct.name AS c_type
                FROM classes AS c
                LEFT JOIN class_type AS ct ON ct.id = c.id_type
                WHERE c.id = :id";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':id' => $id ) );
            return $stmt->fetchAll( PDO::FETCH_ASSOC )[0];
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) "PflanzenlaborDbMapper::getClass: ".$e->getMessage();
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
            if( DEBUG == 1 ) "PflanzenlaborDbMapper::getClassSections: ".$e->getMessage();
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
            if( DEBUG == 1 ) "PflanzenlaborDbMapper::getClasses: ".$e->getMessage();
        }
    }

    /**
     * Get all classes
     *
     * @return an array with all row entries or false if no entry was selected
     */
    function getClassesJoinDates() {
        try {
            $sql = "SELECT c.id, c.name, c.subtitle, c.img, c.place, c.time,
                ct.name AS type, cd.places_max, cd.places_booked,
                DATE_FORMAT(cd.date, \"%W %e. %M %Y\") AS date
                FROM classes AS c
                LEFT JOIN class_type AS ct ON ct.id = c.id_type
                LEFT JOIN class_dates AS cd ON cd.id_class = c.id
                WHERE date >= CURDATE()
                ORDER BY cd.date";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute();
            return $stmt->fetchAll( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::getClassesJoinDates: ".$e->getMessage();
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
            $sql = "SELECT DATE_FORMAT(cd.date, \"%W %e. %M %Y\") AS date, cd.places_max, cd.places_booked
                FROM class_dates AS cd
                WHERE id_class = :id AND date >= CURDATE()";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':id' => $id ) );
            return $stmt->fetchAll( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) print "PflanzenlaborDbMapper::getClassDates: ".$e->getMessage();
        }
    }
}

?>