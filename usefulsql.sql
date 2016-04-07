-- drop all tables
DROP TABLE actor_roles;
DROP TABLE directs;
DROP TABLE likes_topics;
DROP TABLE movie_casts;
DROP TABLE movie_ratings;
DROP TABLE movie_roles;
DROP TABLE movie_topics;
DROP TABLE profiles;
DROP TABLE sponsors;
DROP TABLE used_devices;
--DROP TABLE users;
DROP TABLE actors;
DROP TABLE casting_types;
DROP TABLE devices;
DROP TABLE directors;
DROP TABLE movies;
DROP TABLE roles;
DROP TABLE studios;
DROP TABLE topics;
--DROP TABLE user_types;

-- delete all rows from tables
DELETE FROM actor_roles;
DELETE FROM directs;
DELETE FROM likes_topics;
DELETE FROM movie_casts;
DELETE FROM movie_ratings;
DELETE FROM movie_roles;
DELETE FROM movie_topics;
DELETE FROM profiles;
DELETE FROM sponsors;
DELETE FROM used_devices;
--DELETE FROM users;
DELETE FROM actors;
DELETE FROM casting_types;
DELETE FROM devices;
DELETE FROM directors;
DELETE FROM movies;
DELETE FROM roles;
DELETE FROM studios;
DELETE FROM topics;
--DELETE FROM user_types;

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