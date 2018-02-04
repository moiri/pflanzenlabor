<?php
require_once('baseDbMapper.php');

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
            $this->addDebug( "PflanzenlaborDbMapper::getClasses: ".$e->getMessage() );
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
            $this->addDebug( "PflanzenlaborDbMapper::getClassesJoinDates: ".$e->getMessage() );
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
            $this->addDebug( "PflanzenlaborDbMapper::getClassDates: ".$e->getMessage() );
        }
    }

    /**
     * Get all heroes by user id.
     *
     * @param int $uid:          user id
     * @return an array with all row entries or false if no entry was selected
     */
    function getHeroesByUserId( $uid ) {
        $retValue = false;
        $sql = "SELECT * FROM held WHERE id_user = :uid";
        $stmt = $this->dbh->prepare( $sql );
        $stmt->execute( array( ':uid' => $uid ) );
        return $stmt->fetchAll( PDO::FETCH_ASSOC );
    }

    /**
     * Get hero attributes
     *
     * @param int $hid: hero id
     * @param int $bid: [optional] id of eigenschaft value if only a specific
     *                  value should be returned
     * @return array:   an array with all row entries or false if no entry was selected
     */
    function getAttrByHeroId( $hid, $eid=null ) {
        $data = array( ':hid' => $hid );
        $sql = "SELECT e.*, he.wert, he.start, he.modifikator
             FROM eigenschaft AS e
             LEFT JOIN held_eigenschaft AS he ON e.id = he.id_eigenschaft
             AND he.id_held = :hid
             WHERE e.meta IS NOT NULL";
        if( $eid != null ) {
            $sql .= " AND e.id=:eid";
            $data[':eid'] = $eid;
        }
        $stmt = $this->dbh->prepare( $sql );
        $stmt->execute( $data );
        return $stmt->fetchAll( PDO::FETCH_ASSOC );
    }

    /**
     * Get hero basic values
     *
     * @param int $hid: hero id
     * @param int $bid: [optional] id of basic value if only a specific value
     *                  should be returned
     * @return array:   an array with all row entries
     */
    function getBaseByHeroId( $hid, $bid=null ) {
        $data = array( ':hid' => $hid );
        $sql = "SELECT b.*, hb.modifikator, hb.kauf, hb.aktiv FROM basis AS b "
            ."LEFT JOIN held_basis AS hb ON b.id = hb.id_basis "
            ."AND hb.id_held = :hid";
        if( $bid != null ) {
            $sql .= " WHERE b.id=:bid";
            $data[':bid'] = $bid;
        }
        $stmt = $this->dbh->prepare( $sql );
        $stmt->execute( $data );
        return $stmt->fetchAll( PDO::FETCH_ASSOC );
    }

    /**
     * Get hero basic combat values
     *
     * @param int $hid: hero id
     * @param int $kid: [optional] id of kampf value if only a specific value
     *                  should be returned
     * @return array:   an array with all row entries
     */
    function getCombatByHeroId( $hid, $kid=null ) {
        $data = array( ':hid' => $hid );
        $sql = "SELECT k.*, hk.modifikator FROM kampf AS k "
            ."LEFT JOIN held_kampf AS hk ON k.id = hk.id_kampf "
            ."AND hk.id_held = :hid";
        if( $kid != null ) {
            $sql .= " WHERE k.id=:kid";
            $data[':kid'] = $kid;
        }
        $stmt = $this->dbh->prepare( $sql );
        $stmt->execute( $data );
        return $stmt->fetchAll( PDO::FETCH_ASSOC );
    }

    /**
     * get either all hero talente or those of a specific talent group or
     * multiple groups marked with the same group flag
     *
     * @param int $hid:     hero id
     * @param int $gid:     [optional] id of talent gruppe if only talente from
     *                      this group should be returned
     *                      if this is set $gflag and $tid are ignored
     * @param int $gflag:   [optional] flag of talent gruppen if only talente
     *                      frmo groups with this flag should be returned
     *                      if this is set $tid is ignored
     * @param int $tid:     [optional] id of a talent if only a spezific talent
     *                      should be returned
     * @return array:       an array with all row entries
     */
    function getTalentByHeroIdGruppeId( $hid, $gid=null, $gflag=null,
            $tid=null ) {
        $retValue = false;
        $grp_str = "";
        $data = array( ':hid' => $hid );
        if($gid != null ) {
            $grp_str = "WHERE t.id_talentgruppe = :gid ";
            $data[':gid'] = $gid;
        }
        else if( $gflag != null ) {
            $grp_str = "LEFT JOIN talentgruppe AS tg "
                ."ON t.id_talentgruppe = tg.id WHERE tg.gruppe = :gflag ";
            $data[':gflag'] = $gflag;
        }
        else if($tid != null ) {
            $grp_str = "WHERE t.id = :tid ";
            $data[':tid'] = $tid;
        }
        $sql = "SELECT t.id, t.name, t.eBE, ht.wert, e1.short_name AS es1, "
            ."e2.short_name AS es2, e3.short_name AS es3 FROM talent AS t "
            ."LEFT JOIN held_talent AS ht ON ht.id_talent = t.id "
            ."AND ht.id_held = :hid "
            ."LEFT JOIN eigenschaft AS e1 ON t.id_eigenschaft1 = e1.id "
            ."LEFT JOIN eigenschaft AS e2 ON t.id_eigenschaft2 = e2.id "
            ."LEFT JOIN eigenschaft AS e3 ON t.id_eigenschaft3 = e3.id "
            .$grp_str
            ."AND (t.basis = 1 OR ht.wert IS NOT NULL) ORDER BY t.name";
        $stmt = $this->dbh->prepare( $sql );
        $stmt->execute( $data );
        return $stmt->fetchAll( PDO::FETCH_ASSOC );
    }

    function getZauberByHeroId( $hid ) {
        $retValue = false;
        $grp_str = "";
        $sql = "SELECT z.id, z.name, hz.wert, hz.hauszauber, "
            ."e1.short_name AS es1, e2.short_name AS es2, e3.short_name AS es3 "
            ."FROM zauber AS z "
            ."LEFT JOIN held_zauber AS hz ON hz.id_zauber = z.id "
            ."AND hz.id_held = :hid "
            ."LEFT JOIN eigenschaft AS e1 ON z.id_eigenschaft1 = e1.id "
            ."LEFT JOIN eigenschaft AS e2 ON z.id_eigenschaft2 = e2.id "
            ."LEFT JOIN eigenschaft AS e3 ON z.id_eigenschaft3 = e3.id "
            ."WHERE hz.wert IS NOT NULL ORDER BY hz.hauszauber DESC, z.name";
        $stmt = $this->dbh->prepare( $sql );
        $stmt->execute( array( ':hid' => $hid ) );
        return $stmt->fetchAll( PDO::FETCH_ASSOC );
    }


    /**
     * Get a hero eigenschaft value by its id
     *
     * @depricated      use getAttrByHeroId() instead
     * @param int $hid: hero id
     * @param int $eid: eigenschaft id
     * @return int:     the eigenschaft value
     */
    function getHeroEigenschaftById( $hid, $eid ) {
        $sql = "SELECT wert FROM held_eigenschaft "
            ."WHERE id_held=:hid AND id_eigenschaft=:eid";
        $stmt = $this->dbh->prepare( $sql );
        $stmt->execute( array( ':hid' => $hid, ':eid' => $eid ) );
        return $stmt->fetch( PDO::FETCH_NUM )[0];
    }

    /**
     * Get a hero eigenschaft value by its short name
     *
     * @depricated              use getAttrShortArrayByHeroId() instead
     * @param int $hid:         hero id
     * @param string $eshort:   the short name of the eigenschaft
     * @return int:             the eigenschaft value
     */
    function getHeroEigenschaftByShort( $hid, $eshort ) {
        $sql = "SELECT he.wert FROM held_eigenschaft AS he "
            ."LEFT JOIN eigenschaft AS e ON he.id_eigenschaft = e.id "
            ."WHERE he.id_held=:hid AND e.short_name=:eid";
        $stmt = $this->dbh->prepare( $sql );
        $stmt->execute( array( ':hid' => $hid, ':eid' => $eshort ) );
        return $stmt->fetch( PDO::FETCH_NUM )[0];
    }

    /**
     * Update values in db defined by hero id and a foreign key deduced by the
     * table name due to naming conventions
     *
     * @param string $table:    the name of the db table
     * @param array $entries:   an associative array of db entries
     *                           e.g. $["colname1"] = "blabla"
     * @param int $hid:         the hero id of the row to be selected
     * @param int $fk:          the foreign key id of the row to be selected
     * @return true if succeded
     */
    function updateByHidFk($table, $entries, $hid, $fk) {
        try {
            $data = array( ':hid' => $hid, ':fk' => $fk );
            $fk_name = str_replace( "held_", "id_", $table );
            $insertStr = "";
            foreach ($entries as $i => $value) {
                $hid = ":".$i;
                $insertStr .= $i."=".$hid.", ";
                $data[$hid] = $value;
            }
            $insertStr = rtrim($insertStr, ", ");
            $sql = "UPDATE ".$table." SET ".$insertStr
                ." WHERE id_held=:hid AND ".$fk_name."=:fk";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( $data );
        }
        catch(PDOException $e) {
            $this->addDebug(
                "BaseDbMapper::updateByHidFk: ".$e->getMessage() );
        }
    }


    /**
     * get all eigenschaften from the db as an assoc array by their name,
     * e.g. array( 'Klugheit' => 14, ... )
     *
     * @param int $hid:     hero id
     * @return array:       all eigenschaften stored by their name
     */
    function getAttrArrayByHeroId( $hid ) {
        $attr = array();
        $res = $this->getAttrByHeroId( $hid );
        foreach( $res as $attr ) {
            $attr[$attr['name']] = $attr['wert'] + $attr['modifikator'];
        }
        return $attr;
    }

    /**
     * get all eigenschaften from the db as an assoc array by their short name,
     * e.g. array( 'KL' => 14, ... )
     *
     * @param int $hid:     hero id
     * @return array:       all eigenschaften stored by their short name
     */
    function getAttrShortArrayByHeroId( $hid ) {
        $attrShort = array();
        $res = $this->getAttrByHeroId( $hid );
        foreach( $res as $attr ) {
            $attrShort[$attr['short_name']] = $attr['wert']
                + $attr['modifikator'];
        }
        return $attrShort;
    }

    /**
     * Calculate a value by using a typical DSA formula as stored in the db.
     * 
     * @param array $eig:   an array with all eigenschaft values, stored by
     *                      short_name, e.g array( 'KK' => 12, ... )
     * @param string $val:  the short_name of the value to be calculated
     * @return int:         the unmodified calcualted value
     */
    function calcValue( $eig, $val ) {
        $db_info = $this->getCalcValId( $val );
        if( !$db_info ) return false;
        $basis = $this->selectByUid( $db_info['table'], $db_info['id'] );
        return $this->parseFormula( $eig, $basis['wert_def'] );
    }

    /**
     * Is used to map the short notation of values that have to be calculated to
     * theit location in the db.
     *
     * @param string $val:  the short_name of the value to be calculated
     * @return array:       the translation array
     */
    function getCalcValId( $val ) {
        $vals = array(
            'LE' => array( 'table' => 'basis', 'id' => 1 ),
            'AU' => array( 'table' => 'basis', 'id' => 2 ),
            'AE' => array( 'table' => 'basis', 'id' => 3 ),
            'MR' => array( 'table' => 'basis', 'id' => 4 ),
            'AT' => array( 'table' => 'kampf', 'id' => 6 ),
            'PA' => array( 'table' => 'kampf', 'id' => 7 ),
            'FK' => array( 'table' => 'kampf', 'id' => 8 ),
            'INI' => array( 'table' => 'kampf', 'id' => 5 )
        );
        if( !isset( $vals[$val] ) ) return false;
        return $vals[$val];
    }

    /**
     * Returns a secific value that needs to be caclulated by a typical DSA
     * formula. The value is modified by a modifier stored in the db.
     * The eiganschaft values can optianally be passed as parameteres. If
     * nothing is passed, the values are loaded from the db
     *
     * @param int $hid:     hero id
     * @param string $val:  the short_name of the value to be calculated
     * @param array $eig:   [optional] an array with all eigenschaft values,
     *                      stored by short_name, e.g array( 'KK' => 12, ... )
     * @return int:         the calcualted value, modified by the modifier
     *                      stored in the db
     *                      false if something went wrong
     */
    function getCalcValueByHeroId( $hid, $val, $eig=null ) {
        if( $eig == null )
            $eig = $this->getAttrShortArrayByHeroId( $hid );
        $kid = $this->getCalcValId( $val );
        /* $kampf = $this->getCombatByHeroId( $hid, $kid['id'] ); */
        /* return $this->calcValue( $eig, $val ) + $kampf[0]['modifikator']; */
        return $this->calcValue( $eig, $val );
    }

    /**
     * Parses formulae of form ( KK + CH + ... ) / Int or Int * KK
     *
     * @param array $attr:      an array of eigenschaft values stored by short
     *                          name, e.g. array( 'KL' => 13, ... )
     * @param string $fromula:  a formula of the form ( KK + CH + ... ) / Int
     *                          or Int * KK or MU / 2
     * @param int:              the computed value
     */
    function parseFormula( $attr, $formula ) {
        $formula = preg_replace('/[^A-Z0-9\+\*\/]/', '', $formula );
        if( $formula == '' ) return 0;
        $div = 1;
        $mul = 1;
        $divs = explode( '/', $formula );
        if( count( $divs ) > 1 ) {
            $div = intval( $divs[1] );
            $formula = $divs[0];
        }
        $muls = explode( '*', $formula );
        if( count( $muls ) > 1 ) {
            $mul = intval( $muls[0] );
            $formula = $muls[1];
        }
        $formula = str_replace( array( '(', ')' ), '', $formula );
        $adds = explode( '+', $formula );
        $res = 0;
        foreach( $adds as $op )
            $res += $attr[$op];
        return round( $mul * $res / $div );
    }
}

?>
