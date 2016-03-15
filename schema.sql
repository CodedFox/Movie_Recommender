--All the schema for the Movie Recommendation system

CREATE TABLE user(
  userID
  password
  first-name
  last-name
  email
  city
  province
  country
)

CREATE TABLE profile(
  userID
  age-range
  year-born
  gender
  occupation
)

CREATE TABLE device(
  deviceID
  device-name
)

CREATE TABLE deviceUsed(
  deviceID
  userID
)

CREATE TABLE topics(
  topidID
  genre
)

CREATE TABLE movie(
  movieID
  name
  description
  date-released
  duration
  language
  subtitles
  country
  age-rating
)

CREATE TABLE watches(
  userID
  movieID
  date-watched
  user-rating
)

CREATE TABLE movieTopics(
  topicID
  movieID
)

CREATE TABLE actor(
  actorID
  first-name
  last-name
  DateOfBirth
  nationality
  gender
)

CREATE TABLE role(
  roleID
  character-name
)

CREATE TABLE movieCast(
  movieID
  actorID
  castingRole       --lead, support, extra, etc...
)

CREATE TABLE actorRoles(
  actorID
  roleID
)

CREATE TABLE movieRoles(
  movieID
  roleID
)

CREATE TABLE director(
  directorID
  first-name
  last-name
  country
)

CREATE TABLE directs(
  directorID
  movieID
)

CREATE TABLE studio(
  studioID
  studio-name
  country
)

CREATE TABLE sponsors(
  studioID
  movieID
)
