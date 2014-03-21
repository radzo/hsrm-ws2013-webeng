DROP TABLE studentProjekt;
DROP TABLE modulDozent;
DROP TABLE modulLiteratur;
DROP TABLE projekt;
DROP TABLE kommentar;
DROP TABLE modul;
DROP TABLE student;
DROP TABLE literatur;
DROP TABLE liste;
DROP TABLE dozent;
DROP TABLE semester;


DROP DOMAIN mail;

CREATE DOMAIN mail TEXT
    CONSTRAINT email CHECK (VALUE ~ '@');

CREATE TABLE semester(
	bezeichnung CHAR(1) NOT NULL PRIMARY KEY
);

CREATE TABLE dozent(
	name VARCHAR(80) NOT NULL,
	bID SERIAL PRIMARY KEY NOT NULL
);

CREATE TABLE liste(
	bezeichnung VARCHAR(80) NOT NULL PRIMARY KEY
);

CREATE TABLE literatur(
	autor VARCHAR(50) NOT NULL,
	titel VARCHAR(150) NOT NULL,
	verlag VARCHAR(80),
	jahr CHAR(4),
	bID SERIAL PRIMARY KEY NOT NULL
);

CREATE TABLE student(
	vorname VARCHAR(80) NOT NULL,
	nachname VARCHAR(80) NOT NULL,
	email MAIL NOT NULL,
	passwort VARCHAR(80) NOT NULL,
	bID SERIAL PRIMARY KEY NOT NULL
);

CREATE TABLE modul(
	modulnummer CHAR(4) NOT NULL PRIMARY KEY,
	bezeichnung VARCHAR(80) NOT NULL,
	semester CHAR(1) NOT NULL,
	liste VARCHAR(80) NOT NULL,
	voraussetzung VARCHAR(800) NOT NULL,
	inhalte VARCHAR(2000) NOT NULL,
	lernziele VARCHAR(1500) NOT NULL,
	aufwand VARCHAR(200) NOT NULL,
	bewertung CHAR(100) NOT NULL,
	lehrform VARCHAR(80) NOT NULL,
	credits VARCHAR(20) NOT NULL,
	bild VARCHAR(80) NOT NULL,
	FOREIGN KEY(liste) REFERENCES liste(bezeichnung),
	FOREIGN KEY(semester) REFERENCES semester(bezeichnung)	
);

CREATE TABLE kommentar(
	text TEXT NOT NULL,
	studentbID SERIAL NOT NULL,
	modulnummer CHAR(4) NOT NULL,
	date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	id SERIAL PRIMARY KEY NOT NULL,
	last_modify TIMESTAMP,
	FOREIGN KEY(studentbID) REFERENCES student(bID),
	FOREIGN KEY(modulnummer) REFERENCES modul(modulnummer)
);

CREATE TABLE projekt(
	name VARCHAR(80) NOT NULL,
	beschreibung TEXT NOT NULL,
	videourl VARCHAR(80) NOT NULL,
	modulnummer CHAR(4) NOT NULL,
	FOREIGN KEY(modulnummer) REFERENCES modul(modulnummer),
	bID SERIAL PRIMARY KEY NOT NULL,
	titelbild VARCHAR(50) DEFAULT '/modulhandbuch/img/placeholder.png',
    bilddir VARCHAR(255),
    thumbdir VARCHAR(255)
);

CREATE TABLE modulLiteratur(
	modulnummer CHAR(4) NOT NULL,
	literaturId SERIAL NOT NULL,
	PRIMARY KEY(modulnummer,literaturId),
	FOREIGN KEY(modulnummer) REFERENCES modul(modulnummer),
	FOREIGN KEY(literaturId) REFERENCES literatur(bID)
);

CREATE TABLE modulDozent(
	modulnummer CHAR(4) NOT NULL,
	dozentId SERIAL NOT NULL,
	PRIMARY KEY(modulnummer,dozentId),
	FOREIGN KEY(modulnummer) REFERENCES modul(modulnummer),
	FOREIGN KEY(dozentId) REFERENCES dozent(bID)
);

CREATE TABLE studentProjekt(
	projektId SERIAL NOT NULL,
	studentId SERIAL NOT NULL,
	inportfolio BOOLEAN DEFAULT false,
	PRIMARY KEY(projektId,studentId),
	FOREIGN KEY(projektId) REFERENCES projekt(bID),
	FOREIGN KEY(studentId) REFERENCES student(bID)
);