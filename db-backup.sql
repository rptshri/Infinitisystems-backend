-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: infiniti.mysql.pythonanywhere-services.com    Database: infiniti$infiniti
-- ------------------------------------------------------
-- Server version	5.7.28-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add contact us',7,'add_contactus'),(26,'Can change contact us',7,'change_contactus'),(27,'Can delete contact us',7,'delete_contactus'),(28,'Can view contact us',7,'view_contactus'),(29,'Can add counter',8,'add_counter'),(30,'Can change counter',8,'change_counter'),(31,'Can delete counter',8,'delete_counter'),(32,'Can view counter',8,'view_counter'),(33,'Can add latest tech',9,'add_latesttech'),(34,'Can change latest tech',9,'change_latesttech'),(35,'Can delete latest tech',9,'delete_latesttech'),(36,'Can view latest tech',9,'view_latesttech'),(37,'Can add news letter',10,'add_newsletter'),(38,'Can change news letter',10,'change_newsletter'),(39,'Can delete news letter',10,'delete_newsletter'),(40,'Can view news letter',10,'view_newsletter');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$HPqwRYatMyr1$5YKr7ufT6PdVaQ2PrNusykMtU/LPRKr2c4WutByqL1g=','2020-06-23 11:36:59.502275',1,'infiniti','','','rptshrivastava@gmail.com',1,1,'2020-06-23 11:36:19.476165');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus_contactus`
--

DROP TABLE IF EXISTS `contactus_contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactus_contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `name` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus_contactus`
--

LOCK TABLES `contactus_contactus` WRITE;
/*!40000 ALTER TABLE `contactus_contactus` DISABLE KEYS */;
INSERT INTO `contactus_contactus` VALUES (1,'atrixxtrix@gmail.com','Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply Professional surveillance & medical products: \r\n \r\nMoldex, makrite and 3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, PPDS masks \r\nFace shield/medical goggles \r\nNitrile/vinyl/PP gloves \r\nIsolation/surgical gown lvl1-4 \r\nProtective PPE/Overalls lvl1-4 \r\nIR non-contact thermometers/oral thermometers \r\nsanitizer dispenser \r\nCrystal tomato \r\n \r\nLogitech/OEM webcam \r\nMarine underwater CCTV \r\nExplosionproof CCTV \r\n4G Solar CCTV \r\nHuman body thermal cameras \r\nfor Body Temperature Measurement up to accuracy of ±0.1?C \r\n \r\nWhatsapp: +65 87695655 \r\nTelegram: cctv_hub \r\nSkype: cctvhub \r\nEmail: sales@thecctvhub.com \r\nW: http://www.thecctvhub.com/ \r\n \r\nIf you do not wish to receive email from us again, please let us know by replying. \r\n \r\nregards, \r\nCCTV HUB','Heatherfuh','Fever screening thermal camera and masks'),(2,'no-reply@hilkom-digital.de',' Hello! \r\n \r\nI have just checked infiniti.pythonanywhere.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de','Mike Philips','cheap monthly SEO plans'),(3,'marktomson40@gmail.com','Want to have a fast growing and profitable business without competitors?! \r\nLooking for a new progressive direction in business?! \r\nWant to owe the high profits despite the market situation?! \r\nWe invite you to be a part of our successful Team. Become a dealer in your region.  We are manufacturers of grain cleaning equipment of a new generation: www.graincleaner.com. \r\nOur unique equipment has no analogues in the world. We have very favorable terms  for cooperation.  Write us on info@graincleaner.com and we will send you the business offer. \r\nTo see our videos go to: \r\nhttps://vimeo.com/showcase/6600548','MichaelRen','Want to have a fast growing and profitable business without competitors?!'),(4,'wpdeveloperfiver@gmail.com','Hi friend! I found your website infiniti.pythonanywhere.com in Google. I am highly reputed seller in Fiverr, from Bangladesh. The pandemic has severely affected our online businesses and the reason for this email is simply to inform you that I am willing to work at a very low prices (5$), without work I can?t support my family. I offer my WP knowledge to fix bugs, Wordpress optimizations and any type of problem you could have on your website. Feel free to contact me through my service on Fiverr (Contact button), I thank you from my heart: \r\n \r\nhttps://track.fiverr.com/visit/?bta=127931&brand=fiverrcpa&landingPage=https%3A%2F%2Fwww.fiverr.com%2Fericdaniel002%2Ffix-your-wordpress-theme-and-layout-issues-ff5cb811-65aa-4e1d-a0d3-8057e62aeaac \r\n \r\nRegards,','Rodrigo Pedersen','Hi, I can help you with your website'),(5,'no-replyrop@google.com','Gооd dаy! \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n \r\nThis service is guaranteed \r\n \r\nFor more information, check our service here \r\nhttps://www.monkeydigital.co/Get-Guaranteed-Domain-Authority-50/ \r\n \r\nthank you \r\nMike Cook\r\n \r\nMonkey Digital \r\nsupport@monkeydigital.co','Mike Cook\r\n','New: DA50 for infiniti.pythonanywhere.com'),(6,'daliborharald02@gmail.com','Dear \r\n \r\nMy name is Dalibor Harald, Thank you for your time, my company offers project financing/Joint Ventures Partnership and lending services, do you have any projects that require funding/ Joint Ventures Partnership at the moment? We are ready to work with you on a more transparent approach. \r\n \r\nBest regards, \r\n \r\nDalibor Harald \r\nPrincipal Partner \r\nE-mail: daliborharald01@gmail.com','Dalibor Harald','INVESTMENT OPPORTUNITY'),(7,'chitchatchannel01@gmail.com','Hello, this is the CEO of ChitChatChannel inviting you to use https://chitchatchannel.com the new social media for your social commercial experience. \r\n \r\nIt cuts across all ages, groups, and businesses - enabling users to keep channels where they catalogue their content which they deliver as posts or products to friends or customers. And it\'s got its own ‘zoom’ too! But it\'s your ability to turn any post into a product for sale, or to put a price for access to your channel that monetizes your social presence making it a must-have. \r\n \r\nSo whether it is for something as simple as keeping channels for your kids artwork on your virtual ‘home museum’ channel, or for your stores virtual outlet, or schools eLearning, or for your more formal corporate virtual team-meetings, or complex Agile Scrum software development - chitchatchannel monetizes your social presence for you. \r\nHope you accept my invitation. https://chitchatchannel.com \r\n \r\nCharles \r\nN.B. You can reach me there at channel 1463.1','Charles Banks','*Must have. Monetizing your social media experience.'),(8,'atrixxtrix@gmail.com','Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply Professional surveillance & medical products: \r\n \r\nMoldex, makrite and 3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, PPDS masks \r\nFace shield/medical goggles \r\nNitrile/vinyl/Latex/PP gloves \r\nIsolation/surgical gown lvl1-4 \r\nProtective PPE/Overalls lvl1-4 \r\nIR non-contact/oral thermometers \r\nsanitizer dispenser \r\n \r\nLogitech/OEM webcam \r\nMarine underwater CCTV \r\nExplosionproof CCTV \r\n4G Solar CCTV \r\nHuman body thermal cameras \r\nIP & analog cameras for homes/industrial/commercial \r\n \r\nLet us know which products you are interested and we can send you our full pricelist. \r\n \r\nWhatsapp: +65 87695655 \r\nTelegram: cctv_hub \r\nSkype: cctvhub \r\nEmail: sales@thecctvhub.com \r\nW: http://www.thecctvhub.com/ \r\n \r\nIf you do not wish to receive email from us again, please let us know by replying. \r\n \r\nregards, \r\nCCTV HUB','RobertOxigo','Fever screening thermal CCTV camera and medical masks'),(9,'no-replyShem@gmail.com','Gооd dаy!  infiniti.pythonanywhere.com \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd mеssаgе   lаwfully? \r\nWе prоvidе а nеw lеgаl mеthоd оf sеnding rеquеst thrоugh соntасt fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh businеss оffеrs аrе sеnt, nо pеrsоnаl dаtа is usеd, аnd mеssаgеs аrе sеnt tо fоrms spесifiсаlly dеsignеd tо rесеivе mеssаgеs аnd аppеаls. \r\nаlsо, mеssаgеs sеnt thrоugh fееdbасk Fоrms dо nоt gеt intо spаm bесаusе suсh mеssаgеs аrе соnsidеrеd impоrtаnt. \r\nWе оffеr yоu tо tеst оur sеrviсе fоr frее. Wе will sеnd up tо 50,000 mеssаgеs fоr yоu. \r\nThе соst оf sеnding оnе milliоn mеssаgеs is 49 USD. \r\n \r\nThis mеssаgе is сrеаtеd аutоmаtiсаlly. Plеаsе usе thе соntасt dеtаils bеlоw tо соntасt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nWhatsApp - +375259112693','JoshuaLaf','Delivery of your email messages.'),(10,'jimmyscowley@gmail.com','Dear Sir/mdm, \r\n \r\nOur company Resinscales is looking for distributors and resellers for its unique product: ready-made tank models from the popular massively multiplayer online game - World of Tanks. \r\n \r\nSuch models are designed for fans of the game WoT and collectors of military models. \r\n \r\nWhat makes our tank models stand out? \r\n \r\n- We are focusing on tanks not manfactured by any companies, therefore we have no competitors \r\n- Accurately made in 1/35 scale \r\n- Very high accuracy of details and colors \r\n- The price of the model tank is the same as the production cost \r\n \r\nIf you are interested to be our distributor/reseller then please let us know from the contacts below. \r\n \r\nhttps://www.resinscales.com/ \r\nhttps://www.facebook.com/resinscales.models/ \r\ncontact@resinscales.com \r\n \r\nIgnore this message if it had been wrongly sent to you.','Jimmy Scowley','Ready-made scale models of World of Tanks'),(11,'no-replyrop@google.com','Hеllо! \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n \r\nThis service is guaranteed \r\n \r\nFor more information, check our service here \r\nhttps://www.monkeydigital.co/Get-Guaranteed-Domain-Authority-50/ \r\n \r\nthank you \r\nMike  \r\nMonkey Digital \r\nsupport@monkeydigital.co','Mike ','New: DA50 for infiniti.pythonanywhere.com'),(12,'businessbloodflow@gmail.com','In this times of financial distress, if your business needs cashflow we can help you. \r\n \r\nSome Details: \r\n \r\n1- Up to $500,000 unsecured loan amount \r\n2- 6% annual interest on the loan amount \r\n3- Under $125,000 at 10%, Above $125,000 at 6% \r\n4- No personal credit check \r\n5- Required: Last 4 banks statements at least $3,000 per month, Proof that you own the business and a filled out application. \r\n6- No initial application fee, pay $500 after you get the money \r\n7- Start to pay 2 months after you get the loan \r\n8- Extend to 5 more years if can\'t pay full amount in 3 years \r\n \r\nIf you’re interested text me here: Carlos 917 650 7925 \r\n \r\nPs. Please don\'t waste your time or mine if you\'re not SERIOUS or have no  plan to duplicate this money! Thank you','PrestonBeese','If Your Business Needs Cashflow, Look Inside!'),(13,'turbomavro@gmail.com','The leader in short-term investing in the cryptocurrency market.   \r\nThe leader in payments for the affiliate program.   \r\n \r\n \r\nInvestment program: \r\n \r\nInvestment currency: BTC. \r\nThe investment period is 2 days. \r\nMinimum profit is 10% \r\n \r\nRegistration here:  https://bit.ly/3gr3l6q     \r\n \r\nGet + 10% every 2 days to your personal Bitcoin wallet in addition to your balance. \r\n \r\nFor example: invest 0.1 bitcoins today, in 2 days you will receive 0.11 bitcoins in your personal bitcoin wallet. \r\n \r\n \r\nThe best affiliate program - a real find for MLM agents   \r\n \r\n5% for the referral of the first level (direct registration) \r\n3% for the referral of the second level \r\n1% for the referral of the third level \r\n \r\nReferral bonuses are paid the next day after the referral donation. \r\nThe bonus goes to your BTC address the day after the novice\'s donation. \r\nAny reinvestment of participants, the leader receives a full bonus! \r\n \r\nRegistration here:  https://bit.ly/3gr3l6q  ','Jimmybat','Short-term Bitcoin investments. Guaranteed minimum profit of 10% in just 2 days.'),(14,'no-reply@hilkom-digital.de','Gооd dаy! \r\nI have just checked infiniti.pythonanywhere.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de','James Arthurs\r\n','cheap monthly SEO plans'),(15,'contact1@theonlinepublishers.com','Hello, we are The Online Publishers (TOP) and want to introduce ourselves to you.  TOP is an established comprehensive global online hub.  We connect clients to expert freelancers in all facets of the world of digital marketing such as writers, journalists, bloggers, authors, advertisers, publishers, social media influencers, backlinks managers, Vloggers/video marketers and reviewers… A few of the many services we offer are content creation and placement, publishing, advertising, online translation, and social media management.  We also have two full online libraries, one of photographs and the other of eBooks and informative resources. \r\nSave money and time by using TOP services.  Rather than having to search for multiple providers of various tasks, we are a one-stop-shop.  We have all the services you will ever need right here.  For a complete list, check out our website https://www.theonlinepublishers.com \r\nTOP can help any business surge ahead of its competition and increase sales.  Join The Online Publishers today.','Marilynfuend','Choose The Online Publishers for All Your Digital Marketing Needs'),(16,'contact2@theonlinepublishers.com','Grow Your Business with TOP Vlogger Experts \r\n \r\nHow would you like to have your company\'s story told in video clips?  What better way to do that than with a series of short videos?  Welcome to the world of vlogging.  Vlogging is essentially blogging, except it is in the form of videos instead of written text.  When you are a client of The Online Publishers (TOP) we can connect you with professionals who excel at this unique type of marketing.  TOP Combines Vlogging and Influencers Marketing to boost your online reputation. \r\n \r\nClients love being able to express the highlights of their company or region through videos.  A great digital marketing firm not only knows the ins and outs of creating vlogs but knows how and where to place them to gain the maximum exposure.  Allow the vlogging gurus at TOP to do these things for you. \r\n \r\nAnother key feature of vlogging that TOP is excellent at is using social media sites to boost the videos.  All exposure that your videos can obtain through social sites is great.  Our service providers can successfully accomplish this for you.  This is especially fantastic if you need to bolster your online reputation.  Vlogs are a perfect way to do that and our providers know how to get it done right.  Go online to http://www.theonlinepublishers.com/ now and ask our support team all about it.','Teresadat','Grow Your Business with TOP Vlogger Experts'),(17,'no-replyrop@google.com','Hеllо! \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n \r\nThis service is guaranteed \r\n \r\nFor more information, check our service here \r\nhttps://www.monkeydigital.co/Get-Guaranteed-Domain-Authority-50/ \r\n \r\nthank you \r\nMike Cooper\r\n \r\nMonkey Digital \r\nsupport@monkeydigital.co','Mike Cooper\r\n','New: DA50 for infiniti.pythonanywhere.com'),(18,'support@qualidad.co','Hi there! \r\n \r\nCan We Replace Your Old Roof with a Brand-New Metal Roof? \r\n \r\nWe need metal roof installation jobs on short notice to feature in upcoming promotions. \r\n \r\nClick the link below NOW for full details and to see if your roof qualifies... \r\nhttp://bit.ly/roofing_promotion \r\n \r\nIf your roof meets our marketing needs, we\'ll make it worth your while! \r\n \r\nBut don\'t wait! This is an immediate opportunity! \r\nClick the link below NOW… \r\nhttp://bit.ly/roofing_promotion \r\n \r\nThanks, \r\nQualidad Roofing Inc. & Simple Home Quotes','Terryrit','OLD ROOFS NEEDED!'),(19,'david@starkwoodmarketing.com','Hey infiniti.pythonanywhere.com, \r\n \r\nCan I get you on the horn to discuss relaunching marketing? \r\n \r\nGet started on a conversion focused landing page, an automated Linkedin marketing tool, or add explainer videos to your marketing portfolio and boost your ROI. \r\n \r\nWe also provide graphic design and call center services to handle all those new leads you\'ll be getting. \r\n \r\n \r\nd.stills@starkwoodmarketing.com \r\n \r\nMy website is http://StarkwoodMarketing.com','Dave Stills','Sanka, You Dead Mon?'),(20,'no-replyrop@google.com','Hi there \r\n \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n \r\nThis service is guaranteed \r\n \r\nFor more information, check our service here \r\nhttps://www.monkeydigital.co/Get-Guaranteed-Domain-Authority-50/ \r\n \r\nN E W : \r\nDA60 is now available here \r\nhttps://www.monkeydigital.co/product/moz-da60-seo-plan/ \r\n \r\n \r\nthank you \r\nMike Dean\r\n \r\nMonkey Digital \r\nsupport@monkeydigital.co','Mike Dean\r\n','New: DA50 for infiniti.pythonanywhere.com'),(21,'support@newlightdigital.com.hubspot-inbox.com','Hi there, \r\n \r\nMy name is Daniel Todercan, and I’ll keep this quick. I’m the founder of New Light Digital, and we help people like you generate new business from their own websites (as opposed to having a brochure-type website). \r\n \r\nWould you be interested in learning more? I’d be happy to talk to you about the things we do differently. You can learn more about our services here: https://bit.ly/3l0sCqQ \r\n \r\nI am also including a valuable PDF guide for you below. \r\n \r\n25 Point Website Usability Checklist --  use it to see if your current website meets the minimum user experience requirements to show up in Google search results. Download for free here: https://bit.ly/30kVDWs \r\n \r\nLastly, if you’re not interested in a website overhaul, would you like an SEO audit for your website? It would show you how you are ranking on Google, and what issues you might have that are preventing you from ranking better. It’s free of charge, and zero strings attached. Just request it here: https://bit.ly/33iHw5R \r\n \r\nThank you for your time. \r\n \r\nDaniel Todercan \r\nFounder and Owner \r\nNew Light Digital','Daniel','Get a new website and improve your business'),(22,'maulik.hikebranding@protonmail.com','Hello, \r\nI represent HikeBranding, a Website Designing Company! \r\nI  came across your website and had a quick look at it. Are you planning to Design or Re-design your Website, to meet up the current competitive market?  If yes, we at Hikebranding, are here to help you with Smile ? \r\nDescribe your thoughts at https://www.hikebranding.com/inquire-now/ and get your dream website delivered, while you plan to take on your business to new heights. \r\nHoping to become a Small Part of your Success Story!! \r\n \r\nKind Regards \r\n \r\nMaulik Joshi \r\nSr.Operations Manager \r\nhttps://www.Hikebranding.com \r\nFacebook: #HikeBranding \r\nTwitter: @HikeBranding \r\nLinkedIn: #Hikebranding','Maulik Joshi','Having a thought of designing or re-designing your current website?'),(23,'info@deoleodigitalpublishing.com','HAVE YOU EVER WANTED TO CONVERT 100% OF YOUR FITNESS PROSPECTS INTO LOYAL CUSTOMERS FOR YOUR BUSINESS? \r\n \r\nWatch the Official Trailer : https://youtu.be/hb7qJmAIb9M \r\n \r\nUse this link below to Download your E-book copy @ https://www.tonydeoleo.com','RobertSuppy','PROSPECTS INTO LOYAL CUSTOMERS'),(24,'linda.ray@theremarketingguys.com','I noticed that you are not running Google Remarketing on your website. \r\n \r\nThe most affordable advertising is marketing to previous web viewers who didn\'t convert. \r\n \r\nRemarketing via Google & Facebook ads means tracking and engaging these \'lost\' customers. \r\nThey were on your site once and may only need a reminder of your services and business. \r\n \r\nCan I help you grab these low hanging fruits? \r\n \r\nLinda Ray \r\nEmail - linda@theremarketingguys.com \r\nWebsite - http://www.theremarketingguys.com','Linda Ray','Google Remarketing Not Running?'),(25,'adam789bright@gmail.com','Looking for likes or followers for Facebook or Instagram \r\nWe can help you. Please visit https://1000-likes.com/ to place your order.','Adam Right','Buy Instagram followers'),(26,'no-reply@google.com','Gооd dаy! \r\n \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n \r\nThis service is guaranteed \r\n \r\nFor more information, check our service here \r\nhttps://www.moz-boost.com/Get-Guaranteed-Domain-Authority-50/ \r\n \r\nN E W : \r\nDA60 is now available here \r\nhttps://www.moz-boost.com/DA-60-Plan/ \r\n \r\n \r\nthank you \r\nMike Oldman\r\n \r\nsupport@moz-boost.com','Mike Oldman\r\n','New: DA50 for infiniti.pythonanywhere.com');
/*!40000 ALTER TABLE `contactus_contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus_counter`
--

DROP TABLE IF EXISTS `contactus_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactus_counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `awards` int(11) NOT NULL,
  `clients` int(11) NOT NULL,
  `item_sold` int(11) NOT NULL,
  `projects` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus_counter`
--

LOCK TABLES `contactus_counter` WRITE;
/*!40000 ALTER TABLE `contactus_counter` DISABLE KEYS */;
INSERT INTO `contactus_counter` VALUES (1,3,8,127,10);
/*!40000 ALTER TABLE `contactus_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus_latesttech`
--

DROP TABLE IF EXISTS `contactus_latesttech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactus_latesttech` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news` varchar(250) NOT NULL,
  `news_autor` varchar(50) NOT NULL,
  `news_date` date DEFAULT NULL,
  `news_link` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus_latesttech`
--

LOCK TABLES `contactus_latesttech` WRITE;
/*!40000 ALTER TABLE `contactus_latesttech` DISABLE KEYS */;
INSERT INTO `contactus_latesttech` VALUES (1,'Zetwerk, an Indian B2B marketplace for manufacturing items, raises $21 million','Manish Singh','2020-07-02','https://techcrunch.com/2020/07/02/zetwerk-an-indian-b2b-marketplace-for-manufacturing-items-raises-21-million/'),(2,'Apple and Google block dozens of Chinese apps in India','Manish Singh','2020-07-02','https://techcrunch.com/2020/07/01/apple-and-google-block-dozens-of-chinese-apps-in-india/');
/*!40000 ALTER TABLE `contactus_latesttech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus_newsletter`
--

DROP TABLE IF EXISTS `contactus_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactus_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_news` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus_newsletter`
--

LOCK TABLES `contactus_newsletter` WRITE;
/*!40000 ALTER TABLE `contactus_newsletter` DISABLE KEYS */;
INSERT INTO `contactus_newsletter` VALUES (1,'rptshrivastava@gmail.com'),(2,'bob@blueiot.com.au');
/*!40000 ALTER TABLE `contactus_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-06-23 11:37:20.547560','1','Counter object (1)',1,'[{\"added\": {}}]',8,1),(2,'2020-06-23 11:38:29.371744','1','LatestTech object (1)',1,'[{\"added\": {}}]',9,1),(3,'2020-07-02 10:19:33.990529','1','LatestTech object (1)',2,'[{\"changed\": {\"fields\": [\"News\", \"News autor\", \"News date\", \"News link\"]}}]',9,1),(4,'2020-07-02 10:19:58.349292','2','LatestTech object (2)',1,'[{\"added\": {}}]',9,1),(5,'2020-07-02 10:20:51.070646','3','LatestTech object (3)',1,'[{\"added\": {}}]',9,1),(6,'2020-07-05 10:52:27.930315','3','LatestTech object (3)',3,'',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'contactus','contactus'),(8,'contactus','counter'),(9,'contactus','latesttech'),(10,'contactus','newsletter'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-11 10:26:57.726450'),(2,'auth','0001_initial','2020-04-11 10:26:59.130658'),(3,'admin','0001_initial','2020-04-11 10:26:59.880910'),(4,'admin','0002_logentry_remove_auto_add','2020-04-11 10:26:59.981073'),(5,'admin','0003_logentry_add_action_flag_choices','2020-04-11 10:26:59.995223'),(6,'contenttypes','0002_remove_content_type_name','2020-04-11 10:27:00.153121'),(7,'auth','0002_alter_permission_name_max_length','2020-04-11 10:27:00.205018'),(8,'auth','0003_alter_user_email_max_length','2020-04-11 10:27:00.264473'),(9,'auth','0004_alter_user_username_opts','2020-04-11 10:27:00.279304'),(10,'auth','0005_alter_user_last_login_null','2020-04-11 10:27:00.329389'),(11,'auth','0006_require_contenttypes_0002','2020-04-11 10:27:00.335833'),(12,'auth','0007_alter_validators_add_error_messages','2020-04-11 10:27:00.350094'),(13,'auth','0008_alter_user_username_max_length','2020-04-11 10:27:00.409655'),(14,'auth','0009_alter_user_last_name_max_length','2020-04-11 10:27:00.465839'),(15,'auth','0010_alter_group_name_max_length','2020-04-11 10:27:00.521554'),(16,'auth','0011_update_proxy_permissions','2020-04-11 10:27:00.536362'),(17,'contactus','0001_initial','2020-04-11 10:27:00.819138'),(18,'contactus','0002_auto_20200314_1905','2020-04-11 10:27:02.368935'),(19,'contactus','0003_auto_20200314_1932','2020-04-11 10:27:02.385331'),(20,'contactus','0004_auto_20200314_2222','2020-04-11 10:27:02.414131'),(21,'contactus','0005_auto_20200315_1240','2020-04-11 10:27:02.612617'),(22,'sessions','0001_initial','2020-04-11 10:27:02.783167');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('02cpqxa0paqzihztcqkt9d9atwx9ycex','OTExYjE1MTJiMmI1NmMxMWMyMTQ2OTA2OThjY2VkYjM3ZDBlZTBlMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNmJhOTc2M2I2M2IwZTJlNDI5ZjAxMzljODI2NjBkYjMzMjViMmNiIn0=','2020-07-07 11:36:59.509099');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-11  5:18:12
