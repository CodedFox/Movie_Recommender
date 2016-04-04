--All data inputs for the Movie Recommendation system
INSERT INTO user_types(id, type_name, created_at, updated_at) VALUES (DEFAULT, 'Administrator', now(), now());
INSERT INTO user_types(id, type_name, created_at, updated_at) VALUES (DEFAULT, 'Member', now(), now());

INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user1@movie.com'), 'John', 'Smith', '11/12/1954', 'M', 'Ottawa', 'Ontario', 'Canada', 'Engineer', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user2@movie.com'), 'Jane', 'Doe', '1/30/1964', 'F', 'Gatineau', 'Quebec', 'Canada', 'Electrician', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user3@movie.com'), 'Emily', 'Brown', '2/3/1985', 'F', 'Halifax', 'Nova Scotia', 'Canada', 'Dancer', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user4@movie.com'), 'Stacy', 'White', '3/23/1991', 'F', 'Vancouver', 'British Columbia', 'Canada', 'Waitress', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user5@movie.com'), 'Linda', 'Black', '4/11/1984', 'F', 'Toronto', 'Ontario', 'Canada', 'Real Estate', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user6@movie.com'), 'Brandon', 'Fox', '5/10/1965', 'M', 'Niagra Falls', 'Ontario', 'Canada', 'Programmer', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user7@movie.com'), 'Marisa', 'Steel', '6/22/1970', 'F', 'Victoria', 'British Columbia', 'Canada', 'Artist', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user8@movie.com'), 'Maria', 'Stax', '7/14/2006', 'F', 'Trois-Riviere', 'Quebec', 'Canada', 'Cook', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user9@movie.com'), 'Nick', 'Langley', '8/25/1978', 'M', 'Montreal', 'Quebec', 'Canada', 'Leather Worker', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user10@movie.com'), 'James', 'Bush', '9/11/1960', 'M', 'Houston', 'Texas', 'United States', 'Engineer', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user11@movie.com'), 'Francis', 'Underwood', '11/5/1959', 'M', 'Gaffney', 'South Carolina', 'United States', 'Politician', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user12@movie.com'), 'Anthony', 'Landerville', '10/28/1980', 'M', 'Hamilton', 'Ontario', 'Canada', 'Doctor', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user13@movie.com'), 'Jordan', 'Hail', '11/19/1995', 'M', 'Quebec City', 'Quebec', 'Canada', 'Nurse', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user14@movie.com'), 'Alice', 'Fairfield', '12/15/1992', 'F', 'Ottawa', 'Ontario', 'Canada', 'Taxi Driver', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user15@movie.com'), 'Jessica', 'Jones', '1/17/1983', 'F', 'New York City', 'New York', 'United States', 'Private Investigator', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user16@movie.com'), 'Fred', 'Kirkland', '2/23/1981', 'M', 'Gatineau', 'Quebec', 'Canada', 'Race Car Driver', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user17@movie.com'), 'Marcus', 'Chase', '3/4/1989', 'M', 'Toronto', 'Ontario', 'Canada', 'Stunt Man', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user18@movie.com'), 'Terry', 'Jordan', '4/21/1994', 'F', 'Ottawa', 'Ontario', 'Canada', 'Writer', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user19@movie.com'), 'Anne', 'Chu', '1/9/1994', 'F', 'Gatineau', 'Quebec', 'Canada', 'Banker', '', now(), now());
INSERT INTO profiles(id, user_id, first_name, last_name, date_of_birth, gender, city, province, country, occupation, picture, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM users WHERE email = 'user20@movie.com'), 'Rose', 'Flower', '8/12/1972', 'F', 'L''Ange-Gardien', 'Quebec', 'Canada', 'Mayor', '', now(), now());

INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Action', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Adventure', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Animation', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Biography', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Comedy', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Crime', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Documentary', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Drama', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Family', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Fantasy', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Film-Noir', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'History', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Horror', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Romance', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Musical', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Mystery', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Sci-Fi', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Sport', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Thriller', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'War', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Western', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Anime', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Adult', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Space', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Political', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Faith', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Independent', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Video Game', now(), now());
INSERT INTO topics(id, genre_name, created_at, updated_at) VALUES (DEFAULT, 'Novel', now(), now());

INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user1@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user2@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user3@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Animation'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user4@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Biography'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user5@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user6@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Crime'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user7@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Documentary'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user8@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user9@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Family'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user10@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Fantasy'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user11@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Film-Noir'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user12@movie.com'), (SELECT id FROM topics WHERE genre_name = 'History'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user13@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Horror'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user14@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user15@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Musical'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user16@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Mystery'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user17@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Sci-Fi'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user18@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Sport'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user19@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Thriller'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user20@movie.com'), (SELECT id FROM topics WHERE genre_name = 'War'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user1@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Western'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user2@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Anime'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user3@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Adult'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user4@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Space'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user5@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Political'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user6@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Faith'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user7@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Independent'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user8@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Video Game'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user9@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Novel'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user10@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user11@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user12@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Animation'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user13@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Biography'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user14@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user15@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Crime'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user16@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Documentary'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user17@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user18@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Family'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user19@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Fantasy'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user20@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Film-Noir'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user1@movie.com'), (SELECT id FROM topics WHERE genre_name = 'History'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user2@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Horror'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user3@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user4@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Musical'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user5@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Mystery'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user6@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Sci-Fi'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user7@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Sport'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user8@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Thriller'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user9@movie.com'), (SELECT id FROM topics WHERE genre_name = 'War'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user10@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Western'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user11@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Anime'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user12@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Adult'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user13@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Space'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user14@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Political'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user15@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Faith'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user16@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Independent'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user17@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Video Game'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user18@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Novel'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user19@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user20@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user1@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Animation'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user2@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Biography'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user3@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user4@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Crime'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user5@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Documentary'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user6@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user7@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Family'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user8@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Fantasy'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user9@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Film-Noir'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user10@movie.com'), (SELECT id FROM topics WHERE genre_name = 'History'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user11@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Horror'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user12@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user13@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Musical'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user14@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Mystery'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user15@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Sci-Fi'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user16@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Sport'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user17@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Thriller'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user18@movie.com'), (SELECT id FROM topics WHERE genre_name = 'War'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user19@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Western'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user20@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Anime'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user1@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Adult'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user2@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Space'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user3@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Political'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user4@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Faith'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user5@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Independent'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user6@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Video Game'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user7@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Novel'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user8@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user9@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user10@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Animation'), now(), now());
INSERT INTO likes_topics(id, profile_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT P.id FROM profiles P, users U WHERE U.id = P.user_id AND U.email = 'user11@movie.com'), (SELECT id FROM topics WHERE genre_name = 'Political'), now(), now());

INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'The Lord of the Rings: The Fellowship of the Ring', 'A meek Hobbit and eight companions set out on a journey to destroy the One Ring and the Dark Lord Sauron.', '12/19/2001', '2:58', 'USA', 'English', 'N', 'N', 'PG-13', 'http://vignette3.wikia.nocookie.net/lotr/images/7/74/LOTRFOTRmovie.jpg/revision/latest?cb=20150203040819', 'https://www.youtube.com/watch?v=V75dMMIW2B4', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'The Lord of the Rings: The Two Towers', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron''s new ally, Saruman, and his hordes of Isengard.', '12/18/2002', '2:59', 'USA', 'English', 'N', 'N', 'PG-13', 'https://www.movieposter.com/posters/archive/main/7/MPW-3576', 'https://www.youtube.com/watch?v=cvCktPUwkW0', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'The Lord of the Rings: The Return of the King', 'Gandalf and Aragorn lead the World of Men against Sauron''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', '12/17/2003', '3:21', 'USA', 'English', 'N', 'N', 'PG-13', 'https://www.movieposter.com/posters/archive/main/16/MPW-8295', 'https://www.youtube.com/watch?v=r5X-hFf6Bwo', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Howl''s Moving Castle', 'When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.', '6/17/2005', '1:59', 'Japan', 'Japanese', 'Y', 'Y', 'PG', 'https://fanart.tv/fanart/movies/4935/movieposter/howls-moving-castle-5216a7d1a7a67.jpg', 'https://www.youtube.com/watch?v=iwROgK94zcM', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Ghost', 'After an accident leaves a young man dead, his spirit stays behind to warn his lover of impending danger, with the help of a reluctant psychic.', '7/13/1990', '2:07', 'USA', 'English', 'N', 'N', 'PG-13', 'https://www.movieposter.com/posters/archive/main/106/MPW-53146', 'https://www.youtube.com/watch?v=4cOb3gfe4tQ', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'The Notebook', 'A poor and passionate young man falls in love with a rich young woman and gives her a sense of freedom. They soon are separated by their social differences.', '6/25/2004', '2:03', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ia.media-imdb.com/images/M/MV5BMTk3OTM5Njg5M15BMl5BanBnXkFtZTYwMzA0ODI3._V1_SX640_SY720_.jpg', 'https://www.youtube.com/watch?v=4M7LIcH8C9U', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'A Walk to Remember', 'The story of two North Carolina teens, Landon Carter and Jamie Sullivan, who are thrown together after Landon gets into trouble and is made to do community service.', '1/25/2002', '1:41', 'USA', 'English', 'N', 'N', 'PG', 'https://upload.wikimedia.org/wikipedia/en/d/dc/A_Walk_to_Remember_Poster.jpg', 'https://www.youtube.com/watch?v=EgdoQ8Oxu2E', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Dirty Dancing', 'Spending the summer at a Catskills resort with her family, Frances "Baby" Houseman falls in love with the camp''s dance instructor, Johnny Castle.', '8/21/1987', '1:40', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ecx.images-amazon.com/images/I/61PF6Oi%2BUhL._SY355_.jpg', 'https://www.youtube.com/watch?v=wcra0-0Gu4U', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Notting Hill', 'The life of a simple bookshop owner changes when he meets the most famous film star in the world.', '5/28/1999', '2:04', 'USA', 'English', 'N', 'N', 'PG-13', 'http://images.moviepostershop.com/notting-hill-movie-poster-1998-1020190961.jpg', 'https://www.youtube.com/watch?v=4RI0QvaGoiI', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Pretty Woman', 'A man in a legal but hurtful business needs an escort for some social events, and hires a beautiful prostitute he meets... only to fall in love.', '3/23/1990', '1:59', 'USA', 'English', 'N', 'N', 'R', 'http://cosmouk.cdnds.net/15/10/1280x1986/gallery_nrm_1425399318-pretty-woman-poster.jpg', 'https://www.youtube.com/results?search_query=pretty+woman+trailer', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Say Anything', 'A noble underachiever and a beautiful valedictorian fall in love the summer before she goes off to college.', '4/14/1989', '1:40', 'USA', 'English', 'N', 'N', 'PG-13', 'https://upload.wikimedia.org/wikipedia/en/8/8a/Say_Anything.jpg', 'https://www.youtube.com/watch?v=QeUnT3f7eAA', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Titanic', 'A seventeen-year-old aristocrat falls in love with a kind, but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', '12/19/1997', '3:14', 'USA', 'English', 'N', 'N', 'PG-13', 'http://cdn.traileraddict.com/content/paramount-pictures/titanic.jpg', 'https://www.youtube.com/watch?v=zCy5WQ9S4c0', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'P.S. I Love You', 'A young widow discovers that her late husband has left her 10 messages intended to help ease her pain and start a new life.', '12/21/2007', '2:06', 'USA', 'English', 'N', 'N', 'PG-13', 'https://natashastander.files.wordpress.com/2014/01/ps-i-love-you-poster.jpg', 'https://www.youtube.com/watch?v=CZzW6_hR068', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Legends of the Fall', 'Epic tale of three brothers and their father living in the remote wilderness of 1900s USA and how their lives are affected by nature, history, war, love and betrayal.', '1/13/1995', '2:13', 'USA', 'English', 'N', 'N', 'R', 'https://www.movieposter.com/posters/archive/main/63/MPW-31979', 'https://www.youtube.com/watch?v=oEr4rhfDKcQ', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Troy', 'An adaptation of Homer''s great epic, the film follows the assault on Troy by the united Greek forces and chronicles the fates of the men involved.', '5/14/2004', '2:43', 'USA', 'English', 'N', 'N', 'R', 'https://upload.wikimedia.org/wikipedia/en/b/b8/Troy2004Poster.jpg', 'https://www.youtube.com/watch?v=znTLzRJimeY', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Se7en', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his modus operandi.', '9/22/1995', '2:07', 'USA', 'English', 'N', 'N', 'R', 'http://img.goldposter.com/2015/04/Se7en_poster_goldposter_com_1.jpg', 'https://www.youtube.com/watch?v=J4YV2_TcCoE', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'House of Flying Daggers', 'A romantic police captain breaks a beautiful member of a rebel group out of prison to help her rejoin her fellows, but things are not what they seem.', '7/16/2004', '1:59', 'China', 'Mandarin', 'Y', 'Y', 'PG-13', 'http://static.rogerebert.com/uploads/movie/movie_poster/house-of-flying-daggers-2004/large_Ar5Ev4nycoJsrPYaabMCrTvPHIe.jpg', 'https://www.youtube.com/watch?v=-GLVaSYzAvg', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Hero', 'A defense officer, Nameless, was summoned by the King of Qin regarding his success of terminating three warriors.', '10/24/2002', '1:39', 'China', 'Mandarin', 'Y', 'N', 'PG-13', 'https://upload.wikimedia.org/wikipedia/en/0/08/Hero_poster.jpg', 'https://www.youtube.com/watch?v=srFhXDZhUZI', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Red Cliff', 'The first chapter of a two-part story centered on a battle fought in China''s Three Kingdoms period (220-280 A.D.).', '7/10/2008', '1:28', 'China', 'Mandarin', 'Y', 'N', 'R', 'https://upload.wikimedia.org/wikipedia/en/c/cf/Redcliffposter.jpg', 'https://www.youtube.com/watch?v=pd0bqLQrtdE', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Red Cliff II', 'In this sequel to Red Cliff, Chancellor Cao Cao convinces Emperor Xian of the Han to initiate a battle against the two Kingdoms of Shu and Wu, who have become allied forces, against all expectations. Red Cliff will be the site for the gigantic battle.', '1/7/2009', '1:39', 'China', 'Mandarin', 'Y', 'N', 'R', 'http://oneguyrambling.com/wp-content/uploads/2009/12/red-cliff-2.jpg', 'https://www.youtube.com/watch?v=M2KkencnKKc', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Terminator', 'A human-looking indestructible cyborg is sent from 2029 to 1984 to assassinate a waitress, whose unborn son will lead humanity in a war against the machines, while a soldier from that war is sent to protect her at all costs.', '10/26/1984', '1:47', 'USA', 'English', 'N', 'N', 'R', 'http://ia.media-imdb.com/images/M/MV5BODE1MDczNTUxOV5BMl5BanBnXkFtZTcwMTA0NDQyNA@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=lHz95RYUbik', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Alien', 'After a space merchant vessel perceives an unknown transmission as distress call, their landing on the source planet finds one of the crew attacked by a mysterious lifeform. ', '6/22/1979', '1:57', 'USA', 'English', 'N', 'N', 'R', 'http://ia.media-imdb.com/images/M/MV5BMTU1ODQ4NjQyOV5BMl5BanBnXkFtZTgwOTQ3NDU2MTE@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=LjLamj-b0I8', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Prometheus', 'Following clues to the origin of mankind a team journey across the universe and find a structure on a distant planet containing a monolithic statue of a humanoid head and stone cylinders of alien blood but they soon find they are not alone.', '6/8/2012', '2:04', 'USA', 'English', 'N', 'N', 'R', 'http://ia.media-imdb.com/images/M/MV5BMTY3NzIyNTA2NV5BMl5BanBnXkFtZTcwNzE2NjI4Nw@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=sftuxbvGwiU', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Sphere', 'A spaceship is discovered under three hundred years'' worth of coral growth at the bottom of the ocean.', '2/13/1998', '2:14', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ia.media-imdb.com/images/M/MV5BMTUyNTE2MjEyNV5BMl5BanBnXkFtZTcwODQ0NTYxMQ@@._V1_UY268_CR6,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=kozds_anirw', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Star Wars: Episode IV – A New Hope', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a wookiee and two droids to save the galaxy from the Empire''s world-destroying battle-station, while also attempting to rescue Princess Leia from the evil Darth Vader.', '5/25/1977', '2:01', 'USA', 'English', 'N', 'N', 'PG', 'http://ia.media-imdb.com/images/M/MV5BOTIyMDY2NGQtOGJjNi00OTk4LWFhMDgtYmE3M2NiYzM0YTVmXkEyXkFqcGdeQXVyNTU1NTcwOTk@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=1g3_CFmnU7k', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'The Big Short', 'Four denizens in the world of high-finance predict the credit and housing bubble collapse of the mid-2000s, and decide to take on the big banks for their greed and lack of foresight.', '12/23/2015', '2:10', 'USA', 'English', 'N', 'N', 'R', 'http://ia.media-imdb.com/images/M/MV5BMjM2MTQ2MzcxOF5BMl5BanBnXkFtZTgwNzE4NTUyNzE@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=vgqG3ITMv1Q', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Shall We Dance?', 'A successful but unhappy Japanese accountant finds the missing passion in his life when he begins to secretly take ballroom dance lessons.', '7/11/1997', '2:16', 'Japan', 'Japanese', 'Y', 'N', 'PG', 'http://ia.media-imdb.com/images/M/MV5BMTk2Nzk4MTcyMF5BMl5BanBnXkFtZTcwMDI0NDMzMQ@@._V1_UY268_CR3,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=zQWEhPYwuY4', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Shall We Dance?', 'A romantic comedy where a bored, overworked Estate Lawyer, upon first sight of a beautiful instructor, signs up for ballroom dancing lessons.', '10/15/2004', '1:44', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ia.media-imdb.com/images/M/MV5BMTcwODUwMTMxN15BMl5BanBnXkFtZTcwNzc3MjcyMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=UGtS3CL-zpo', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Forrest Gump', 'Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.', '7/6/1994', '2:22', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ia.media-imdb.com/images/M/MV5BMTI1Nzk1MzQwMV5BMl5BanBnXkFtZTYwODkxOTA5._V1_UY268_CR2,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=uPIEn0M8su0', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Les Miserables', 'In 19th-century France, Jean Valjean, who for decades has been hunted by the ruthless policeman Javert after breaking parole, agrees to care for a factory worker''s daughter. The decision changes their lives forever.', '12/25/2012', '2:38', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ia.media-imdb.com/images/M/MV5BMTQ4NDI3NDg4M15BMl5BanBnXkFtZTcwMjY5OTI1OA@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=YmvHzCLP6ug', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Gattica', 'A genetically inferior man assumes the identity of a superior one in order to pursue his lifelong dream of space travel.', '10/24/1997', '1:46', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ia.media-imdb.com/images/M/MV5BNzQxMzU3OTQwNF5BMl5BanBnXkFtZTYwNDUyNTE5._V1_UY268_CR3,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=hWjlUj7Czlk', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Larry Crowne', 'After losing his job, a middle-aged man reinvents himself by going back to college.', '7/1/2011', '1:38', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ia.media-imdb.com/images/M/MV5BMTM1NzAyNTEwN15BMl5BanBnXkFtZTcwODYyNTEzNQ@@._V1._CR68,54,886,1396_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=1UNtrqRG7GA', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Up', 'Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.', '5/29/2009', '1:36', 'USA', 'English', 'N', 'N', 'PG', 'http://ia.media-imdb.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=qas5lWp7_R0', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Toy Story', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy''s room.', '11/22/1995', '1:21', 'USA', 'English', 'N', 'N', 'G', 'http://ia.media-imdb.com/images/M/MV5BMTgwMjI4MzU5N15BMl5BanBnXkFtZTcwMTMyNTk3OA@@._V1_UY268_CR9,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=KYz2wyBy3kc', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Star Trek: Into Darkness', 'After the crew of the Enterprise find an unstoppable force of terror from within their own organization, Captain Kirk leads a manhunt to a war-zone world to capture a one-man weapon of mass destruction.', '5/16/2013', '2:12', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ia.media-imdb.com/images/M/MV5BMTk2NzczOTgxNF5BMl5BanBnXkFtZTcwODQ5ODczOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=QAEkuVgt6Aw', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Batman Begins', 'After training with his mentor, Batman begins his war on crime to free the crime-ridden Gotham City from corruption that the Scarecrow and the League of Shadows have cast upon it.', '6/15/2005', '2:20', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ia.media-imdb.com/images/M/MV5BNTM3OTc0MzM2OV5BMl5BanBnXkFtZTYwNzUwMTI3._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=neY2xVmOfUM', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Bridge of Spies', 'During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.', '10/16/2015', '2:22', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ia.media-imdb.com/images/M/MV5BMjIxOTI0MjU5NV5BMl5BanBnXkFtZTgwNzM4OTk4NTE@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=mBBuzHrZBro', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Avatar', 'A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', '12/18/2009', '2:42', 'USA', 'English', 'N', 'N', 'PG-13', 'http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=5PSNL1qE6VY', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Deadpool', 'A former Special Forces operative turned mercenary is subjected to a rogue experiment that leaves him with accelerated healing powers, adopting the alter ego Deadpool.', '2/12/2016', '1:48', 'USA', 'English', 'N', 'N', 'R', 'http://ia.media-imdb.com/images/M/MV5BMjQyODg5Njc4N15BMl5BanBnXkFtZTgwMzExMjE3NzE@._V1_UY268_CR1,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=ZIM1HydF9UA', now(), now());
INSERT INTO movies(id, movie_name, description, date_released, duration, country, language, subtitles, dubbed, age_rating, poster, trailer, created_at, updated_at) VALUES (DEFAULT, 'Amelie', 'Amelie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.', '2/8/2002', '2:02', 'France', 'French', 'Y', 'N', 'R', 'http://ia.media-imdb.com/images/M/MV5BMTYzNjkxMTczOF5BMl5BanBnXkFtZTgwODg5NDc2MjE@._V1_UX182_CR0,0,182,268_AL_.jpg', 'https://www.youtube.com/watch?v=2UT5xaAfxWU', now(), now());

INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Lord of the Rings: The Fellowship of the Ring' AND duration = '2:58'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Lord of the Rings: The Fellowship of the Ring' AND duration = '2:58'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Lord of the Rings: The Fellowship of the Ring' AND duration = '2:58'), (SELECT id FROM topics WHERE genre_name = 'Fantasy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Lord of the Rings: The Two Towers' AND duration = '2:59'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Lord of the Rings: The Two Towers' AND duration = '2:59'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Lord of the Rings: The Two Towers' AND duration = '2:59'), (SELECT id FROM topics WHERE genre_name = 'Fantasy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Lord of the Rings: The Return of the King' AND duration = '3:21'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Lord of the Rings: The Return of the King' AND duration = '3:21'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Lord of the Rings: The Return of the King' AND duration = '3:21'), (SELECT id FROM topics WHERE genre_name = 'Fantasy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Howl''s Moving Castle' AND duration = '1:59'), (SELECT id FROM topics WHERE genre_name = 'Anime'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Howl''s Moving Castle' AND duration = '1:59'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Howl''s Moving Castle' AND duration = '1:59'), (SELECT id FROM topics WHERE genre_name = 'Family'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Ghost' AND duration = '2:07'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Ghost' AND duration = '2:07'), (SELECT id FROM topics WHERE genre_name = 'Family'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Ghost' AND duration = '2:07'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Notebook' AND duration = '2:03'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Notebook' AND duration = '2:03'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'A Walk to Remember' AND duration = '1:41'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'A Walk to Remember' AND duration = '1:41'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Dirty Dancing' AND duration = '1:40'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Dirty Dancing' AND duration = '1:40'), (SELECT id FROM topics WHERE genre_name = 'Music'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Dirty Dancing' AND duration = '1:40'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Notting Hill' AND duration = '2:04'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Notting Hill' AND duration = '2:04'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Notting Hill' AND duration = '2:04'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Pretty Woman' AND duration = '1:59'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Pretty Woman' AND duration = '1:59'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Say Anything' AND duration = '1:40'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Say Anything' AND duration = '1:40'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Say Anything' AND duration = '1:40'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Titanic' AND duration = '3:14'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Titanic' AND duration = '3:14'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'P.S. I Love You' AND duration = '2:06'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'P.S. I Love You' AND duration = '2:06'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Legends of the Fall' AND duration = '2:13'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Legends of the Fall' AND duration = '2:13'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Legends of the Fall' AND duration = '2:13'), (SELECT id FROM topics WHERE genre_name = 'War'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Troy' AND duration = '2:43'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Troy' AND duration = '2:43'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Se7en' AND duration = '2:07'), (SELECT id FROM topics WHERE genre_name = 'Crime'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Se7en' AND duration = '2:07'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Se7en' AND duration = '2:07'), (SELECT id FROM topics WHERE genre_name = 'Mystery'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'House of Flying Daggers' AND duration = '1:59'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'House of Flying Daggers' AND duration = '1:59'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'House of Flying Daggers' AND duration = '1:59'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Hero' AND duration = '1:39'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Hero' AND duration = '1:39'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Hero' AND duration = '1:39'), (SELECT id FROM topics WHERE genre_name = 'History'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Red Cliff' AND duration = '1:28'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Red Cliff' AND duration = '1:28'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Red Cliff' AND duration = '1:28'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Red Cliff II' AND duration = '1:39'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Red Cliff II' AND duration = '1:39'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Red Cliff II' AND duration = '1:39'), (SELECT id FROM topics WHERE genre_name = 'History'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Terminator' AND duration = '1:47'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Terminator' AND duration = '1:47'), (SELECT id FROM topics WHERE genre_name = 'Sci-Fi'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Alien' AND duration = '1:57'), (SELECT id FROM topics WHERE genre_name = 'Horror'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Alien' AND duration = '1:57'), (SELECT id FROM topics WHERE genre_name = 'Sci-Fi'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Prometheus' AND duration = '2:04'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Prometheus' AND duration = '2:04'), (SELECT id FROM topics WHERE genre_name = 'Mystery'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Prometheus' AND duration = '2:04'), (SELECT id FROM topics WHERE genre_name = 'Sci-Fi'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Sphere' AND duration = '2:14'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Sphere' AND duration = '2:14'), (SELECT id FROM topics WHERE genre_name = 'Mystery'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Sphere' AND duration = '2:14'), (SELECT id FROM topics WHERE genre_name = 'Sci-Fi'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Star Wars: Episode IV – A New Hope' AND duration = '2:01'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Star Wars: Episode IV – A New Hope' AND duration = '2:01'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Star Wars: Episode IV – A New Hope' AND duration = '2:01'), (SELECT id FROM topics WHERE genre_name = 'Fantasy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Big Short' AND duration = '2:10'), (SELECT id FROM topics WHERE genre_name = 'Biography'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Big Short' AND duration = '2:10'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'The Big Short' AND duration = '2:10'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Shall We Dance?' AND duration = '2:16'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Shall We Dance?' AND duration = '2:16'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Shall We Dance?' AND duration = '2:16'), (SELECT id FROM topics WHERE genre_name = 'Music'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Shall We Dance?' AND duration = '1:44'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Shall We Dance?' AND duration = '1:44'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Shall We Dance?' AND duration = '1:44'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Forrest Gump' AND duration = '2:22'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Forrest Gump' AND duration = '2:22'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Les Miserables' AND duration = '2:38'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Les Miserables' AND duration = '2:38'), (SELECT id FROM topics WHERE genre_name = 'Music'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Les Miserables' AND duration = '2:38'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Gattica' AND duration = '1:46'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Gattica' AND duration = '1:46'), (SELECT id FROM topics WHERE genre_name = 'Sci-Fi'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Gattica' AND duration = '1:46'), (SELECT id FROM topics WHERE genre_name = 'Thriller'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Larry Crowne' AND duration = '1:38'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Larry Crowne' AND duration = '1:38'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Larry Crowne' AND duration = '1:38'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Up' AND duration = '1:36'), (SELECT id FROM topics WHERE genre_name = 'Animation'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Up' AND duration = '1:36'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Up' AND duration = '1:36'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Toy Story' AND duration = '1:21'), (SELECT id FROM topics WHERE genre_name = 'Animation'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Toy Story' AND duration = '1:21'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Toy Story' AND duration = '1:21'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Star Trek: Into Darkness' AND duration = '2:12'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Star Trek: Into Darkness' AND duration = '2:12'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Star Trek: Into Darkness' AND duration = '2:12'), (SELECT id FROM topics WHERE genre_name = 'Sci-Fi'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Batman Begins' AND duration = '2:20'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Batman Begins' AND duration = '2:20'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Bridge of Spies' AND duration = '2:22'), (SELECT id FROM topics WHERE genre_name = 'Drama'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Bridge of Spies' AND duration = '2:22'), (SELECT id FROM topics WHERE genre_name = 'History'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Bridge of Spies' AND duration = '2:22'), (SELECT id FROM topics WHERE genre_name = 'Thriller'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Avatar' AND duration = '2:42'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Avatar' AND duration = '2:42'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Avatar' AND duration = '2:42'), (SELECT id FROM topics WHERE genre_name = 'Fantasy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Deadpool' AND duration = '1:48'), (SELECT id FROM topics WHERE genre_name = 'Action'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Deadpool' AND duration = '1:48'), (SELECT id FROM topics WHERE genre_name = 'Adventure'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Deadpool' AND duration = '1:48'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Amelie' AND duration = '2:02'), (SELECT id FROM topics WHERE genre_name = 'Comedy'), now(), now());
INSERT INTO movie_topics(id, movie_id, topic_id, created_at, updated_at) VALUES (DEFAULT, (SELECT id FROM movies WHERE movie_name = 'Amelie' AND duration = '2:02'), (SELECT id FROM topics WHERE genre_name = 'Romance'), now(), now());


//////////////////////////////////////////////////////


INSERT INTO actors(actor_id,first_name,last_name,date_of_birth,place_of_birth,gender) VALUES
(DEFAULT,'Elijah','Wood','1981-01-28','American','M'), -- 1
(DEFAULT,'Ian','McKellen','1939-05-25','English','M'), -- 2
(DEFAULT,'Orlando','Bloom','1977-01-13','English','M'), -- 3
(DEFAULT,'Viggo','Mortensen','1958-10-20','American','M'), -- 4
(DEFAULT,'Chieko','Baishou','1941-06-29','Japanese','F'), -- 5
(DEFAULT,'Takuya','Kimura','1972-11-13','Japanese','M'), --6
(DEFAULT,'Tatsuya','Gashuuin','1950-12-10','Japanese','M'), -- 7
(DEFAULT,'Patrick','Swayze','1952-09-14','American','M'), -- 8
(DEFAULT,'Demi','Moore','1962-11-11','American','F'), -- 9
(DEFAULT,'Tony','Goldwyn','1960-05-20','American','M'), -- 10
(DEFAULT,'Rachel','McAdams','1978-11-17','Canadian','F'), -- 11
(DEFAULT,'Ryan','Gosling','1980-11-12','Canadian','M'), -- 12
(DEFAULT,'James','Marsden','1973-09-18','American','M'), -- 13
(DEFAULT,'Shane','West','1978-06-10','American','M'), -- 14
(DEFAULT,'Mandy','Moore','1984-04-10','American','F'), -- 15
(DEFAULT,'Jennifer','Grey','1960-03-26','American','F'), -- 16
(DEFAULT,'Julia','Roberts','1967-10-28','American','F'), -- 17
(DEFAULT,'Hugh','Grant','1960-09-09','English','M'), -- 18
(DEFAULT,'Richard','Gere','1949-08-31','American','M'), -- 19
(DEFAULT,'John','Cusack','1966-06-28','American','M'), -- 20
(DEFAULT,'Ione','Skye','1970-09-04','English','F'), -- 21
(DEFAULT,'Leonardo','DiCaprio','1974-11-11','American','M'), -- 22
(DEFAULT,'Kate','Winslet','1975-10-05','English','F'), -- 23
(DEFAULT,'Gerald','Butler','1969-11-13','Scottish','M'), -- 24
(DEFAULT,'Hillary','Swank','1974-07-30','American','F'), -- 25
(DEFAULT,'Brad','Pitt','1963-12-18','American','M'), --26
(DEFAULT,'Anthony','Hopkins','1937-12-31','English','M'), -- 27
(DEFAULT,'Julia','Ormond','1965-01-04','English','F'), -- 28
(DEFAULT,'Aiden','Quinn','1959-03-08','American','M'), -- 29
(DEFAULT,'Henry','Thomas','1971-09-09','American','M'), -- 30
(DEFAULT,'Eric','Bana','1968-08-09','Austrailian','M'), -- 31
(DEFAULT,'Diane','Kruger','1976-07-15','German','F'), -- 32
(DEFAULT,'Brian','Cox','1946-06-01','Scottish','M'), -- 33
(DEFAULT,'Sean','Bean','1959-04-17','English','M'), -- 34
(DEFAULT,'Rose','Byrne','1979-07-24','Austrailian','F'), -- 35
(DEFAULT,'Morgan','Freeman','1937-06-01','American','M'), -- 36
(DEFAULT,'Gwyneth','Paltrow','1972-09-27','American','F'), -- 37
(DEFAULT,'Takeshi','Kaneshiro','1973-10-11','Japanese/Taiwanese','M'), -- 38
(DEFAULT,'Andy','Lau','1961-09-27','Chinese','M'), -- 39
(DEFAULT,'ZiYi','Zhang','1979-02-09','Chinese','F'), -- 40
(DEFAULT,'Jet','Li','1963-04-26','Chinese','M'), -- 41
(DEFAULT,'Tony','Leung','1962-06-27','Chinese','M'), -- 42
(DEFAULT,'Maggie','Cheung','1964-09-20','Chinese','F'), -- 43
(DEFAULT,'Fengyi','Zhang','1956-09-01','Chinese','M'), -- 44
(DEFAULT,'Wei','Zhao','1976-03-12','Chinese','F'); -- 45

INSERT INTO roles(role_id,character_name) VALUES
(DEFAULT,'Frodo'), -- 1
(DEFAULT,'Gandalf'), -- 2
(DEFAULT,'Legolas'), -- 3
(DEFAULT,'Aragorn'), -- 4
(DEFAULT,'Boromir'), -- 5
(DEFAULT,'Sofie'), -- 6
(DEFAULT,'Howl'), -- 7
(DEFAULT,'Calcifer'), -- 8
(DEFAULT,'Sam Wheat'), -- 9
(DEFAULT,'Molly Jensen'), -- 10
(DEFAULT,'Allie'), -- 11
(DEFAULT,'Noah'), -- 12
(DEFAULT,'Lon Hammond'), -- 13
(DEFAULT,'Landon Carter'), -- 14
(DEFAULT,'Jamie Sullivan'), -- 15
(DEFAULT,'Baby Houseman'), -- 16
(DEFAULT,'Johnny Castle'), -- 17
(DEFAULT,'Anna Scott'), -- 18
(DEFAULT,'William Thacker'), -- 19
(DEFAULT,'Edward Lewis'), -- 20
(DEFAULT,'Vivian Ward'), -- 21
(DEFAULT,'Lloyd Dobler'), -- 22
(DEFAULT,'Diane Court'), -- 23
(DEFAULT,'Jack Dawson'), -- 24
(DEFAULT,'Rose DeWitt Bukater'), -- 25
(DEFAULT,'Gerry'), -- 26
(DEFAULT,'Holly'), -- 27
(DEFAULT,'Tristan Ludlow'), -- 28
(DEFAULT,'Col. William Ludlow'), -- 29
(DEFAULT,'Susannah Fincannon'), -- 30
(DEFAULT,'Alfred Ludlow'), -- 31
(DEFAULT,'Samuel Ludlow'), -- 32
(DEFAULT,'Achilles'), -- 33
(DEFAULT,'Hector'), -- 34
(DEFAULT,'Helen'), -- 35
(DEFAULT,'Paris'), -- 36
(DEFAULT,'Agamemnon'), -- 37
(DEFAULT,'Briseis'), -- 38
(DEFAULT,'Mills'), -- 39
(DEFAULT,'Somerset'), -- 40
(DEFAULT,'Tracy'), -- 41
(DEFAULT,'Jin'), -- 42
(DEFAULT,'Leo'), -- 43
(DEFAULT,'Xiao Mei'), -- 44
(DEFAULT,'Nameless'), -- 45
(DEFAULT,'Broken Sword'), -- 46
(DEFAULT,'Flying Snow'), -- 47
(DEFAULT,'Moon'), -- 48
(DEFAULT,'Zhou Yu'), -- 49
(DEFAULT,'Zhuge Liang'), -- 50
(DEFAULT,'Cao Cao'), -- 51
(DEFAULT,'Sun Shangxiang'), -- 52
(DEFAULT,'Carl Bruner'), -- 53
(DEFAULT,'Odysseus'); -- 54

INSERT INTO movie_casts(movie_id,actor_id,casting_role) VALUES
(1,1,'Star'),
(1,2,'Star'),
(1,3,'Star'),
(1,34,'Supporting'),
(2,1,'Star'),
(2,2,'Star'),
(2,4,'Star'),
(3,1,'Star'),
(3,4,'Star'),
(3,2,'Star'),
(4,5,'Star'),
(4,6,'Star'),
(4,7,'Star'),
(5,8,'Star'),
(5,9,'Star'),
(5,10,'Supporting'),
(6,11,'Star'),
(6,12,'Star'),
(6,13,'Supporting'),
(7,14,'Star'),
(7,15,'Star'),
(8,8,'Star'),
(8,16,'Star'),
(9,17,'Star'),
(9,18,'Star'),
(10,17,'Star'),
(10,19,'Star'),
(11,20,'Star'),
(11,21,'Star'),
(12,22,'Star'),
(12,23,'Star'),
(13,24,'Star'),
(13,25,'Star'),
(14,26,'Star'),
(14,27,'Supporting'),
(14,28,'Supporting'),
(14,29,'Supporting'),
(14,30,'Supporting'),
(15,26,'Star'),
(15,31,'Supporting'),
(15,3,'Supporting'),
(15,32,'Supporting'),
(15,33,'Supporting'),
(15,34,'Supporting'),
(15,35,'Supporting'),
(16,26,'Star'),
(16,36,'Star'),
(16,37,'Supporting'),
(17,38,'Star'),
(17,39,'Star'),
(17,40,'Star'),
(18,41,'Star'),
(18,42,'Star'),
(18,43,'Star'),
(18,40,'Supporting'),
(19,42,'Star'),
(19,38,'Star'),
(19,44,'Star'),
(19,45,'Supporting'),
(20,42,'Star'),
(20,38,'Star'),
(20,44,'Star'),
(20,45,'Supporting');

INSERT INTO actor_roles(actor_id,role_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(34,5),
(5,6),
(6,7),
(7,8),
(8,9),
(9,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(8,17),
(17,18),
(18,19),
(19,20),
(17,21),
(20,22),
(21,23),
(22,24),
(23,25),
(24,26),
(25,27),
(26,28),
(27,29),
(28,30),
(29,31),
(30,32),
(26,33),
(31,34),
(32,35),
(3,36),
(33,37),
(35,38),
(26,39),
(36,40),
(37,41),
(38,42),
(39,43),
(40,44),
(41,45),
(42,46),
(43,47),
(40,48),
(42,49),
(38,50),
(44,51),
(45,52),
(10,53),
(34,54);

INSERT INTO movie_roles(movie_id,role_id) VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(2,1),
(2,2),
(2,3),
(2,4),
(3,1),
(3,2),
(3,3),
(3,4),
(4,6),
(4,7),
(4,8),
(5,9),
(5,10),
(5,53),
(6,11),
(6,12),
(6,13),
(7,14),
(7,15),
(8,16),
(8,17),
(9,18),
(9,19),
(10,20),
(10,21),
(11,22),
(11,23),
(12,24),
(12,25),
(13,26),
(13,27),
(14,28),
(14,29),
(14,30),
(14,31),
(14,32),
(15,33),
(15,34),
(15,35),
(15,36),
(15,37),
(15,38),
(15,54),
(16,39),
(16,40),
(16,41),
(17,42),
(17,43),
(17,44),
(18,45),
(18,46),
(18,47),
(18,48),
(19,49),
(19,50),
(19,51),
(19,52),
(20,49),
(20,50),
(20,51),
(20,52);

INSERT INTO directors(director_id,first_name,last_name,place_of_birth) VALUES
(DEFAULT,'Peter','Jackson','New Zealand'),
(DEFAULT,'Hayao','Miyazaki','Japan'),
(DEFAULT,'Jerry','Zucker','USA'),
(DEFAULT,'Nick','Cassavetees','USA'),
(DEFAULT,'Adam','Shankman','USA'),
(DEFAULT,'Emile','Ardolino','USA'),
(DEFAULT,'Roger','Michell','South Africa'),
(DEFAULT,'Garry','Marshall','USA'),
(DEFAULT,'Cameron','Crowe','USA'),
(DEFAULT,'James','Cameron','Canada'),
(DEFAULT,'Richard','LaGravenese','USA'),
(DEFAULT,'Edward','Zwick','USA'),
(DEFAULT,'Wolfgang','Peterson','Germany'),
(DEFAULT,'David','Fincher','USA'),
(DEFAULT,'Yimou','Zhang','China'),
(DEFAULT,'John','Woo','China');

INSERT INTO directs(director_id,movie_id) VALUES
(1,1),
(1,2),
(1,3),
(2,4),
(3,5),
(4,6),
(5,7),
(6,8),
(7,9),
(8,10),
(9,11),
(10,12),
(11,13),
(12,14),
(13,15),
(14,16),
(15,17),
(15,18),
(16,19),
(16,20);

INSERT INTO studios(studio_id,studio_name,country) VALUES
(DEFAULT,'New Line Cinema','New Zealand'), -- oops, supposed to be USA! will modify this row into another studio!!
(DEFAULT,'WingNut Films','New Zealand'),
(DEFAULT,'The Saul Zaentz Company','USA'),
(DEFAULT,'Buena Vista Home Entertainment','Japan'),
(DEFAULT,'DENTSU Music and Entertainment','Japan'),
(DEFAULT,'Mitsubishi','Japan'),
(DEFAULT,'Nippon Television Network','Japan'),
(DEFAULT,'Studio Ghibli','Japan'),
(DEFAULT,'Tohokushinsha Film Corporation','Japan'),
(DEFAULT,'Tokuma Shoten','Japan'),
(DEFAULT,'d-rights','Japan'),
(DEFAULT,'Paramount Pictures','USA'), -- 12
(DEFAULT,'New Line Cinema','USA'),
(DEFAULT,'Warner Bros','USA'), -- 14
(DEFAULT,'Pandora Cinema','USA'),
(DEFAULT,'Great American Films Limited Partnership','USA'),
(DEFAULT,'Vestron Pictures','USA'),
(DEFAULT,'Polygram Filmed Entertainment','USA'),
(DEFAULT,'Working Titles Films','Great Britain'),
(DEFAULT,'Touchstone Pictures','USA'),
(DEFAULT,'Gracie Films','USA'),
(DEFAULT,'Twentieth Century Fox Film Corporation','USA'),
(DEFAULT,'Alcon Entertainment','USA'),
(DEFAULT,'Grosvenor Park Productions','Great Britain'),
(DEFAULT,'TriStar Pictures','USA'),
(DEFAULT,'Bedford Falls Company','USA'),
(DEFAULT,'Helena Productions','Great Britain'),
(DEFAULT,'Cecchi Gori Pictures','USA'),
(DEFAULT,'Beijing New Picture Film Co.','China'),
(DEFAULT,'China Film Co-Production Corporation','China'),
(DEFAULT,'Beijing Film Studio','China'),
(DEFAULT,'China Film Group','China'),
(DEFAULT,'Lion Rock Productions','USA');

INSERT INTO sponsors(studio_id,movie_id) VALUES
(13,1),
(2,1),
(3,1),
(13,2),
(2,2),
(3,2),
(13,3),
(2,3),
(3,3),
(4,4),
(5,4),
(6,4),
(7,4),
(8,4),
(9,4),
(10,4),
(11,4),
(12,5),
(13,6),
(14,7),
(15,7),
(16,8),
(17,8),
(18,9),
(19,9),
(20,10),
(21,11),
(22,11),
(22,12),
(12,12),
(23,13),
(24,13),
(25,14),
(26,14),
(14,15),
(27,15),
(28,16),
(13,16),
(29,17),
(30,17),
(29,18),
(30,18),
(31,19),
(32,19),
(33,19),
(31,20),
(32,20),
(33,20);
