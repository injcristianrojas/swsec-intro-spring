DROP TABLE IF EXISTS persons;
CREATE TABLE persons(id INTEGER PRIMARY KEY, name VARCHAR(30) NOT NULL, surname VARCHAR(30) NOT NULL, type VARCHAR(5) NOT NULL);
INSERT INTO persons(name, surname, type) VALUES ('Michelle', 'Bachelet', '1');
INSERT INTO persons(name, surname, type) VALUES ('Donald', 'Trump', '2');
INSERT INTO persons(name, surname, type) VALUES ('Evo', 'Morales', '2');
INSERT INTO persons(name, surname, type) VALUES ('Nicolás', 'Maduro', '2');

DROP TABLE IF EXISTS messages;
CREATE TABLE messages(id INTEGER PRIMARY KEY, text VARCHAR(255) NOT NULL);
INSERT INTO messages(text) VALUES ('Whazzzzzuuuuuuuup!!!');