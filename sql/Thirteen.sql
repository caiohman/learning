-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
-- Table STATION
-- Fields (ID, CITY, STATE, LAT_N, LONG_W)

select distinct s.city from station s 
where substring(s.city, 1, 1) != 'a' and substring(s.city, 1, 1) != 'A' and
 substring(s.city, 1, 1) != 'e' and substring(s.city, 1, 1) != 'E' and 
 substring(s.city, 1, 1) != 'i' and substring(s.city, 1, 1) != 'I' and
 substring(s.city, 1, 1) != 'o' and substring(s.city, 1, 1) != 'O' and
 substring(s.city, 1, 1) != 'u' and substring(s.city, 1, 1) != 'U';

-- Refactoring
select distinct s.city from station s where not regexp_like(s.city, '[aeiou]$', 'i');
