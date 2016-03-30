# Movie_Recommender
CSI 2132 final group project.


-Schema-

users(user_id, email, password, type_id…)

profiles(user_id, date_of_birth, gender, occupation, picture, first_name, last_name, city, province, country,…)

user_types(type_id, type_name)

devices(deive_id, device_name)

used_devices(used_devices_id, user_id, device_id)

topics(topic_id, genre) // e.g. (100, Horror) or (101, Comedy) This table implicitly refer to the genre(s) of a movie.

movies(movie_id, name, description, date_released, duration, language, subtitles (y/n), dubbed (y/n), country, age_rating, poster, trailer …)

movie_ratings(movie_ratings_id, user_id, movie_id, date_watched, user_rating, review, …)

movie_topics(movie_topics_id, movie_id, topic_id, …)

actors(actor_id, first_name, last_name, date_of_birth, place_of_birth, gender, …)

casting_types(cast_id, cast_type, …)
(cast_type: Lead/Support)

roles(role_id, character_name, …)

movie_casts(movie_casts_id, movie_id, actor_id, cast_id, …)

actor_roles(actor_roles_id, actor_id, role_id)

movie_roles(movie_roles, movie_id, role_id)

directors(director_id, first_name, last_name, date_of_birth, place_of_birth, picture, …)

directs(directs_id, director_id, movie_id, …)

studios(studio_id, studio_name, country, …)

sponsors(sponsors_id, studio_id, movie_id, …)



-Genres-

Horror,
Romance,
Comedy,
Animation,
Anime,
Action,
Science Fiction (Sci-fi),
Mystery,
Thriller,
Musical,
War,
History,
Documentary,
Drama,
Film Noir,
Family,
Crime,
Sport,
Fantasy,
Biography,
Adventure,
Western,
Adult,
Space,
Political,
LGBT,
Faith,
Independent,
Video Game,
Novel.



==========================================================

Start Command Prompt with Ruby
>rails new mov_rec -d postgresql

IN \mov_rec\config\database.yml,
BELOW database: mov_rec_development PASTE:
username: [insertusername]
password: [insertpassword]

BELOW database: mov_rec_test PASTE:
username: [insertusername]
password: [insertpassword]

>cd mov_rec
>rake db:create

-- ABOVE ARE STEPS YOU NEVER HAVE TO DO AGAIN. (I think).

REPLACE \mov_rec\config\routes.rb
REPLACE \mov_rec\db folder
REPLACE \mov_rec\test folder
REPLACE \mov_rec\app folder

>rake db:migrate
