# Reports Usage

* `my_settings.php` - set the DB override here of defaults provided in `../preheader.php`
* `index.php` - set the Reports List Title in `$rep_list_title`
* `typename_rep001.php` - All report files must have one underscore (`_`) separating the Report Category and the report number in its file name
* Each such report file is automatically parsed from the reports folder and listed by the `index.php` file
* The **Report Name** is set inside each report in `$repname`
* Each section in each report is set as array elements of array `$rep_sections`
* Each element of the `$rep_sections` array are set like:
```php
$rep_sections[] = Array($section_title, $section_sql);
where
$section title is the Title of the specific Report Section
$section_sql is the SQL statement used to generate the body of the section in the report
```
