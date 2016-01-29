<?php
// fix du $_SERVER['DOCUMENT_ROOT'] mal sette par VirtualDocumentRoot
if ($_SERVER['DOCUMENT_ROOT'] != str_replace($_SERVER['SCRIPT_NAME'],"",$_SERVER['SCRIPT_FILENAME'])){
        $_SERVER['DOCUMENT_ROOT'] = str_replace($_SERVER['SCRIPT_NAME'],"",$_SERVER['SCRIPT_FILENAME']);
}

