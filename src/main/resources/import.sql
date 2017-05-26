DROP TABLE persons;
CREATE TABLE persons(id INTEGER PRIMARY KEY, name VARCHAR(30) NOT NULL, surname VARCHAR(30) NOT NULL);
INSERT INTO persons(name, surname) values ('Michelle', 'Bachelet');
INSERT INTO persons(name, surname) values ('Donald', 'Trump');