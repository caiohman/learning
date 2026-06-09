-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
-- Your result cannot contain duplicates.
-- Table STATION
-- Fields (ID, CITY, STATE, LAT_N, LONG_W)
select distinct s.city from station s 
where substring(s.city, 1, 1) = 'a' or substring(s.city, 1, 1) = 'A' or
 substring(s.city, 1, 1) = 'e' or substring(s.city, 1, 1) = 'E' or 
 substring(s.city, 1, 1) = 'i' or substring(s.city, 1, 1) = 'I' or
 substring(s.city, 1, 1) = 'o' or substring(s.city, 1, 1) = 'O' or
 substring(s.city, 1, 1) = 'u' or substring(s.city, 1, 1) = 'U';

-- Refactoring
select distinct s.city from station s where regexp_like(s.city, '[aeiou]$', 'i');



