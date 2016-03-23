--All the schema for the Movie Recommendation system

CREATE TABLE users( -- model
  user_id SERIAL UNIQUE,
  password varchar(255) NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  year_born int, -- changed to date_of_birth
  email varchar(255) UNIQUE,
  city varchar(255),
  province varchar(255),
  country varchar(255),
  PRIMARY KEY (user_id)
);

CREATE TABLE profiles( -- view
  user_id int,
  age_range varchar(255) CHECK (age_range in ('0-13','14-17','18-20','20-30','30-40','40-50','60-70','80-90','100+')),
  gender char(1) CHECK (gender in ('M','F')),
  occupation varchar(255),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE devices( -- do we need a view for devices? 
  device_id SERIAL UNIQUE,
  device_name varchar(255),
  PRIMARY KEY (device_id)
);

CREATE TABLE devices_used( 
  device_id int NOT NULL,
  user_id int NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
  FOREIGN KEY (device_id) REFERENCES devices(device_id)
);

CREATE TABLE topics(
  topic_id SERIAL UNIQUE,
  genre varchar(255),
  PRIMARY KEY (topic_id)
);

CREATE TABLE movies( -- view
  movie_id SERIAL UNIQUE,
  name varchar(255) NOT NULL,
  description varchar(255) NOT NULL,
  date_released date,
  duration time,
  language varchar(255),
  subtitles char(1) CHECK (subtitles in ('Y','N')),
  dubbed char(1) CHECK (subtitles in ('Y','N')),
  country varchar(255),
  age_rating varchar(255),
  PRIMARY KEY (movie_id)
);

CREATE TABLE watches(
  user_id int,
  movie_id int,
  date_watched date,
  user_rating int CHECK (user_rating BETWEEN 0 AND 10),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE
);

CREATE TABLE movie_topics(
  topic_id int,
  movie_id int,
  FOREIGN KEY (topic_id) REFERENCES topics(topic_id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE
);

CREATE TABLE actors( --view
  actor_id SERIAL UNIQUE,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  date_of_birth date,
  place_of_birth varchar(255),
  gender char(1) CHECK (gender in ('M','F')),
  PRIMARY KEY (actor_id)
);

CREATE TABLE roles(
  role_id SERIAL UNIQUE,
  character_name varchar(255),
  PRIMARY KEY (role_id)
);

CREATE TABLE movie_casts(
  movie_id int,
  actor_id int,
  casting_role varchar(255) CHECK (casting_role in ('Star','Supporting')),
  FOREIGN KEY (actor_id) REFERENCES actors(actor_id) ON DELETE SET NULL,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE
);

CREATE TABLE actor_roles(
  actor_id int,
  role_id int,
  FOREIGN KEY (actor_id) REFERENCES actors(actor_id) ON DELETE CASCADE,
  FOREIGN KEY (role_id) REFERENCES roles(role_id) ON DELETE CASCADE
);

CREATE TABLE movie_roles(
  movie_id int,
  role_id int,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
  FOREIGN KEY (role_id) REFERENCES roles(role_id) ON DELETE CASCADE
);

CREATE TABLE directors( -- view
  director_id SERIAL UNIQUE,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  place_of_birth varchar(255),
  PRIMARY KEY (director_id)
);

CREATE TABLE directs( 
  director_id int,
  movie_id int,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
  FOREIGN KEY (director_id) REFERENCES directors(director_id) ON DELETE CASCADE
);

CREATE TABLE studios(
  studio_id SERIAL UNIQUE,
  studio_name varchar(255) NOT NULL,
  country varchar(255) NOT NULL,
  PRIMARY KEY (studio_id)
);

CREATE TABLE sponsors(
  studio_id int,
  movie_id int,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
  FOREIGN KEY (studio_id) REFERENCES studios(studio_id) ON DELETE CASCADE
);
