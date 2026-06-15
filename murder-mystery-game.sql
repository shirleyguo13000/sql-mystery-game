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



SELECT * FROM get_fit_now_check_in
WHERE check_in_date = 20180115;
-- membership_id	check_in_date	check_in_time	check_out_time
-- D2KY6	20180115	746	836
-- 344VM	20180115	1087	1195
-- 3BRSC	20180115	354	825
-- HM6U8	20180115	525	800

SELECT * FROM get_fit_now_member
WHERE id = 'D2KY6';
-- id	person_id	name	membership_start_date	membership_status
-- D2KY6	99602	Joline Hollering	20170220	gold

SELECT * FROM get_fit_now_member
WHERE id = '344VM';
-- id	person_id	name	membership_start_date	membership_status
-- 344VM	13466	Armando Huie	20171002	regular

SELECT * FROM get_fit_now_member
WHERE id = '3BRSC';
-- id	person_id	name	membership_start_date	membership_status
-- 3BRSC	19948	Taylor Skyes	20180314	gold

SELECT * FROM get_fit_now_member
WHERE id = 'HM6U8';
-- id	person_id	name	membership_start_date	membership_status
-- HM6U8	50106	Edgar Bamba	20170128	silver








