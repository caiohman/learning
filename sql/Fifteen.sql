-- Query the list of CITY names from STATION that either do not start with vowels and do not end with vowels.
-- Your result cannot contain duplicates.
-- Table STATION
-- Fields (ID, CITY, STATE, LAT_N, LONG_W)
select distinct s.city from station s 
where (substring(s.city, 1, 1) != 'a' and substring(s.city, 1, 1) != 'A' and
 substring(s.city, 1, 1) != 'e' and substring(s.city, 1, 1) != 'E' and 
 substring(s.city, 1, 1) != 'i' and substring(s.city, 1, 1) != 'I' and
 substring(s.city, 1, 1) != 'o' and substring(s.city, 1, 1) != 'O' and
 substring(s.city, 1, 1) != 'u' and substring(s.city, 1, 1) != 'U') or
 (substring(s.city, length(s.city)) != 'a' and substring(s.city, length(s.city)) != 'A' and
 substring(s.city, length(s.city)) != 'e' and substring(s.city, length(s.city)) != 'E' and 
 substring(s.city, length(s.city)) != 'i' and substring(s.city, length(s.city)) != 'I' and
 substring(s.city, length(s.city)) != 'o' and substring(s.city, length(s.city)) != 'O' and
 substring(s.city, length(s.city)) != 'u' and substring(s.city, length(s.city)) != 'U');


 -- Refactoring
select distinct s.city from station s where not regexp_like(s.city, '[aeiou]$', 'i') or not regexp_like(s.city, '^[aeiou]', 'i');
