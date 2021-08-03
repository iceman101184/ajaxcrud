<?php
$repname = 'Missing Data Report';
if (!isset($MYSQL_DB)) $MYSQL_DB = "sac2021";
$ACDIR = '../';

require_once('../db_settings.php'); // <-- this include file MUST go first before any HTML/output
// Object $mysqliConn now available

/*
foreach($_REQUEST as $e) {
		$_REQUEST[$e] = $mysqliConn->real_escape_string($_REQUEST[$e]);
}
*/

$output = '';

$sql = "SELECT * FROM my_table WHERE PersonID > 15 AND Person = ''";
get_data($sql, 'Persons');

$sql = "SELECT * FROM my_table WHERE Mobile = ''";
get_data($sql, 'Mobiles');

function get_data($sql, $sub_caption) {
	global $mysqliConn, $repname, $output;
	$caption = $repname . " - <u>$sub_caption</u>";
	$fields = get_field_names($r=$mysqliConn->query($sql));
	if ($r->num_rows > 0) {
		$out2 = showSQLRows($sql, $fields, $caption." ($r->num_rows records)");
		$output .= "<br>\n" . $out2;
	}
}

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title><?php echo $repname; ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<?php echo $output . "<br>/n"; ?>
</body>
</html>
