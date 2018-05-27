<?php
/**
 * Class to handle the global communication with the DB
 * 
 * @author moiri
 */
class BaseDBMapper {
    var $dbh = null;

    /**
     * Open connection to mysql database
     *
     * @param string $server:   address of server
     * @param string $dbname:   name of database
     * @param string $username: username
     * @param string $password: password
     * @param string $names:    charset (optional, default: utf8)
     */
    function __construct($server, $dbname, $username, $password, $names="utf8") {
        try {
            $this->dbh = new PDO(
                "mysql:host=$server;dbname=$dbname;charset=$names",
                $username, $password, array( PDO::ATTR_PERSISTENT => true )
            );
            $this->dbh->setAttribute( PDO::ATTR_ERRMODE,
                PDO::ERRMODE_EXCEPTION );
        }
        catch(PDOException $e)
        {
            if( DEBUG == 1 ) echo "Connection failed: ".$e->getMessage();
        }
    }

    function __destruct() {
        $this->dbh = null;
    }

    /**
     * Remove all rows where the fk matches
     *
     * @param string $table:    the name of the db table
     * @param string $fk:       name of the foreign key
     * @param int $id:          the foreign key of the row to be selected
     */
    function removeByFk( $table, $fk, $id ) {
        try {
            $sql = "DELETE FROM $table WHERE $fk = :fk";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( array( ':fk' => $id ) );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "BaseDbMapper::selectTable: ".$e->getMessage();
        }
    }

    /**
     * Set locale time name variable
     *
     * @param string $locale:    the locale indentifier, e.g. de_CH
     */
    function setDbLocale( $locale ) {
        try {
            $stmt = $this->dbh->prepare( "SET lc_time_names = :locale" );
            $stmt->execute( array( ':locale' => $locale ) );
        }
        catch(Exception $e ) {
            if( DEBUG == 1 ) echo "BaseDbMapper::setDbLocale: ".$e->getMessage();
        }
    }

    /**
     * Get all rows from a table
     *
     * @param string $table:    the name of the db table
     * @return an array with all row entries or false if no entry was selected
     */
    function selectTable( $table ) {
        try {
            $stmt = $this->dbh->prepare( "SELECT * FROM $table" );
            $stmt->execute();
            return $stmt->fetchAll( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "BaseDbMapper::selectTable: ".$e->getMessage();
        }
    }

    /**
     * Get a single row of a db table by foreign key
     *
     * @param string $table:    the name of the db table
     * @param string $fk:       name of the foreign key
     * @param int $id:          the foreign key of the row to be selected
     * @return an array with all row entries or false if no entry was selected
     */
    function selectByFk( $table, $fk, $id ) {
        try {
            $stmt = $this->dbh->prepare( "SELECT * FROM $table WHERE $fk = :fk" );
            $stmt->execute( array( ':fk' => $id ) );
            return $stmt->fetchAll( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "BaseDbMapper::selectByFk: ".$e->getMessage();
        }
    }

    /**
     * Get a single row of a db table by unique id
     *
     * @param string $table:    the name of the db table
     * @param int $id:          the unique id of the row to be selected
     * @return an array with all row entries or false if no entry was selected
     */
    function selectByUid( $table, $id ) {
        try {
            $stmt = $this->dbh->prepare( "SELECT * FROM $table WHERE id = :id" );
            $stmt->execute( array( ':id' => $id ) );
            return $stmt->fetch( PDO::FETCH_ASSOC );
        }
        catch(PDOException $e) {
            if( DEBUG == 1) echo "BaseDbMapper::selectByUid: ".$e->getMessage();
        }
    }

    /**
     * Get a single row of a data table by unique id and get all names of
     * foreign keys by joining the linked tables (using naming convention)
     *
     * @param string $table:    the name of the db table
     * @param int $id:          the unique id of the row to be selected
     * @return an array with all entries of the row or false if no entry was selected
     */
    function selectByUidJoin( $table, $id ) {
        try {
            $mainTable = $this->selectByUid( $table, $id );
            $tableNb = 0;
            $join = "";
            $sql = "SELECT ";
            if( $mainTable ) {
                foreach( $mainTable as $i => $value ) {
                    $sql .= "t0.".$i.", ";
                    if( substr( $i, 0, 3 ) == "id_" ) {
                        $tableNb++;
                        $arr = explode( '_', $i );
                        $tableName = $arr[1];
                        $nameSuffix = "";
                        if ( $arr[2] != NULL ) $nameSuffix = "_".$arr[2];
                        $join .= " LEFT JOIN ".rtrim( $tableName, "0..9" )." t"
                            .$tableNb." ON t0.".$i." = t".$tableNb.".id";
                        $sql .= "t".$tableNb.".name name_".$tableName
                            .$nameSuffix.", ";
                    }
                }
                $sql = rtrim( $sql, ", " );
                $sql .= " FROM $table t0$join WHERE t0.id = :id";
                $stmt = $this->dbh->prepare( $sql );
                $stmt->execute( array( ':id' => $id ) );
                return $stmt->fetchAll( PDO::FETCH_ASSOC );
            }
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "BaseDbMapper::selectByUidJoin: ".$e->getMessage();
        }
    }

    /**
     * Get rows of a db table by condition
     *
     * @param string $sql: query to execute on the db
     * @return an array with all rows or false if no entry was selected
     */
    protected function queryDb($sql) {
        $retValue = false;
        if($this->debug) $errorQuery = "Error: Invalid mySQL query: ".$sql;
        else $errorQuery = "Error: Invalid mySQL query!";
        $result = mysql_query($sql, $this->handle)
            or die ($errorQuery);

        $num_rows = mysql_num_rows($result);
        $retValue = array();
        if($num_rows >= 1) {
            while($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
                array_push($retValue, $row);
            }
        }
        else {
            // no entry
            $retValue = false;
        }
        return $retValue;
    }

    /**
     * Insert values into db table
     *
     * @param string $table:    the name of the db table
     * @param array $entries:   an associative array of db entries
     *                          e.g. $["colname1"] = "blabla"
     * @return inserted id if succeded
     */
    function insert($table, $entries) {
        try {
            $data = array();
            $columnStr = "";
            $valueStr = "";
            foreach ($entries as $i => $value) {
                $columnStr .= $i.", ";
                $id = ":".$i;
                $valueStr .= $id.", ";
                $data[$id] = $value;
            }
            $columnStr = rtrim($columnStr, ", ");
            $valueStr = rtrim($valueStr, ", ");
            $sql = "INSERT INTO ".$table
                ." (".$columnStr.") VALUES(".$valueStr.")";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( $data );
            return $this->dbh->lastInsertId();
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "BaseDbMapper::insert: ".$e->getMessage();
        }
    }
    /**
     * Insert multiple rows o values into db table
     *
     * @param string $table:    the name of the db table
     * @param array $cols:      an array of db collumn names
     * @param array $entries:   a matrix of values
     * @return inserted id if succeded
     */
    function insert_mult($table, $cols, $entries) {
        try {
            $data = array();
            $columnStr = "(" . implode( ',', $cols ) . ")";
            $valueStr = implode( ',', array_map(function( $entry ) {
                      return "(" . implode( ',', $entry ) . ")";
                }, $entries ) );
            $sql = "INSERT INTO ".$table
                .$columnStr." VALUES ".$valueStr;
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( $data );
            return $this->dbh->lastInsertId();
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "BaseDbMapper::insert: ".$e->getMessage();
        }
    }

    /**
     * Update values in db defined by id
     *
     * @param string $table:    the name of the db table
     * @param array $entries:   an associative array of db entries
     *                           e.g. $["colname1"] = "blabla"
     * @param int $id:          the unique id of the row to be selected
     * @return true if succeded
     */
    function updateByUid($table, $entries, $id) {
        try {
            $data = array( ':hid' => $id );
            $insertStr = "";
            foreach ($entries as $i => $value) {
                $id = ":".$i;
                $insertStr .= $i."=".$id.", ";
                $data[$id] = $value;
            }
            $insertStr = rtrim($insertStr, ", ");
            $sql = "UPDATE ".$table." SET ".$insertStr." WHERE id=:hid";
            $stmt = $this->dbh->prepare( $sql );
            $stmt->execute( $data );
            return true;
        }
        catch(PDOException $e) {
            if( DEBUG == 1 ) echo "BaseDbMapper::updateByUid: ".$e->getMessage();
        }
    }
}

?>
