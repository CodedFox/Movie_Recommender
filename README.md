# Movie_Recommender
CSI 2132 final group project.


-Schema-

User(UserID, password, last‐name, first‐name, email, city, province, country…)

Profile(UserID, age‐range, year‐born, gender, occupation, …)

DeviceUsed(deviceID, userID)

Device(deviceID, device-name)

Topics(TopicID, genre) // e.g. (100, Horror) or (101, Comedy) This table implicitly refer to the genre(s) of a movie.

Movie(MovieID, name, description, date‐released, duration, language, subtitles (y/n), country, age-rating, …)

Watches(UserID, MovieID, date-watched, user-rating, …)

MovieTopics(TopicID, MovieID, …)

Actor(ActorID, last‐name, first‐name, DateofBirth, nationality, gender, …)

Role(RoleID, character-name, …)

MovieCast(MovieID, ActorID, castingRole,…) (castingRole: Lead, support, extra, etc...)

MovieRoles(MovieID, RoleID)

ActorRoles(ActorID, RoleID)

Director(DirectorID, lastname, firstname, country, …)

Directs(DirectorID, MovieID, …)

Studio(StudioID, name, country, …)

Sponsors(StudioID, MovieID, …)



We are free to use any front-end software desired. Wordpress and Wix are not excluded.


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
Novel,
