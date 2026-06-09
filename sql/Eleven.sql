-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
-- Table STATION
-- Fields (ID, CITY, STATE, LAT_N, LONG_W)
select distinct s.city from station s 
where substring(s.city, length(s.city)) = 'a' or substring(s.city, length(s.city)) = 'A' or
 substring(s.city, length(s.city)) = 'e' or substring(s.city, length(s.city)) = 'E' or 
 substring(s.city, length(s.city)) = 'i' or substring(s.city, length(s.city)) = 'I' or
 substring(s.city, length(s.city)) = 'o' or substring(s.city, length(s.city)) = 'O' or
 substring(s.city, length(s.city)) = 'u' or substring(s.city, length(s.city)) = 'U';

-- Refactoring
 select distinct s.city from station s where regexp_like(s.city, '^[aeiou]', 'i');
