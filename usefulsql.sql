------- TO DO ---------
UPDATE movies SET trailer = 'V75dMMIW2B4' WHERE id = 1;
UPDATE movies SET trailer = 'cvCktPUwkW0' WHERE id = 2;
UPDATE movies SET trailer = 'r5X-hFf6Bwo' WHERE id = 3;
UPDATE movies SET trailer = 'iwROgK94zcM' WHERE id = 4;
UPDATE movies SET trailer = '4cOb3gfe4tQ' WHERE id = 5;
UPDATE movies SET trailer = '4M7LIcH8C9U' WHERE id = 6;
UPDATE movies SET trailer = 'EgdoQ8Oxu2E' WHERE id = 7;
UPDATE movies SET trailer = 'wcra0-0Gu4U' WHERE id = 8;
UPDATE movies SET trailer = '4RI0QvaGoiI' WHERE id = 9;
UPDATE movies SET trailer = 'jvd3TjJaf3c' WHERE id = 10;
UPDATE movies SET trailer = 'QeUnT3f7eAA' WHERE id = 11;
UPDATE movies SET trailer = 'zCy5WQ9S4c0' WHERE id = 12;
UPDATE movies SET trailer = 'CZzW6_hR068' WHERE id = 13;
UPDATE movies SET trailer = 'oEr4rhfDKcQ' WHERE id = 14;
UPDATE movies SET trailer = 'znTLzRJimeY' WHERE id = 15;
UPDATE movies SET trailer = 'J4YV2_TcCoE' WHERE id = 16;
UPDATE movies SET trailer = '-GLVaSYzAvg' WHERE id = 17;
UPDATE movies SET trailer = 'srFhXDZhUZI' WHERE id = 18;
UPDATE movies SET trailer = 'pd0bqLQrtdE' WHERE id = 19;
UPDATE movies SET trailer = 'M2KkencnKKc' WHERE id = 20;
UPDATE movies SET trailer = 'lHz95RYUbik' WHERE id = 21;
UPDATE movies SET trailer = 'LjLamj-b0I8' WHERE id = 22;
UPDATE movies SET trailer = 'sftuxbvGwiU' WHERE id = 23;
UPDATE movies SET trailer = 'kozds_anirw' WHERE id = 24;
UPDATE movies SET trailer = '1g3_CFmnU7k' WHERE id = 25;
UPDATE movies SET trailer = 'vgqG3ITMv1Q' WHERE id = 26;
UPDATE movies SET trailer = 'zQWEhPYwuY4' WHERE id = 27;
UPDATE movies SET trailer = 'UGtS3CL-zpo' WHERE id = 28;
UPDATE movies SET trailer = 'uPIEn0M8su0' WHERE id = 29;
UPDATE movies SET trailer = 'YmvHzCLP6ug' WHERE id = 30;
UPDATE movies SET trailer = 'hWjlUj7Czlk' WHERE id = 31;
UPDATE movies SET trailer = '1UNtrqRG7GA' WHERE id = 32;
UPDATE movies SET trailer = 'qas5lWp7_R0' WHERE id = 33;
UPDATE movies SET trailer = 'KYz2wyBy3kc' WHERE id = 34;
UPDATE movies SET trailer = 'QAEkuVgt6Aw' WHERE id = 35;
UPDATE movies SET trailer = 'neY2xVmOfUM' WHERE id = 36;
UPDATE movies SET trailer = 'mBBuzHrZBro' WHERE id = 37;
UPDATE movies SET trailer = '5PSNL1qE6VY' WHERE id = 38;
UPDATE movies SET trailer = 'ZIM1HydF9UA' WHERE id = 39;
UPDATE movies SET trailer = '2UT5xaAfxWU' WHERE id = 40;
UPDATE movies SET trailer = '71rDQ7z4eFg' WHERE id = 41;





-- drop all tables
DROP TABLE actor_roles;
DROP TABLE directs;
DROP TABLE likes_topics;
DROP TABLE movie_casts;
DROP TABLE movie_ratings;
DROP TABLE movie_roles;
DROP TABLE movie_topics;
DROP TABLE sponsors;
DROP TABLE used_devices;
DROP TABLE profiles;
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
DELETE FROM sponsors;
DELETE FROM used_devices;
DELETE FROM profiles;
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
ALTER SEQUENCE directs_id_seq RESTART WITH 1;
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
--ALTER SEQUENCE user_types_id_seq RESTART WITH 1;
--ALTER SEQUENCE users_id_seq RESTART WITH 1;
