<?php
// Start of db_settings.php
	if (!isset($MYSQL_DB)) $MYSQL_DB = "training";
	$LOCAL_JS    = TRUE; // FALSE for inclusion of remote js files
	if(!isset($ACDIR)) $ACDIR = '../';
// "D:\\xampp\\htdocs\\ajaxcrud\\";
	
	include_once( $ACDIR . 'preheader.php' ); // Graceful Defaults, common functions
	include_once( $ACDIR . 'ajaxCRUD.class.php' );
	// header('Content-Type: text/html; charset=utf-8');
// End of db_settings.php