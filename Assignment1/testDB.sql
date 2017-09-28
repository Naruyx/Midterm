-- create and select the database
DROP DATABASE IF EXISTS csuDB;
CREATE DATABASE csuDB;
USE csuDB;

-- create the tables for the database
CREATE TABLE professors (
  professorID       INT            NOT NULL   AUTO_INCREMENT,
  firstName     	VARCHAR(60)    NOT NULL,
  lastName          VARCHAR(60)    NOT NULL,
  PRIMARY KEY (professorID),
);

CREATE TABLE courses (
  courseID         	INT            NOT NULL   AUTO_INCREMENT,
  courseName        VARCHAR            NOT NULL,
  credits           VARCHAR(60)    NOT NULL,
  crn             	VARCHAR(60)               DEFAULT NULL,
  section           VARCHAR(40)    NOT NULL,
  day             	VARCHAR(2)     NOT NULL,
  time           	VARCHAR(10)    NOT NULL,
  location          VARCHAR(12)    NOT NULL,
  professorID       TINYINT(1)     NOT NULL   DEFAULT 0,
  PRIMARY KEY (courseID),
  INDEX professorID (professorID)
);


-- Insert data into the tables

INSERT INTO professors (professorID, firstName, lastName) VALUES
(1, 'Hillary', 'Fleenor'),
(2, 'Rania', 'Hodhod'),
(3, 'Vladimir', 'Zanev');

-- Create a user named mgs_user
GRANT SELECT, INSERT, UPDATE, DELETE
ON *
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';