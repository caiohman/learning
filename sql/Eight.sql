-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- The STATION table is described as follows:
-- Table STATION
-- Fields (ID, CITY, STATE, LAT_N, LONG_W)

-- select count(s.city) from station s;
-- select count(distinct s.city) from station s;

select ((select count(s.city) from station s) - (select count(distinct s.city) from station s)) diff ;