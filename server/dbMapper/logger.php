<?php

/**
 * Class Logger
 */
class Logger
{
    /**
     * @var array Collection of error messages
     */
    private $errors = array();
    /**
     * @var array Collection of error messages
     */
    private $warnings = array();
    /**
     * @var array Collection of success / neutral messages
     */
    private $messages = array();
    /**
     * @var array Collection of debug messages
     */
    private $debug = array();
    /**
     * @var array Collection of debug messages
     */
    private $debug_info = array();

    public function __construct( $parent="" )
    {
        $msg = "Logger started";
        if( $parent != "" ) $msg = $msg." (".$parent.")";
        $this->addDebugInfo( $msg );
    }

    private function printMsg( $type, $msg ) {
        echo '
<div class="alert alert-'.$type.' alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
    '.$msg.'
</div>
';
    }

    public function printLog( $lvl ) {
        switch( $lvl ) {
        case 5:
            foreach ($this->debug_info as $msg) {
                $this->printMsg( "info", $msg );
            }
        case 4:
            foreach ($this->debug as $msg) {
                $this->printMsg( "info", $msg );
            }
        case 3:
            foreach ($this->messages as $msg) {
                $this->printMsg( "success", $msg );
            }
        case 2:
            foreach ($this->warnings as $msg) {
                $this->printMsg( "warning", $msg );
            }
        case 1:
            foreach ($this->errors as $msg) {
                $this->printMsg( "danger", $msg );
            }
        default:
            ;
        }
    }

    public function addDebugInfo( $msg ) {
        $this->debug_info[] = $msg;
    }
    public function addDebug( $msg ) {
        $this->debug[] = $msg;
    }
    public function addSuccess( $msg ) {
        $this->messages[] = $msg;
    }
    public function addWarning( $msg ) {
        $this->warning[] = $msg;
    }
    public function addError( $msg ) {
        $this->error[] = $msg;
    }
}
