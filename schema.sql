--All the schema for the Movie Recommendation system

CREATE TABLE users( -- view
  id SERIAL UNIQUE,
  email varchar(255) UNIQUE,
  password varchar(255) NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  year_born int, -- changed to date_of_birth
  city varchar(255),
  province varchar(255),
  country varchar(255),
  type_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (type_id) REFERENCES user_types(type_id)
);

CREATE TABLE profiles( -- view
  id SERIAL UNIQUE, 
  user_id int,
  age_range varchar(255) CHECK (age_range in ('0-13','14-17','18-20','20-30','30-40','40-50','60-70','80-90','100+')),
  gender char(1) CHECK (gender in ('M','F')),
  occupation varchar(255),
  picture text,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE user_types( -- model
  id SERIAL UNIQUE,
  type_name varchar(255) UNIQUE,
  PRIMARY KEY (id)
);

CREATE TABLE devices( -- model
  id SERIAL UNIQUE,
  device_name varchar(255),
  PRIMARY KEY (id)
);

CREATE TABLE used_devices( --changed name (from devices_used) to match naming system --model
  id SERIAL UNIQUE,
  user_id int NOT NULL,
  device_id int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
  FOREIGN KEY (device_id) REFERENCES devices(device_id)
);

CREATE TABLE topics( -- view
  id SERIAL UNIQUE,
  genre varchar(255),
  PRIMARY KEY (id)
);

CREATE TABLE movies( -- view
  id SERIAL UNIQUE,
  name varchar(255) NOT NULL,
  description varchar(255) NOT NULL,
  date_released date,
  duration time,
  language varchar(255),
  subtitles char(1) CHECK (subtitles in ('Y','N')),
  dubbed char(1) CHECK (dubbed in ('Y','N')),
  country varchar(255),
  age_rating varchar(255),
  poster text,
  trailer text,
  PRIMARY KEY (id)
);

CREATE TABLE movie_ratings( -- view
  id SERIAL UNIQUE,
  user_id int,
  movie_id int,
  date_watched date,
  user_rating int CHECK (user_rating BETWEEN 0 AND 10),
  review varchar(255),
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE
);

CREATE TABLE movie_topics( --model
  id SERIAL UNIQUE,
  movie_id int,
  topic_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE
  FOREIGN KEY (topic_id) REFERENCES topics(topic_id) ON DELETE CASCADE,
);

CREATE TABLE actors( --view
  actor_id SERIAL UNIQUE,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  date_of_birth date,
  place_of_birth varchar(255),
  gender char(1) CHECK (gender in ('M','F')),
  picture text,
  PRIMARY KEY (actor_id)
);

CREATE TABLE casting_types( -- model
  id SERIAL UNIQUE,
  cast_type varchar(255) UNIQUE,
  PRIMARY KEY (id)
)

CREATE TABLE roles( -- model
  id SERIAL UNIQUE,
  character_name varchar(255),
  PRIMARY KEY (role_id)
);

CREATE TABLE movie_casts( -- model
  id SERIAL UNIQUE,
  movie_id int,
  actor_id int,
  casting_type_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (actor_id) REFERENCES actors(actor_id) ON DELETE SET NULL,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
  FOREIGN KEY (cast_id) REFERENCES casting_types(cast_id) ON DELETE SET NULL
);

CREATE TABLE actor_roles( -- model
  id SERIAL UNIQUE,
  actor_id int,
  role_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (actor_id) REFERENCES actors(actor_id) ON DELETE CASCADE,
  FOREIGN KEY (role_id) REFERENCES roles(role_id) ON DELETE CASCADE
);

CREATE TABLE movie_roles( -- model
  id SERIAL UNIQUE,
  movie_id int,
  role_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
  FOREIGN KEY (role_id) REFERENCES roles(role_id) ON DELETE CASCADE
);

CREATE TABLE directors( -- view
  id SERIAL UNIQUE,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  date_of_birth varchar(255),
  place_of_birth varchar(255),
  picture text,
  PRIMARY KEY (id)
);

CREATE TABLE directs( -- model
  id SERIAL UNIQUE,
  director_id int,
  movie_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
  FOREIGN KEY (director_id) REFERENCES directors(director_id) ON DELETE CASCADE
);

CREATE TABLE studios( -- view
  id SERIAL UNIQUE,
  studio_name varchar(255) NOT NULL,
  country varchar(255) NOT NULL,
  picture text,
  PRIMARY KEY (id)
);

CREATE TABLE sponsors( -- model
  id SERIAL UNIQUE,
  studio_id int,
  movie_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
  FOREIGN KEY (studio_id) REFERENCES studios(studio_id) ON DELETE CASCADE
);
