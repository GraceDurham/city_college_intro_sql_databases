
/*  Assignment1.sql
    Grace Durham
    CS 150A, Spring 2019  */


/* Query 0 */

SELECT user(), current_date();

/* Query 1 */

DROP DATABASE zoo;
CREATE DATABASE zoo;
USE zoo;


/* Query 2 */

DROP TABLE IF EXISTS animal;
CREATE TABLE animal (
 animal_id INTEGER NOT NULL,
 animal_name VARCHAR(25) NULL,
 animal_type VARCHAR(25) NOT NULL,
 animal_cost DECIMAL(7 , 2 ) UNSIGNED NOT NULL,
 animal_dob DATETIME NOT NULL,
 animal_acquired DATE NOT NULL);



/* Query 3 */

INSERT INTO animal VALUES
   (23, 'Sam', 'Giraffe', 5000.00, '2002-05-15 10:45:00', '2002-05-15'); 
INSERT INTO animal VALUES
   (47, NULL, 'Horse', 490.00, '2010-05-15 08:30:00 ', '2010-04-15');
INSERT INTO animal VALUES
   (56, 'Leon', 'Lion', 5000.00, '2009-02-25 15:00:00', '2010-03-25');
INSERT INTO animal VALUES
   (57, 'Lenora', 'Lion', 5000.00, '2009-03-25 15:35:00', '2011-01-15'); 
INSERT INTO animal VALUES
   (85, 'Sally', 'Giraffe', 5000.25, '2009-05-15 2:02:00', '2012-05-15'); 
INSERT INTO animal VALUES
   (43, 'Huey', 'Zebra', 2500.25, '2012-06-02 02:02:00', '2012-06-02');



/* Query 4 */

SHOW TABLES;


/* Query 5 */

DESC animal;


/* Query 6 */

SELECT *
FROM animal;



/* Query 7 */

SELECT animal_name, animal_type
FROM animal;


/* Query 8 */


SELECT animal_name, animal_id, animal_cost, animal_dob, animal_acquired
FROM animal;
