
/* song entity table */
CREATE TABLE song (
    song_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    song_name VARCHAR(60) NOT NULL,
    artist VARCHAR(60) NOT NULL,
    bpm INT UNSIGNED,
    key_sig VARCHAR(10),
    clean BOOLEAN,
    remix BOOLEAN,
    genre VARCHAR(60),
    song_price VARCHAR(60),
    name_file VARCHAR(60),
    located VARCHAR(180),
    PRIMARY KEY (song_id)
);

/* first line to set the auto_increment to 3000 for songs
   next lines to insert into table */
INSERT INTO song(song_id, song_name, artist, bpm, key_sig, clean, remix, genre, song_price, name_file, located) VALUES('3000', 'Blue (Da Ba Dee)', 'Eiffel 65', '128', 'A10', '0', '1', 'Eurodance', '3.99', 'blue.mp3', 'folder/folder/otherFolder/songs');
INSERT INTO song(song_id, song_name, artist, bpm, key_sig, clean, remix, genre, song_price, name_file, located) VALUES('3000', 'Blue (Da Ba Dee)', 'Eiffel 65', '128', 'A10', '0', '1', 'Eurodance', '3.99', 'blue.mp3', 'folder/folder/otherFolder/songs');
INSERT INTO song(song_name, artist, bpm, key_sig, clean, remix, song_price, located) VALUES('Lil Boat', '88GLAM', '75', '12A', '1', '0', '3.99', 'folder/folder/otherFolder/songs');
INSERT INTO song(song_name, artist, bpm, key_sig, clean, remix, song_price, located) VALUES('Lil Boat', '88GLAM', '75', '12A', '0', '0', '3.99', 'folder/folder/otherFolder/songs');
INSERT INTO song(song_name, artist, bpm, key_sig, song_price, located) VALUES('One Night', 'Arno Cost & Norman Doray', '126', '6B', '3.99', 'folder/folder/otherFolder/songs');
INSERT INTO song(song_name, artist, bpm, key_sig, remix, song_price, located) VALUES('Swoopin  (RL Grime Edit)', 'Baauer & RL Grime', '76', '10A', '1', '3.99', 'folder/folder/songs');
/* user table */
CREATE TABLE user (
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    username VARCHAR(30) NOT NULL, 
    email VARCHAR(30) NOT NULL, 
    password VARCHAR(300) NOT NULL, 
    payment ENUM('credit', 'debit', 'paypal'), 
    PRIMARY KEY(user_id)
);

/* first line to set the auto_increment to 5000 for users
   next lines to insert into table */
/* PASSWORD() is used to hash user passwords on table */
INSERT INTO user(user_id, username, email, password) VALUES('5000', 'test_user', 'email@domain.com', PASSWORD('lajenny'));
INSERT INTO user(username, email, password) VALUES('frog-beats', 'croaking@pond.com', PASSWORD('frogge123'));

/* basic play table */
CREATE TABLE sodapop (
     id INT  NOT NULL AUTO_INCREMENT,
     name CHAR(60) NOT NULL,
     price DECIMAL(19,2) NOT NULL,
     PRIMARY KEY (id)
 );

/* some reminder commands */
SHOW TABLES;
SELECT * FROM table_name;
ALTER TABLE song CHANGE radio_mix clean boolean;
DELETE FROM song WHERE song_id = '3005'

