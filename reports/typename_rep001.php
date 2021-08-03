<?php
$repname = 'My Status Report';
// Further DB overrides can be placed here
require_once('./my_settings.php'); // <-- this include file MUST go first before any HTML/output
// Object $mysqliConn now available

$output = '';

$caption = $repname;

$rep_sections = Array(); // Array($output_title, $sql)

$rep_sections[] = Array('Time Stats', 
"SELECT 
  IFNULL(ID, '**Total**') AS ID
, MIN(TimeFld) AS `From`
, MAX(TimeFld) AS `Till`
, SUM(IF(YEAR(TimeFld) = 2020, 1, 0)) AS Y2020
, SUM(IF(YEAR(TimeFld) = 2021, 1, 0)) AS Y2021
, COUNT(*) AS Records
FROM `my_table` 
GROUP BY ID WITH ROLLUP
");

$rep_sections[] = Array('Quarter Stats', 
"SELECT 
  IFNULL(ID, '**Total**') AS ID
, MIN(TimeFld) AS `From`
, MAX(TimeFld) AS `Till`
, SUM(IF(MONTH(TimeFld) BETWEEN 1 AND 3, 1, 0)) AS Q1
, SUM(IF(MONTH(TimeFld) BETWEEN 4 AND 6, 1, 0)) AS Q2
, SUM(IF(MONTH(TimeFld) BETWEEN 7 AND 9, 1, 0)) AS Q3
, SUM(IF(MONTH(TimeFld) BETWEEN 10 AND 12, 1, 0)) AS Q4
, COUNT(*) AS Records
FROM `my_table` 
GROUP BY ID WITH ROLLUP
");

foreach ($rep_sections as $k => $rep_section) {
	$caption = "<h3>$rep_section[0]</h3>";
	$sql = $rep_section[1];
	$fields = get_field_names($r=$mysqliConn->query($sql));
	$output .= showSQLRows($sql, $fields, $caption." ($r->num_rows records)");
}

/*
function get_field_names($result) {
	$x = $result->fetch_fields();
	foreach($x as $fieldinfo)
		$y[] = $fieldinfo->name;
	return $y;
}

function get_select_options($options) {
	$RetOptions = '';
	foreach ($options as $v)
		$RetOptions .= "\n<option>$v</option>";
	return $RetOptions;
}
*/

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title><?php echo $repname; ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="blurBg-false" style="background-color:#EBEBEB">
<h2 align="center"><?php echo $repname; ?></h2>
<center>
<?php echo $output; ?>
</center>

<!-- Make the last row bold as it is the Totals row -->
<script type="text/javascript">
	var tables = document.querySelectorAll(".ajaxCRUD");
//	var lastRow = tables[0].rows[ tables[0].rows.length - 1 ];
//	lastRow.setAttribute('style','font-weight: bold');
	var cel;
	var lastRow;
	var i;
	for (i = 0; i < tables.length; i++) {
		lastRow = tables[i].rows[ tables[i].rows.length - 1 ];
		lastRow.setAttribute('style','font-weight: bold');

		var table = tables[i];
		for (var j = 0, row; row = table.rows[j]; j++) {
		//iterate through rows
		//rows would be accessed using the "row" variable assigned in the for loop
		   for (var k = 0, col; col = row.cells[k]; k++) {
				//iterate through columns
				//columns would be accessed using the "col" variable assigned in the for loop
				if (col.innerText == '0') {
					col.style.color    = "red";
					col.style.borderColor = "black";
					col.style.backgroundColor = "yellow";
				}
			}  
		}
	} 
//	lastRow.getElementsByTagName('td')[2].innerHTML=' <b>** Totals **</b> ';
</script>

</body>
</html>
