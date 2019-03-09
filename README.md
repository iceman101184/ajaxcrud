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

NB: Make sure you include any "header" info (e.g. any HTML, echo statements, etc) AFTER you 
include the ajaxCRUD class. 