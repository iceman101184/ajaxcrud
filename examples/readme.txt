FULL DOCUMENTATION HERE:
http://www.ajaxcrud.com/api/

Any questions or issues? -- support forum and reference material featured on the website www.ajaxcrud.com


USING THESE EXAMPLE SCRIPTS:

1) To install this class you must first manually CREATE a database. This is done (locally) by going
   into your mySQL terminal window and using the SQL "CREATE DATABASE [database_name]".

   If you are using an online host, you'll have to go into its control panel (eg C-panel) and create a database.

2) Make sure a database user has complete access to the database in question (SELECT, UPDATE, CREATE, DELETE)

3) Edit the file "preheader.php" and fill in your database information

4) Navigate to the file "/examples/install.php"

5) Navigate to the file "/examples/example.php" to test out the class!!

/*
ADD A COMPUTED FIELD

// Add a computed field
	$computed_field_name = 'Vacancies';
    $tblDemo->fields[] = $computed_field_name;
    $tblDemo->display_fields[] = $computed_field_name;
    $tblDemo->uneditable_fields[] = $computed_field_name;
//    $tblDemo->ajaxFilter_fields[] = $computed_field_name; // Computer fields cannot be sorted or filtered for now
//    $tblDemo->ajaxFilterBoxSize[] = 10;
//    $tblDemo->field_datatype[$computed_field_name] = 'int(10) unsigned';
    $tblDemo->formatFieldWithFunctionAdvanced($computed_field_name, 'CalcTV');
	$tblDemo->unsortable_fields[] = $computed_field_name;
	function CalcTV($data, $id){
//		global $tblDemo, $computed_field_name;
//		$c_sql = "SELECT VPromotion+VSection110+VNonPromotion+VDirect AS $computed_field_name FROM ".$tblDemo->db_table." WHERE ".$tblDemo->db_table_pk." = $id";
		$c_sql = "SELECT VPromotion+VSection110+VNonPromotion+VDirect AS Vacancies FROM t_vacancies WHERE ActionID = $id";
		return q1($c_sql);
	}
*/
This has now been added as a class method - addComputedField()


~Loud Canvas Media Staff
www.loudcanvas.com


NB: Make sure you include any "header" info (e.g. any HTML, echo statement,s etc) AFTER you 
include the ajaxCRUD class. 