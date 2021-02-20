<?php

	require_once('../preheader.php'); // <-- this include file MUST go first before any HTML/output

	#the code for the class
	include ('../ajaxCRUD.class.php'); // <-- this include file MUST go first before any HTML/output

    #this one line of code is how you implement the class
    ########################################################
    ##
	$LOCAL_JS = true; // use to serve js files from local server
    $tblDemo  = new ajaxCRUD("Documents", "dl_links", "LinkID", "../../libraries/ajaxcrud/");
	$tblDemo->setCSSFile("extra_css/stainlesssteel.css");
//	$tblDemo->setCSSFile("extra_css/chromedelachrome.css");
//	$tblDemo->setCSSFile("cuscosky.css");
    ##
    ########################################################

    ## all that follows is setup configuration for your fields....
    ## full API reference material for all functions can be found here - http://ajaxcrud.com/api/
    ## note: many functions below are commented out (with //). note which ones are and which are not

    #i can define a relationship to another table
    #the 1st field is the fk in the table, the 2nd is the second table, the 3rd is the pk in the second table, the 4th is field i want to retrieve as the dropdown value
    #http://ajaxcrud.com/api/index.php?id=defineRelationship
    //$tblDemo->defineRelationship("fkID", "tblDemoRelationship", "pkID", "fldName", "fldSort DESC"); //use your own table - this table (tblDemoRelationship) not included in the installation script
?>
<!DOCTYPE html PUBLIC"-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><?php echo $doc_title; ?></title>

		<?php $tblDemo->insertHeader(); ?>

		<!-- these js/css includes are ONLY to make the calendar widget work (fldDateMet);
			 these includes are not necessary for the class to work!! -->
		<link rel="stylesheet" href="includes/jquery.ui.all.css">
		<script src="includes/jquery.ui.core.js"></script>
		<!--script src="includes/jquery.ui.widget.js"></script-->
		<script src="includes/jquery.ui.datepicker.js"></script>
		<!-- The following line is needed to make a number input field as a textbox instead of spinner in FF/Chrome -->
		<!-- Ref: https://github.com/iceman101184/ajaxcrud/issues/14 -->
		<style>	input[type=number] { -moz-appearance:textfield; } </style>
	</head>
<?php
    #i don't want to visually show the primary key in the table
    $tblDemo->omitPrimaryKey();

    #the table fields have prefixes; i want to give the heading titles something more meaningful
    $tblDemo->displayAs("LinkCat", "Document");
    $tblDemo->displayAs("DocDate", "Date");
    $tblDemo->displayAs("DocType", "Type");
#    $tblDemo->displayAs("fldLongField", "Long Field");
#    $tblDemo->displayAs("fldCheckbox", "Is Selected?");

	#set the textarea height of the longer field (for editing/adding)
    #http://ajaxcrud.com/api/index.php?id=setTextareaHeight
#    $tblDemo->setTextareaHeight('fldLongField', 150);

    #i could omit a field if I wanted
    #http://ajaxcrud.com/api/index.php?id=omitField
    $tblDemo->omitField("ParseDT");

    #i could omit a field from being on the add form if I wanted
    $tblDemo->omitAddField("ParseDT");

    #i could disallow editing for certain, individual fields
    $tblDemo->disallowEdit('LinkCat');
    $tblDemo->disallowEdit('DocDate');
    $tblDemo->disallowEdit('DocType');
    $tblDemo->disallowEdit('URL');

    #i could set a field to accept file uploads (the filename is stored) if wanted
    //$tblDemo->setFileUpload("fldField2", "uploads/");

    #i can have a field automatically populate with a certain value (eg the current timestamp)
    $tblDemo->addValueOnInsert("ParseDT", "NOW()");

    #i can use a where field to better-filter my table
    //$tblDemo->addWhereClause("WHERE (fldField1 = 'test')");

    #i can order my table by whatever i want
    $tblDemo->addOrderBy("ORDER BY DocDate DESC, LinkCat ASC, DocType ASC");

    #i can set certain fields to only allow certain values
    #http://ajaxcrud.com/api/index.php?id=defineAllowableValues
	//$tblDemo->defineAllowableValuesFromSQL($field, $sql, $onedit_textbox = FALSE);
	$tblDemo->defineAllowableValuesFromSQL('LinkCat', "SELECT DISTINCT LinkCat FROM dl_links");
	$tblDemo->defineAllowableValuesFromSQL('DocType', "SELECT DISTINCT DocType FROM dl_links");
    //$allowableDocuments = array("Misc", "Allowable Value2", "Dropdown Value", "CRUD");
    //$tblDemo->defineAllowableValues("fldCertainFields", $allowableDocuments);

    //set field fldCheckbox to be a checkbox
#    $tblDemo->defineCheckbox("fldCheckbox");

    #i can disallow deleting of rows from the table
    #http://ajaxcrud.com/api/index.php?id=disallowDelete
    $tblDemo->disallowDelete();

    #i can disallow adding rows to the table
    #http://ajaxcrud.com/api/index.php?id=disallowAdd
    //$tblDemo->disallowAdd();

    #i can add a button that performs some action deleting of rows for the entire table
    #http://ajaxcrud.com/api/index.php?id=addButtonToRow
    //$tblDemo->addButtonToRow("Add", "add_item.php", "all");

    #set the number of rows to display (per page)
    $tblDemo->setLimit(10);

	#set a filter box at the top of the table
    $tblDemo->addAjaxFilterBox('LinkCat');
    $tblDemo->addAjaxFilterBox('DocDate');
    $tblDemo->addAjaxFilterBox('DocType');

    #if really desired, a filter box can be used for all fields
    //$tblDemo->addAjaxFilterBoxAllFields();

    #i can set the size of the filter box
    //$tblDemo->setAjaxFilterBoxSize('fldField1', 3);

	#i can format the data in cells however I want with formatFieldWithFunction
	#this is arguably one of the most important (visual) functions
	$tblDemo->formatFieldWithFunction('URL', 'makeURL');

	//$tblDemo->modifyFieldWithClass("fldField1", "zip required"); 	//for testing masked input functionality
	//$tblDemo->modifyFieldWithClass("fldField2", "phone");			//for testing masked input functionality
	$tblDemo->modifyFieldWithClass("DocDate", "datepicker");

	//$tblDemo->onAddExecuteCallBackFunction("mycallbackfunction"); //uncomment this to try out an ADD ROW callback function

	$tblDemo->deleteText = "delete";

	// Add a computed field
	// $tblDemo->addComputedField('UnBerth_Time', 'ShowDepTime');
	// $tblDemo->displayAs("UnBerth_Time", "UnBerth Time");
	// function ShowDepTime($data, $id){
	//	$c_sql = "SELECT UnBerth_Time FROM vessels_departure WHERE VCN = '$id'";
	//	return q1($c_sql);
	// }


?>
    	<h2><?php echo $doc_title; ?></h2>
		<div style="float: left">
			Total Returned Rows: <b><?=$tblDemo->insertRowsReturned();?></b><br />
		</div>

		<div style="clear:both;"></div>

<?php

	#actually show the table
	$tblDemo->showTable();

	#my self-defined functions used for formatFieldWithFunction
	function makeURL($val){
//		Use with simpleclear.css file for download icon
//		return "<a href=\"$val\" target=\"_blank\" title=\"Download\"></a>";
		return "<a href=\"$val\" target=\"_blank\">Show</a>";
	}
?>

	</body>
</html>