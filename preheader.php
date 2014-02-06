<?php

	/* you SHOULD edit the database details below; fill in your database info */

	#this is the info for your database connection
    ####################################################################################
    ##
	$MYSQL_HOST = "localhost";
	$MYSQL_LOGIN = "root";
	$MYSQL_PASS = "";
	$MYSQL_DB = "ajaxcrud_demos";
    ##
    ####################################################################################

	/********* THERE SHOULD BE LITTLE NEED TO EDIT BELOW THIS LINE *******/

	####################################################################################

	#a session variable is set by class for much of the CRUD functionality -- eg adding a row
    session_start();

    #for pesky IIS configurations without silly notifications turned off
    error_reporting(E_ALL - E_NOTICE);

	//use this connection if your hosting config does NOT support mysqli
	//$db = @mysql_connect($MYSQL_HOST,$MYSQL_LOGIN,$MYSQL_PASS);

	$mysqliConn = new mysqli($MYSQL_HOST, $MYSQL_LOGIN, $MYSQL_PASS, $MYSQL_DB);

	/* check connection */
	if (mysqli_connect_errno()) {
		//logError("Connect failed in getMysqli(): ", mysqli_connect_error());
		printf("Connect failed: %s\n", mysqli_connect_error());
		exit();
	}

 	$mysqliConn->set_charset("utf8");

	/*
	//this code was for mysql connections; was replaced in v8.6 with mysqli
	if(!$db){
		echo('Unable to authenticate user. <br />Error: <b>' . mysql_error() . "</b>");
		exit;
	}
	$connect = @mysql_select_db($MYSQL_DB);
	if (!$connect){
		echo('Unable to connect to db <br />Error: <b>' . mysql_error() . "</b>");
		exit;
	}
	mysql_query("SET NAMES 'utf8'");
	//mysql_query("SET character_set_results = 'utf8_general_ci', character_set_client = 'utf8_general_ci', character_set_connection = 'utf8_general_ci', character_set_database = 'utf8_general_ci', character_set_server = 'utf8_general_ci'", $db);
	*/


	# what follows are custom database handling functions - required for the ajaxCRUD class
	# ...but these also may be helpful in your application(s) :-)
	if (!function_exists('q')) {
		function q($q, $debug = 0){
			global $mysqliConn;

			/*
			//mysql connection; was replaced in v8.6 with mysqli
			$r = mysql_query($q);
			if(mysql_error()){
				echo mysql_error();
				echo "$q<br>";
			}
			*/

			if (!($r = $mysqliConn->query($q))) {
				$errorMsg = "Mysql Error in preheader.php q(). The query was: " . $q . " and the possible mysqli error follows:" . $mysqliConn->error;
      			//logError($errorMsg);
      			exit("Mysqli error in q() in preheader. See logs.");
      		}

			if($debug == 1){
				echo "<br>$q<br>";
			}

			if(stristr(substr($q,0,8),"delete") ||	stristr(substr($q,0,8),"insert") || stristr(substr($q,0,8),"update")){
				if ($mysqliConn->affected_rows > 0){
				//if(mysql_affected_rows() > 0)
					return true;
				}
				else{
					return false;
				}
			}
			//if(mysql_num_rows($r) > 1){
			if ($r->num_rows > 1){
				while ($row = $r->fetch_array()){
				//while($row = mysql_fetch_array($r)){
					$results[] = $row;
				}
			}
			else if ($r->num_rows == 1){
			//else if(mysql_num_rows($r) == 1){
				$results = array();
				//$results[] = mysql_fetch_array($r);
				$results[] = $r->fetch_array();
			}
			else{
				$results = array();
			}

			//$r->close();
			return $results;
		}
	}

	if (!function_exists('q1')) {
		function q1($q, $debug = 0){
			global $mysqliConn;

			/*
			$r = mysql_query($q);
			if(mysql_error()){
				echo mysql_error();
				echo "<br>$q<br>";
			}
			*/

			if (!($r = $mysqliConn->query($q))) {
				$errorMsg = "Mysql Error in preheader.php q1(). The query was: " . $q . " and the possible mysqli error follows:" . $mysqliConn->error;
      			//logError($errorMsg);
				exit("Mysqli error in q1() in preheader. See logs.");
			}

			if($debug == 1){
				echo "<br>$q<br>";
			}
			//$row = @mysql_fetch_array($r);
			$row = $r->fetch_array();

			if(count($row) == 2){
				return $row[0];
			}

			return $row;
		}
	}

	if (!function_exists('qr')) {
		function qr($q, $debug = 0){
			global $mysqliConn;

			/*
			$r = mysql_query($q);
			if(mysql_error()){
				echo mysql_error();
				echo "<br>$q<br>";
			}
			*/
			if (!($r = $mysqliConn->query($q))) {
				$errorMsg = "Mysql Error in preheader.php q1(). The query was: " . $q . " and the possible mysqli error follows:" . $mysqliConn->error;
				//logError($errorMsg);
				exit("Mysqli error in q1() in preheader. See logs.");
			}

			if($debug == 1){
				echo "<br>$q<br>";
			}

			if(stristr(substr($q,0,8),"delete") ||	stristr(substr($q,0,8),"insert") || stristr(substr($q,0,8),"update")){
				//if(mysql_affected_rows() > 0){
				if ($mysqliConn->affected_rows > 0) {
					return true;
				}
				else{
					return false;
				}
			}

			$results = array();
			//$results[] = mysql_fetch_array($r);
			$results[] = $r->fetch_array();
			$results = $results[0];

			return $results;
		}
	}
?>