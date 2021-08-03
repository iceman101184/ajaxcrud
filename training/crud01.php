<?php
// if (!isset($MYSQL_DB)) $MYSQL_DB = "training"; // already set
require_once('./db_settings.php'); // <-- this include file MUST go first before any HTML/output

/*
CREATE DATABASE IF NOT EXISTS `training` CHARACTER SET latin1 COLLATE latin1_general_ci;

USE `training`;

CREATE TABLE `phonebook` (
  `PersonID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) NOT NULL,
  `Qualifications` enum('School','College','Engg','ITI') DEFAULT NULL,
  `Phone` varchar(16) NOT NULL,
  `MailID` varchar(100) DEFAULT NULL,
  `InActive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
*/

    $tblDemo = new ajaxCRUD("My Phone Book", "phonebook", "PersonID", $ACDIR);
	$tblDemo->setCSSFile("extra_css/stainlesssteel.css");
    $disable_add = false;
//	$tblDemo->disallowEditAllFields();
//	$tblDemo->disallowAdd();
//	$tblDemo->disallowDelete();
//	$tblDemo->setLimit(20);
	$tblDemo->omitPrimaryKey();
	$tblDemo->defineCheckbox("InActive");
	$tblDemo->formatFieldWithFunction('InActivel', 'makeTick');
	$tblDemo->addAjaxFilterBoxAllFields();
	$allowableValues = array("School", "College", "Engg", "ITI");
	$tblDemo->defineAllowableValues("Qualifications", $allowableValues);
	$tblDemo->addButtonToRow("View", "show.php", "PersonID", "", "new"); 

?>	
		<h1>My Training Phonebook</h1>
		<div style="float: left">
			Total Returned Rows: <b><?=$tblDemo->insertRowsReturned();?></b><br />
			<ul>
				<li><a href='../reports' target='_blank'>Reports</a></li>
				<li><a href='http://php.net' target='_blank'>PHP Home</a></li>
				<li><a href='http://w3schools.com' target='_blank'>W3 Schools</a></li>
			</ul>
		</div>

		<div style="clear:both;"></div>
<?php
	#actually show the table
	$tblDemo->showTable();

	function makeTick($val){
		return ($val == 1 ? "<img src='images/checkicon.gif'>" : "");
	}

?>