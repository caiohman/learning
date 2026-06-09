-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
-- Table STATION
-- Fields (ID, CITY, STATE, LAT_N, LONG_W)
select distinct s.city from station s 
where substring(s.city, length(s.city)) != 'a' and substring(s.city, length(s.city)) != 'A' and
 substring(s.city, length(s.city)) != 'e' and substring(s.city, length(s.city)) != 'E' and 
 substring(s.city, length(s.city)) != 'i' and substring(s.city, length(s.city)) != 'I' and
 substring(s.city, length(s.city)) != 'o' and substring(s.city, length(s.city)) != 'O' and
 substring(s.city, length(s.city)) != 'u' and substring(s.city, length(s.city)) != 'U';

 -- Refactoring
 select distinct s.city from station s where not regexp_like(s.city, '^[aeiou]', 'i');