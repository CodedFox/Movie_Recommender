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
(DEFAULT,'Patrick','Swayze','1952-09-14','American','M'), -- 21
(DEFAULT,'Ione','Skye','1970-09-04','English','F'), -- 22
(DEFAULT,'Leonardo','DiCaprio','1974-11-11','American','M'), -- 23
(DEFAULT,'Kate','Winslet','1975-10-05','English','F'), -- 24
(DEFAULT,'Gerald','Butler','1969-11-13','Scottish','M'), -- 25
(DEFAULT,'Hillary','Swank','1974-07-30','American','F'), -- 26
(DEFAULT,'Brad','Pitt','1963-12-18','American','M'), --27
(DEFAULT,'Anthony','Hopkins','1937-12-31','English','M'), -- 28
(DEFAULT,'Julia','Ormond','1965-01-04','English','F'), -- 29
(DEFAULT,'Aiden','Quinn','1959-03-08','American','M'), -- 30
(DEFAULT,'Henry','Thomas','1971-09-09','American','M'), -- 31
(DEFAULT,'Eric','Bana','1968-08-09','Austrailian','M'), -- 32
(DEFAULT,'Diane','Kruger','1976-07-15','German','F'), -- 33
(DEFAULT,'Brian','Cox','1946-06-01','Scottish','M'), -- 34
(DEFAULT,'Sean','Bean','1959-04-17','English','M'), -- 35
(DEFAULT,'Rose','Byrne','1979-07-24','Austrailian','F'), -- 36
(DEFAULT,'Morgan','Freeman','1937-06-01','American','M'), -- 37
(DEFAULT,'Gwyneth','Paltrow','1972-09-27','American','F'), -- 38
(DEFAULT,'Takeshi','Kaneshiro','1973-10-11','Japanese/Taiwanese','M'), -- 39 -? two nationalities
(DEFAULT,'Andy','Lau','1961-09-27','Chinese','M'), -- 40
(DEFAULT,'ZiYi','Zhang','1979-02-09','Chinese','F'), -- 41
(DEFAULT,'Gwyneth','Paltrow','1972-09-27','American','F'), -- 42
(DEFAULT,'Jet','Li','1963-04-26','Chinese','M'), -- 43
(DEFAULT,'Tony','Leung','1962-06-27','Chinese','M'), -- 44
(DEFAULT,'Maggie','Cheung','1964-09-20','Chinese','F'), -- 45
(DEFAULT,'Fengyi','Zhang','1956-09-01','Chinese','M'), -- 46
(DEFAULT,'Wei','Zhao','1976-03-12','Chinese','F'); -- 47

INSERT INTO role(roleID,characterName) VALUES
(DEFAULT,'Frodo'),
(DEFAULT,'Gandalf'),
(DEFAULT,'Legolas'),
(DEFAULT,'Aragorn'),
(DEFAULT,'Sofie'),
(DEFAULT,'Howl'),
(DEFAULT,'Calcifer');

INSERT INTO movieCast(movieID,actorID,castingRole) VALUES
(1,1,'Star'),
(1,2,'Star'),
(1,3,'Star'),
(2,1,'Star'),
(2,2,'Star'),
(2,4,'Star'),
(3,1,'Star'),
(3,4,'Star'),
(3,2,'Star'),
(4,5,'Star'),
(4,6,'Star'),
(4,7,'Star'); -- Star? Main? Lead? Then supporting? bit? extra?

INSERT INTO actorRoles(actorID,roleID) VALUES -- Hmmm
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7);

INSERT INTO movieRoles(movieID,roleID) VALUES -- Hmmm
(1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(2,4),
(3,1),
(3,4),
(3,2),
(4,5),
(4,6),
(4,7);

INSERT INTO director(directorID,firstName,lastName,country) VALUES
(DEFAULT,'Peter','Jackson','New Zealand'),
(DEFAULT,'Hayao','Miyazaki','Japan');

INSERT INTO directs(directorID,movieID) VALUES
(1,1),
(1,2),
(1,3),
(2,4);

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
(DEFAULT,'d-rights','Japan');

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
(11,4);
