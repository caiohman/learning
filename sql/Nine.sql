-- Query the two cities in STATION with the shortest and longest CITY names,
-- as well as their respective lengths (i.e.: number of characters in the name).
-- If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- Table STATION
-- Fields (ID, CITY, STATE, LAT_N, LONG_W)

with cte_name_length as (select s.city, length(s.city) len from station s order by len, city asc),
cte_longest as (select city, len from cte_name_length order by len desc limit 1), 
cte_shortest as (select city, len from cte_name_length limit 1) 
select city, len from cte_shortest union all select city, len from cte_longest;

