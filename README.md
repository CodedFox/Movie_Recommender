# Movie_Recommender
CSI 2132 final group project.


Schema

User(UserID, password, last‐name, first‐name, email, city, province, country…)
Profile(UserID, age‐range, year‐born, gender, occupation, device‐used, …)
Topics(TopicID, description) // e.g. (100, Horror) or (101, Comedy) This table implicitly refer to the genre(s) of a movie.  
Movie(MovieID, name, date‐released, …)
Watches(UserID, MovieID, date, rating, …)
MovieTopics(TopicID, MovieID, language, subtitles (y/n), country, …)
Actor(ActorID, last‐name, first‐name, DateofBirth, …)
Role(RoleID, name, …, ActorID)
ActorPlays(MovieID, ActorID, …)
Director(DirectorID, lastname, firstname, country, …)
Directs(DirectorID, MovieID, …)
Studio(StudioID, name, country, …)
Sponsors(StudioID, MovieID, …)

We are free to use any front-end software desired. Wordpress and Wix are not excluded.
