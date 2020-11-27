<?php
// Start of db_settings.php
	if (!isset($MYSQL_DB)) $MYSQL_DB = "training";
	$LOCAL_JS    = TRUE; // FALSE for inclusion of remote js files
	$ACDIR = '../';
	$disable_add = true;
// "D:\\xampp\\htdocs\\ajaxcrud\\";
	
	include_once( $ACDIR . 'preheader.php' ); // Graceful Defaults, common functions
	include_once( $ACDIR . 'ajaxCRUD.class.php' );
// End of db_settings.php