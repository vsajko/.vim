<?php
require_once('FirePHPCore/FirePHP.class.php');
ob_start();
$fb = FirePHP::getInstance(true);
$fb->log( 'nesto' );
?>
