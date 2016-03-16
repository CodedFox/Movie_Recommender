--All data inputs for the Movie Recommendation system

INSERT INTO userAccount(userID,password,firstName,lastName,yearBorn,email,city,province,country) VALUES
(DEFAULT,"ilovelotr","Jonathan","Buttbutt",1900,"lotrfan@boy.ca","Ottawa","Ontario","Canada");

INSERT INTO profile(userID,ageRange,gender,occupation) VALUES
(1,"100+","M","Student");

INSERT INTO device(deviceID,deviceName) VALUES
(DEFAULT,"Desktop"),
(DEFAULT,"Mobile"),
(DEFAULT,"Both");

INSERT INTO deviceUsed(deviceID,userID) VALUES
(1,3);

INSERT INTO topic(topicID,genre) VALUES -- change to int?
(DEFAULT,"Action"), -- 1
(DEFAULT,"Adventure"), -- 2
(DEFAULT,"Animation"), -- 3
(DEFAULT,"Biography"), -- 4
(DEFAULT,"Comedy"), -- 5
(DEFAULT,"Crime"), -- 6
(DEFAULT,"Documentary"), -- 7
(DEFAULT,"Drama"), -- 8
(DEFAULT,"Family"), -- 9
(DEFAULT,"Fantasy"), -- 10
(DEFAULT,"Film-Noir"), -- 11
(DEFAULT,"History"), -- 12
(DEFAULT,"Horror"), -- 13
(DEFAULT,"Music"), -- 14
(DEFAULT,"Musical"), -- 15
(DEFAULT,"Mystery"), -- 16
(DEFAULT,"Romance"), -- 17
(DEFAULT,"Sci-Fi"), -- 18
(DEFAULT,"Sport"), -- 19
(DEFAULT,"Thiller"), -- 20
(DEFAULT,"War"), -- 21
(DEFAULT,"Western"); -- 22

INSERT INTO TABLE movie(movieID,name,description,dateReleased,duration,language,subtitles,country,ageRating) VALUES
(DEFAULT,
"The Lord of the Rings: The Fellowship of the Ring",
"A meek Hobbit and eight companions set out on a journey to destroy the One Ring and the Dark Lord Sauron.",
"2001-12-19",
"2h 58min", -- hours & minutes split?
"English",
"N",
"New Zealand", -- & USA?
"PG-13"),

(DEFAULT,
"The Lord of the Rings: The Two Towers",
"While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron's new ally, Saruman, and his hordes of Isengard.",
"2002-12-18",
"2h 59min", -- hours & minutes split?
"English",
"N",
"New Zealand", -- & USA?
"PG-13"),

(DEFAULT,
"The Lord of the Rings: The Return of the King",
"Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.",
"2003-12-17",
"3h 21min", -- hours & minutes split?
"English",
"N",
"New Zealand", -- & USA?
"PG-13"),

(DEFAULT,
"Howl's Moving Castle",
"When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.",
"2005-06-17",
"1h 59min", -- hours & minutes split?
"English", -- ?
"N", -- ?
"Japan",
"PG");

INSERT INTO TABLE watches(userID,movieID,dateWatched,userRating) VALUES
(1,1,"2001-12-19",10),
(1,2,"2002-12-18",10),
(1,3,"2003-12-17",10),
(1,4,"2005-06-17",10);

INSERT INTO TABLE movieTopic(topicID,movieID) VALUES -- switch?
(2,1), 
(8,1),
(10,1),
(2,2), 
(8,2),
(10,2),
(2,3), 
(8,3),
(10,3),
(2,4), 
(3,4),
(9,4);

INSERT INTO TABLE actor(actorID,firstName,lastName,dateOfBirth,nationality,gender) VALUES -- "D" to "d"
(DEFAULT,"Elijah","Wood","1981-01-28","American","M"),
(DEFAULT,"Ian","McKellen","1939-05-25","English","M"),
(DEFAULT,"Orlando","Bloom","1977-01-13","English","M"),
(DEFAULT,"Viggo","Mortensen","1958-10-20","American","M"),
(DEFAULT,"Chieko","Baishou","1941-06-29","Japanese","F"),
(DEFAULT,"Takuya","Kimura","1972-11-13","Japanese","M"),
(DEFAULT,"Tatsuya","Gashuuin","1950-12-10","Japanese","M"); -- Date for actor but not user? Nationality or should it be place of birth for consistency?

INSERT INTO TABLE role(roleID,characterName) VALUES
(DEFAULT,"Frodo"),
(DEFAULT,"Gandalf"),
(DEFAULT,"Legolas"),
(DEFAULT,"Aragorn"),
(DEFAULT,"Sofie"),
(DEFAULT,"Howl"),
(DEFAULT,"Calcifer");

INSERT INTO TABLE movieCast(movieID,actorID,castingRole) VALUES
(1,1,"Star"),
(1,2,"Star"),
(1,3,"Star"),
(2,1,"Star"),
(2,2,"Star"),
(2,4,"Star"),
(3,1,"Star"),
(3,4,"Star"),
(3,2,"Star"),
(4,5,"Star"),
(4,6,"Star"),
(4,7,"Star"); -- Star? Main? Lead? Then supporting? bit? extra?

INSERT INTO TABLE actorRoles(actorID,roleID) VALUES -- Hmmm
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7);

INSERT INTO TABLE movieRoles(movieID,roleID) VALUES -- Hmmm
(1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(2,4),
(3,1),
(3,4),
(3,2),
(4,5),
(4,6),
(4,7);

INSERT INTO TABLE director(directorID,firstName,lastName,country) VALUES
(DEFAULT,"Peter","Jackson","New Zealand"),
(DEFAULT,"Hayao","Miyazaki","Japan");

INSERT INTO TABLE directs(directorID,movieID) VALUES
(1,1),
(1,2),
(1,3),
(2,4);

INSERT INTO TABLE studio(studioID,studioName) VALUES
(DEFAULT,"New Line Cinema"),
(DEFAULT,"WingNut Films"),
(DEFAULT,"The Saul Zaentz Company"),
(DEFAULT,"Buena Vista Home Entertainment"),
(DEFAULT,"DENTSU Music and Entertainment"),
(DEFAULT,"Mitsubishi"),
(DEFAULT,"Nippon Television Network"),
(DEFAULT,"Studio Ghibli"),
(DEFAULT,"Tohokushinsha Film Corporation"),
(DEFAULT,"Tokuma Shoten"),
(DEFAULT,"d-rights");

INSERT INTO TABLE sponsors(studioID,movieID) VALUES -- switch?
(1,1),
(2,1),
(3,1),
(1,2),
(2,2),
(3,2),
(1,3),
(2,3),
(3,3),
(4,4),
(5,4),
(6,4),
(7,4),
(8,4),
(9,4),
(10,4),
(11,4);
