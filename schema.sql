--All the schema for the Movie Recommendation system

CREATE TABLE users( -- view
  id SERIAL UNIQUE,
  email varchar(255) UNIQUE,
  password varchar(255) NOT NULL,
  user_type_id int,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id),
  FOREIGN KEY (user_type_id) REFERENCES user_types(id)
);

CREATE TABLE profiles( -- view
  id SERIAL UNIQUE,
  user_id int,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  date_of_birth date, -- changed to date_of_birth
  gender char(1) CHECK (gender in ('M','F')),
  city varchar(255),
  province varchar(255),
  country varchar(255),
  occupation varchar(255),
  picture text,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE user_types( -- model
  id SERIAL UNIQUE,
  type_name varchar(255) UNIQUE,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id)
);

CREATE TABLE devices( -- model
  id SERIAL UNIQUE,
  device_name varchar(255),
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id)
);

CREATE TABLE used_devices( --changed name (from devices_used) to match naming system --model
  id SERIAL UNIQUE,
  user_id int NOT NULL,
  device_id int NOT NULL,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (device_id) REFERENCES devices(id)
);

CREATE TABLE genres( -- view
  id SERIAL UNIQUE,
  genre_name varchar(255),
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id)
);

CREATE TABLE likes_genres(
  id SERIAL UNIQUE,
  profile_id int,
  genre_id int,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id)
);

CREATE TABLE movies( -- view
  id SERIAL UNIQUE,
  movie_name varchar(255) NOT NULL,
  description varchar(255) NOT NULL,
  date_released date,
  duration time,
  country varchar(255),
  language varchar(255),
  subtitles char(1) CHECK (subtitles in ('Y','N')),
  dubbed char(1) CHECK (dubbed in ('Y','N')),
  age_rating varchar(255),
  poster text,
  trailer text,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id)
);

CREATE TABLE movie_ratings( -- view
  id SERIAL UNIQUE,
  user_id int,
  movie_id int,
  date_watched date,
  user_rating int CHECK (user_rating BETWEEN 0 AND 10),
  review varchar(255),
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE
);

CREATE TABLE movie_genres( --model
  id SERIAL UNIQUE,
  movie_id int,
  genre_id int,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id),
  FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE
  FOREIGN KEY (topic_id) REFERENCES topics(id) ON DELETE CASCADE,
);

CREATE TABLE actors( --view
  id SERIAL UNIQUE,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  date_of_birth date,
  place_of_birth varchar(255),
  gender char(1) CHECK (gender in ('M','F')),
  picture text,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id)
);

CREATE TABLE casting_types( -- model
  id SERIAL UNIQUE,
  cast_type varchar(255) UNIQUE,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id)
)

CREATE TABLE roles( -- model
  id SERIAL UNIQUE,
  character_name varchar(255),
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id)
);

CREATE TABLE movie_casts( -- model
  id SERIAL UNIQUE,
  movie_id int,
  actor_id int,
  cast_id int,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id),
  FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
  FOREIGN KEY (actor_id) REFERENCES actors(id) ON DELETE SET NULL,
  FOREIGN KEY (cast_id) REFERENCES casting_types(id) ON DELETE SET NULL
);

CREATE TABLE actor_roles( -- model
  id SERIAL UNIQUE,
  actor_id int,
  role_id int,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id),
  FOREIGN KEY (actor_id) REFERENCES actors(id) ON DELETE CASCADE,
  FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE
);

CREATE TABLE movie_roles( -- model
  id SERIAL UNIQUE,
  movie_id int,
  role_id int,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id),
  FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
  FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE
);

CREATE TABLE directors( -- view
  id SERIAL UNIQUE,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  date_of_birth varchar(255),
  place_of_birth varchar(255),
  gender char(1) CHECK (gender in ('M','F')),
  picture text,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id)
);

CREATE TABLE directs( -- model
  id SERIAL UNIQUE,
  director_id int,
  movie_id int,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id),
  FOREIGN KEY (director_id) REFERENCES directors(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE
);

CREATE TABLE studios( -- view
  id SERIAL UNIQUE,
  studio_name varchar(255) NOT NULL,
  country varchar(255) NOT NULL,
  picture text,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id)
);

CREATE TABLE sponsors( -- model
  id SERIAL UNIQUE,
  studio_id int,
  movie_id int,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (id),
  FOREIGN KEY (studio_id) REFERENCES studios(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE
);
