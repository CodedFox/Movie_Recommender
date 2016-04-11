# Movie_Recommender
CSI2132 B -  Final Group Project.

Group Members:
--Diane Vu -
--Jonathan Gratton -
--Qufei Chen - 6771326

Project Specifications: 
--Language: Ruby
--Framework: Ruby on Rails
--Database: PostgreSQL

Contained files:
-- schema.sql: contains sql create table statements for all tables in our database
-- data.sql: contains all sql insert statements for all data in our database (movie info, actor info, etc.)
--mov_rec: contains the web application created using Ruby on Rails

Note: although we included the sql statements to create the tables in our database in the schema.sql file, we used Active Record Migrations to evolve our database schema for our web-app. To run our project, it would be best to create the database by applying the migrations, i.e run the following command to apply all of the migrations:
> rake db:migrate



-All Schemas for the Movie Recommendation system-

users(id, email, password, created_at, updated_at, user_type_id, password_digest)

profiles(id, gender, occupation, user_id, created_at, updated_at, picture, first_name, last_name, city, province, country, date_of_birth,)

user_types(id, type_name, created_at, updated_at)

devices(id, device_name, created_at, updated_at)

used_devices(id, user_id, device_id, created_at, updated_at)

topics(id, genre_name, created_at, updated_at)

likes_topics(id, profile_id, topic_id, created_at, updated_at)

movies(id, movie_name, description, date_released, duration, country, language, subtitles (Y/N), dubbed (Y/N), age_rating, poster, trailer, created_at, updated_at)

movie_ratings(id, user_id, movie_id, date_watched, user_rating, review, created_at, updated_at)

movie_topics(id, movie_id, topic_id, created_at, updated_at)

actors(id, first_name, last_name, date_of_birth, place_of_birth, gender, picture, created_at, updated_at)

casting_types(id, cast_type, created_at, updated_at)

roles(id, character_name, created_at, updated_at)

movie_casts(id, movie_id, actor_id, casting_type_id, created_at, updated_at)

actor_roles(id, actor_id, role_id, created_at, updated_at)

movie_roles(id, movie_id, role_id, created_at, updated_at)

directors(id, first_name, last_name, date_of_birth, place_of_birth, genre, picture, created_at, updated_at)

directs(id, director_id, movie_id, created_at, updated_at)

studios(id, studio_name, country, picture, created_at, updated_at)

sponsors(id, studio_id, movie_id, created_at, updated_at)

