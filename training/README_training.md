# AjaxCRUD Pre-requisites

* Learn HTML at sites like [HTML @ W3Schools.com](https://www.w3schools.com/html/)
* `html01.html` - Sample minimal HTML file
* Learn PHP at sites like [PHP @ W3Schools.com](https://www.w3schools.com/php/)
* `php01.php` - Sample PHP file with test GET parameters (in URL)

## AjaxCRUD Training Files

* Create a sample DB called `training` and a table called `phonebook` in it
```sql
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
```
* `crud01.php` - Starter basic AjaxCRUD usage file
* AjaxCRUD Documentation available locally in the `docs` folder
