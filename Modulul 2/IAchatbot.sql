-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "Answers" ----------------------------------
DROP TABLE IF EXISTS `Answers` CASCADE;

CREATE TABLE `Answers` ( 
	`answer_id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`question_id` Int( 255 ) NOT NULL,
	`user_id` Int( 255 ) NOT NULL,
	`answer_text` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_answer_id` UNIQUE( `answer_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "Users" ------------------------------------
DROP TABLE IF EXISTS `Users` CASCADE;

CREATE TABLE `Users` ( 
	`idUsers` TinyInt( 255 ) NOT NULL,
	`FirstName` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`Lastname` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`Username` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`Dogname` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_idUsers` UNIQUE( `idUsers` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "hobbies" ----------------------------------
DROP TABLE IF EXISTS `hobbies` CASCADE;

CREATE TABLE `hobbies` ( 
	`hobby_id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`hobby` Text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
	PRIMARY KEY ( `hobby_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = MyISAM
AUTO_INCREMENT = 12;
-- ---------------------------------------------------------


-- CREATE TABLE "jokes" ------------------------------------
DROP TABLE IF EXISTS `jokes` CASCADE;

CREATE TABLE `jokes` ( 
	`joke_id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`joke` Text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
	PRIMARY KEY ( `joke_id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = MyISAM
AUTO_INCREMENT = 21;
-- ---------------------------------------------------------


-- CREATE TABLE "memories" ---------------------------------
DROP TABLE IF EXISTS `memories` CASCADE;

CREATE TABLE `memories` ( 
	`memory_id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`memory` Text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
	PRIMARY KEY ( `memory_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = MyISAM
AUTO_INCREMENT = 10;
-- ---------------------------------------------------------


-- CREATE TABLE "movies" -----------------------------------
DROP TABLE IF EXISTS `movies` CASCADE;

CREATE TABLE `movies` ( 
	`person_id` Int( 11 ) NOT NULL,
	`movie` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = MyISAM;
-- ---------------------------------------------------------


-- CREATE TABLE "persons" ----------------------------------
DROP TABLE IF EXISTS `persons` CASCADE;

CREATE TABLE `persons` ( 
	`person_id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`first_name` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL,
	`last_name` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL,
	`status` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_bin NULL,
	`city` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL,
	`country` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL,
	`nationality` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL,
	`religion` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL,
	`age` VarChar( 10 ) CHARACTER SET utf8 COLLATE utf8_bin NULL,
	`eyes_color` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL,
	`hair_color` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_bin NULL,
	PRIMARY KEY ( `person_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = MyISAM
AUTO_INCREMENT = 20;
-- ---------------------------------------------------------


-- CREATE TABLE "persons_link_hobbies" ---------------------
DROP TABLE IF EXISTS `persons_link_hobbies` CASCADE;

CREATE TABLE `persons_link_hobbies` ( 
	`person_id` Int( 11 ) NOT NULL,
	`hobby_id` Int( 11 ) NOT NULL )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = MyISAM;
-- ---------------------------------------------------------


-- CREATE TABLE "persons_link_memories" --------------------
DROP TABLE IF EXISTS `persons_link_memories` CASCADE;

CREATE TABLE `persons_link_memories` ( 
	`person_id` Int( 11 ) NOT NULL,
	`memory_id` Int( 11 ) NOT NULL )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = MyISAM;
-- ---------------------------------------------------------


-- CREATE TABLE "questions" --------------------------------
DROP TABLE IF EXISTS `questions` CASCADE;

CREATE TABLE `questions` ( 
	`id_question` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`question_text` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `id_question` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 95;
-- ---------------------------------------------------------


-- CREATE TABLE "songs" ------------------------------------
DROP TABLE IF EXISTS `songs` CASCADE;

CREATE TABLE `songs` ( 
	`person_id` Int( 11 ) NOT NULL,
	`song` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL )
CHARACTER SET = utf8
COLLATE = utf8_bin
ENGINE = MyISAM;
-- ---------------------------------------------------------


-- Dump data of "Answers" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "Users" ------------------------------------
INSERT INTO `Users`(`idUsers`,`FirstName`,`Lastname`,`Username`,`Dogname`) VALUES ( '0', 'Roxana', 'Pantea', 'roxana', 'Fluffy' );
INSERT INTO `Users`(`idUsers`,`FirstName`,`Lastname`,`Username`,`Dogname`) VALUES ( '1', 'Madalin', 'Capris', 'wadalin', 'Vasile' );
INSERT INTO `Users`(`idUsers`,`FirstName`,`Lastname`,`Username`,`Dogname`) VALUES ( '2', 'Roxana', 'Bejan', 'rox', 'Rex' );
INSERT INTO `Users`(`idUsers`,`FirstName`,`Lastname`,`Username`,`Dogname`) VALUES ( '3', 'Ionut', 'Nitu', 'ion', 'Cutu' );
INSERT INTO `Users`(`idUsers`,`FirstName`,`Lastname`,`Username`,`Dogname`) VALUES ( '4', 'Eduard', 'Sleghel', 'edi', 'Puffy' );
INSERT INTO `Users`(`idUsers`,`FirstName`,`Lastname`,`Username`,`Dogname`) VALUES ( '5', 'Cristian', 'Gavrilovici', 'algoritm', 'gigel' );
-- ---------------------------------------------------------


-- Dump data of "hobbies" ----------------------------------
INSERT INTO `hobbies`(`hobby_id`,`hobby`) VALUES ( '1', 'I like to travel' );
INSERT INTO `hobbies`(`hobby_id`,`hobby`) VALUES ( '2', 'I like sports' );
INSERT INTO `hobbies`(`hobby_id`,`hobby`) VALUES ( '3', 'I like swimming' );
INSERT INTO `hobbies`(`hobby_id`,`hobby`) VALUES ( '4', 'I like hiking' );
INSERT INTO `hobbies`(`hobby_id`,`hobby`) VALUES ( '5', 'I like reading' );
INSERT INTO `hobbies`(`hobby_id`,`hobby`) VALUES ( '6', 'Colecting stamps' );
INSERT INTO `hobbies`(`hobby_id`,`hobby`) VALUES ( '7', 'Cooking' );
INSERT INTO `hobbies`(`hobby_id`,`hobby`) VALUES ( '8', 'Listening to music' );
INSERT INTO `hobbies`(`hobby_id`,`hobby`) VALUES ( '9', 'Playing games' );
INSERT INTO `hobbies`(`hobby_id`,`hobby`) VALUES ( '10', 'Playing musical instruments' );
INSERT INTO `hobbies`(`hobby_id`,`hobby`) VALUES ( '11', 'Cryptography' );
-- ---------------------------------------------------------


-- Dump data of "jokes" ------------------------------------
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '3', 'Why did the bee get married? Because he found his honey.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '4', 'What do you call two fat people having a chat? -- A heavy discussion' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '5', 'How do you make holy water? You boil the hell out of it.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '6', 'What\'s the difference between snowmen and snowladies? Snowballs' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '7', 'I am a nobody, nobody is perfect, therefore I am perfect.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '8', 'Light travels faster than sound. This is why some people appear bright until they speak.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '9', 'What did the 0 said to the 8? Nice Belt!' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '10', 'I\'d tell you a chemistry joke but I know I wouldn\'t get a reaction.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '11', 'I am so poor I can\'t even pay attention.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '12', 'I asked God for a bike, but I know God doesn\'t work that way. So I stole a bike and asked for forgiveness.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '13', 'I used to think I was indecisive, but now I\'m not too sure.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '14', 'I changed my password to "incorrect". So whenever I forget what it is the computer will say "Your password is incorrect".' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '15', 'I started out with nothing, and I still have most of it.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '16', 'Team work is important; it helps to put the blame on someone else.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '17', 'Artificial intelligence is no match for natural stupidity.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '18', 'Is google a woman? Because it won\'t let you finish your sentence without coming up with other suggestions.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '19', 'If I wanted to kill myself I\'d climb your ego and jump to your IQ.' );
INSERT INTO `jokes`(`joke_id`,`joke`) VALUES ( '20', 'A clean house is the sign of a broken computer.' );
-- ---------------------------------------------------------


-- Dump data of "memories" ---------------------------------
INSERT INTO `memories`(`memory_id`,`memory`) VALUES ( '1', 'I remember' );
INSERT INTO `memories`(`memory_id`,`memory`) VALUES ( '2', 'I remember the last time i visited a new place was 2 years ago' );
INSERT INTO `memories`(`memory_id`,`memory`) VALUES ( '3', 'Last christmas was the best i have ever had' );
INSERT INTO `memories`(`memory_id`,`memory`) VALUES ( '4', 'When i was a child i used to ride my bike a lot' );
INSERT INTO `memories`(`memory_id`,`memory`) VALUES ( '5', 'I used to visit my grandparents a lot' );
INSERT INTO `memories`(`memory_id`,`memory`) VALUES ( '6', 'I remember the last time i got drunk. What a night!' );
INSERT INTO `memories`(`memory_id`,`memory`) VALUES ( '7', 'I used to play football for hours without getting tired. Now i\'m done after half an hour.' );
INSERT INTO `memories`(`memory_id`,`memory`) VALUES ( '8', 'When i was a kid winters were very harsh.' );
INSERT INTO `memories`(`memory_id`,`memory`) VALUES ( '9', 'Singing carols was the best thing about Christmas when i was a little boy.' );
-- ---------------------------------------------------------


-- Dump data of "movies" -----------------------------------
INSERT INTO `movies`(`person_id`,`movie`) VALUES ( '1', 'Birdemic #best special effects' );
INSERT INTO `movies`(`person_id`,`movie`) VALUES ( '2', 'Birdemic 2' );
INSERT INTO `movies`(`person_id`,`movie`) VALUES ( '3', 'The Shawshank Redemption' );
INSERT INTO `movies`(`person_id`,`movie`) VALUES ( '4', 'The Godfather' );
INSERT INTO `movies`(`person_id`,`movie`) VALUES ( '5', 'The Dark Knight' );
INSERT INTO `movies`(`person_id`,`movie`) VALUES ( '6', '12 Angry Men' );
INSERT INTO `movies`(`person_id`,`movie`) VALUES ( '7', 'Schindler\'s List' );
INSERT INTO `movies`(`person_id`,`movie`) VALUES ( '8', 'Pulp Fiction' );
INSERT INTO `movies`(`person_id`,`movie`) VALUES ( '9', 'Fight Club' );
INSERT INTO `movies`(`person_id`,`movie`) VALUES ( '10', 'Forrest Gump' );
-- ---------------------------------------------------------


-- Dump data of "persons" ----------------------------------
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '1', 'Ciprian', 'Andrei', 'neutral', 'Iasi', 'Romania', 'romanian', NULL, '21', 'brown', 'black' );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '2', 'Marius', 'Donici', 'friend', 'Bacau', 'Romania', 'romanian', NULL, '21', '', '' );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '3', 'Loredana', 'Teodorescu', 'mother', 'Iasi', 'Romania', 'programmer', NULL, '21', 'green', 'black' );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '4', 'Madalin', 'Capris', 'friend', 'Galati', 'Romania', 'romanian', NULL, '23', '', 'brown' );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '5', 'Cristian', 'Gavrilovici', 'enemy', 'Suceava', 'Romania', 'romanian', NULL, '21', 'brown', 'brown' );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '6', 'Roxana', 'Pantea', 'friend', 'Iasi', 'Romania', 'romanian', NULL, '21', '', 'blonde' );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '7', 'Roxana', 'Bejan', 'neutral', 'Iasi', 'Romania', 'romanian', NULL, '21', 'gray', '' );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '13', 'Ion', 'Nitu', 'friend', 'Botosani', 'Romania', 'romanian', NULL, '21', NULL, NULL );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '12', 'Leviu', 'Cortez', 'father', 'Bacau', 'France', 'gipsy', NULL, '69', 'hazel', 'red' );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '14', 'Alex', 'Reut', 'neutral', 'Suceava', 'Romania', 'romanian', NULL, '21', NULL, 'brown' );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '15', 'Florin', 'Cernat', 'friend', 'Tecuci', 'Romania', 'romanian', NULL, '22', 'brown', NULL );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '16', 'Tudor', 'Burduhos', 'enemy', 'Campulung Moldovenesc', 'Romania', 'romanian', NULL, '22', 'green', 'black' );
INSERT INTO `persons`(`person_id`,`first_name`,`last_name`,`status`,`city`,`country`,`nationality`,`religion`,`age`,`eyes_color`,`hair_color`) VALUES ( '19', 'maria', 'Burduja', '', '', '', '', '', '', '', '' );
-- ---------------------------------------------------------


-- Dump data of "persons_link_hobbies" ---------------------
INSERT INTO `persons_link_hobbies`(`person_id`,`hobby_id`) VALUES ( '1', '1' );
INSERT INTO `persons_link_hobbies`(`person_id`,`hobby_id`) VALUES ( '5', '2' );
INSERT INTO `persons_link_hobbies`(`person_id`,`hobby_id`) VALUES ( '5', '3' );
-- ---------------------------------------------------------


-- Dump data of "persons_link_memories" --------------------
INSERT INTO `persons_link_memories`(`person_id`,`memory_id`) VALUES ( '1', '1' );
INSERT INTO `persons_link_memories`(`person_id`,`memory_id`) VALUES ( '5', '2' );
INSERT INTO `persons_link_memories`(`person_id`,`memory_id`) VALUES ( '5', '3' );
INSERT INTO `persons_link_memories`(`person_id`,`memory_id`) VALUES ( '5', '4' );
-- ---------------------------------------------------------


-- Dump data of "questions" --------------------------------
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '1', 'Are you mad bro?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '2', 'More questions, please?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '3', 'Do you even know who Leviu Cortez is?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '9', 'Are you a good singer?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '10', 'Are you a good programmer like my mother?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '15', 'When you were younger, what did you want to be when you grew up?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '16', 'What are one of your pet peeves?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '17', 'Do you have a favorite animal, if so what is it?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '18', 'If you could live anywhere in the world, where would it be and why?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '19', 'What is your favorite hairstyle on a man?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '20', 'Who is the hottest celebrity?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '21', 'What do you think about romance?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '22', 'What is your favorite designer brand?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '23', 'What kind of workout routine do you enjoy?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '24', 'Do you have a favorite song, if so what is it?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '25', 'How would you spend one million dollars?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '26', 'Which would you choose: money, or love?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '27', 'How do you want people to remember you now and when you are gone?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '28', 'Are you a family orientated person?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '29', 'What are your habits?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '30', 'Have you done anything overly extreme this year?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '31', 'What is your favorite day and why?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '32', 'If you could be anyone for a day (dead or alive) who would it be?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '33', 'What is your biggest wish for this year?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '34', 'What is your favorite novel?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '35', 'Do you have any regrets about the past?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '36', 'Do you believe in evolution or religion?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '37', 'What is your favorite ice cream flavor?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '38', 'If you could change one facial feature, what would it be?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '39', 'What would you do in a world war situation?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '40', 'Are you a good singer?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '41', 'If you could walk chose an actor to play you as a character who would it be?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '42', 'Have you ever tried dating online?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '43', 'What is your favorite childhood memory?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '44', 'What are 3 things you get turned off by?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '45', 'Who are 3 of your biggest inspirations?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '46', 'What is the worst thing that could happen to you on a date?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '47', 'If there is hair in your food in a restaurant, what would you say?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '48', 'Can you cook carbonara?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '49', 'What is your favorite type of ball game?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '50', 'UFC or WWE?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '51', 'What is your favorite news website?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '52', 'How many times a day do you look at your phone?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '53', 'Who is your favorite cartoon character?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '54', 'Describe your mood right now using one word' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '55', 'What would your dream car be?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '56', 'If you could be any sports player, who would it be?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '57', 'If you were a flower, what type would you be?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '58', 'Do you own a bike?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '59', 'What is your favorite news channel?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '60', 'What 3 languages would you like to learn?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '61', 'What is your favorite drink?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '62', 'Describe the perfect guy?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '63', 'Would you be rather be able to shape shift or mind read?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '64', 'If you found a purse with $on the floor, would you turn it in?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '65', 'If you were a lesbian, who would be your celebrity girlfriend?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '66', 'What is your favorite joke' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '67', 'Coke or Pepsi?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '68', 'What are you talented at?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '69', 'Where is the ideal place for a first date?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '70', 'Have you ever been excluded from school?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '71', 'What do you think your worst facial feature?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '72', 'When was the last time you cried?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '73', 'Do you operate better at night or during the day?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '74', 'How much do you weigh?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '75', 'What is your biggest fear and why?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '76', 'What do you do in your spare time?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '77', 'Do you like liquorice?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '78', 'Do you like sunny days or windy days more?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '79', 'Name 3 things about where you live that you find most beautiful?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '80', 'Which is your least favorite part of your body and why?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '81', 'Which is your favorite body part of the human body and why?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '82', 'What gets you angry?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '83', 'What is your favorite insect and why?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '84', 'Do you like any exotic dishes?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '85', 'Where are 3 places you would like to visit on holiday and why?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '86', 'Have you ever broken a bone, if so how?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '87', 'What was the last thing that got you excited?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '88', 'When was the last time you were upset?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '89', 'What are 3 things you look for in a partner?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '90', 'What are 5 things you dislike in a relationship' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '91', 'What was your favorite subject in school?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '92', 'Which job professions do you find interesting?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '93', 'What is the most challenging thing you have had to do this year?' );
INSERT INTO `questions`(`id_question`,`question_text`) VALUES ( '94', 'When was the last time you said something that was untrue and why?' );
-- ---------------------------------------------------------


-- Dump data of "songs" ------------------------------------
INSERT INTO `songs`(`person_id`,`song`) VALUES ( '5', 'Enough' );
INSERT INTO `songs`(`person_id`,`song`) VALUES ( '5', 'The Night' );
INSERT INTO `songs`(`person_id`,`song`) VALUES ( '5', 'The Curse' );
INSERT INTO `songs`(`person_id`,`song`) VALUES ( '5', 'Haunted' );
INSERT INTO `songs`(`person_id`,`song`) VALUES ( '5', 'Perfect Insanity' );
INSERT INTO `songs`(`person_id`,`song`) VALUES ( '5', 'Deceiver' );
INSERT INTO `songs`(`person_id`,`song`) VALUES ( '5', 'Inside the Fire' );
INSERT INTO `songs`(`person_id`,`song`) VALUES ( '5', 'Indestructible' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


