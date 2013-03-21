<?php

	require_once('../preheader.php');

	include_once ('../ajaxCRUD.class.php');//just so i can leverage echo_msg_box();

    q1("CREATE TABLE tblDemo(pkID INT PRIMARY KEY AUTO_INCREMENT,fldField1 VARCHAR(45),fldField2 VARCHAR(45),fldCertainFields VARCHAR(40),fldLongField TEXT, fldCheckbox TINYINT);");
    $report_msg[] = "TABLE <b>tblDemo</b> CREATED\n";

	q1("CREATE TABLE tblDemo2(pkID INT PRIMARY KEY AUTO_INCREMENT,fldField1 VARCHAR(45),fldField2 VARCHAR(45),fldCertainFields VARCHAR(40),fldLongField TEXT);");
    $report_msg[] = "TABLE <b>tblDemo2</b> CREATED\n";

	q1("CREATE TABLE tblFriend (pkFriendID int(11) PRIMARY KEY AUTO_INCREMENT, fldName varchar(25),fldAddress varchar(30),fldCity varchar(20),fldState char(2),fldZip varchar(5),fldPhone varchar(15),fldEmail varchar(35),fldBestFriend char(1),fldDateMet date,fldFriendRating char(1),fldOwes double(6,2),fldPicture varchar(30), fkMarriedTo TINYINT);");
    q1("CREATE TABLE tblLadies (pkLadyID int(11) PRIMARY KEY AUTO_INCREMENT, fldName varchar(25), fldSort INT)");
	$report_msg[] = "TABLE <b>tblFriend</b> CREATED\n";
	$report_msg[] = "TABLE <b>tblLadies</b> CREATED\n";

    //populate tblDemo and tblDemo2
    $success = qr("INSERT INTO tblDemo (fldField1, fldField2, fldCertainFields, fldLongField) VALUES (\"Testing\", \"Testing2\", \"CRUD\", \"First ajaxCRUD Test\")");
    $success = qr("INSERT INTO tblDemo2 (fldField1, fldField2, fldCertainFields, fldLongField) VALUES (\"Testing\", \"Testing2\", \"CRUD\", \"Second ajaxCRUD Test\")");
    $success = qr("INSERT INTO tblDemo2 (fldField1, fldField2, fldCertainFields, fldLongField) VALUES (\"Testing\", \"Testing2\", \"CRUD\", \"Third ajaxCRUD Test\")");

    //populate tblFriend
    $success = qr("INSERT INTO `tblFriend` (`pkFriendID`, `fldName`, `fldAddress`, `fldCity`, `fldState`, `fldZip`, `fldPhone`, `fldEmail`, `fldBestFriend`, `fldDateMet`, `fldFriendRating`, `fldOwes`, `fldPicture`, `fkMarriedTo`) VALUES(1, 'Sean Dempsey', '13 Back River Road', 'Dover', 'NH', '03820', '(603) 978-8841', 'sean@loudcanvas.com', 'N', '2011-10-27', '5', 122.01, '', 1),(2, 'Justin Rigby', '22 Farmington Rd', 'Rochester', 'VT', '05401', '(802) 661-4051', 'sean@seandempsey.com', '', '2011-10-19', '1', 22.00, '', 2),(3, 'Ryan Dempsey', '', '', 'VT', '', '', 'ryan@dempsey.com', '', '2011-10-20', '', 0.00, '',3);");

	//populate tblLadies
	$success = qr("INSERT INTO tblLadies (fldName, fldSort) VALUES ('Jackie Benson', 1)");
	$success = qr("INSERT INTO tblLadies (fldName, fldSort) VALUES ('Sharon Nelson', 2)");
	$success = qr("INSERT INTO tblLadies (fldName, fldSort) VALUES ('Kirsten Leavit', 3)");

    if ($success){
        $report_msg[] = "<b>Example rows entered into demo tables.</b>\n";
    }

    echo_msg_box();

    echo "<p><a href='example.php'>Try out a basic demo</a></p>\n";
    echo "<p><a href='example2.php'>Try out a demo with two ajaxCRUD tables.</a></p>\n";
    echo "<p><a href='example3.php'>Try out a demo with validation, masking, file upload, pk/fk relationship, and csv export enabled.</a></p>\n";

?>