<?php

	//for more documentation go to http://ajaxcrud.com/api/index.php?id=ajaxcrud_where_clause

	require_once('../preheader.php'); // <-- this include file MUST go first before any HTML/output

	#the code for the class
	include ('../ajaxCRUD.class.php'); // <-- this include file MUST go first before any HTML/output

	//print_r($_SESSION);

	echo "<h2>Current WHERE Clauses in SESSION</h2><hr /<br /><br />\n";

	if (is_array($_SESSION['ajaxcrud_where_clause']) && isset($_SESSION['ajaxcrud_where_clause'])){
		$countWhereClauses = count($_SESSION['ajaxcrud_where_clause']);
		echo "<p>Number of WHERE Clauses in session: $countWhereClauses</p>";
		if ($countWhereClauses > 0){
			foreach ($_SESSION['ajaxcrud_where_clause'] as $table => $whereClause){
				$report_msg[] = "Table: <b>$table</b> | WHERE Clause: <i>$whereClause</i>";
			}
		}//if any where clauses exist
	}//if any where clauses are
	else{
		$error_msg[] = "No WHERE clauses set by any ajaxCRUD table instances (yet); try going into an example and typing in a filter box; then come back and refresh this page.";
	}

	echo_msg_box();


?>