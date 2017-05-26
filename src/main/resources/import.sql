DROP TABLE persons;
CREATE TABLE persons(id INTEGER PRIMARY KEY, name VARCHAR(30) NOT NULL, surname VARCHAR(30) NOT NULL, username VARCHAR(15) NOT NULL, password VARCHAR(15) NOT NULL);
INSERT INTO persons(name, surname, username, password) values ('Michelle', 'Bachelet', 'mbachelet', 'igualdad');
INSERT INTO persons(name, surname, username, password) values ('Donald', 'Trump', 'dtrump', 'great');