-- Record your SQL detective process here!  Write down: 
--   1. The SQL queries you ran
--   2. Any notes or insights as SQL comments
--   3. Your final conclusion: who did it?

-- Using these SQL clauses will help you solve the mystery: 
--    SELECT, FROM, WHERE, AND, OR, ORDER BY, LIMIT, LIKE, DISTINCT, BETWEEN, AS

-- writing a comment like this

-- selecting all columns from the crime scene report
SELECT * FROM crime_scene_report;

-- the crime was a ​murder​ that occurred sometime on ​Jan.15, 2018​ and that it took place in ​SQL City​
SELECT * FROM crime_scene_report
WHERE DATE = 20180115 AND 
city = 'SQL City';

-- Security footage shows that there were 2 witnesses. 
-- The first witness lives at the last house on "Northwestern Dr". 
-- The second witness, named Annabel, lives somewhere on "Franklin Ave".

SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1;
-- id	    name	          license_id	address_number	  address_street_name	  ssn
-- 14887	Morty Schapiro	118009	    4919	            Northwestern Dr	      111564949
SELECT * FROM drivers_license
WHERE id = 118009;
-- id	        age	    height	 eye_color	  hair_color	gender	plate_number	car_make	      car_model
-- 118009	    64	    84	     blue	        white	      male	  00NU00	       Mercedes-Benz	E-Class
-- MORTY THE FIRST WITNESSES, HE IS 64 YEARS OLD, DRIVES A BENZ
SELECT * FROM facebook_event_checkin
WHERE person_id = 14887;
-- person_id	event_id	event_name	            date
-- 14887	    4719	    The Funky Grooves Tour	20180115
-- MORTY ATTENDED THIS EVENT


SELECT *
FROM person
WHERE address_street_name = 'Franklin Ave'
AND name lIKE 'Annabel %';
-- id	    name	           license_id	    address_number	address_street_name	    ssn
-- 16371	Annabel Miller	 490173	        103	            Franklin Ave	          318771143
SELECT *
FROM drivers_license
WHERE id = 490173;
-- id	       age	  height	 eye_color	hair_color	 gender	    plate_number	  car_make	car_model
-- 490173	   35	    65	     green	    brown	       female	    23AM98	        Toyota	  Yaris
-- SECOND WITNESS ANNABEL, SHE IS 35 YEARS OLD, DRIVES A TOYOTA YARIS


SELECT * FROM facebook_event_checkin
WHERE person_id = 16371;
-- person_id	event_id	 event_name	               date
-- 16371	    4719	     The Funky Grooves Tour	   20180115
-- ANNABEL ALSO ATTENDED THIS EVENT!!

SELECT * FROM facebook_event_checkin
WHERE event_name = 'The Funky Grooves Tour';
-- person_id	event_id	 event_name	               date
-- 67318	    4719	     The Funky Grooves Tour	   20180115
-- who is the third person?


SELECT *
FROM person
WHERE id = 67318;
-- id	    name	           license_id	  address_number	address_street_name	     ssn
-- 67318	Jeremy Bowers	   423327	      530	            Washington Pl, Apt 3A	   871539279
SELECT *
FROM drivers_license
WHERE id = 423327;
-- id	     age	  height	  eye_color	  hair_color	 gender	  plate_number	 car_make	    car_model
-- 423327	 30	    70	      brown	      brown	       male   	0H42W2	       Chevrolet	  Spark LS
SELECT *
FROM income
WHERE ssn = '871539279';
-- ssn	        annual_income
-- 871539279	  10500
-- JEREMY IS THE ONLY ONE WHOSE SSN SHOWS UP IN THE INCOME SECTION

-- interview of jeremy's statement
SELECT *
FROM interview
where person_id = 67318;
-- ID=67318	
-- I was hired by a woman with a lot of money. 
-- I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
-- She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.


SELECT *
FROM facebook_event_checkin
where event_name = 'SQL Symphony Concert'
AND date LIKE '201712%%'
AND person_id = 67318;
-- person_id	event_id	event_name	date
-- 67318	1143	SQL Symphony Concert	20171206

SELECT *
FROM facebook_event_checkin
where event_name = 'SQL Symphony Concert'
AND date ='20171206';
-- person_id	event_id	event_name	          date
-- 69325	    1143	    SQL Symphony Concert	20171206
-- 99716	    1143	    SQL Symphony Concert	20171206
-- 67318	    1143	    SQL Symphony Concert	20171206

-- find out who the other two are!
SELECT *
FROM person
where id = 99716;
-- id	    name	            license_id	address_number	address_street_name	  ssn
-- 99716	Miranda Priestly	202298	    1883	          Golden Ave	          987756388
SELECT *
FROM drivers_license
WHERE id = 202298;
-- id	     age	height	eye_color	 hair_color	gender	plate_number	car_make	 car_model
-- 202298	  68	66	     green	   red	      female	500123	      Tesla	      Model S
SELECT *
FROM income
WHERE ssn = '987756388';
-- ssn	      annual_income
-- 987756388	310000


INSERT INTO solution VALUES (1, 'Miranda Priestly');
        
        SELECT value FROM solution;

-- Congrats, you found the brains behind the murder!
-- Everyone in SQL City hails you as the greatest SQL detective of all time.
-- Time to break out the champagne!




