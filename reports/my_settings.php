<?php
// Start of my_settings.php
	if (!isset($MYSQL_DB)) $MYSQL_DB = "ipa_pcs_grab";
	$LOCAL_JS    = TRUE; // FALSE for inclusion of remote js files
	$ACDIR = '../'; // ajaxcrud path with trailing slash ../../libraries/ajaxcrud/
//	$disable_add = true;
//  For windows, absolute $ACDIR can be like: "D:\\xampp\\htdocs\\libraries\\ajaxcrud\\";
	
	include_once( $ACDIR . 'preheader.php' ); // Graceful Defaults, common functions
	include_once( $ACDIR . 'ajaxCRUD.class.php' );
// End of my_settings.php