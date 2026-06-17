-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

SELECT * FROM crime_scene
where location = 'Blue Note Lounge';

-- id	date	    type	      location	         
-- 76	19851120	theft	      Blue Note Lounge	  
-- description
-- A briefcase containing sensitive documents vanished. 
-- A witness reported a man in a trench coat with a scar on his left cheek fleeing the scene.

SELECT * FROM suspects
WHERE attire = 'trench coat';
-- id	  name	              attire	        scar
-- 3	  Frankie Lombardi	  trench coat	    left cheek
-- 183	Vincent Malone	    trench coat	    left cheek

SELECT * FROM interviews
WHERE suspect_id = 3;
-- suspect_id	transcript
-- 3	        NULL

SELECT * FROM interviews
WHERE suspect_id = 183;
-- suspect_id	transcript
-- 183	I wasn’t going to steal it, but I did.

-- SUSPECT IS : Vincent Malone

