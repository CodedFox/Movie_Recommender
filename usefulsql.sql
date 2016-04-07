-- DROP ALL TABLES
DROP TABLE ACTOR_ROLES;
DROP TABLE DIRECTS;
DROP TABLE LIKES_TOPICS;
DROP TABLE MOVIE_CASTS;
DROP TABLE MOVIE_RATINGS;
DROP TABLE MOVIE_ROLES;
DROP TABLE MOVIE_TOPICS;
DROP TABLE PROFILES;
DROP TABLE SPONSORS;
DROP TABLE USED_DEVICES;
-- DROP TABLE USERS;
DROP TABLE ACTORS;
DROP TABLE CASTING_TYPES;
DROP TABLE DEVICES;
DROP TABLE DIRECTORS;
DROP TABLE MOVIES;
DROP TABLE ROLES;
DROP TABLE STUDIOS;
DROP TABLE TOPICS;
-- DROP TABLE USER_TYPES;



-- DELETE ALL ROWS FROM TABLES
DELETE FROM ACTOR_ROLES;
DELETE FROM DIRECTS;
DELETE FROM LIKES_TOPICS;
DELETE FROM MOVIE_CASTS;
DELETE FROM MOVIE_RATINGS;
DELETE FROM MOVIE_ROLES;
DELETE FROM MOVIE_TOPICS;
DELETE FROM PROFILES;
DELETE FROM SPONSORS;
DELETE FROM USED_DEVICES;
-- DELETE FROM USERS;
DELETE FROM ACTORS;
DELETE FROM CASTING_TYPES;
DELETE FROM DEVICES;
DELETE FROM DIRECTORS;
DELETE FROM MOVIES;
DELETE FROM ROLES;
DELETE FROM STUDIOS;
DELETE FROM TOPICS;
-- DELETE FROM USER_TYPES;

-- set the date style to month-day-year
set datestyle = mdy;

-- reset primary key sequences
ALTER SEQUENCE actor_roles_id_seq RESTART WITH 1;
ALTER SEQUENCE actors_id_seq RESTART WITH 1;
ALTER SEQUENCE casting_types_id_seq RESTART WITH 1;
ALTER SEQUENCE devices_id_seq RESTART WITH 1;
ALTER SEQUENCE directors_id_seq RESTART WITH 1;
ALTER SEQUENCE likes_topics_id_seq RESTART WITH 1;
ALTER SEQUENCE movie_casts_id_seq RESTART WITH 1;
ALTER SEQUENCE movie_ratings_id_seq RESTART WITH 1;
ALTER SEQUENCE movie_roles_id_seq RESTART WITH 1;
ALTER SEQUENCE movie_topics_id_seq RESTART WITH 1;
ALTER SEQUENCE movies_id_seq RESTART WITH 1;
ALTER SEQUENCE profiles_id_seq RESTART WITH 1;
ALTER SEQUENCE roles_id_seq RESTART WITH 1;
ALTER SEQUENCE sponsors_id_seq RESTART WITH 1;
ALTER SEQUENCE studios_id_seq RESTART WITH 1;
ALTER SEQUENCE topics_id_seq RESTART WITH 1;
ALTER SEQUENCE used_devices_id_seq RESTART WITH 1;
--ALTER SEQUENCE users_id_seq RESTART WITH 1;
