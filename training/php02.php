<?php
// Default: http://localhost/ajaxcrud/training/php01.php
// With 1 GET parameter: http://localhost/ajaxcrud/training/php01.php?a=Mary
// With 2 GET parameters: http://localhost/ajaxcrud/training/php01.php?a=Mary&b=London

$a = isset($_REQUEST['a']) ? $_REQUEST['a'] : 'Unnamed Person';
$b = isset($_REQUEST['b']) ? $_REQUEST['b'] : 'Unknown Location';
$c = file_get_contents('file.txt');
$form = '
<form method="POST">
    <p>Name: <input type="text" size="20" name="T1"></p>
    <p><input type="submit" name="B1" value="Submit"></p>
</form>
';
?>
<html>
	<head>
		<title>Hello</title>
	</head>
	<body>
<?php
if (!isset($_POST['B1'])) echo $form;
else {

?>
		<h1>World of <?php echo "$a from $b"; ?></h1>
		<p><?php echo $_POST['T1']; ?></p>
		<p><pre><?php echo $c; ?></pre></p>
<?php } ?>
	</body>
</html>
