--All the schema for the Movie Recommendation system

CREATE TABLE user(
  userID int NOT NULL AUTO_INCREMENT,
  password varchar(255) NOT NULL,
  first-name varchar(255) NOT NULL,
  last-name varchar(255) NOT NULL,
  email varchar(255) UNIQUE,
  city varchar(255),
  province varchar(255),
  country varchar(255),
  PRIMARY KEY (userID)
)

CREATE TABLE profile(
  userID int NOT NULL AUTO_INCREMENT,
  age-range varchar(255),
  year-born int,
  gender char(1) CHECK (gender in ('M','F')),
  occupation varchar(255),
  FOREIGN KEY (userID) REFERENCES user(userID)
)

CREATE TABLE device(
  deviceID int NOT NULL AUTO_INCREMENT,
  device-name varchar(255),
  PRIMARY KEY (deviceID)
)

CREATE TABLE deviceUsed(
  deviceID int NOT NULL,
  userID int NOT NULL,
  FOREIGN KEY (userID) REFERENCES user(userID),
  FOREIGN KEY (deviceID) REFERENCES device(deviceID)
)

CREATE TABLE topics(
  topicID int NOT NULL AUTO_INCREMENT,
  genre varchar(255)
  PRIMARY KEY (topicID)
)

CREATE TABLE movie(
  movieID int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  description varchar(255) NOT NULL,
  date-released date,
  duration time,
  language varchar(255),  
  subtitles char(1) CHECK (subtitles in ('Y','N')), 
  country varchar(255), 
  age-rating varchar(255), 
  PRIMARY KEY (movieID)
)

CREATE TABLE watches(
  userID int,
  movieID int,
  date-watched date,
  user-rating int CHECK (user-rating BETWEEN 0 AND 10),
  FOREIGN KEY (userID) REFERENCES user(userID),
  FOREIGN KEY (movieID) REFERENCES movie(movieID)
)

CREATE TABLE movieTopics(
  topicID int,
  movieID int,
  FOREIGN KEY (topicID) REFERENCES topic(topicID),
  FOREIGN KEY (movieID) REFERENCES movie(movieID)
)

CREATE TABLE actor(
  actorID int NOT NULL AUTO_INCREMENT,
  first-name varchar(255) NOT NULL,
  last-name varchar(255) NOT NULL,
  DateOfBirth date,
  nationality varchar(255),
  gender char(1) CHECK (gender in ('M','F')),
  PRIMARY KEY (actorID)
)

CREATE TABLE role(
  roleID int NOT NULL AUTO_INCREMENT,
  character-name varchar(255),
  PRIMARY KEY (roleID)
)

CREATE TABLE movieCast(
  movieID int,
  actorID int,
  castingRole varchar(255)   --lead, support, extra, etc...
  FOREIGN KEY (actorID) REFERENCES actor(actorID),
  FOREIGN KEY (movieID) REFERENCES movie(movieID)
)

CREATE TABLE actorRoles(
  actorID int,
  roleID int,
  FOREIGN KEY (actorID) REFERENCES actor(actorID),
  FOREIGN KEY (roleID) REFERENCES role(roleID)
)

CREATE TABLE movieRoles( 
  movieID int,
  roleID int,
  FOREIGN KEY (movieID) REFERENCES movie(movieID),
  FOREIGN KEY (roleID) REFERENCES role(roleID)
)

CREATE TABLE director(
  directorID int NOT NULL AUTO_INCREMENT,
  first-name varchar(255) NOT NULL,
  last-name varchar(255) NOT NULL,
  country varchar(255),
  PRIMARY KEY (directorID)
)

CREATE TABLE directs(
  directorID int,
  movieID int,
  FOREIGN KEY (movieID) REFERENCES movie(movieID),
  FOREIGN KEY (directorID) REFERENCES director(directorID)
)

CREATE TABLE studio(
  studioID int NOT NULL AUTO_INCREMENT,
  studio-name varchar(255) NOT NULL,
  country varchar(255) NOT NULL,
  PRIMARY KEY (studioID)
)

CREATE TABLE sponsors(
  studioID int,
  movieID int,
  FOREIGN KEY (movieID) REFERENCES movie(movieID),
  FOREIGN KEY (studioID) REFERENCES studio(studioID)
)
