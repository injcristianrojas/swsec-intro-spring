DROP TABLE persons;
CREATE TABLE persons(id INTEGER PRIMARY KEY, name VARCHAR(30) NOT NULL, surname VARCHAR(30) NOT NULL, type VARCHAR(5) NOT NULL);
INSERT INTO persons(name, surname, type) values ('Michelle', 'Bachelet', '1');
INSERT INTO persons(name, surname, type) values ('Donald', 'Trump', '2');
INSERT INTO persons(name, surname, type) values ('Evo', 'Morales', '2');
INSERT INTO persons(name, surname, type) values ('Nicolás', 'Maduro', '2');