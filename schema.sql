--All the schema for the Movie Recommendation system

CREATE TABLE userAccount(
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

CREATE TABLE profile(
  userID int,
  ageRange varchar(255),
  gender char(1) CHECK (gender in ('M','F')),
  occupation varchar(255),
  FOREIGN KEY (userID) REFERENCES userAccount(userID) ON DELETE CASCADE
);

CREATE TABLE device(
  deviceID SERIAL UNIQUE,
  deviceName varchar(255),
  PRIMARY KEY (deviceID)
);

CREATE TABLE deviceUsed(
  deviceID int NOT NULL,
  userID int NOT NULL,
  FOREIGN KEY (userID) REFERENCES userAccount(userID) ON DELETE CASCADE,
  FOREIGN KEY (deviceID) REFERENCES device(deviceID)
);

CREATE TABLE topic(
  topicID SERIAL UNIQUE,
  genre varchar(255),
  PRIMARY KEY (topicID)
);

CREATE TABLE movie(
  movieID SERIAL UNIQUE,
  name varchar(255) NOT NULL,
  description varchar(255) NOT NULL,
  dateReleased date,
  duration time,
  language varchar(255),
  subtitles char(1) CHECK (subtitles in ('Y','N')),
  country varchar(255),
  ageRating varchar(255),
  PRIMARY KEY (movieID)
);

CREATE TABLE watches(
  userID int,
  movieID int,
  dateWatched date,
  userRating int CHECK (userRating BETWEEN 0 AND 10),
  FOREIGN KEY (userID) REFERENCES userAccount(userID) ON DELETE CASCADE,
  FOREIGN KEY (movieID) REFERENCES movie(movieID) -- TODO: should we cascade delete from 'movie'? or keep record of viewing?
);

CREATE TABLE movieTopic(
  topicID int,
  movieID int,
  FOREIGN KEY (topicID) REFERENCES topic(topicID) ON DELETE CASCADE,
  FOREIGN KEY (movieID) REFERENCES movie(movieID) ON DELETE CASCADE
);

CREATE TABLE actor(
  actorID SERIAL UNIQUE,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  dateOfBirth date,
  nationality varchar(255),
  gender char(1) CHECK (gender in ('M','F')),
  PRIMARY KEY (actorID)
);

CREATE TABLE role(
  roleID SERIAL UNIQUE,
  characterName varchar(255),
  PRIMARY KEY (roleID)
);

CREATE TABLE movieCast(
  movieID int,
  actorID int,
  castingRole varchar(255),   --lead, support, extra, etc...
  FOREIGN KEY (actorID) REFERENCES actor(actorID) ON DELETE SET NULL,
  FOREIGN KEY (movieID) REFERENCES movie(movieID) ON DELETE CASCADE
);

CREATE TABLE actorRoles(
  actorID int,
  roleID int,
  FOREIGN KEY (actorID) REFERENCES actor(actorID) ON DELETE CASCADE,
  FOREIGN KEY (roleID) REFERENCES role(roleID) ON DELETE CASCADE
);

CREATE TABLE movieRoles(
  movieID int,
  roleID int,
  FOREIGN KEY (movieID) REFERENCES movie(movieID) ON DELETE CASCADE,
  FOREIGN KEY (roleID) REFERENCES role(roleID) ON DELETE CASCADE
);

CREATE TABLE director(
  directorID SERIAL UNIQUE,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  country varchar(255),
  PRIMARY KEY (directorID)
);

CREATE TABLE directs(
  directorID int,
  movieID int,
  FOREIGN KEY (movieID) REFERENCES movie(movieID) ON DELETE CASCADE,
  FOREIGN KEY (directorID) REFERENCES director(directorID) ON DELETE CASCADE
);

CREATE TABLE studio(
  studioID SERIAL UNIQUE,
  studioName varchar(255) NOT NULL,
  country varchar(255) NOT NULL,
  PRIMARY KEY (studioID)
);

CREATE TABLE sponsors(
  studioID int,
  movieID int,
  FOREIGN KEY (movieID) REFERENCES movie(movieID) ON DELETE CASCADE,
  FOREIGN KEY (studioID) REFERENCES studio(studioID) ON DELETE CASCADE
);
