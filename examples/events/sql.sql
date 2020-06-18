-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2014 at 01:22 AM
-- Server version: 5.0.96-community
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Table structure for table `tblEvent`
--

CREATE TABLE IF NOT EXISTS `tblEvent` (
  `pkEventID` int(11) NOT NULL auto_increment,
  `fldTitle` varchar(150) default NULL,
  `fldDate` date default NULL,
  `fldTime` varchar(15) default NULL,
  `fldLocation` varchar(150) default NULL,
  `fldAdditionalInformation` text,
  `fldImage` varchar(150) default NULL,
  `fldType` varchar(20) default NULL,
  PRIMARY KEY  (`pkEventID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `tblEvent`
--

INSERT INTO `tblEvent` (`pkEventID`, `fldTitle`, `fldDate`, `fldTime`, `fldLocation`, `fldAdditionalInformation`, `fldImage`, `fldType`) VALUES
(1, 'Public Event: Soccer Pick-up/Practice', '2013-10-27', '11:30am', 'Leary Field - Portsmouth, NH (Near South Playground)', NULL, NULL, NULL),
(2, 'Public Event: Soccer Tricks', '2013-11-29', '11:30am', 'Leary Field - Portsmouth, NH (Near South Playground)', NULL, NULL, NULL),
(3, 'Public Event: Great Bay 5K', '2013-10-26', '9:00am', 'Greenland, NH', 'Site: http://www.greatbaystewards.org/13GB5K.cfm Team Name: LM Runaways', NULL, NULL),
(4, 'Public Event: Hit and Run 5K', '2020-10-11', 'TBD', 'Boston', 'Site: http://hitandrun5k.com/', 'Logo-Animated-Transparent-Forever.gif', 'Public'),
(5, 'Movie Nite #1. Remember Remember the Fifth of November - <b><i>V for Ventetta</i></b>', '2013-11-05', '7:00pm', 'Sean\'s place (2 Alex Court Somersworth)', '(Inaugural Movie Night Tradition). Open invite; invite any friends. <br />I will have popcorn. We will pool funds and order food (chinese or pizza). <br/><br />\n<i>Remember, remember, the fifth of November, Gunpowder Treason and Plot</i>', 'v_for_vendetta.png', NULL),
(6, 'Finish my Keg!', '2013-11-02', '8:00pm', 'Sean\'s house (2 Alex Ct Somersworth NH)', 'Nothing too fancy. Maybe play some Cards Against Humanity, watch a movie, and/or play beerpong & darts. Most importantly though - we need to <b><i>finish my keg</i></b>. I have bud light and an abundance of it! Bring a bathing suit if you want to use the hottub. :-)\n<br />\nOpen invite; invite any friends. ', 'Bud-light.jpg', NULL),
(7, 'Movie Night #2 - Dani\'s Pick', '2013-12-12', '7:00pm', 'Sean\'s place', 'Movie: <b><i>The Princess Bride</i></b>.', 'princess_bride.jpeg', 'Public'),
(8, 'Movie Night #3 - Norma\'s Pick', '2014-01-07', '7:00pm', 'Sean\'s place', 'Movie: Biutiful.<br />Open invite; invite friends!', 'Biutiful.jpg', 'Public'),
(9, 'Movie Night #4 - Stacy\'s Pick', '2014-02-03', '7:00pm', 'Sean\'s place', 'Movie: Primer.', 'primer-film.jpg', 'Private'),
(10, 'Movie Night #5 - Ian\'s Pick', '2014-03-03', '7:00pm', 'Sean\'s place', 'Movie: Dumbo (w/Lion King perhaps as a post-show if we can get a copy)', 'dumbo.jpg', 'Public'),
(11, 'Public Event: Soccer Practice/Pickup', '2013-11-10', '11:30am', 'Leary Field - Portsmouth, NH <br/>(Near South Playground)', '\\"Comments\\" field--Do you prefer Saturday or Sunday soccer?\n\n<br/>\n<br/>*Public Event-Feel free to forward event.', 'soccer.jpg', NULL),
(12, 'Walking Dead Viewing', '2013-11-17', '9:00pm', 'Sean\'s place', 'I love The Walking Dead. If you do too, come to my place and we shall watch it together. ', 'hr_the_walking_dead.jpg', 'Private'),
(13, 'Hottub Party', '2013-11-22', '9:00pm', 'Sean\'s place', 'Just a fun time to sit back, relax, drink some wine or blackberry-brandy, and soak up in the hottub. ', 'hottub.jpg', 'Public'),
(14, 'Whiskey, Chess, and Politics', '2013-11-15', '7:30pm', 'Sean\'s Bar Room', 'A time for drinking malt whiskey, discussing American politics, and playing many fine games of chess (maybe even Halo to follow). Men only for this one. Sign up below if you\'ve been invited.', 'whiskey_and_chess.jpg', 'Private'),
(15, 'Halo Nite!', '2013-11-16', '7:00pm', 'The Halo Cave', 'The name says it all! We will play halo. It will be a night of playing halo. It will be epic!', 'halo_4.jpg', 'Public'),
(16, 'Soccer Practice/Pickup', '2013-11-17', '11:00am', 'Leary Field - Portsmouth, NH  <\\br> (Near South Playground)', 'Public event. Feel free to forward to others.', 'soccer.jpg', 'Public'),
(17, 'Free Ski/Snowboard Lesson', '2014-01-12', '1:00pm', 'NH', '<b>WHO:</b></br>\n<small> You. (Feel free to invite others.) </small> \n</br> </br> \n\n<b>WHAT: </b></br>\n<small>Skiing trip to Bretton Woods!! </br> Newbies--January is a \'Learn a a Snow-sport Month\'\nFree learn-to-ski or snowboard lesson, free equipment rentals & a free beginner terrain lift ticket!! </small> \n</br> </br>\n\n<b>WHEN:  </b></br>\n<small> Sunday, 01/12 </br> More details to follow after final headcount.</small>\n</br></br>\n\n<b>HOW: </b></br>\n<small><b>NEWBIES</b>--If you want to take the free lesson, rental, lift: </br>\n(1) Sign-up at: http://www.skinh.com/ski-central/learn-to-ski-and-snowboard/NHfreeweek.aspx <br>\n(2) Print Voucher </br> (3) RSVP  for Bretton Woods 603.278.3303  <b> ASAP!</b> </br> (4) Add your name on this list--so we can take a headcount  </br></br>\n<b>OLDIES</b> </br>(1) Add your name on this list--so we can take a headcount </small> \n</br> </br>\n\n\n', 'LearnSnowsport.JPG', 'Public'),
(18, 'NFL Wildcard Weekend', '2014-01-04', '1:05pm', 'Casa de Ian', '<b>WHAT:</b>\r\n<small> This upcoming Saturday is the first day of the NFL playoffs and Norma and I will be hosting the 2nd annual Wildcard Weekend Party at our place.</small> <br>  <br>  \r\n<b>WHAT TO BRING: </b>\r\n<small> I\'ll be getting a keg(singular this year, last year was a mistake) and there will be snacks and probably  a flatbread run during the break between games 1 and 2, but bringing food is definitely encouraged: just respond to the invite with what you are bringing so we don\'t end up with 30 bags of Tostitos.</small> <br>  <br>  \r\n<b>WHO: </b>\r\n<small> You. Let me know if I forgot to add people that you think might be interested in coming.</small> ', 'nfl_wildcard.gif', 'Private'),
(19, 'Pick-up Vball', '2014-01-24', '7:00pm', 'KCC', 'Time: 	7-9pm<br>\nPrice:	$3.00 <br> \nWhere: http://kitterycommunitycenter.org/<br> <br>\nBring a friend or two!!\n', 'Volleyball.jpg', 'Public'),
(20, 'Pick-up Vball (1/31)', '2014-01-31', '07:00pm', '(KCC) http://kitterycommunitycenter.org', 'Time: 7-9pm <br>\nPrice:	$3.00 <br>\n<br>\nBring a friend or two...just list them below!\n ', 'Volleyball.jpg', 'Public'),
(21, 'Pick-up Vball (2/21)', '2014-02-21', '7:00pm', '(KCC) http://kitterycommunitycenter.org', 'Time: 7-9pm <br>\nPrice:	$3.00 <br>\n<br>\nBring a friend or two...just list them below!\n ', 'Volleyball.jpg', 'Public'),
(22, 'Pick-up Vball (2/14)', '2014-02-14', '07:00pm', '(KCC) http://kitterycommunitycenter.org', 'Time: 7-9pm <br>\nPrice:	$3.00 <br>\n<br>\nBring a friend or two...just list them below!\n ', 'Volleyball_heart.jpg', 'Public'),
(23, 'Pick-up Vball (2/28)', '2014-02-28', '7:00pm', '(KCC) http://kitterycommunitycenter.org', 'Time: 7-9pm <br>\nPrice:	$3.00 <br>\n<br>\nBring a friend or two...just list them below!\n ', 'Volleyball.jpg', 'Public'),
(24, 'Superbowl Party', '2014-02-02', '6:00pm', 'Sean\'s House - 2 Alex Ct Somersworth NH 03878', 'Game is at 6:30. Arrive early for some pre-game drinking and/or video games. I\'ll have light beer on tap, but please bring any drinks you want if you have more refined tastes. We\'ll probably order takeout once the game starts. <p>Hot tub will be open at halftime (or before/after the game). In it the blackberry brandy will be served chilled.</p>', 'superbown_2014.jpg', 'Public'),
(25, '5K--Run Before You Crawl', '2014-03-15', '10:00am', '33 Chestnut Street, Dover, NH', '<small> Part of the http://www.doverraceseries.com </small>\n<br>------------------------------------------<br>\nCOST: $25-5K, $20-Pub Crawl, $40-Both  <br>\nREGISTER: <small> http://raceroster.com/events/2014/2044/run-before-you-crawl-5k-and-pub-crawl </small>\n', '5K_-_Run_Before_You_Crawl.jpg', 'Public'),
(26, '5K--SMA ', '2014-04-12', '09:00am', '(St. Mary Academy) 222 Central Avenue, Dover, NH', '<small> Part of the http://www.doverraceseries.com </small>\n<br>------------------------------------------<br>\nCOST: <small> $25</small> <br>\nSITE: <small>http://www.saintmaryacademy.org/?page_id=1128 </small><br>\nSHIRTS: <small>For the first 125 participants.\n', '5K_-_SMA.JPG', 'Public'),
(27, '5M--Red\'s Race For A Better Community', '2014-04-13', '10:00am', '288 Central Avenue, Dover, NH', '<small> Part of the http://www.doverraceseries.com </small>\n<br>------------------------------------------<br>\nCOST: <small> $18 ($20 after 3/24)</small><br>\nSITE: <small>http://reds-race.com/ </small><br>\nSHIRTS: <small>If you register before 3/24.', '5K_-_RedBarn2.jpg', 'Public'),
(28, '5K--Moms on the Run - Mother\'s Day', '2014-05-11', '08:30am', 'Dover High School, Dover, NH', '<small> Part of the http://www.doverraceseries.com </small>\n<br>------------------------------------------<br>\nCOST: <small> $20 ($25 day-of) </small><br>\nSITE: <small> http://www.momsontherun.org/ </small><br>\nSHIRTS: <small> For the first 300 who register', '5K_-_MothersDay.JPG', 'Public'),
(29, '5K--Spirit of Recovery ', '2014-05-18', '10:00am', 'Liberty Mutual, Dover, NH', '<small> Part of the http://www.doverraceseries.com </small>\n<br>------------------------------------------<br>\nCOST: <small> $25 </small><br>\nSITE: <small> http://spiritofrecovery5k.org/wordpress/', '5K_-_SpiritofRecovery.JPG', 'Public'),
(30, '5K--Goodwin Community Health Father\'s Day ', '2014-06-15', '09:00am', 'Margaritas, Dover, NH', '<small> Part of the http://www.doverraceseries.com\n<br> **Last year Margarita\'s catered the after-race snacks and provided free unlimited beer!** </small>\n<br>------------------------------------------<br>\nCOST: <small> $20 ($25 day-of) </small> <br>\nSITE: <small> http://goodwinch.org/fathers-day-5k-2014/', '5K_-_FathersDay.JPG', 'Public'),
(31, '5K--Horne Street School', '2014-09-21', '', 'Horne Street Elementary School, 78 Horne Street, Dover, NH', '<small> Part of the http://www.doverraceseries.com </small>\n<br>------------------------------------------<br>\nCOST: <small> $15 ($20 day-of) </small> <br>\nSITE: <small> http://www.ferguscullen.com/hornestreet.html', '5K_-_Horne.JPG', 'Public'),
(32, '5K--Apple Harvest Day ', '2014-10-04', '09:00am', 'Downtown, Dover, NH', '<small> Part of the http://www.doverraceseries.com </small>\n<br>------------------------------------------<br>\nCOST: <small> $20 </small> <br>\nSITE: <small> http://www.dovernh.org/apple-harvest-day-5k-road-race', '2208_5K_-_AppleHarvest.jpg', 'Public'),
(33, '5K--Trick or Trot ', '2014-10-26', '09:00am', 'Shaw\'s Lane, Dover, NH', '<small> Part of the http://www.doverraceseries.com </small>\n<br>------------------------------------------<br>\nCOST: <small> $20 ($25 day-of) </small> <br>\nSITE: <small> http://www.doversoccer.org/race/race.htm </small>\n', '1927_5K-TrickOrTrotTemp.png', 'Public'),
(34, '5K--Dover Turkey Trot ', '2014-11-27', '09:00am', 'Shaw\'s Lane, Dover, NH', '<small> Part of the http://www.doverraceseries.com </small>\n<br>------------------------------------------<br>\nCOST: <small> tbd </small> <br>\nSITE: <small> http://www.doverturkeytrot.com/', '5K_-_Turkey_Trot.jpg', 'Public'),
(35, 'Pick-up Vball (3/14)', '2014-03-14', '07:00pm', '(KCC) http://kitterycommunitycenter.org', 'Time: 7-9pm <br>\nPrice:	$3.00 <br>\n<br>\nBring a friend or two...just list them below!\n ', 'Volleyball.jpg', 'Public'),
(36, '10K--Six03 Summerfest', '2014-07-27', '09:00am', '(Dover Ice Arena) 110 Portland Avenue, Dover, NH', '<small> Part of the http://www.doverraceseries.com </small>\n<br>------------------------------------------<br>\nCOST: <small>$30 </small> <br>\nSITE: <small> http://six03summerfest10k.com/', '10K_-_Six03.JPG', 'Public'),
(37, '5K--Redhook', '2014-05-25', '11:00am', 'Redhook Brewery, Portsmouth, NH', '<small> Part of the Seacoast Series (earn a jacket--see link below)<br>\nhttp://www.proportsmouth.org/SRRSracedates.cfm </small>\n<br>------------------------------------------\n<br>**This race always sells out**\n<br>------------------------------------------<br>\nCOST: <small> $25 ($30 after 04/01) </small><br>\nSITE: <small>http://www.runnersalley.com/redhook.html</small> <br>\nSHIRTS: <small>For the first 1500 who sign up. </small>\n<br>------------------------------------------<br>\nTEAM: LM Runaways\n<br>------------------------------------------<br>', '5K_-_Redhook.jpg', 'Public'),
(38, '5K--Komen NH Race for the Cure', '2014-05-10', '', 'Strawbery Banke Museum, Portsmouth, NH', '\nCOST: <small>tbd</small> <br>\nSITE: <small>http://www.komenvtnh.org/komen-race-for-the-cure/nh-race-welcome-page.html </small>\n', '5K_-_Komen.JPG', 'Public'),
(39, '5M--St Paddys Five Miler', '2014-03-16', '10:30am', '(Paddy\'s American Grille) 27 International Drive, Portsmouth, NH', 'COST: <small> $32.50</small><br>\r\nSITE: <small>http://paddysfivemiler.com/ </small><br>\r\nSHIRTS: <small> For first 1000 registrants (High quality technical shirt)<br>\r\n--Commemorative pint glass & finisher beads<br>\r\n--One beer<br>\r\n--Catered food including sandwiches and hot soups', '5M_-_Paddys.JPG', 'Public'),
(40, 'Pick-up Vball (2/7)', '2014-02-07', '07:00pm', '(KCC) http://kitterycommunitycenter.org', 'Time: 7-9pm <br>\r\nPrice:	$3.00 <br>\r\n<br>\r\nBring a friend or two...just list them below!\r\n ', 'Volleyball.jpg', 'Public'),
(41, 'Pick-up Vball (3/7)', '2014-03-07', '07:00pm', '(KCC) http://kitterycommunitycenter.org', 'Time: 7-9pm <br>\nPrice:	$3.00 <br>\n<br>\nBring a friend or two...just list them below!\n ', 'Volleyball.jpg', 'Public'),
(42, '5K--Children\'s Museum of NH  ', '2014-05-03', '9:00am', 'Dover, NH', '<small> Part of the Seacoast Series (earn a jacket--see link below)<br>\nhttp://www.proportsmouth.org/SRRSracedates.cfm </small>\n<br>------------------------------------------<br>\nCOST: <small> [visit site] </small><br>\nSITE: <small>http://www.childrens-museum.org/cmnh2010/content.aspx?id=516\n </small> <br>\nSHIRTS: <small>[visit site]</small>\n<br>------------------------------------------<br>\nTEAM (if applicable): LM Runaways\n<br>------------------------------------------<br>', 'SRS.png', 'Public'),
(43, '10K--Market Square Day ', '2014-06-14', '', '', '<small> Part of the Seacoast Series (earn a jacket--see link below)<br>\nhttp://www.proportsmouth.org/SRRSracedates.cfm </small>\n<br>------------------------------------------<br>\nCOST: <small> [visit site] </small><br>\nSITE: <small>http://www.proportsmouth.org/MSDRoadRace.cfm\n </small> <br>\nSHIRTS: <small>[visit site] </small>\n<br>------------------------------------------<br>\nTEAM (if applicable): LM Runaways\n<br>------------------------------------------<br>', 'SRS.png', 'Public'),
(44, '5K--York Days ', '2014-07-27', '', '', '<small> Part of the Seacoast Series (earn a jacket--see link below)<br>\nhttp://www.proportsmouth.org/SRRSracedates.cfm </small>\n<br>------------------------------------------<br>\nCOST: <small> [visit site] </small><br>\nSITE: <small>http://parksandrec.yorkmaine.org/\n </small> <br>\nSHIRTS: <small>[visit site] </small>\n<br>------------------------------------------<br>\nTEAM (if applicable): LM Runaways\n<br>------------------------------------------<br>', 'SRS.png', 'Public'),
(45, '10K--Saunders at Rye Harbor ', '2014-08-21', '', '', '<small> Part of the Seacoast Series (earn a jacket--see link below)<br>\nhttp://www.proportsmouth.org/SRRSracedates.cfm </small>\n<br>------------------------------------------<br>\nCOST: <small> [visit site] </small><br>\nSITE: <small>http://www.saundersatryeharbor10k.com/\n </small> <br>\nSHIRTS: <small>[visit site] </small>\n<br>------------------------------------------<br>\nTEAM (if applicable): LM Runaways\n<br>------------------------------------------<br>', 'SRS.png', 'Public'),
(46, '5Miler--Fox Point Sunset ', '2014-09-06', '', '', '<small> Part of the Seacoast Series (earn a jacket--see link below)<br>\nhttp://www.proportsmouth.org/SRRSracedates.cfm </small>\n<br>------------------------------------------<br>\nCOST: <small> [visit site] </small><br>\nSITE: <small>http://www.foxpoint5miler.org/\n </small> <br>\nSHIRTS: <small>[visit site] </small>\n<br>------------------------------------------<br>\nTEAM (if applicable): LM Runaways\n<br>------------------------------------------<br>', 'SRS.png', 'Public'),
(47, '5K--Great Island ', '2014-10-12', '', '', '<small> Part of the Seacoast Series (earn a jacket--see link below)<br>\nhttp://www.proportsmouth.org/SRRSracedates.cfm </small>\n<br>------------------------------------------<br>\nCOST: <small> [visit site] </small><br>\nSITE: <small>http://www.greatisland5k.org/\n </small> <br>\nSHIRTS: <small>[visit site] </small>\n<br>------------------------------------------<br>\nTEAM (if applicable): LM Runaways\n<br>------------------------------------------<br>', 'SRS.png', 'Public'),
(48, '5K--Great Bay  ', '2014-10-25', '', '', '<small> Part of the Seacoast Series (earn a jacket--see link below)<br>\nhttp://www.proportsmouth.org/SRRSracedates.cfm </small>\n<br>------------------------------------------<br>\nCOST: <small> [visit site] </small><br>\nSITE: <small>http://www.greatbaystewards.org/13GB5K.cfm\n </small> <br>\nSHIRTS: <small>[visit site] </small>\n<br>------------------------------------------<br>\nTEAM (if applicable): LM Runaways\n<br>------------------------------------------<br>', 'SRS.png', 'Public'),
(49, 'Pick-up Vball (3/21) ', '2014-03-21', '07:00pm', '(KCC) http://kitterycommunitycenter.org', 'Time: 7-9pm <br>\r\nPrice:	$3.00 <br>\r\n<br>\r\nBring a friend or two...just list them below!\r\n ', 'Volleyball.jpg', 'Public'),
(50, 'Pick-up Vball (3/28) ', '2014-03-28', '07:00pm', '(KCC) http://kitterycommunitycenter.org', 'Time: 7-9pm <br>\r\nPrice:	$3.00 <br>\r\n<br>\r\nBring a friend or two...just list them below!\r\n ', 'Volleyball.jpg', 'Public'),
(51, 'Movie Night #6 - Khoa\'s pick', '2016-03-24', '7:30pm', 'Sean\'s place', 'Movie: Upstream Color', '9868_Upstream-Color-2013-Stills.jpg', 'Public');

--
-- To keep it current dated at time of install
--

UPDATE tblevent SET fldDate = DATE_ADD(fldDate, INTERVAL (YEAR(NOW())-2014) YEAR) WHERE YEAR(fldDate) = 2013;
UPDATE tblevent SET fldDate = DATE_ADD(fldDate, INTERVAL (YEAR(NOW())-2014) YEAR) WHERE YEAR(fldDate) = 2014;
UPDATE tblevent SET fldDate = DATE_ADD(fldDate, INTERVAL (YEAR(NOW())-2016) YEAR) WHERE YEAR(fldDate) = 2016;

-- --------------------------------------------------------

--
-- Table structure for table `tblEventAttendee`
--

CREATE TABLE IF NOT EXISTS `tblEventAttendee` (
  `pkAttendeeID` int(11) NOT NULL auto_increment,
  `fldFirstName` varchar(25) default NULL,
  `fldLastName` varchar(35) default NULL,
  `fldPhone` varchar(25) default NULL,
  `fldWillBeLate` tinyint(4) default NULL,
  `fldTimeArriving` varchar(15) default NULL,
  `fkEventID` int(11) default NULL,
  `fldComments` text,
  `fldIPAddress` varchar(25) default NULL,
  PRIMARY KEY  (`pkAttendeeID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=271 ;

--
-- Dumping data for table `tblEventAttendee`
--

INSERT INTO `tblEventAttendee` (`pkAttendeeID`, `fldFirstName`, `fldLastName`, `fldPhone`, `fldWillBeLate`, `fldTimeArriving`, `fkEventID`, `fldComments`, `fldIPAddress`) VALUES
(1, 'Patrick', 'Walker', '', 0, '', 1, '', NULL),
(7, 'Laszlo', 'Bradacs', '', 0, '11:30', 1, '', NULL),
(8, 'Joe', 'Bernitt', '', 0, '', 1, '', NULL),
(9, 'Laura', 'Surdek', '', 0, '', 1, '', NULL),
(10, 'Alex', 'Olivera', '', 0, '', 1, '', NULL),
(11, 'Brian', 'Catalano', '', 0, '', 1, '', NULL),
(28, 'Tim', 'Boyle', '', 0, '12:00', 1, 'If I''m not hungover I\'ll be there', NULL),
(13, 'Norma', 'Madrid', '', 0, '', 2, '', NULL),
(14, 'Ian', 'Cole', '', 0, '', 2, '', NULL),
(15, 'Patrick', 'Walker', '', 1, '08:00', 2, '', NULL),
(37, 'Ian ', 'Cole', '', 0, '', 3, 'Team: LM Runaways', NULL),
(38, 'Brian', 'Catalano', '', 0, '', 3, 'Team: LM Runaways', NULL),
(36, 'Sean ', 'Dempsey', '', 0, '', 3, 'Team: LM Runaways', NULL),
(41, 'Jing', 'Ling', '', 0, '', 3, 'Team: LM Runaways', NULL),
(40, 'Cliff', 'Lum', '', 0, '', 3, 'Team: LM Runaways', NULL),
(42, 'Patrick', 'Walker', '', 0, '', 3, 'Team: LM Runaways', NULL),
(23, 'Gabe', 'Leake', '', 0, '', 3, '', NULL),
(24, 'Kayla', 'Springer', '', 0, '', 3, '', NULL),
(39, 'Laura ', 'Surdek', '', 0, '', 3, 'Team: LM Runaways', NULL),
(26, 'Victor', 'Nghe', '', 0, '', 3, '', NULL),
(27, 'Sean', 'Dempsey', '', 0, '', 2, 'Can''t wait!!', NULL),
(29, 'Victor', 'Esquivel', '', 0, '', 1, '', NULL),
(30, 'Janet', 'Wong', '', 0, '', 1, '', NULL),
(31, 'Norma', 'Madrid', '', 0, '', 1, '', NULL),
(32, 'Ian ', 'Cole', '', 0, '', 1, '', NULL),
(33, 'Sean', 'Martell', '', 0, '', 1, '', NULL),
(34, 'Amanda', 'Abbott', '', 0, '', 1, '', NULL),
(35, 'Norma', 'Madrid', '', 0, '', 3, 'Team: LM Runaways', NULL),
(43, 'Norma', 'Madrid', '', 0, '', 4, 'Maybe', NULL),
(44, 'Sean', 'Dempsey', '', 0, '', 4, 'Maybe', NULL),
(45, 'Ian', 'Cole', '', 0, '', 4, 'Maybe', NULL),
(46, 'Cliff', 'Lum', '', 0, '', 4, '', NULL),
(47, 'Laura', 'Surdek', '', 0, '', 4, 'Maybe', NULL),
(48, 'Patrick', 'Walker', '', 0, '', 4, '', NULL),
(49, 'Gabe', 'Leake', '', 0, '', 4, '', NULL),
(50, 'Kayla', 'Springer', '', 0, '', 4, '', NULL),
(51, 'Brian', 'Catalano', '', 0, '', 4, 'Maybe', NULL),
(52, 'Victor', 'Nghe', '', 0, '', 4, 'Maybe', NULL),
(53, 'Maddie', 'Yi', '', 0, '', 4, 'Maybe', NULL),
(54, 'Christian', 'Diehl', '', 0, '', 1, '', NULL),
(55, 'Sean', 'Dempsey', '', 0, '', 5, 'I will be making my patented and famous clamdip', NULL),
(68, 'Better', 'Jeff', '', 0, '', 5, '', NULL),
(57, 'Clifford', 'L', '', 0, '', 5, '', NULL),
(58, 'Sean', 'Dempsey', '', 0, '', 6, 'I will get chips and dips. If people want to bring over other snacks (or cash for real food), feel free.', NULL),
(59, 'Ed', 'Lee', '', 0, '', 6, '', NULL),
(60, 'Jeff', 'Heim', '', 0, '08:00', 6, '', NULL),
(61, 'Stephanie ', 'Landaverde', '', 0, '', 5, '', NULL),
(62, 'Stephanie ', 'Landaverde ', '', 1, '08:30', 6, '', NULL),
(63, 'Tim', 'Boyle', '', 0, '', 5, 'I should be there.', NULL),
(64, 'PhilharMonica', 'Ummmm', '', 1, '09:30', 6, '', NULL),
(65, 'Sean', 'Dempsey', '', 0, '', 7, 'I will be making clamdip again!', NULL),
(66, 'Sean', 'Dempsey', '', 0, '', 8, 'I will be making my clamdip for this as well', NULL),
(67, 'Sean', 'Dempsey', '', 0, '', 9, 'We had clamdip the night before; it will not be made again. I will have chips, dips, cookies, and all manners of other treats', NULL),
(69, 'Norma', 'Madrid', '', 0, '', 8, 'Get ready for a super-depressing movie!', NULL),
(71, 'Meklit', 'Jaleta', '', 1, '07:30', 5, '', NULL),
(224, 'Sean', 'Dempsey', '', 0, '', 10, 'Clamdip will be made by yours truly', '143.115.159.53'),
(73, 'Stacy', 'Kirkland', '', 0, '', 9, '', NULL),
(74, 'Ben', 'Rowe', '', 0, '', 5, 'Could be late. Won\'t know if I will be as Day 3 of the month is always a later night than usual.', NULL),
(77, 'Damien', 'Kawakami', '', 0, '', 11, '(out of town guest)', NULL),
(76, 'Ian', 'Cole', '', 0, '', 11, 'Sunday preferred.', NULL),
(78, 'Norma', 'Madrid', '', 0, '', 11, 'Sunday preferred.', NULL),
(79, 'Victor', 'Esquivel', '', 0, '', 11, 'Sunday, I\'m a maybe', NULL),
(80, 'Joe', 'Bernitt', '', 0, '', 11, 'Saturday, Sunday maybe', NULL),
(81, 'Patrick', 'Walker', '', 0, '', 11, 'Sunday', NULL),
(82, 'Alex', 'Olivera', '', 0, '', 11, 'Saturday preferred, Sunday okay', NULL),
(83, 'Kirk', 'Remignanti ', '', 0, '', 11, 'Saturday preferred (hiking on Sunday)', NULL),
(84, 'Phil', 'Sack', '', 0, '', 11, '', NULL),
(85, 'Brian', 'Catalano', '', 0, '', 11, 'Either', NULL),
(86, 'Sean', 'Dempsey', '', 0, '', 12, 'Feel free to invite anyone else', NULL),
(87, 'Sean', 'Dempsey', '', 0, '', 13, 'Invite any friends! All are welcome', NULL),
(88, 'Sean', 'Dempsey', '', 0, '', 14, 'The whiskey will flow like wine!', NULL),
(89, 'Tim', 'Boyle', '', 0, '', 14, '', NULL),
(90, 'phil', 'sack', '', 0, '', 12, '', NULL),
(91, 'Sean', 'Dempsey', '', 0, '', 15, '', NULL),
(92, 'Brian', 'Catalano', '', 0, '', 15, '', NULL),
(93, 'Patrick', 'Walker', '', 0, '', 15, '', NULL),
(94, 'Ben', 'Rowe', '', 0, '', 15, '', NULL),
(95, 'Ted', 'Brogan', '', 0, '', 14, 'I played a little minor league ball back in the 80''s.', NULL),
(96, 'Jesus', 'Quintana', '', 0, '', 13, 'Nobody fucks with the Jesus', NULL),
(97, 'Sean', 'Dempsey', '', 0, '', 16, '', NULL),
(98, 'Brian', 'Catalano', '', 0, '', 16, '', NULL),
(99, 'Patrick', 'Walker', '', 0, '', 16, '', NULL),
(100, 'Joe', 'Bernitt', '', 0, '11:00', 16, 'Might bring a friend', NULL),
(101, 'Ian', 'Cole', '', 0, '', 16, '', NULL),
(102, 'Zari', 'Bazarian', '', 0, '', 15, '', NULL),
(103, 'Ian', 'Cole', '', 1, '08:30', 14, '', NULL),
(104, '^Jeff', 'Heim', '', 0, '', 16, '', NULL),
(105, 'Cesar', 'Valladares', '', 0, '', 16, '', NULL),
(106, 'Tim', 'B', '', 0, '', 12, '', NULL),
(107, 'Jeff', 'Heim', '', 0, '', 12, '', NULL),
(108, 'Dani', 'Janis', '', 0, '', 7, '', NULL),
(109, '.Norma', 'Madrid', '', 0, '', 17, 'LESSON: Yes--Skiing </br>\nSIGNED UP: Done.\n</br>\nRSVP: Yes\n', NULL),
(110, '.Brian', 'Catalano', '', 0, '', 17, 'LESSON: Yes--skiing</br>\nSIGNED UP: Pending</br>\nRSVP: ', NULL),
(111, '.Evan', 'Kellogg', '', 0, '', 17, 'LESSON: Yes--snowboarding </br>\nSIGNED UP: Pending\n</br>\nRSVP: ', NULL),
(112, '.Janet', 'Wong', '', 0, '', 17, 'LESSON: \n</br>SIGNED UP: Pending\n</br>\nRSVP: ', NULL),
(113, '.Laura', 'Surdek', '', 0, '', 17, 'LESSON: Yes--snowboarding </br>\nSIGNED UP: Done</br>\nRSVP: Done', NULL),
(132, 'Norma', 'Madrid', '', 0, '07:00', 19, '', NULL),
(133, 'Sean', 'Dempsey', '', 0, '', 19, 'will try to be there. will play it by ear... Can anyone spot me $3? We''re in a down economy after all...', NULL),
(135, 'Patrick', 'Walker', '', 0, '', 19, '', NULL),
(114, 'Patrick', 'Walker', '', 0, '', 17, 'LESSON: NO<br/>\n**Probably just get lift ticket for where ever you guys go </br>\nI can drive. My car can hold 4 people with lots of room for ski stuff. ', NULL),
(115, 'Erik', 'Williams', '', 0, '', 17, 'LESSON: NO<br/>\n** May tag along for some riding</br>', NULL),
(116, 'Ian', 'Cole', '', 0, '', 18, 'Keg', NULL),
(117, 'Katie', 'Cole', '', 0, '', 18, 'Texas Caviar', NULL),
(118, 'Norma', 'Madrid', '', 0, '', 18, 'Guac', NULL),
(119, 'Ryan', 'Hutchins', '', 0, '03:30', 18, 'Bringing the wife. Chocolate chip cookie bars.', NULL),
(120, 'Amanda', 'Hutchins', '', 0, '', 18, 'Hutch', NULL),
(121, 'Steph', 'Landaverde', '', 0, '', 18, 'Sweets', NULL),
(122, 'Patrick', 'Walker', '', 0, '', 18, 'something', NULL),
(123, 'Stacy', 'Kirkland', '', 0, '', 18, 'Buffalo Chicken dip', NULL),
(124, 'Laura', 'Surdek', '', 0, '', 18, 'Sugar cookies', NULL),
(125, 'Sean', 'Dempsey', '', 0, '', 18, 'Clamdip', NULL),
(126, 'Cliff', 'Lum', '', 0, '', 18, 'Veggie Platter', NULL),
(127, '.Kayla', 'Springer', '', 0, '', 17, 'LESSONS: Yes--Snowboarding</br> \nSIGNED UP): Done</br>\nRSVP: Done', NULL),
(134, 'Brian', 'Catalano', '', 0, '', 19, '', NULL),
(128, 'Sean', 'Dempsey', '', 0, '', 17, 'LESSON: NO<br/>\n**Will get ticket there', NULL),
(129, 'Brian', 'Casey', '', 0, '', 8, 'Can''t wait! OMG I\'m super excited!', NULL),
(130, '.Michael', 'Surdek', '', 0, '', 17, 'LESSON: Yes--snowboarding </br>\nSIGNED UP: Done</br>\nRSVP: Done', NULL),
(136, 'Erik', 'Williams', '', 0, '07:00', 19, '', NULL),
(137, 'Laura', 'Surdek', '', 0, '', 19, '', NULL),
(138, 'Kayla', 'Springer', '', 0, '', 19, '', NULL),
(139, 'Diana', 'Schaller', '', 0, '', 19, 'RSVP might change.', NULL),
(140, 'Khoa', 'Pham', '', 0, '', 19, '', NULL),
(144, 'Jeff', 'Heim', '', 0, '', 19, '50-50', NULL),
(145, 'Eric', 'Mahair', '', 0, '07:00', 19, '', NULL),
(142, 'Miranda', 'LeBlanc', '', 0, '', 19, '', NULL),
(143, 'Katie', 'Kilpeck', '', 0, '07:00', 19, '', NULL),
(146, 'Norma', 'Madrid', '', 0, '', 20, '', NULL),
(147, 'Patrick', 'Walker', '', 0, '', 20, '', NULL),
(148, 'Brian', 'Catalano', '', 0, '', 20, '', NULL),
(149, 'Norma', 'Madrid', '', 0, '', 21, '', NULL),
(150, 'Norma', 'Madrid', '', 0, '', 23, '', NULL),
(151, 'Laura', 'Surdek', '', 0, '', 20, '', NULL),
(152, 'Kirk', 'Remignanti', '', 0, '', 20, '', NULL),
(153, 'Sean', 'Dempsey', '', 0, '', 24, 'I may make clamdip. If the crowd demands it...', NULL),
(154, 'Phil', '& Monica', '', 0, '', 24, 'damn right there will be clam dip...', NULL),
(155, 'Kayla', 'Springer', '', 0, '', 20, '', NULL),
(156, 'Clifford', 'Lum', '', 0, '', 20, '', NULL),
(178, 'Norma', 'Madrid', '', 0, '', 37, 'Registered!', NULL),
(158, 'Brian', 'Catalano', '', 0, '', 24, '', NULL),
(159, 'Clifford', 'Lum', '', 0, '', 24, '', NULL),
(160, 'Patrick', 'Walker', '', 0, '', 24, '', NULL),
(161, 'Katie', 'Cole', '', 0, '', 24, '', NULL),
(162, 'Laura', 'Surdek', '', 0, '', 24, 'I\'ll bring some dessert...any preference? <br /><i>(Sean says: Icecream and/or browies or cookies?)</i>', NULL),
(163, 'Kayla', 'Springer', '', 0, '', 24, '', NULL),
(164, 'Sri', 'Jagannathan', '', 0, '', 20, '', NULL),
(165, 'Munil', 'Gopalan', '', 0, '', 20, '', NULL),
(166, 'Meklit ', '& Daniele', '', 0, '', 24, 'We will bring fruit and veggie platter.', NULL),
(167, 'Stephanie', 'Landaverde', '', 0, '', 9, '', NULL),
(168, 'Laura', 'Surdek', '', 0, '', 9, '', NULL),
(169, 'Jessie ', 'Palmer ', '', 0, '', 24, '', NULL),
(170, 'Maradie', 'Yi', '', 0, '', 24, 'Any requests for food to bring? <br /><i>(Sean says: anything you want to bring is fine. Maybe guac and chips?)</i>', NULL),
(171, 'Victor', 'Nghe', '', 0, '', 24, '', NULL),
(172, 'Zari', 'Bazarian', '', 0, '', 24, '', NULL),
(173, 'Khoa', 'Pham', '', 0, '', 24, 'Beer. Lots of Beer.', NULL),
(174, 'Miranda', 'LeBlanc', '', 0, '', 20, '', NULL),
(175, 'Sasha', 'Lassonde', '', 0, '', 24, '', NULL),
(176, 'Sasha', 'Lassonde', '', 0, '', 20, '', NULL),
(177, 'Stacy', 'Kirkland', '', 0, '', 24, 'I''ll bring Rice Krispy Treats and Crock Pot Queso and chips', NULL),
(179, 'Patrick', 'Walker', '', 0, '', 37, 'Registered', NULL),
(180, 'Clifford', 'Lum', '', 0, '', 37, 'Registered', NULL),
(181, 'Kayla', 'Springer', '', 0, '', 9, '', NULL),
(182, 'Brian', 'Catalano', '', 0, '', 37, 'Registered', NULL),
(189, 'Ian', 'Cole', '', 0, '', 25, 'Signed up. <br>\nRace & Pub-Crawl', NULL),
(185, 'Kirk', 'Remignanti', '', 0, '', 37, 'Registered', NULL),
(186, 'Ian', 'Cole', '', 0, '', 37, 'Registered', NULL),
(187, 'Laura', 'Surdek', '', 0, '', 38, 'Team Name: Monty\'s Minions', NULL),
(188, 'Sean', 'Dempsey', '', 0, '', 25, 'I\'m in and all signed up. <br>\nRace & Pub-Crawl', NULL),
(190, 'Sri', 'Jagannathan', '', 0, '', 40, '', NULL),
(195, 'Kayla', 'Springer', '', 0, '', 22, '', NULL),
(193, 'Erik', 'W', '', 0, '', 22, 'Will come if I don\'t have on-call work scheduled...', NULL),
(194, 'Patrick', 'Walker', '', 0, '', 22, '', NULL),
(196, 'Zari', 'Bazarian', '', 0, '07:00', 22, '', NULL),
(197, 'Sasha', 'Lassonde', '', 0, '', 22, '', NULL),
(198, 'Laura', 'Surdek', '', 0, '', 37, 'Registered', NULL),
(200, 'Patrick', 'Walker', '', 0, '', 21, '', NULL),
(201, 'Brian', 'Catalano', '', 0, '', 21, '', NULL),
(202, 'Kayla', 'Springer', '', 0, '', 21, '', NULL),
(203, 'Laura', 'Surdek', '', 0, '', 21, '', NULL),
(204, 'Clifford', 'Lum', '', 0, '', 21, '', NULL),
(209, 'Ian', 'Cole', '', 0, '', 21, '', NULL),
(206, 'Matt', 'Martin', '', 0, '07:00', 21, '', NULL),
(207, 'Sasha', 'Lassonde', '', 0, '', 21, '', NULL),
(208, 'Miranda', 'LeBlanc', '', 0, '', 21, '', NULL),
(210, 'Sean', 'Dawg', '', 0, '', 21, '', NULL),
(211, 'Dan', 'Belforti', '', 1, '07:30', 21, 'My fiancee Andi Stuart may also join us.We''re 80% sure we can come but our baby comes first so only if he cooperates with grandparents', NULL),
(231, 'Evan', 'Kellogg', '', 0, '', 10, '', '143.115.159.53'),
(213, 'Ian', 'Cole', '', 0, '', 10, '', NULL),
(215, 'Kyle', 'Pham', '', 0, '', 23, '', NULL),
(216, 'Kayla', 'Springer', '', 0, '', 10, '', NULL),
(217, 'Laura', 'Surdek', '', 0, '', 10, '', NULL),
(218, 'Brian', 'Catalano', '', 0, '19:00', 10, '', NULL),
(235, 'Sasha', 'Lassonde', '', 0, '', 41, '', '143.115.159.54'),
(219, 'Kirk', 'Remignanti', '', 0, '', 23, '', NULL),
(220, 'Sasha', 'Lassonde', '', 0, '', 23, '', NULL),
(221, 'Big Red', 'Dog', '', 0, '', 23, '', NULL),
(222, 'Norma', 'Madrid', '', 0, '', 25, 'Signed up! (2/27) <br>\nRace-only.', NULL),
(223, 'Clifford', 'Lum', '', 0, '', 42, '', NULL),
(225, 'Miranda', 'LeBlanc', '', 0, '', 23, '', '24.91.79.105'),
(226, 'Ian', 'Cole', '', 0, '', 23, '', '143.115.159.53'),
(227, 'Ben', 'Rowe', '', 0, '', 23, '', '143.115.159.53'),
(228, 'Brian', 'Catalano', '', 0, '', 42, '', '143.115.159.54'),
(229, 'Sean', 'Dempsey', '', 0, '', 23, '', '143.115.159.54'),
(230, 'Brian', 'Catalano', '', 0, '', 43, 'Probably', '143.115.159.54'),
(232, 'Brian', 'Catalano', '', 0, '', 41, '', '143.115.159.54'),
(250, 'Stacy', 'Kirkland', '', 0, '', 51, '', '143.115.159.53'),
(234, 'Janet', 'Wong', '', 0, '', 10, 'Sandy will be joining!', '143.115.159.54'),
(236, 'Kyle', 'Pham', '', 1, '19:15', 10, '', '207.3.145.198'),
(237, 'KHOA', 'PHAM', '', 0, '', 51, 'BRINGING THE FUN ', '172.56.23.68'),
(238, 'Kayla', 'Springer', '', 0, '', 51, '', '143.115.159.54'),
(239, 'Brian', 'Catalano', '', 0, '', 51, '', '143.115.159.54'),
(263, 'Sean', 'Dempsey', '', 0, '', 41, '', '143.115.159.53'),
(249, 'Sean', 'Dempsey', '', 0, '', 51, 'clamdip will be available again', '143.115.159.53'),
(270, 'Patrick', 'Walker', '', 0, '', 41, '', '143.115.159.53'),
(266, 'Zari', 'Bazarian', '', 0, '', 41, '', '143.115.159.53'),
(267, 'Miranda', 'LeBlanc', '', 0, '', 41, '', '143.115.159.53'),
(268, 'Laura', 'Surdek', '', 0, '', 41, '', '143.115.159.53');

