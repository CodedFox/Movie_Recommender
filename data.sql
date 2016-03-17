--All data inputs for the Movie Recommendation system

INSERT INTO userAccount(userID,password,firstName,lastName,yearBorn,email,city,province,country) VALUES
(DEFAULT,'ilovelotr','Jonathan','Buttbutt',1900,'lotrfan@boy.ca','Ottawa','Ontario','Canada');

INSERT INTO profile(userID,ageRange,gender,occupation) VALUES
(1,'100+','M','Student');

INSERT INTO device(deviceID,deviceName) VALUES
(DEFAULT,'Desktop'),
(DEFAULT,'Mobile');

INSERT INTO deviceUsed(userID,deviceID) VALUES
(1,1),
(1,2);

INSERT INTO topic(topicID,genre) VALUES -- change to int?
(DEFAULT,'Action'), -- 1
(DEFAULT,'Adventure'), -- 2
(DEFAULT,'Animation'), -- 3
(DEFAULT,'Biography'), -- 4
(DEFAULT,'Comedy'), -- 5
(DEFAULT,'Crime'), -- 6
(DEFAULT,'Documentary'), -- 7
(DEFAULT,'Drama'), -- 8
(DEFAULT,'Family'), -- 9
(DEFAULT,'Fantasy'), -- 10
(DEFAULT,'Film-Noir'), -- 11
(DEFAULT,'History'), -- 12
(DEFAULT,'Horror'), -- 13
(DEFAULT,'Music'), -- 14
(DEFAULT,'Musical'), -- 15
(DEFAULT,'Mystery'), -- 16
(DEFAULT,'Romance'), -- 17
(DEFAULT,'Sci-Fi'), -- 18
(DEFAULT,'Sport'), -- 19
(DEFAULT,'Thiller'), -- 20
(DEFAULT,'War'), -- 21
(DEFAULT,'Western'); -- 22

INSERT INTO movie(movieID,name,description,dateReleased,duration,language,subtitles,country,ageRating) VALUES
(DEFAULT,
'The Lord of the Rings: The Fellowship of the Ring',
'A meek Hobbit and eight companions set out on a journey to destroy the One Ring and the Dark Lord Sauron.',
'2001-12-19',
'2:58:00',
'English',
'N',
'New Zealand', -- & USA?
'PG-13'),

(DEFAULT,
'The Lord of the Rings: The Two Towers',
'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron''s new ally, Saruman, and his hordes of Isengard.',
'2002-12-18',
'2:59:00',
'English',
'N',
'New Zealand', -- & USA?
'PG-13'),

(DEFAULT,
'The Lord of the Rings: The Return of the King',
'Gandalf and Aragorn lead the World of Men against Sauron''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',
'2003-12-17',
'3:21:00',
'English',
'N',
'New Zealand', -- & USA?
'PG-13'),

(DEFAULT,
'Howl''s Moving Castle',
'When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.',
'2005-06-17',
'1:59:00',
'English', -- ?
'N', -- ?
'Japan',
'PG'),

(DEFAULT,
'Ghost',
'After an accident leaves a young man dead, his spirit stays behind to warn his lover of impending danger, with the help of a reluctant psychic.',
'1990-07-13',
'2:07:00',
'English',
'N',
'USA',
'PG-13'),

(DEFAULT,
'The Notebook',
'A poor and passionate young man falls in love with a rich young woman and gives her a sense of freedom. They soon are separated by their social differences.',
'2004-06-25',
'2:03:00',
'English',
'N',
'USA',
'PG-13'),

(DEFAULT,
'A Walk to Remember',
'The story of two North Carolina teens, Landon Carter and Jamie Sullivan, who are thrown together after Landon gets into trouble and is made to do community service.',
'2002-01-25',
'1:41:00',
'English',
'N',
'USA',
'PG'),

(DEFAULT,
'Dirty Dancing',
'Spending the summer at a Catskills resort with her family, Frances "Baby" Houseman falls in love with the camp''s dance instructor, Johnny Castle.',
'1987-08-21',
'1:40:00',
'English',
'N',
'USA',
'PG-13'),

(DEFAULT,
'Notting Hill',
'The life of a simple bookshop owner changes when he meets the most famous film star in the world.',
'1999-05-28',
'2:04:00',
'English',
'N',
'USA',
'PG-13'),

(DEFAULT,
'Pretty Woman',
'A man in a legal but hurtful business needs an escort for some social events, and hires a beautiful prostitute he meets... only to fall in love.',
'1990-03-23',
'1:59:00',
'English',
'N',
'USA',
'R'),

(DEFAULT,
'Say Anything',
'A noble underachiever and a beautiful valedictorian fall in love the summer before she goes off to college.',
'1989-04-14',
'1:40:00',
'English',
'N',
'USA',
'PG-13'),

(DEFAULT,
'Titanic',
'A seventeen-year-old aristocrat falls in love with a kind, but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.',
'1997-12-19',
'3:14:00',
'English',
'N',
'USA',
'PG-13'),

(DEFAULT,
'P.S. I Love You',
'A young widow discovers that her late husband has left her 10 messages intended to help ease her pain and start a new life.',
'2007-12-21',
'2:06:00',
'English',
'N',
'USA',
'PG-13'),

(DEFAULT,
'Legends of the Fall',
'Epic tale of three brothers and their father living in the remote wilderness of 1900s USA and how their lives are affected by nature, history, war, love and betrayal.',
'1995-01-13',
'2:13:00',
'English',
'N',
'USA',
'R'),

(DEFAULT,
'Troy',
'An adaptation of Homer''s great epic, the film follows the assault on Troy by the united Greek forces and chronicles the fates of the men involved.',
'2004-05-14',
'2:43:00',
'English',
'N',
'USA',
'R'),

(DEFAULT,
'Se7en',
'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his modus operandi.',
'1995-09-22',
'2:07:00',
'English',
'N',
'USA',
'R'),

(DEFAULT,
'House of Flying Daggers',
'A romantic police captain breaks a beautiful member of a rebel group out of prison to help her rejoin her fellows, but things are not what they seem.',
'2004-07-16',
'1:59:00',
'Mandarin', -- ?
'Y',
'China', --? 
'PG-13'),

(DEFAULT,
'Hero',
'A defense officer, Nameless, was summoned by the King of Qin regarding his success of terminating three warriors.',
'2002-10-24',
'1:39:00',
'Mandarin', -- ?
'Y',
'China', --?
'PG-13'),

(DEFAULT,
'Red Cliff',
'The first chapter of a two-part story centered on a battle fought in China''s Three Kingdoms period (220-280 A.D.).',
'2008-07-10',
'2:28:00',
'Mandarin', -- ?
'Y',
'China', --?
'R'),

(DEFAULT,
'Red Cliff II',
'In this sequel to Red Cliff, Chancellor Cao Cao convinces Emperor Xian of the Han to initiate a battle against the two Kingdoms of Shu and Wu, who have become allied forces, against all expectations. Red Cliff will be the site for the gigantic battle.',
'2009-01-07',
'1:39:00',
'Mandarin', -- ?
'Y', -- ?
'China',
'R'); --?

INSERT INTO watches(userID,movieID,dateWatched,userRating) VALUES
(1,1,'2001-12-19',10),
(1,2,'2002-12-18',10),
(1,3,'2003-12-17',10),
(1,4,'2005-06-17',10);

INSERT INTO movieTopic(topicID,movieID) VALUES -- switch?
(2,1), 
(8,1),
(10,1),
(2,2), 
(8,2),
(10,2),
(2,3), 
(8,3),
(10,3),
(2,4), 
(3,4),
(9,4),
(8,5),
(10,5),
(17,5),
(8,6),
(17,6),
(8,7),
(17,7),
(8,8),
(14,8),
(17,8),
(5,9),
(8,9),
(17,9),
(5,10),
(17,10),
(5,11),
(8,11),
(17,11),
(8,12),
(17,12),
(8,13),
(17,13),
(8,14),
(17,14),
(21,14),
(1,15),
(2,15),
(12,15),
(6,16),
(8,16),
(16,16),
(1,17),
(2,17),
(8,17),
(17,17),
(1,18),
(2,18),
(12,18),
(1,19),
(8,19),
(12,19),
(1,20),
(8,20),
(12,20);

INSERT INTO actor(actorID,firstName,lastName,dateOfBirth,nationality,gender) VALUES -- 'D' to 'd'
(DEFAULT,'Elijah','Wood','1981-01-28','American','M'), -- 1
(DEFAULT,'Ian','McKellen','1939-05-25','English','M'), -- 2
(DEFAULT,'Orlando','Bloom','1977-01-13','English','M'), -- 3
(DEFAULT,'Viggo','Mortensen','1958-10-20','American','M'), -- 4
(DEFAULT,'Chieko','Baishou','1941-06-29','Japanese','F'), -- 5
(DEFAULT,'Takuya','Kimura','1972-11-13','Japanese','M'), --6
(DEFAULT,'Tatsuya','Gashuuin','1950-12-10','Japanese','M'), -- 7  Date for actor but not user? Nationality or should it be place of birth for consistency?
(DEFAULT,'Patrick','Swayze','1952-09-14','American','M'), -- 8
(DEFAULT,'Demi','Moore','1962-11-11','American','F'), -- 9
(DEFAULT,'Tony','Goldwyn','1960-05-20','American','M'), -- 10
(DEFAULT,'Rachel','McAdams','1978-11-17','Canadian','F'), -- 11
(DEFAULT,'Ryan','Gosling','1980-11-12','Canadian','M'), -- 12
(DEFAULT,'James','Marsden','1973-09-18','American','M'), -- 13
(DEFAULT,'Shane','West','1978-06-10','American','M'), -- 14
(DEFAULT,'Mandy','Moore','1984-04-10','American','F'), -- 15
(DEFAULT,'Jennifer','Grey','1960-03-26','American','F'), -- 16
(DEFAULT,'Julia','Roberts','1967-10-28','American','F'), -- 17
(DEFAULT,'Hugh','Grant','1960-09-09','English','M'), -- 18
(DEFAULT,'Richard','Gere','1949-08-31','American','M'), -- 19
(DEFAULT,'John','Cusack','1966-06-28','American','M'), -- 20
(DEFAULT,'Ione','Skye','1970-09-04','English','F'), -- 21
(DEFAULT,'Leonardo','DiCaprio','1974-11-11','American','M'), -- 22
(DEFAULT,'Kate','Winslet','1975-10-05','English','F'), -- 23
(DEFAULT,'Gerald','Butler','1969-11-13','Scottish','M'), -- 24
(DEFAULT,'Hillary','Swank','1974-07-30','American','F'), -- 25
(DEFAULT,'Brad','Pitt','1963-12-18','American','M'), --26
(DEFAULT,'Anthony','Hopkins','1937-12-31','English','M'), -- 27
(DEFAULT,'Julia','Ormond','1965-01-04','English','F'), -- 28
(DEFAULT,'Aiden','Quinn','1959-03-08','American','M'), -- 29
(DEFAULT,'Henry','Thomas','1971-09-09','American','M'), -- 30
(DEFAULT,'Eric','Bana','1968-08-09','Austrailian','M'), -- 31
(DEFAULT,'Diane','Kruger','1976-07-15','German','F'), -- 32
(DEFAULT,'Brian','Cox','1946-06-01','Scottish','M'), -- 33
(DEFAULT,'Sean','Bean','1959-04-17','English','M'), -- 34
(DEFAULT,'Rose','Byrne','1979-07-24','Austrailian','F'), -- 35
(DEFAULT,'Morgan','Freeman','1937-06-01','American','M'), -- 36
(DEFAULT,'Gwyneth','Paltrow','1972-09-27','American','F'), -- 37
(DEFAULT,'Takeshi','Kaneshiro','1973-10-11','Japanese/Taiwanese','M'), -- 38 -? two nationalities, place of birth would be better?
(DEFAULT,'Andy','Lau','1961-09-27','Chinese','M'), -- 39
(DEFAULT,'ZiYi','Zhang','1979-02-09','Chinese','F'), -- 40
(DEFAULT,'Jet','Li','1963-04-26','Chinese','M'), -- 41
(DEFAULT,'Tony','Leung','1962-06-27','Chinese','M'), -- 42
(DEFAULT,'Maggie','Cheung','1964-09-20','Chinese','F'), -- 43
(DEFAULT,'Fengyi','Zhang','1956-09-01','Chinese','M'), -- 44
(DEFAULT,'Wei','Zhao','1976-03-12','Chinese','F'); -- 45

INSERT INTO role(roleID,characterName) VALUES
(DEFAULT,'Frodo'), -- 1
(DEFAULT,'Gandalf'), -- 2
(DEFAULT,'Legolas'), -- 3
(DEFAULT,'Aragorn'), -- 4
(DEFAULT,'Boromir'), -- 5 -added the character boromir to lotr since I added sean bean to the db
(DEFAULT,'Sofie'), -- 6
(DEFAULT,'Howl'), -- 7
(DEFAULT,'Calcifer'), -- 8
(DEFAULT,'Sam Wheat'), -- 9
(DEFAULT,'Molly Jensen'), -- 10
(DEFAULT,'Allie'), -- 11
(DEFAULT,'Noah'), -- 12
(DEFAULT,'Lon Hammond'), -- 13
(DEFAULT,'Landon Carter'), -- 14
(DEFAULT,'Jamie Sullivan'), -- 15
(DEFAULT,'Baby Houseman'), -- 16
(DEFAULT,'Johnny Castle'), -- 17
(DEFAULT,'Anna Scott'), -- 18
(DEFAULT,'William Thacker'), -- 19
(DEFAULT,'Edward Lewis'), -- 20
(DEFAULT,'Vivian Ward'), -- 21
(DEFAULT,'Lloyd Dobler'), -- 22
(DEFAULT,'Diane Court'), -- 23
(DEFAULT,'Jack Dawson'), -- 24
(DEFAULT,'Rose DeWitt Bukater'), -- 25
(DEFAULT,'Gerry'), -- 26
(DEFAULT,'Holly'), -- 27
(DEFAULT,'Tristan Ludlow'), -- 28
(DEFAULT,'Col. William Ludlow'), -- 29
(DEFAULT,'Susannah Fincannon'), -- 30
(DEFAULT,'Alfred Ludlow'), -- 31
(DEFAULT,'Samuel Ludlow'), -- 32
(DEFAULT,'Achilles'), -- 33
(DEFAULT,'Hector'), -- 34
(DEFAULT,'Helen'), -- 35
(DEFAULT,'Paris'), -- 36
(DEFAULT,'Agamemnon'), -- 37
(DEFAULT,'Briseis'), -- 38
(DEFAULT,'Mills'), -- 39
(DEFAULT,'Somerset'), -- 40
(DEFAULT,'Tracy'), -- 41
(DEFAULT,'Jin'), -- 42
(DEFAULT,'Leo'), -- 43
(DEFAULT,'Xiao Mei'), -- 44
(DEFAULT,'Nameless'), -- 45
(DEFAULT,'Broken Sword'), -- 46
(DEFAULT,'Flying Snow'), -- 47
(DEFAULT,'Moon'), -- 48
(DEFAULT,'Zhou Yu'), -- 49
(DEFAULT,'Zhuge Liang'), -- 50
(DEFAULT,'Cao Cao'), -- 51
(DEFAULT,'Sun Shangxiang'), -- 52
(DEFAULT,'Carl Bruner'), -- 53
(DEFAULT,'Odysseus'); -- 54

INSERT INTO movieCast(movieID,actorID,castingRole) VALUES
(1,1,'Star'),
(1,2,'Star'),
(1,3,'Star'),
(1,34,'Supporting'),
(2,1,'Star'),
(2,2,'Star'),
(2,4,'Star'),
(3,1,'Star'),
(3,4,'Star'),
(3,2,'Star'),
(4,5,'Star'),
(4,6,'Star'),
(4,7,'Star'), -- Star? Main? Lead? Then supporting? bit? extra?
(5,8,'Star'),
(5,9,'Star'),
(5,10,'Supporting'),
(6,11,'Star'),
(6,12,'Star'),
(6,13,'Supporting'),
(7,14,'Star'),
(7,15,'Star'),
(8,8,'Star'),
(8,16,'Star'),
(9,17,'Star'),
(9,18,'Star'),
(10,17,'Star'),
(10,19,'Star'),
(11,20,'Star'),
(11,21,'Star'),
(12,22,'Star'),
(12,23,'Star'),
(13,24,'Star'),
(13,25,'Star'),
(14,26,'Star'),
(14,27,'Supporting'),
(14,28,'Supporting'),
(14,29,'Supporting'),
(14,30,'Supporting'),
(15,26,'Star'),
(15,31,'Supporting'),
(15,3,'Supporting'),
(15,32,'Supporting'),
(15,33,'Supporting'),
(15,34,'Supporting'),
(15,35,'Supporting'),
(16,26,'Star'),
(16,36,'Star'),
(16,37,'Supporting'),
(17,38,'Star'),
(17,39,'Star'),
(17,40,'Star'),
(18,41,'Star'),
(18,42,'Star'),
(18,43,'Star'),
(18,40,'Supporting'),
(19,42,'Star'),
(19,38,'Star'),
(19,44,'Star'),
(19,45,'Supporting'),
(20,42,'Star'),
(20,38,'Star'),
(20,44,'Star'),
(20,45,'Supporting');

INSERT INTO actorRoles(actorID,roleID) VALUES -- Hmmm
(1,1),
(2,2),
(3,3),
(4,4),
(34,5),
(5,6),
(6,7),
(7,8),
(8,9),
(9,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(8,17),
(17,18),
(18,19),
(19,20),
(17,21),
(20,22),
(21,23),
(22,24),
(23,25),
(24,26),
(25,27),
(26,28),
(27,29),
(28,30),
(29,31),
(30,32),
(26,33),
(31,34),
(32,35),
(3,36),
(33,37),
(35,38),
(26,39),
(36,40),
(37,41),
(38,42),
(39,43),
(40,44),
(41,45),
(42,46),
(43,47),
(40,48),
(42,49),
(38,50),
(44,51),
(45,52),
(10,53),
(34,54);

INSERT INTO movieRoles(movieID,roleID) VALUES -- Hmmm
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(2,1),
(2,2),
(2,3),
(2,4),
(3,1),
(3,2),
(3,3),
(3,4),
(4,6),
(4,7),
(4,8),
(5,9),
(5,10),
(5,53),
(6,11),
(6,12),
(6,13),
(7,14),
(7,15),
(8,16),
(8,17),
(9,18),
(9,19),
(10,20),
(10,21),
(11,22),
(11,23),
(12,24),
(12,25),
(13,26),
(13,27),
(14,28),
(14,29),
(14,30),
(14,31),
(14,32),
(15,33),
(15,34),
(15,35),
(15,36),
(15,37),
(15,38),
(15,54),
(16,39),
(16,40),
(16,41),
(17,42),
(17,43),
(17,44),
(18,45),
(18,46),
(18,47),
(18,48),
(19,49),
(19,50),
(19,51),
(19,52),
(20,49),
(20,50),
(20,51),
(20,52);

INSERT INTO director(directorID,firstName,lastName,country) VALUES -- change country to place of birth?
(DEFAULT,'Peter','Jackson','New Zealand'),
(DEFAULT,'Hayao','Miyazaki','Japan'),
(DEFAULT,'Jerry','Zucker','USA'),
(DEFAULT,'Nick','Cassavetees','USA'),
(DEFAULT,'Adam','Shankman','USA'),
(DEFAULT,'Emile','Ardolino','USA'),
(DEFAULT,'Roger','Michell','South Africa'),
(DEFAULT,'Garry','Marshall','USA'),
(DEFAULT,'Cameron','Crowe','USA'),
(DEFAULT,'James','Cameron','Canada'),
(DEFAULT,'Richard','LaGravenese','USA'),
(DEFAULT,'Edward','Zwick','USA'),
(DEFAULT,'Wolfgang','Peterson','Germany'),
(DEFAULT,'David','Fincher','USA'),
(DEFAULT,'Yimou','Zhang','China'),
(DEFAULT,'John','Woo','China');

INSERT INTO directs(directorID,movieID) VALUES
(1,1),
(1,2),
(1,3),
(2,4),
(3,5),
(4,6),
(5,7),
(6,8),
(7,9),
(8,10),
(9,11),
(10,12),
(11,13),
(12,14),
(13,15),
(14,16),
(15,17),
(15,18),
(16,19),
(16,20);

INSERT INTO studio(studioID,studioName,country) VALUES
(DEFAULT,'New Line Cinema','New Zealand'),
(DEFAULT,'WingNut Films','United States of America'),
(DEFAULT,'The Saul Zaentz Company','United States of America'),
(DEFAULT,'Buena Vista Home Entertainment','Japan'),
(DEFAULT,'DENTSU Music and Entertainment','Japan'),
(DEFAULT,'Mitsubishi','Japan'),
(DEFAULT,'Nippon Television Network','Japan'),
(DEFAULT,'Studio Ghibli','Japan'),
(DEFAULT,'Tohokushinsha Film Corporation','Japan'),
(DEFAULT,'Tokuma Shoten','Japan'),
(DEFAULT,'d-rights','Japan'),
(DEFAULT,'Paramount Pictures','USA'), -- 12
(DEFAULT,'New Line Cinema','USA'), -- ? different branch of New Line Cinema?
(DEFAULT,'Warner Bros','USA'), -- 14
(DEFAULT,'Pandora Cinema','USA'),
(DEFAULT,'Great American Films Limited Partnership','USA'),
(DEFAULT,'Vestron Pictures','USA'),
(DEFAULT,'Polygram Filmed Entertainment','USA'),
(DEFAULT,'Working Titles Films','Great Britain'),
(DEFAULT,'Touchstone Pictures','USA'),
(DEFAULT,'Gracie Films','USA'),
(DEFAULT,'Twentieth Century Fox Film Corporation','USA'),
(DEFAULT,'Alcon Entertainment','USA'),
(DEFAULT,'Grosvenor Park Productions','Great Britain'),
(DEFAULT,'TriStar Pictures','USA'),
(DEFAULT,'Bedford Falls Company','USA'),
(DEFAULT,'Helena Productions','Great Britain'),
(DEFAULT,'Cecchi Gori Pictures','USA'),
(DEFAULT,'Beijing New Picture Film Co.','China'),
(DEFAULT,'China Film Co-Production Corporation','China'),
(DEFAULT,'Beijing Film Studio','China'),
(DEFAULT,'China Film Group','China'),
(DEFAULT,'Lion Rock Productions','USA');

INSERT INTO sponsors(studioID,movieID) VALUES -- switch?
(1,1),
(2,1),
(3,1),
(1,2),
(2,2),
(3,2),
(1,3),
(2,3),
(3,3),
(4,4),
(5,4),
(6,4),
(7,4),
(8,4),
(9,4),
(10,4),
(11,4),
(12,5),
(13,6),
(14,7),
(15,7),
(16,8),
(17,8),
(18,9),
(19,9),
(20,10),
(21,11),
(22,11),
(22,12),
(12,12),
(23,13),
(24,13),
(25,14),
(26,14),
(14,15),
(27,15),
(28,16),
(13,16),
(29,17),
(30,17),
(29,18),
(30,18),
(31,19),
(32,19),
(33,19),
(31,20),
(32,20),
(33,20);
