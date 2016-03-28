# Movie_Recommender
CSI 2132 final group project.


-Schema-

users(user_id, password, first_name, last_name, year_born, email, city, province, country, type_id…)

profiles(user_id, age_range, gender, occupation, …)

user_types(type_id, type_name)

devices(deive_id, device_name)

devices_used(user_id, device_id)

topics(topic_id, genre) // e.g. (100, Horror) or (101, Comedy) This table implicitly refer to the genre(s) of a movie.

movies(movie_id, name, description, date_released, duration, language, subtitles (y/n), dubbed (y/n), country, age_rating, …)

watches(user_id, movie_id, date_watched, user_rating, review, …)

movie_topics(movie_id, topic_id, …)

actors(actor_id, first_name, last_name, date_of_birth, place_of_birth, gender, …)

roles(role_id, character_name, …)

movie_casts(movie_id, actor_id, casting_role, …) (castingRole: Lead/Support)

actor_roles(actor_id, role_id)

movie_roles(movie_id, role_id)

directors(director_id, first_name, last_name, date_of_birth, place_of_birth, …)

directs(director_id, movie_id, …)

studios(studio_id, studio_name, country, …)

sponsors(studio_id, movie_id, …)



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
