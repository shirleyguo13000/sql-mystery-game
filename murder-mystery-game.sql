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
