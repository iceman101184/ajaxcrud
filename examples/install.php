<?php

	require_once('../preheader.php');

	include_once ('../ajaxCRUD.class.php');//just so i can leverage echo_msg_box();

    qr("CREATE TABLE IF NOT EXISTS tblDemo(pkID INT PRIMARY KEY AUTO_INCREMENT,fldField1 VARCHAR(45),fldField2 VARCHAR(45),fldCertainFields VARCHAR(40),fldLongField TEXT, fldCheckbox TINYINT);");
    $report_msg[] = "TABLE <b>tblDemo</b> CREATED\n";

	qr("CREATE TABLE IF NOT EXISTS tblDemo2(pkID INT PRIMARY KEY AUTO_INCREMENT,fldField1 VARCHAR(45),fldField2 VARCHAR(45),fldCertainFields VARCHAR(40),fldLongField TEXT);");
    $report_msg[] = "TABLE <b>tblDemo2</b> CREATED\n";

	qr("CREATE TABLE IF NOT EXISTS tblFriend (pkFriendID int(11) PRIMARY KEY AUTO_INCREMENT, fldName varchar(25),fldAddress varchar(30),fldCity varchar(20),fldState char(2),fldZip varchar(5),fldPhone varchar(15),fldEmail varchar(35),fldBestFriend char(1),fldDateMet date,fldFriendRating char(1),fldOwes double(6,2),fldPicture varchar(30), fkMarriedTo TINYINT);");
    qr("CREATE TABLE IF NOT EXISTS tblLadies (pkLadyID int(11) PRIMARY KEY AUTO_INCREMENT, fldName varchar(25), fldSort INT)");
	$report_msg[] = "TABLE <b>tblFriend</b> CREATED\n";
	$report_msg[] = "TABLE <b>tblLadies</b> CREATED\n";

    //populate tblDemo and tblDemo2
    $success = qr("INSERT IGNORE INTO tblDemo (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (1, \"Adam\", \"Smith\", \"CRUD\", \"First ajaxCRUD Test. A founding father.\")");
    $success = qr("INSERT IGNORE INTO tblDemo (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (2, \"Justin\", \"Beiber\", \"CRUD\", \"Second ajaxCRUD Test. A man who should be deported. \")");
    $success = qr("INSERT IGNORE INTO tblDemo (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (3, \"Sean\", \"Dempsey\", \"CRUD\", \"Third ajaxCRUD Test. A man without a cause.\")");
    $success = qr("INSERT IGNORE INTO tblDemo (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (4, \"Justin\", \"Rigby\", \"Allowable Value1\", \"Fourth ajaxCRUD Test. A man with a plan. \")");
    $success = qr("INSERT IGNORE INTO tblDemo (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (5, \"Glenn\", \"Beck\", \"Allowable Value2\", \"Fifth ajaxCRUD Test. Brilliant, crazy, eccentric, or just plain mad? \")");
    $success = qr("INSERT IGNORE INTO tblDemo (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (6, \"Ron\", \"Paul\", \"Allowable Value2\", \"Sixth ajaxCRUD Test. Should have been president. \")");
    $success = qr("INSERT IGNORE INTO tblDemo (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (7, \"Ayn\", \"Rand\", \"Allowable Value2\", \"Seventh ajaxCRUD Test.\")");
    $success = qr("INSERT IGNORE INTO tblDemo (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (8, \"Conan\", \"O'Brien\", \"Dropdown Value\", \"Eighth ajaxCRUD Test. A great man of power and excellence. \")");

    $success = qr("INSERT IGNORE INTO tblDemo2 (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (1, \"Jack\", \"Black\", \"Blue\", \"First ajaxCRUD Test. A comedian/actor. OR is it actor/comedian? \")");
    $success = qr("INSERT IGNORE INTO tblDemo2 (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (2, \"Ryan Dempsey\", \"Twiddle\", \"Blue\", \"Third ajaxCRUD Test. A great band in rural VT. Check 'em out\")");
    $success = qr("INSERT IGNORE INTO tblDemo2 (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (3, \"Jefferson\", \"Airplane\", \"Red\", \"Fourth ajaxCRUD Test. He is more airplane than man. \")");
    $success = qr("INSERT IGNORE INTO tblDemo2 (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (4, \"Correct this\", \"Splling Mistake\", \"Green\", \"Fifth ajaxCRUD Test. See if you can spot the mistake! \")");
    $success = qr("INSERT IGNORE INTO tblDemo2 (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (5, \"Chuck\", \"Mangione\", \"Periwinkle\", \"Sixth ajaxCRUD Test. A soulful trumpet, indeed. \")");
    $success = qr("INSERT IGNORE INTO tblDemo2 (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (6, \"Chuck\", \"Woolery\", \"Periwinkle\", \"Seventh ajaxCRUD Test. Wollery is a large and powerful man.\")");
    $success = qr("INSERT IGNORE INTO tblDemo2 (pkID, fldField1, fldField2, fldCertainFields, fldLongField) VALUES (7, \"Emma\", \"Watson\", \"Blue\", \"Eighth ajaxCRUD Test. Too hot for words.\")");

    //populate tblFriend
    $success = qr("INSERT IGNORE INTO `tblFriend` (`pkFriendID`, `fldName`, `fldAddress`, `fldCity`, `fldState`, `fldZip`, `fldPhone`, `fldEmail`, `fldBestFriend`, `fldDateMet`, `fldFriendRating`, `fldOwes`, `fldPicture`, `fkMarriedTo`) VALUES
	 (1, 'Sean Dempsey', '13 Back River Road', 'Dover', 'NH', '03820', '(603) 978-8841', 'sean@loudcanvas.com', 'N', '2011-10-27', '5', 122.01, '', 1)
	,(2, 'Justin Rigby', '22 Farmington Rd', 'Rochester', 'VT', '05401', '(802) 661-4051', 'sean@seandempsey.com', '', '2011-10-19', '1', 22.00, '', 2)
	,(3, 'Ryan Dempsey', '', '', 'VT', '', '', 'ryan@dempsey.com', '', '2011-10-20', '', 0.00, '',3);");

	//populate tblLadies
	$success = qr("INSERT IGNORE INTO tblLadies (pkLadyID, fldName, fldSort) VALUES (1, 'Jackie Benson', 1)");
	$success = qr("INSERT IGNORE INTO tblLadies (pkLadyID, fldName, fldSort) VALUES (2, 'Sharon Nelson', 2)");
	$success = qr("INSERT IGNORE INTO tblLadies (pkLadyID, fldName, fldSort) VALUES (3, 'Kirsten Dunst', 3)");
	$success = qr("INSERT IGNORE INTO tblLadies (pkLadyID, fldName, fldSort) VALUES (4, 'Emma Watson', 4)");
	$success = qr("INSERT IGNORE INTO tblLadies (pkLadyID, fldName, fldSort) VALUES (5, 'Shirley Temple', 5)");

    if ($success){
        $report_msg[] = "<b>Example rows available in demo tables.</b>\n";
    }

    echo_msg_box();

    echo "<p><a href='example.php' target='_blank'>Try out a basic demo</a></p>\n";
    echo "<p><a href='example2.php' target='_blank'>Try out a demo with two ajaxCRUD tables.</a></p>\n";
    echo "<p><a href='example3.php' target='_blank'>Try out a demo with validation, masking, file upload, pk/fk relationship, and csv export enabled.</a></p>\n";
    echo "<p><a href='events' target='_blank'>Try out Events Application made with AjaxCRUD</a></p>\n";

?>