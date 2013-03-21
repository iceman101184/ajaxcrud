CREATE TABLE tblDemo(
pkID INT PRIMARY KEY AUTO_INCREMENT,
fldField1 VARCHAR(45),
fldField2 VARCHAR(45),
fldCertainFields VARCHAR(40),
fldLongField TEXT
);


CREATE TABLE tblDemo2(
pkID INT PRIMARY KEY AUTO_INCREMENT,
fldField1 VARCHAR(45),
fldField2 VARCHAR(45),
fldCertainFields VARCHAR(40),
fldLongField TEXT
);

CREATE TABLE tblFriend (
pkFriendID int(11) PRIMARY KEY AUTO_INCREMENT,  
fldName varchar(25),
fldAddress varchar(30),
fldCity varchar(20),
fldState char(2),
fldZip varchar(5),
fldPhone varchar(15),
fldEmail varchar(35),
fldBestFriend char(1),
fldDateMet date,
fldFriendRating char(1),
fldOwes double(6,2),
fldPicture varchar(30)
);