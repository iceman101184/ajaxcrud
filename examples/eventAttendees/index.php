<?php

	require_once('../../preheader.php');
	$page_title = "Who's Coming To VB Practice?";

	$upcomingWednesday = date("Y-m-d", strtotime("This Wednesday"));
	$lastWednesday = date("Y-m-d", strtotime("Last Wednesday"));


	$selectedEventDate = date("l, M d", strtotime("This Wednesday")); // default
	if ($_GET['eventDate'] != ""){
		$selectedEventDate = date("l, M d", strtotime($_GET['eventDate']));
	}

	#the code for the class
	include ('../../ajaxCRUD.class.php');

	include ('header.php');

	echo "<h3>Volleyball Practice Attendence - $selectedEventDate @ 5:30pm</h3>\n";
	echo "<p>Who's coming?? If you are, please add yourself to the list by pressing \"Add Me\" below</p>\n";

    echo "<div style=\"font-size:13px; margin-left: 30%; width: 500px; text-align:center;\"><center>
    		<img src=\"volleyballman.jpg\" style='float: left;'>
    		<table style='float: left;margin-left: 10px; border: 1px solid #eee; font-family:\"Arial Narrow\",\"sans-serif\";'>
    		<tr>
    			<td style='background:#1F497D; color:white'>What</td>
    			<td>Recreational Beach Volleyball</td>
    		</tr>
    		<tr>
    			<td style='background:#1F497D; color:white'>When</td>
    			<td>$selectedEventDate</td>
    		</tr>
    		<tr>
    			<td style='background:#1F497D; color:white'>When</td>
    			<td>5:30ish</td>
    		</tr>
    		<tr>
    			<td style='background:#1F497D; color:white'>Where</td>
    			<td>Millennium Park (Somersworth NH)</td>
    		</tr>
    	    </table></center></div><br /><br /><div style='clear: both;'></div>\n";

?>

	<br />
	<div style="float: right">
		Select Event Date:
		<form name="filterForm" id="filterForm" method="get" style="display: inline;" action="<?=$_SERVER['PHP_SELF']?>">
			<select name="eventDate" onchange="document.getElementById('filterForm').submit();">
				<option value="">=======PRACTICE DATE=======</option>
				<option value="<?=$upcomingWednesday?>" <? if ($_GET['eventDate'] == $upcomingWednesday || $_GET['eventDate'] == "") echo " selected"; ?> >This Coming Wednesday (<? echo date("m/d/Y", strtotime($upcomingWednesday));?>)</option>
				<option value="<?=$lastWednesday?>" <? if ($_GET['eventDate'] == $lastWednesday) echo " selected"; ?> >Last Wednesday (<? echo date("m/d/Y", strtotime($lastWednesday));?>)</option>
				<?
				$dates = q("SELECT DISTINCT fldEventDate FROM tblAttendee WHERE fldEventDate != '' AND fldEventDate != '$lastWednesday' AND fldEventDate != '$upcomingWednesday' ORDER BY fldEventDate DESC");
				foreach ($dates as $date){
					$selected = "";
					$date = $date['fldEventDate'];
					if ($_GET['eventDate'] == $date) $selected = " selected";
					echo "<option $selected value=\"$date\">$date</option>\n";
				}
				?>
			</select>
		</form>
	</div>
	<div style="clear: both;"></div><Br />

<?

    #Create an instance of the class
    $tblAttendee = new ajaxCRUD("Me", "tblAttendee","pkAttendeeID", "../../");

    $tblAttendee->omitPrimaryKey();
    #Create custom display fields
	//$tblAttendee->displayAs("pkAttendeeID","User ID");
	$tblAttendee->displayAs("fldFirstName","First Name");
    $tblAttendee->displayAs("fldLastName", "Last Name");
	$tblAttendee->displayAs("fldPhone", "Phone #");
	$tblAttendee->displayAs("fldWillBeLate", "Will You Be Late?");
	$tblAttendee->displayAs("fldTimeArriving", "Arrival Time");


	//$tblAttendee->omitAddField("fldEmail");

	$tblAttendee->omitFieldCompletely("fldEventDate");
	$tblAttendee->omitFieldCompletely("fldPhone");
	$tblAttendee->omitFieldCompletely("fldAttending");

	//$tblAttendee->defineCheckbox("fldAttending");
	$tblAttendee->defineCheckbox("fldWillBeLate");

	if ($_GET['eventDate'] != ''){
		$tblAttendee->addWhereClause("WHERE fldEventDate = '" . $_GET['eventDate'] . "'");
	}
	else{
		$tblAttendee->addWhereClause("WHERE fldEventDate = \"$upcomingWednesday\"");
	}


	$tblAttendee->addOrderBy("ORDER BY fldLastName ASC");

	#Add filter boxes
	$tblAttendee->addAjaxFilterBox("fldFirstName");
	$tblAttendee->addAjaxFilterBox("fldLastName");
	//$tblAttendee->addAjaxFilterBox("fldAttending");

	//when someone adds their name, it automatically adds them to this wednesdays date
	$tblAttendee->addValueOnInsert("fldEventDate", $upcomingWednesday);

	$tblAttendee->setTextboxWidth("fldTimeArriving", 8);
	$tblAttendee->setTextboxWidth("fldLastName", 25);

	#set the number of rows to display (per page)
    $tblAttendee->setLimit(25);

    $tblAttendee->setAddPlaceholderText("fldTimeArriving", "05:30");
    $tblAttendee->setAddFieldNote("fldWillBeLate", "If you will be arriving late, please enter the time in the next box.");

	//$tblAttendee->addButtonToRow("View", "myOwnDisplayPage.php", "all");
	//$tblAttendee->addButtonToRowWindowOpen = "same";

	//$tblAttendee->addValueOnInsert("fldEmail", "sean@seandempsey.com");
	//$tblAttendee->modifyFieldWithClass("fldPhone", "phone");
	$tblAttendee->modifyFieldWithClass("fldTimeArriving", "time");
	$tblAttendee->modifyFieldWithClass("fldLastName", "required");
	$tblAttendee->modifyFieldWithClass("fldFirstName", "required");

	$tblAttendee->formatFieldWithFunction("fldTimeArriving", "displayArrivalTime");

	$tblAttendee->setCSSFile("cuscosky.css");
	$tblAttendee->showTable();

	include ('footer.php');

	function displayArrivalTime($val){
		if ($val == "" || $val == "17:30" || $val == "5:30" || $val == "530" || $val == "5:30pm" || $val == "05:30"){
			return "On Time";
		}
		return $val;
	}

?>