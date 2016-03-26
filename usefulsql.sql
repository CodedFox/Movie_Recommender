-- SET SCHEMA
SET SEARCH_PATH = 'MovieRecommender'



-- DROP ALL TABLES
DROP TABLE ACTOR_ROLES;
DROP TABLE DEVICES_USED;
DROP TABLE DIRECTS;
DROP TABLE MOVIE_CASTS;
DROP TABLE MOVIE_ROLES;
DROP TABLE MOVIE_TOPICS;
DROP TABLE PROFILES;
DROP TABLE SPONSORS;
DROP TABLE WATCHES;
DROP TABLE ACTORS;
DROP TABLE DEVICES;
DROP TABLE DIRECTORS;
DROP TABLE MOVIES;
DROP TABLE ROLES;
DROP TABLE STUDIOS;
DROP TABLE TOPICS;
DROP TABLE USERS;



-- DELERE ALL ROWS FROM TABLES
DELETE FROM ACTOR_ROLES;
DELETE FROM DEVICES_USED;
DELETE FROM DIRECTS;
DELETE FROM MOVIE_CASTS;
DELETE FROM MOVIE_ROLES;
DELETE FROM MOVIE_TOPICS;
DELETE FROM PROFILES;
DELETE FROM SPONSORS;
DELETE FROM WATCHES;
DELETE FROM ACTORS;
DELETE FROM DEVICES;
DELETE FROM DIRECTORS;
DELETE FROM MOVIES;
DELETE FROM ROLES;
DELETE FROM STUDIOS;
DELETE FROM TOPICS;
DELETE FROM USERS;



-- VIEW TABLES
SELECT * FROM ACTOR_ROLES;
SELECT * FROM DEVICES_USED;
SELECT * FROM DIRECTS;
SELECT * FROM MOVIE_CASTS;
SELECT * FROM MOVIE_ROLES;
SELECT * FROM MOVIE_TOPICS;
SELECT * FROM PROFILES;
SELECT * FROM SPONSORS;
SELECT * FROM WATCHES;
SELECT * FROM ACTORS;
SELECT * FROM DEVICES;
SELECT * FROM DIRECTORS;
SELECT * FROM MOVIES;
SELECT * FROM ROLES;
SELECT * FROM STUDIOS;
SELECT * FROM TOPICS;
SELECT * FROM USERS;



-- INSERT INTO users(user_id,password,first_name,last_name,year_born,email,city,province,country) VALUES
(DEFAULT,'password','firstName','lastName',yearBorn,'email','city','province','country')

/* Change yearBorn to dateOfBirth? */



-- INSERT INTO profiles(user_id,age_range,gender,occupation) VALUES
((SELECT user_id FROM users WHERE email = ''),'ageRange','MorF','occupation')

-- OR
INSERT INTO profiles(user_id,age_range,gender,occupation)
SELECT uA.user_id,val.age_range,val.gender,val.occupation
FROM(
	VALUES
	('lotrfan@boy.ca','ageRange','MorF','occupation'),
	('lotrfan@boy.ca','ageRange','MorF','occupation')
) val(email,age_range,gender,occupation),users uA
WHERE uA.email = val.email;

/* Replace above with correct values! */



-- INSERT INTO devices(device_id,device_name) VALUES
(DEFAULT,'deviceName')

/* Completed */



-- INSERT INTO devices_used(user_id,device_id) VALUES
((SELECT user_id FROM users WHERE email = ''),(SELECT device_id FROM devices WHERE device_name = ''))

-- OR
INSERT INTO devices_used(user_id,device_id)
SELECT uA.user_id,d.device_id
FROM(
	VALUES
	('lotrfan@boy.ca','Desktop'),
	('lotrfan@boy.ca','Mobile')
) val(email,device_name),users uA,devices d
WHERE uA.email = val.email AND d.device_name = val.device_name;

/* Replace above with correct values! */



-- INSERT INTO topics(topic_id,genre) VALUES
(DEFAULT,'genre')



-- INSERT INTO movies(movie_id,name,description,date_released,duration,language,subtitles,dubbed,country,age_rating) VALUES
(DEFAULT,
'name',
'description',
'year-month-day',
'h:min:sec',
'language',
'YorN',
'YorN',
'country',
'ageRating')

/* Something needs a UNIQUE constraint? */



-- INSERT INTO watches(user_id,movie_id,date_watched,user_rating) VALUES
((SELECT user_id FROM users WHERE email = ''),(SELECT movie_id FROM movies WHERE name = '' AND date_released = ''),'year-month-day',userRating)

-- OR
INSERT INTO watches(user_id,movie_id,date_watched,user_rating)
SELECT uA.user_id,m.movie_id,val.date_watched,val.user_rating
FROM(
	VALUES
	('lotrfan@boy.ca','The Lord of the Rings: The Fellowship of the Ring',cast('year-month-day' as date),cast('year-month-day' as date),userRating),
	('lotrfan@boy.ca','The Lord of the Rings: The Two Towers','year-month-day','year-month-day',userRating)
) val(email,name,date_released,date_watched,user_rating),users uA,movies m
WHERE uA.email = val.email AND m.name = val.name AND m.date_released = val.date_released;

/* Replace above with correct values! May need: cast('year-month-day' as date)!!
Something UNIQUE needed in movie..? */



-- INSERT INTO movie_topics(movie_id,topic_id) VALUES
((SELECT movie_id FROM movies WHERE name = '' AND date_released = ''),(SELECT topic_id FROM topics WHERE genre = ''))

-- OR
INSERT INTO movie_topics(movie_id,topic_id)
SELECT m.movie_id,t.topic_id
FROM(
	VALUES
	('The Lord of the Rings: The Fellowship of the Ring',cast('year-month-day' as date),'Adventure'),
	('The Lord of the Rings: The Fellowship of the Ring','year-month-day','Drama')
) val(name,date_released,genre),movies m,topics t
WHERE m.name = val.name AND m.date_released = val.date_released AND t.genre = val.genre;

/* Switched movie_id & topic_id positions!!
Replace above with correct values!
Something UNIQUE needed in movie..? */



-- INSERT INTO actors(actor_id,first_name,last_name,date_of_birth,place_of_birth,gender) VALUES
(DEFAULT,'firstName','lastName','year-month-day','nationality','MorF')

/* Something needs a UNIQUE constraint? */



-- INSERT INTO roles(role_id,character_name) VALUES
(DEFAULT,'characterName')



-- INSERT INTO movie_casts(movie_id,actor_id,casting_role) VALUES
((SELECT movie_id FROM movies WHERE name = '' AND date_released = ''),(SELECT actor_id FROM actors WHERE first_name = '' AND last_name = '' AND date_of_birth = ''),'castingRole')

-- OR
INSERT INTO movie_casts(movie_id,actor_id,casting_role)
SELECT m.movie_id,a.actor_id,val.casting_role
FROM(
	VALUES
	('The Lord of the Rings: The Fellowship of the Ring',cast('year-month-day' as date),'Elijah','Wood',cast('year-month-day' as date),'Star'),
	('The Lord of the Rings: The Fellowship of the Ring','year-month-day','Ian','McKellen','year-month-day','Star')
) val(name,date_released,first_name,last_name,date_of_birth,casting_role),movies m,actors a
WHERE m.name = val.name AND m.date_released = val.date_released AND a.first_name = val.first_name AND a.last_name = val.last_name AND a.date_of_birth = val.date_of_birth;

/* Something UNIQUE needed in movie..?
Something UNIQUE needed in actor..? */



-- INSERT INTO actor_roles(actor_id,role_id) VALUES
((SELECT actor_id FROM actors WHERE first_name = '' AND last_name = ''  AND date_of_birth = ''),(SELECT role_id FROM roles WHERE character_name = ''))

-- OR
INSERT INTO actor_roles(actor_id,role_id)
SELECT a.actor_id,r.role_id
FROM(
	VALUES
	('Elijah','Wood',cast('year-month-day' as date),'Frodo'),
	('Ian','McKellen','year-month-day','Gandalf')
) val(first_name,last_name,date_of_birth,character_name),actors a,roles r
WHERE a.first_name = val.first_name AND a.last_name = val.last_name AND a.date_of_birth = val.date_of_birth AND r.character_name = val.character_name;

/* Something UNIQUE needed in actor..? */



-- INSERT INTO movie_roles(movie_id,role_id) VALUES
((SELECT movie_id FROM movies WHERE name = '' AND date_released = ''),(SELECT role_id FROM roles WHERE character_name = ''))

-- OR
INSERT INTO movie_roles(movie_id,role_id)
SELECT m.movie_id,r.role_id
FROM(
	VALUES
	('The Lord of the Rings: The Fellowship of the Ring',cast('year-month-day' as date),'Frodo'),
	('The Lord of the Rings: The Fellowship of the Ring','year-month-day','Gandalf')
) val(name,date_released,character_name),movies m,roles r
WHERE m.name = val.name AND m.date_released = val.date_released AND r.character_name = val.character_name;

/* Something UNIQUE needed in movie..? */



-- INSERT INTO directors(director_id,first_name,last_name,place_of_birth) VALUES
(DEFAULT,'firstName','lastName','country')

/* Something needs a UNIQUE constraint? */



-- INSERT INTO directs(director_id,movie_id) VALUES
((SELECT director_id FROM directors WHERE first_name = '' AND last_name = ''),(SELECT movie_id FROM movies WHERE name = '' AND date_released = ''))

-- OR
INSERT INTO directs(director_id,movie_id)
SELECT d.director_id,m.movie_id
FROM(
	VALUES
	('Peter','Jackson','The Lord of the Rings: The Fellowship of the Ring',cast('year-month-day' as date)),
	('Peter','Jackson','The Lord of the Rings: The Two Towers','year-month-day')
) val(first_name,last_name,name,date_released),directors d,movies m
WHERE d.first_name = val.first_name AND d.last_name = val.last_name AND m.name = val.name AND m.date_released = val.date_released;

/* Something UNIQUE needed in director..?
Something UNIQUE needed in movie..? */



-- INSERT INTO studios(studio_id,studio_name,country) VALUES
(DEFAULT,'studioName','country')

/* Something needs a UNIQUE constraint? */



-- INSERT INTO sponsors(movie_id,studio_id) VALUES
((SELECT movie_id FROM movies WHERE name = '' AND date_released = ''),(SELECT studio_id FROM studios WHERE studio_name = ''))

-- OR
INSERT INTO sponsors(movie_id,studio_id)
SELECT m.movie_id,s.studio_id
FROM(
	VALUES
	('The Lord of the Rings: The Fellowship of the Ring',cast('year-month-day' as date),'New Line Cinema'),
	('The Lord of the Rings: The Fellowship of the Ring','year-month-day','WingNut Films')
) val(name,date_released,studio_name),movies m,studios s
WHERE m.name = val.name AND m.date_released = val.date_released AND s.studio_name = val.studio_name;

/* Switched movie_id & studio_id positions!!
Something UNIQUE needed in studio..? */