-- JWR assignment database;


DROP TABLE IF EXISTS `bookmarks`;
DROP TABLE IF EXISTS `reviews`;
DROP TABLE IF EXISTS `games`;
DROP TABLE IF EXISTS `genres`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    uname VARCHAR(40),
    pass VARCHAR(255),
    salt VARCHAR(255),
    is_admin BOOLEAN
);

CREATE TABLE `genres` (
    id varchar(3) NOT NULL PRIMARY KEY,
    title VARCHAR(50)
);

CREATE TABLE `games` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150),
    image VARCHAR(255),
    genre varchar(3) NOT NULL,
    rating INT,
    FOREIGN KEY (genre) REFERENCES genres(id) ON DELETE CASCADE
);

CREATE TABLE `bookmarks` (
    user_id INT,
    game_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (game_id) REFERENCES games(id) ON DELETE CASCADE
);

CREATE TABLE `reviews` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    game_id int,
    rating INT,
    title VARCHAR(150),
    review TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (game_id) REFERENCES games(id) ON DELETE CASCADE
);


INSERT INTO `genres` VALUES ("str", "Strategy");
INSERT INTO `genres` VALUES ("rpg", "Role-Playing Game");
INSERT INTO `genres` VALUES ("fps", "First Person Shooter");
INSERT INTO `genres` VALUES ("sim", "Simulation Game");
INSERT INTO `genres` VALUES ("???", "Other");

-- game list (yes, I'm including ones with strange letters on purpose)
INSERT INTO `games` VALUES (NULL, "Sid Meier's Civilization V: Brave New World", "", "str", 85); -- 8 Jul 2013
INSERT INTO `games` VALUES (NULL, "Crusader Kings II", "", "str", 82); -- 14 feb 2012
INSERT INTO `games` VALUES (NULL, "Warcraft III: Reforged ", "", "str", 60); -- 28 jan 2020

INSERT INTO `games` VALUES (NULL, "Else Heart.Break()", "", "rpg", 79); -- Sep 24 2015
INSERT INTO `games` VALUES (NULL, "Shadowrun: Dragonfall - Director's Cut", "", "rpg", 87); -- 18 sep 2014
INSERT INTO `games` VALUES (NULL, "Stardew Valley", "", "rpg", 89); -- 26 feb 2016 (it has the RPG tag on steam, it counts...)
INSERT INTO `games` VALUES (NULL, "Disco Elysium", "", "rpg", 91); -- 15 oct 2019
INSERT INTO `games` VALUES (NULL, "The Witcher 3", "", "rpg", 96);
INSERT INTO `games` VALUES (NULL, "Subnautica", "", "rpg", 78);
INSERT INTO `games` VALUES (NULL, "Borderlands 3", "", "fps", 99);
INSERT INTO `games` VALUES (NULL, "Call Of Duty", "", "fps", 64);
INSERT INTO `games` VALUES (NULL, "Factorio", "", "str", 76);
INSERT INTO `games` VALUES (NULL, "Fallout 4", "", "rpg", 92);
INSERT INTO `games` VALUES (NULL, "Overwatch", "", "str", 69);
INSERT INTO `games` VALUES (NULL, "Spiderman", "", "rpg", 81);

INSERT INTO `games` VALUES (NULL, "RimWorld", "", "sim", 87); -- 17 oct 2018
INSERT INTO `games` VALUES (NULL, "Tom Clancy's Rainbow Six® Siege", "", "fps", 0); -- 1 dec 2015, metacritic score wasn't on steam page
INSERT INTO `games` VALUES (NULL, "Euro Truck Simulator 2", "", "sim", 79); -- 18 oct 2012
INSERT INTO `games` VALUES (NULL, "Farming Simulator 19", "", "sim", 73); -- 19 Nov, 2018
INSERT INTO `games` VALUES (NULL, "Train Simulator 2020", "", "sim", 0); -- 12 jul 2009 *shrugs at release date on steam...*
INSERT INTO `games` VALUES (NULL, "Assassins Creed", "", "rpg", 82);

INSERT INTO `games` VALUES (NULL, "Project Zomboid", "", "rpg", 87); -- 8 nov 2013
INSERT INTO `games` VALUES (NULL, "Shadowrun Returns", "", "rpg", 76); -- 25 july 2013
INSERT INTO `games` VALUES (NULL, "Shadowrun: Hong Kong - Extended Edition", "", "rpg", 81); -- 20 aug 2015

INSERT INTO `games` VALUES (NULL, "Cave Story+", "", "???", 81); -- 22 nov 2011
INSERT INTO `games` VALUES (NULL, "Sorcery! Parts 1 & 2", "", "???", 69); -- 2 feb 2016
INSERT INTO `games` VALUES (NULL, "Dwarf Fortress", "", "???", 0); -- 'time is subjective' isn't a valid release date...

-- users
-- salts should be random, using strings here, algorithm is sha1( $pass . $salt ); not secure, but it's an assignment.
INSERT INTO `users` VALUES (NULL, "jwalto", "244cad413fa94db1c686ff5bfc6777241ceaa3ea", "abc123", 1); -- password42
INSERT INTO `bookmarks` VALUES (1, 1);
INSERT INTO `bookmarks` VALUES (1, 2);

INSERT INTO `users` VALUES (NULL, "pwillic", "38bf8a5df0a227b697045c1b29a25a759e391f9b", "java123", 0); -- hanabi
INSERT INTO `bookmarks` VALUES (2, 3);
INSERT INTO `bookmarks` VALUES (2, 4);
INSERT INTO `bookmarks` VALUES (2, 5);

INSERT INTO `users` VALUES (NULL, "rpgs", "ba494cde63bd5d092e916b4083e27cda7c306d43", "html42", 0); -- rpgsftw
INSERT INTO `bookmarks` VALUES (3, 4);
INSERT INTO `bookmarks` VALUES (3, 5);
INSERT INTO `bookmarks` VALUES (3, 6);
INSERT INTO `bookmarks` VALUES (3, 7);
INSERT INTO `bookmarks` VALUES (3, 13);

INSERT INTO `users` VALUES (NULL, "sims", "c65e822545b8596c484112ac62a9194c6043c724", "eadlc", 0); -- simsftw
INSERT INTO `bookmarks` VALUES (4, 8);
INSERT INTO `bookmarks` VALUES (4, 10);
INSERT INTO `bookmarks` VALUES (4, 11);
INSERT INTO `bookmarks` VALUES (4, 12);