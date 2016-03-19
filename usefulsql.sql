-- SET SCHEMA
SET SEARCH_PATH = 'MovieRecommender'



-- DROP ALL TABLES
DROP TABLE ACTORROLES;
DROP TABLE DEVICEUSED;
DROP TABLE DIRECTS;
DROP TABLE MOVIECAST;
DROP TABLE MOVIEROLES;
DROP TABLE MOVIETOPIC;
DROP TABLE PROFILE;
DROP TABLE SPONSORS;
DROP TABLE WATCHES;
DROP TABLE ACTOR;
DROP TABLE DEVICE;
DROP TABLE DIRECTOR;
DROP TABLE MOVIE;
DROP TABLE ROLE;
DROP TABLE STUDIO;
DROP TABLE TOPIC;
DROP TABLE USERACCOUNT;



-- DELERE ALL ROWS FROM TABLES
DELETE FROM ACTORROLES;
DELETE FROM DEVICEUSED;
DELETE FROM DIRECTS;
DELETE FROM MOVIECAST;
DELETE FROM MOVIEROLES;
DELETE FROM MOVIETOPIC;
DELETE FROM PROFILE;
DELETE FROM SPONSORS;
DELETE FROM WATCHES;
DELETE FROM ACTOR;
DELETE FROM DEVICE;
DELETE FROM DIRECTOR;
DELETE FROM MOVIE;
DELETE FROM ROLE;
DELETE FROM STUDIO;
DELETE FROM TOPIC;
DELETE FROM USERACCOUNT;



-- VIEW TABLES
SELECT * FROM ACTORROLES;
SELECT * FROM DEVICEUSED;
SELECT * FROM DIRECTS;
SELECT * FROM MOVIECAST;
SELECT * FROM MOVIEROLES;
SELECT * FROM MOVIETOPIC;
SELECT * FROM PROFILE;
SELECT * FROM SPONSORS;
SELECT * FROM WATCHES;
SELECT * FROM ACTOR;
SELECT * FROM DEVICE;
SELECT * FROM DIRECTOR;
SELECT * FROM MOVIE;
SELECT * FROM ROLE;
SELECT * FROM STUDIO;
SELECT * FROM TOPIC;
SELECT * FROM USERACCOUNT;



-- INSERT INTO userAccount(userID,password,firstName,lastName,yearBorn,email,city,province,country) VALUES
(DEFAULT,'password','firstName','lastName',yearBorn,'email','city','province','country')

/* Change yearBorn to dateOfBirth? */



-- INSERT INTO profile(userID,ageRange,gender,occupation) VALUES
((SELECT userID FROM userAccount WHERE email = ''),'ageRange','MorF','occupation')

-- OR
INSERT INTO profile(userID,ageRange,gender,occupation)
SELECT uA.userID,val.ageRange,val.gender,val.occupation
FROM(
	VALUES
	('lotrfan@boy.ca','ageRange','MorF','occupation'),
	('lotrfan@boy.ca','ageRange','MorF','occupation')
) val(email,ageRange,gender,occupation),userAccount uA
WHERE uA.email = val.email;

/* Replace above with correct values!

Age Ranges?
0-13
14-17
18-20
20-30
30-40
40-50
60-70
80-90
100+ */



-- INSERT INTO device(deviceID,deviceName) VALUES
(DEFAULT,'deviceName')

/* Completed */



-- INSERT INTO deviceUsed(userID,deviceID) VALUES
((SELECT userID FROM userAccount WHERE email = ''),(SELECT deviceID FROM device WHERE deviceName = ''))

-- OR
INSERT INTO deviceUsed(userID,deviceID)
SELECT uA.userID,d.deviceID
FROM(
	VALUES
	('lotrfan@boy.ca','Desktop'),
	('lotrfan@boy.ca','Mobile')
) val(email,deviceName),userAccount uA,device d
WHERE uA.email = val.email AND d.deviceName = val.deviceName;

/* Replace above with correct values! */



-- INSERT INTO topic(topicID,genre) VALUES
(DEFAULT,'genre')



-- INSERT INTO movie(movieID,name,description,dateReleased,duration,language,subtitles,country,ageRating) VALUES
(DEFAULT,
'name',
'description',
'year-month-day',
'h:min:00',
'language',
'YorN',
'country',
'ageRating')

/* Something needs a UNIQUE constraint? */



-- INSERT INTO watches(userID,movieID,dateWatched,userRating) VALUES
((SELECT userID FROM userAccount WHERE email = ''),(SELECT movieID FROM movie WHERE name = ''),'year-month-day',userRating)

-- OR
INSERT INTO watches(userID,movieID,dateWatched,userRating)
SELECT uA.userID,m.movieID,val.dateWatched,val.userRating
FROM(
	VALUES
	('lotrfan@boy.ca','The Lord of the Rings: The Fellowship of the Ring',cast('year-month-day' as date),userRating),
	('lotrfan@boy.ca','The Lord of the Rings: The Two Towers','year-month-day',userRating)
) val(email,name,dateWatched,userRating),userAccount uA,movie m
WHERE uA.email = val.email AND m.name = val.name;

/* Replace above with correct values! May need: cast('year-month-day' as date)!!
Something UNIQUE needed in movie..? */



-- INSERT INTO movieTopic(movieID,topicID) VALUES
((SELECT movieID FROM movie WHERE name = ''),(SELECT topicID FROM topic WHERE genre = ''))

-- OR
INSERT INTO movieTopic(movieID,topicID)
SELECT m.movieID,t.topicID
FROM(
	VALUES
	('The Lord of the Rings: The Fellowship of the Ring','Adventure'),
	('The Lord of the Rings: The Fellowship of the Ring','Drama')
) val(name,genre),movie m,topic t
WHERE m.name = val.name AND t.genre = val.genre;

/* Switched movieID & topicID positions!!
Replace above with correct values!
Something UNIQUE needed in movie..? */



-- INSERT INTO actor(actorID,firstName,lastName,dateOfBirth,nationality,gender) VALUES
(DEFAULT,'firstName','lastName','year-month-day','nationality','MorF')

/* Change nationality to placeOfBirth?
Something needs a UNIQUE constraint? */



-- INSERT INTO role(roleID,characterName) VALUES
(DEFAULT,'characterName')



-- INSERT INTO movieCast(movieID,actorID,castingRole) VALUES
((SELECT movieID FROM movie WHERE name = ''),(SELECT actorID FROM actor WHERE firstName = '' AND lastName = ''),'castingRole')

-- OR
INSERT INTO movieCast(movieID,actorID,castingRole)
SELECT m.movieID,a.actorID,val.castingRole
FROM(
	VALUES
	('The Lord of the Rings: The Fellowship of the Ring','Elijah','Wood','Star'),
	('The Lord of the Rings: The Fellowship of the Ring','Ian','McKellen','Star')
) val(name,firstName,lastName,castingRole),movie m,actor a
WHERE m.name = val.name AND a.firstName = val.firstName AND a.lastName = val.lastName;

/* Something UNIQUE needed in movie..?
Something UNIQUE needed in actor..?

Casting Roles?
Star
Supporting */



-- INSERT INTO actorRoles(actorID,roleID) VALUES
((SELECT actorID FROM actor WHERE firstName = '' AND lastName = ''),(SELECT roleID FROM role WHERE characterName = ''))

-- OR
INSERT INTO actorRoles(actorID,roleID)
SELECT a.actorID,r.roleID
FROM(
	VALUES
	('Elijah','Wood','Frodo'),
	('Ian','McKellen','Gandalf')
) val(firstName,lastName,characterName),actor a,role r
WHERE a.firstName = val.firstName AND a.lastName = val.lastName AND r.characterName = val.characterName;

/* Something UNIQUE needed in actor..? */



-- INSERT INTO movieRoles(movieID,roleID) VALUES
((SELECT movieID FROM movie WHERE name = ''),(SELECT roleID FROM role WHERE characterName = ''))

-- OR
INSERT INTO movieRoles(movieID,roleID)
SELECT m.movieID,r.roleID
FROM(
	VALUES
	('The Lord of the Rings: The Fellowship of the Ring','Frodo'),
	('The Lord of the Rings: The Fellowship of the Ring','Gandalf')
) val(name,characterName),movie m,role r
WHERE m.name = val.name AND r.characterName = val.characterName;

/* Something UNIQUE needed in movie..? */



-- INSERT INTO director(directorID,firstName,lastName,country) VALUES
(DEFAULT,'firstName','lastName','country')

/* Change country to placeOfBirth?
Something needs a UNIQUE constraint? */



-- INSERT INTO directs(directorID,movieID) VALUES
((SELECT directorID FROM director WHERE firstName = '' AND lastName = ''),(SELECT movieID FROM movie WHERE name = ''))

-- OR
INSERT INTO directs(directorID,movieID)
SELECT d.directorID,m.movieID
FROM(
	VALUES
	('Peter','Jackson','The Lord of the Rings: The Fellowship of the Ring'),
	('Peter','Jackson','The Lord of the Rings: The Two Towers')
) val(firstName,lastName,name),director d,movie m
WHERE d.firstName = val.firstName AND d.lastName = val.lastName AND m.name = val.name;

/* Something UNIQUE needed in director..?
Something UNIQUE needed in movie..? */



-- INSERT INTO studio(studioID,studioName,country) VALUES
(DEFAULT,'studioName','country')

/* Something needs a UNIQUE constraint? */



-- INSERT INTO sponsors(movieID,studioID) VALUES
((SELECT movieID FROM movie WHERE name = ''),(SELECT studioID FROM studio WHERE studioName = ''))

-- OR
INSERT INTO sponsors(movieID,studioID)
SELECT m.movieID,s.studioID
FROM(
	VALUES
	('The Lord of the Rings: The Fellowship of the Ring','New Line Cinema'),
	('The Lord of the Rings: The Fellowship of the Ring','WingNut Films')
) val(name,studioName),movie m,studio s
WHERE m.name = val.name AND s.studioName = val.studioName;

/* Switched movieID & studioID positions!!
Something UNIQUE needed in studio..? */

 
 
 
 
/* CONFUSED ABOUT ACTOR ROLES & MOVIE ROLES AGAIN; PLEASE EXPLAIN <3 */