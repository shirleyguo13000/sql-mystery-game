-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

SELECT * FROM crime_scene
WHERE location = 'Coral Bay Marina'
AND 
date = 19860814;


-- id	  date	    location	
-- 43	  19860814  Coral Bay Marina	
-- description
-- The body of an unidentified man was found near the docks.
-- Two people were seen nearby: one who lives on 300ish "Ocean Drive" and 
-- another whose first name ends with "ul" and his last name ends with "ez".


SELECT * FROM person
WHERE address LIKE '% Ocean Drive';
-- id	  name	          alias	      occupation	 address
-- 101	Carlos Mendez	  Los Ojos	  Fisherman	   369 Ocean Drive

SELECT * FROM person
WHERE name LIKE '%ul %ez';
-- id	  name	          alias	       occupation	       address
-- 102	Raul Gutierrez	The Cobra	   Nightclub Owner	 45 Sunset Ave

SELECT * FROM interviews
WHERE person_id = 101;
-- id	  person_id	 transcript
-- 101	101	       I saw someone check into a hotel on August 13. The guy looked nervous.

SELECT * FROM interviews
WHERE person_id = 102;
-- id	  person_id	  transcript
-- 103	102	        I heard someone checked into a hotel with "Sunset" in the name.


SELECT hotel_checkins.person_id, surveillance_records.suspicious_activity, confessions.confession
FROM hotel_checkins
INNER JOIN surveillance_records
 ON hotel_checkins.person_id = surveillance_records.person_id
INNER JOIN confessions
ON surveillance_records.person_id = confessions.person_id
WHERE check_in_date = 19860813
AND 
hotel_name LIKE '%Sunset%';


-- 8	Left suddenly at 3 AM	Alright! I did it. I was paid to make sure he never left the marina alive.


SELECT * FROM person
where id = 8;
-- id	name	alias	occupation	address
-- 8	Thomas Brown	The Fox	Dock Worker	234 Port Street



-- THE CULPRIT WAS Thomas Brown







