FULL CLASS DOCUMENTATION HERE:
http://www.ajaxcrud.com/api/

Any questions or issues? -- support forum and reference material featured on the website www.ajaxcrud.com

[Event Example](examples/events)

USING EXAMPLE SCRIPTS:

1) To install this class you must first manually CREATE a database. This is done (locally) by going
   into your mySQL terminal window and using the SQL "CREATE DATABASE [database_name]".

   If you are using an online host, you'll have to go into its control panel (eg C-panel) and create a database.

2) Make sure a database user has complete access to the database in question (SELECT, UPDATE, CREATE, DELETE)

3) Edit the file "preheader.php" and fill in your database information

4) Navigate to the file "/examples/install.php"

5) Navigate to the file "/examples/example.php" to test out the class!!


~Loud Canvas Media Staff
www.loudcanvas.com

#Caveats by Ap.Muthu
* Do not name any field bearing the case insensitive string **email** or **password** if *jquery* is used for input masking
* Refer the [upstream issues](https://github.com/iceman101184/ajaxcrud/issues)
* Class constructor is now `__construct`
* CSV export now has table name as part of file name
* HTML5 Browser and PHP > 5.3 needed for email and other newer form field types.
* Extra CSS included with and without Data URLs in them
* The datepicker `calendar.gif` file must be in the same folder as the executing table script

NB: Make sure you include any "header" info (e.g. any HTML, echo statements, etc) AFTER you 
include the ajaxCRUD class.

## Class Properties / Variables Added
````
$LOCAL_JS = false; variable set to true in the preheader file for local js usage instead of from CDN
$AjaxFilterBoxStyle = array() // array (sub fieldname) holding style of select box
$exportCSVSeparator = ','; // sets the CSV field separator
$uploadText // translatable value for button / text
````

## Class Methods Added
````
setAjaxFilterBoxStyle($field_name, $style)
disableAjaxFilterBox($field_name) // filters must pre-exist
disableAjaxFilterBoxAllFields() // filters must pre-exist
defineAllowableValuesFromSQL($field, $sql, $onedit_textbox = FALSE)
setExportCSVSeparator($value=',')
````

## Generic SQL to HTML Table functions added to preheader.php
* `showSQLRecord($selectSQL, $titles=Array(), $caption='')`
* `showSQLRows($selectSQL, $titles=Array(), $caption='')
* `showRow($row, $isHead=false)`
* `get_field_names($result)`
* Override MySQL connection parameters

# Linux installation (change PHPLIBDIR as needed)
````
PHPLIBDIR=/var/www/libraries
mkdir -p ${PHPLIBDIR}
cd ${PHPLIBDIR}
wget -c --no-check-certificate https://github.com/apmuthu/ajaxcrud/archive/master.zip -O ajaxcrud.zip
unzip ajaxcrud.zip
rm ajaxcrud.zip
mv ajaxcrud-master ajaxcrud
````
