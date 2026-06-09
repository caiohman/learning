-- Query a list of CITY names from STATION for cities that have an even ID number.
-- Print the results in any order, but exclude duplicates from the answer.
-- The STATION table is described as follows:
-- Table STATION
-- Fields (ID, CITY, STATE, LAT_N, LONG_W)
-- for non oracle and mysql -   select s.city from station s where s.id % 2 = 0 group by s.city; 
select s.city from station s where mod(s.id , 2) = 0 group by s.city;