# Movie_Recommender
CSI 2132 final group project.


-Schema-

users(id, email, password, user_type_id, created_at, updated_at)

profiles(id, user_id, first_name, last_name, date_of_birth, gender (F/M), city, province, country, occupation, picture, created_at, updated_at)

user_types(id, type_name, created_at, updated_at)

devices(id, device_name, created_at, updated_at)

used_devices(id, user_id, device_id, created_at, updated_at)

genres(id, genre_name, created_at, updated_at)

likes_genres(id, profile_id, genre_id, created_at, updated_at)

movies(id, movie_name, description, date_released, duration, country, language, subtitles (Y/N), dubbed (Y/N), age_rating, poster, trailer, created_at, updated_at)

movie_ratings(id, user_id, movie_id, date_watched, user_rating, review, created_at, updated_at)

movie_genres(id, movie_id, genre_id, created_at, updated_at)

actors(id, first_name, last_name, date_of_birth, place_of_birth, gender, picture, created_at, updated_at)

casting_types(id, cast_type, created_at, updated_at)

roles(id, character_name, created_at, updated_at)

movie_casts(id, movie_id, actor_id, cast_id, created_at, updated_at)

actor_roles(id, actor_id, role_id, created_at, updated_at)

movie_roles(id, movie_id, role_id, created_at, updated_at)

directors(id, first_name, last_name, date_of_birth, place_of_birth, genre, picture, created_at, updated_at)

directs(id, director_id, movie_id, created_at, updated_at)

studios(id, studio_name, country, picture, created_at, updated_at)

sponsors(id, studio_id, movie_id, created_at, updated_at)


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
