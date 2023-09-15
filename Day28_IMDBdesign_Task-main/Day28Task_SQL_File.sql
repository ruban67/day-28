# -- Creating a database named IMDB_database --
CREATE DATABASE IMDB_database;

# -- Switching to database IMDB_database --
USE IMDB_database;

# -- Creating a table "Movies" --
CREATE TABLE Movies(
Id INT NOT NULL AUTO_INCREMENT,
Movie_Title VARCHAR(200),
PRIMARY KEY (Id)
);
    
# -- Creating a table "Genre" --
CREATE TABLE Genre(
Genre_Id INT NOT NULL,
Genre_Title VARCHAR(250),
PRIMARY KEY(Genre_Id)
);
    
# -- Creating a table "Genre_Movie_Matching" --
CREATE TABLE Genre_Movie_Matching(
Matching_Id INT,
Movie_Id INT,
Genre_Id INT,
PRIMARY KEY(Matching_Id),
FOREIGN KEY(Movie_Id) REFERENCES Movies(Id),
FOREIGN KEY(Genre_Id) REFERENCES Genre(Genre_Id)
);

# -- Creating a table "Users" --
CREATE TABLE Users(
User_Id INT NOT NULL,
User_name VARCHAR(50),
Mobile_number VARCHAR(50),
Address VARCHAR(250),
PRIMARY KEY(User_Id)
);
   
# -- Creating a table "Reviews" --
CREATE TABLE Reviews(
Review_Id INT NOT NULL,
Movie_Id INT,
User_Id INT,
Review LONGTEXT,
PRIMARY KEY(Review_Id),
FOREIGN KEY(Movie_Id) REFERENCES Movies(Id),
FOREIGN KEY(User_Id) REFERENCES Users(User_Id)
);
 
 # -- Creating a table "Artists" --
CREATE TABLE Artists(
Artist_Id INT NOT NULL,
Artist_name VARCHAR(50),
PRIMARY KEY(Artist_Id)
);

# -- Creating a table "Skills" --
CREATE TABLE Skills(
Skill_Id INT NOT NULL,
Skill_name VARCHAR(50),
PRIMARY KEY(Skill_Id)
);

# -- Creating a table "Artist_Skills_Matching" --
CREATE TABLE Artist_Skills_Matching(
SkillMatch_Id INT NOT NULL,
Artist_Id INT,
Skill_Id INT,
PRIMARY KEY(SkillMatch_Id),
FOREIGN KEY(Artist_Id) REFERENCES Artists(Artist_Id),
FOREIGN KEY(Skill_Id) REFERENCES Skills(Skill_Id)
);

# -- Creating a table "ArtistRole" --
CREATE TABLE ArtistRole(
Role_Id INT NOT NULL,
Role_title VARCHAR(50),
Movie_Id INT,
Artist_Id INT,
Role_description LONGTEXT,
PRIMARY KEY (Role_Id),
FOREIGN KEY(Movie_Id) REFERENCES Movies(Id),
FOREIGN KEY(Artist_Id) REFERENCES Artists(Artist_Id)
);

# -- Creating a table "Media" --
CREATE TABLE Media(
Media_File_Id INT NOT NULL,
Movie_Id INT,
Media_File LONGBLOB,
PRIMARY KEY(Media_File_Id),
FOREIGN KEY(Movie_Id) REFERENCES Movies(Id)
);
   
# -- Upto here the database design is completed --


# -- The following lines are to just insert some data into the above database --
   
# -- Inserting data into table "Movies" --
INSERT INTO Movies(Movie_Title) VALUES("Movie 1");
INSERT INTO Movies(Movie_Title) VALUES("Movie 2");
INSERT INTO Movies(Movie_Title) VALUES("Movie 3");
SELECT * FROM Movies; # -- Displaying table "Movies" --

# -- Inserting data into table "Genre" --
INSERT INTO Genre VALUES(1,"Action Film");
INSERT INTO Genre VALUES(2,"Comedy Film");
INSERT INTO Genre VALUES(3,"Animation Film");
INSERT INTO Genre VALUES(4,"Horror Film");
SELECT * FROM Genre; # -- Displaying table "Genre" --

# -- Inserting data into table "Genre_Movie_Matching" --
INSERT INTO Genre_Movie_Matching VALUES(1, 1, 1);
INSERT INTO Genre_Movie_Matching VALUES(2, 1, 2);
INSERT INTO Genre_Movie_Matching VALUES(3, 2, 3);
SELECT * FROM Genre_Movie_Matching; # -- Displaying table "Genre_Movie_Matching" --

# -- Inserting data into table "Users" --
INSERT INTO Users VALUES(1, 'User 1', '9368233387', "Address 1");
INSERT INTO Users VALUES(2, 'User 2', '9368275387', "Address 2");
INSERT INTO Users VALUES(3, 'User 3', '8368233387', "Address 3");
SELECT * FROM Users; # -- Displaying table "Users" --

# -- Inserting data into table "Reviews" --
INSERT INTO Reviews VALUES(1, 1, 2, "Very good film");
INSERT INTO Reviews VALUES(2, 1, 2, "Good action");
INSERT INTO Reviews VALUES(3, 2, 3, "Very good film");
SELECT * FROM Reviews; # -- Displaying table "Reviews" --

# -- Inserting data into table "Artists" --
INSERT INTO Artists VALUES(1, "Artist name 1");
INSERT INTO Artists VALUES(2, "Artist name 2");
INSERT INTO Artists VALUES(3, "Artist name 3");
INSERT INTO Artists VALUES(4, "Artist name 4");
SELECT * FROM Artists; # -- Displaying table "Artists" --

# -- Inserting data into table "Skills" --
INSERT INTO Skills VALUES(1, "Acting skill");
INSERT INTO Skills VALUES(2, "Coreography skill");
INSERT INTO Skills VALUES(3, "Direction skill");
INSERT INTO Skills VALUES(4, "Script writing skill");
SELECT * FROM Skills; # -- Displaying table "Skills" --

# -- Inserting data into table "Artist_Skills_Matching" --
INSERT INTO Artist_Skills_Matching VALUES(1, 1, 2);
INSERT INTO Artist_Skills_Matching VALUES(2, 1, 2);
INSERT INTO Artist_Skills_Matching VALUES(3, 2, 2);
INSERT INTO Artist_Skills_Matching VALUES(4, 3, 4);
SELECT * FROM Artist_Skills_Matching; # -- Displaying table "Artist_Skills_Matching" --

# -- Inserting data into table "ArtistRole" --
INSERT INTO ArtistRole VALUES(1, "Role Title 1", 1, 2,"Role description 1");
INSERT INTO ArtistRole VALUES(2, "Role Title 2", 1, 1,"Role description 2");
INSERT INTO ArtistRole VALUES(3, "Role Title 3", 2, 1,"Role description 3");
INSERT INTO ArtistRole VALUES(4, "Role Title 4", 2, 3,"Role description 4");
SELECT * FROM ArtistRole; # -- Displaying table "ArtistRole" --

# -- Inserting data into table "Media" --
INSERT INTO Media VALUES(1, 1, "Media file 1");
INSERT INTO Media VALUES(2, 1, "Media file 2");
INSERT INTO Media VALUES(3, 2, "Media file 3");
INSERT INTO Media VALUES(4, 2, "Media file 4");
SELECT * FROM Media; # -- Displaying table "Media" --


# -- Now all the tables in the above database are available to display (having some dummy data) --