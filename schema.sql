--All the schema for the Movie Recommendation system

CREATE TABLE users(
  userID SERIAL UNIQUE,
  password varchar(255) NOT NULL,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  yearBorn int,
  email varchar(255) UNIQUE,
  city varchar(255),
  province varchar(255),
  country varchar(255),
  PRIMARY KEY (userID)
);

CREATE TABLE profiles(
  userID int,
  ageRange varchar(255) CHECK (ageRange in ('0-13','14-17','18-20','20-30','30-40','40-50','60-70','80-90','100+')),
  gender char(1) CHECK (gender in ('M','F')),
  occupation varchar(255),
  FOREIGN KEY (userID) REFERENCES users(userID) ON DELETE CASCADE
);

CREATE TABLE devices(
  deviceID SERIAL UNIQUE,
  deviceName varchar(255),
  PRIMARY KEY (deviceID)
);

CREATE TABLE devices_used(
  deviceID int NOT NULL,
  userID int NOT NULL,
  FOREIGN KEY (userID) REFERENCES users(userID) ON DELETE CASCADE,
  FOREIGN KEY (deviceID) REFERENCES devices(deviceID)
);

CREATE TABLE topics(
  topicID SERIAL UNIQUE,
  genre varchar(255),
  PRIMARY KEY (topicID)
);

CREATE TABLE movies(
  movieID SERIAL UNIQUE,
  name varchar(255) NOT NULL,
  description varchar(255) NOT NULL,
  dateReleased date,
  duration time,
  language varchar(255),
  subtitles char(1) CHECK (subtitles in ('Y','N')),
  dubbed char(1) CHECK (subtitles in ('Y','N')),
  country varchar(255),
  ageRating varchar(255),
  PRIMARY KEY (movieID)
);

CREATE TABLE watches(
  userID int,
  movieID int,
  dateWatched date,
  userRating int CHECK (userRating BETWEEN 0 AND 10),
  FOREIGN KEY (userID) REFERENCES users(userID) ON DELETE CASCADE,
  FOREIGN KEY (movieID) REFERENCES movies(movieID) ON DELETE CASCADE
);

CREATE TABLE movie_topics(
  topicID int,
  movieID int,
  FOREIGN KEY (topicID) REFERENCES topics(topicID) ON DELETE CASCADE,
  FOREIGN KEY (movieID) REFERENCES movies(movieID) ON DELETE CASCADE
);

CREATE TABLE actors(
  actorID SERIAL UNIQUE,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  dateOfBirth date,
  placeOfBirth varchar(255),
  gender char(1) CHECK (gender in ('M','F')),
  PRIMARY KEY (actorID)
);

CREATE TABLE roles(
  roleID SERIAL UNIQUE,
  characterName varchar(255),
  PRIMARY KEY (roleID)
);

CREATE TABLE movie_casts(
  movieID int,
  actorID int,
  castingRole varchar(255) CHECK (castingRole in ('Star','Supporting')),
  FOREIGN KEY (actorID) REFERENCES actors(actorID) ON DELETE SET NULL,
  FOREIGN KEY (movieID) REFERENCES movies(movieID) ON DELETE CASCADE
);

CREATE TABLE actor_roles(
  actorID int,
  roleID int,
  FOREIGN KEY (actorID) REFERENCES actors(actorID) ON DELETE CASCADE,
  FOREIGN KEY (roleID) REFERENCES roles(roleID) ON DELETE CASCADE
);

CREATE TABLE movie_roles(
  movieID int,
  roleID int,
  FOREIGN KEY (movieID) REFERENCES movies(movieID) ON DELETE CASCADE,
  FOREIGN KEY (roleID) REFERENCES roles(roleID) ON DELETE CASCADE
);

CREATE TABLE directors(
  directorID SERIAL UNIQUE,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  placeOfBirth varchar(255),
  PRIMARY KEY (directorID)
);

CREATE TABLE directs(
  directorID int,
  movieID int,
  FOREIGN KEY (movieID) REFERENCES movies(movieID) ON DELETE CASCADE,
  FOREIGN KEY (directorID) REFERENCES directors(directorID) ON DELETE CASCADE
);

CREATE TABLE studios(
  studioID SERIAL UNIQUE,
  studioName varchar(255) NOT NULL,
  country varchar(255) NOT NULL,
  PRIMARY KEY (studioID)
);

CREATE TABLE sponsors(
  studioID int,
  movieID int,
  FOREIGN KEY (movieID) REFERENCES movies(movieID) ON DELETE CASCADE,
  FOREIGN KEY (studioID) REFERENCES studios(studioID) ON DELETE CASCADE
);
