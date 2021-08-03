<?php
$rep_list_title = 'Internal Reports';

$directory = new DirectoryIterator(__DIR__);
$cat = '';
$menulist = "";
$fileset=array();

foreach ($directory as $fileinfo) {
    if ($fileinfo->isFile()) {
//		if ( $fileinfo->getExtension() == 'php' ) // >= PHP 5.3.6, 7
		if ( pathinfo($fileinfo->getFilename(), PATHINFO_EXTENSION) == 'php' && 
		     strpos($fileinfo->getFilename(), '_') > 0 ) { // PHP < 5.3.6
			$fileset[] = $fileinfo->getFilename();
		}
    }
}

asort($fileset);

$oldcat = '';
foreach($fileset as $file) {
	$a = explode('_', $file);
	$cat = strtoupper($a[0]);
	$b=explode(chr(10), file_get_contents($file));
	// Second line in report file must be like:
	// $repname = 'Demand Date Wise Summary Report';
	eval($b[1]);
	if ($oldcat <> $cat) {
		if (strlen($menulist) > 0)
			$menulist .= "<br>";
		$menulist .= "<b>$cat<b><br>\n";
	}
	$menulist .= " &nbsp; &nbsp;<a href='./$file'>$repname</a><br>\n";
	$oldcat = $cat;
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title><?php echo $rep_list_title; ?></title>
</head>
<body>
	<h2><?php echo $rep_list_title; ?></h2>

<?php echo $menulist; ?>

</body>
</html>